/*
    Copyright (C) 2017 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
    Copyright (c) 2012 - 2022 Xilinx, Inc. All Rights Reserved.
    SPDX-License-Identifier: MIT


    http://www.FreeRTOS.org
    http://aws.amazon.com/freertos


    1 tab == 4 spaces!

 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <time.h>	// class needs this inclusion
#include <stdbool.h>
#include <stdint.h>
/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
/* Xilinx includes. */
#include "sleep.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xtime_l.h"
/* AXI Timer driver include libraries*/
#include "xtmrctr.h"
#include "xtmrctr_l.h"

#define TIMER_ID	1
#define DELAY_10_SECONDS	10000UL
#define DELAY_1_SECOND		1000UL
#define TIMER_CHECK_THRESHOLD	9

/*define the LEDs addr*/
#define R 0x04
#define G 0x02
#define B 0x03

#define MS_PER_SEC 1000  /* No of miliseconds in one second */
#define SEC_PER_MIN 60  /* No of seconds in one minute */
#define MIN_PER_H 60 /* No of minutes in one hour */
#define SEC_PER_H 3600 /* No of seconds in one hour */

XGpio gpio;
XTmrCtr TimerCounter; /* The instance of the Tmrctr Devicec(AXI Timer) */

/* queues declarations */
QueueHandle_t xButtonLedQueue; /* sends button state to led task */
QueueHandle_t xButtonTimerControlQueue; /* sends button state to timer control task */
QueueHandle_t xTimerValueDisplayQueue; /* sends button state to timer display task */


/* Initialize gpio (buttons + LEDs) and the AXI Timer + check if they were initialized
 * successfully.
 */
void driverInit()
{
    int status;
    status = XGpio_Initialize(&gpio, XPAR_GPIO_0_DEVICE_ID);
    if(status != XST_SUCCESS){
        xil_printf("Error: GPIO unsuccessfully initialized!\n\r");
    } else {
        xil_printf("Info: GPIO successfully initialized!\n\r");
    }

	XTmrCtr *TmrCtrInstancePtr = &TimerCounter;
	status = XTmrCtr_Initialize(TmrCtrInstancePtr, XPAR_TMRCTR_0_DEVICE_ID);
    if(status != XST_SUCCESS){
        xil_printf("Error: TMRCTR unsuccessfully initialized!\n\r");
    } else {
        xil_printf("Info: TMRCTR successfully initialized!\n\r");
    }
}

/* Buttons and LEDs pin direction INPUT/OUTPUT configuration */
void configGpio(){
    XGpio_SetDataDirection(&gpio, 1, 0);
    XGpio_SetDataDirection(&gpio, 2, 1);

    XGpio_DiscreteSet(&gpio, 1, 0);

    xil_printf("GPIO configured\r\n");
}

/* AXI Timer configuration for TMRCTR0 */
void configTmrCtr()
{
	XTmrCtr *TmrCtrInstancePtr = &TimerCounter;
/* Cascade mode activated to operate the timer on 64 bit, TMRCTR1 is the high 32 bit reg that updates
 * when the TMRCTR0 overflows.
 */
	XTmrCtr_SetOptions(TmrCtrInstancePtr, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION | XTC_CASCADE_MODE_OPTION);

	XTmrCtr_SetResetValue(TmrCtrInstancePtr, 0, 0);
	XTmrCtr_SetResetValue(TmrCtrInstancePtr, 1, 0);

    xil_printf("AXI Timer Counter configured\r\n");
}


/* Task to read button values when they are pressed */
void vReadButtons(void* pvParameters)
{
    while(1)
	{
		uint32_t button = XGpio_DiscreteRead(&gpio, 2);

		/* Check that any button is pressed, but only one at a time
		 * button == 1 -> STOP AXI TIMER (STOPWATCH)
		 * button == 2 -> START AXI TIMER (STOPWATCH)
		 * button == 4 -> AXI TIMER (STOPWATCH) is running
		 * button == 8 -> Available for user configuration
		 */
		if(button == 1 || button == 2 || button == 4 || button == 8)
		{
			/* Send button press to vLedDisplay and vTimerControl */
			xQueueSendToBack(xButtonLedQueue, (void*)&button, (TickType_t)0);
			xQueueSendToBack(xButtonTimerControlQueue, (void*)&button, (TickType_t)0);
		}
	}
}


void vLedDisplay(){

    while(1){

    	int32_t button;

    	/* wait until vReadButtons places a valid button value into the queue */
    	if(xQueueReceive(xButtonLedQueue, (void*)&button, (TickType_t)0) == pdTRUE)
    	{
    		//xil_printf("(LedDisplay) Button: %d\n\r", button);
    		switch(button) {
    		/* STOP */
				case 1:
					XGpio_DiscreteWrite(&gpio, 1, R);
					//print("\tRED\n\r");
					break;
		    /* START */
				case 2:
					XGpio_DiscreteWrite(&gpio, 1, G);
					//print("\tGREEN\n\r");
					break;
		    /* RUNNING */
				case 4:
					XGpio_DiscreteWrite(&gpio, 1, B);
					//print("\tBLUE\n\r");
					break;
		    /* USER CONFIGURABLE */
				case 8:
					XGpio_DiscreteWrite(&gpio, 1, R|G|B);
					//print("\tRGB\n\r");
					break;
				default:
					break;
			}
		}
    }
}

/*
 * Low level function that sets the compare register of low timer (TMRCTR0) to last read value.
 * This is required because XTmrCtr_Start also resets the low timer (TMRCTR0)
 *
 */
void XTmrCtr_SetCompareRegisterToLastValue(XTmrCtr *TmrCtrInstancePtr)
{
	uint32_t lastTime = XTmrCtr_GetValue(&TimerCounter, 0);
	XTmrCtr_WriteReg(TmrCtrInstancePtr->BaseAddress, 0, XTC_TLR_OFFSET, lastTime);
}

/* Because of the high clock frequency of IN/OUT (100 MHz) it was needed to operate the
 * counter on 64-bit mode. The timer has two counters TMRCTR0 and TMRCTR1. Counters are
 * configured to work in cascade mode. When TMRCTR0 overflows, TMRCTR1 receives the
 * carry-out bit and increments its value.
 */
uint64_t XTmrCtr_GetValue64(XTmrCtr *TmrCtrInstancePtr)
{
	/* Get the low timer (TMRCTR0) and the high timer (TMRCTR1) values and store in low and high vars */
	uint32_t low = XTmrCtr_GetValue(&TimerCounter, 0);
	uint32_t high = XTmrCtr_GetValue(&TimerCounter, 1);
	/* Concatenate both high and low registers values in a single 64 bit register */
	uint64_t time = ((uint64_t)high << 32) | (uint64_t)low;
	return time;
}

void vTimerControl()
{
	XTmrCtr *TmrCtrInstancePtr = &TimerCounter;

	while(1){

		int32_t button;

    	/* Wait until vReadButtons places a valid button value into the queue */
		if(xQueueReceive(xButtonTimerControlQueue, (void*)&button, (TickType_t)0) == pdTRUE)
		{
			//xil_printf("(TimerControl) Button: %d\n\r", button);
			switch(button) {
				case 1:
					XTmrCtr_Stop(TmrCtrInstancePtr, 0); /* Stops the low AXI timer (TMRCTR0)*/
					break;
				case 2:
					XTmrCtr_SetCompareRegisterToLastValue(TmrCtrInstancePtr); /* Save the last known value to the internal compare register */
					XTmrCtr_Start(TmrCtrInstancePtr, 0); /* Starts the low AXI timer from the compare register value */
					break;
				case 4:
					XTmrCtr_Stop(TmrCtrInstancePtr, 0); /* Stops the low AXI timer */
					XTmrCtr_SetResetValue(TmrCtrInstancePtr, 0, 0); /* Sets the low timer reset value to 0 */
					XTmrCtr_SetResetValue(TmrCtrInstancePtr, 0, 1); /* Sets the high timer reset value to 0 */
					XTmrCtr_Reset(TmrCtrInstancePtr, 0); /* Reset the low timer (set to reset value) */
					XTmrCtr_Reset(TmrCtrInstancePtr, 1); /* Reset the high timer (set to reset value) */
					break;
				case 8:
					break;
				default:
					break;
			}
		}

		/* Send timer value to vTimerDisplay */
		uint64_t time = XTmrCtr_GetValue64(&TimerCounter);
		xQueueSendToBack(xTimerValueDisplayQueue, (void*)&time, (TickType_t)0);
	}
}
/* Format the time into HH:MM:SS:MSMSMS */
void FormatTime(uint64_t time, char* buffer)
{
	uint64_t totalSeconds = time / XPAR_AXI_TIMER_0_CLOCK_FREQ_HZ;
	uint64_t milis = (time % XPAR_AXI_TIMER_0_CLOCK_FREQ_HZ) / (XPAR_AXI_TIMER_0_CLOCK_FREQ_HZ / MS_PER_SEC);
	uint64_t hours = totalSeconds / SEC_PER_H;
	uint64_t minutes = (totalSeconds % SEC_PER_H) / SEC_PER_MIN;
	uint64_t seconds = totalSeconds % SEC_PER_MIN;

	sprintf(buffer, "%02llu:%02llu:%02llu:%03llu", hours, minutes, seconds, milis);
}

/* Display the timer with carriage return character to auto-update its value for a user friendly display */
void vTimerDisplay()
{
	char buffer[50];

	while(1){
		uint64_t time;
    	/* Wait until vTimerControl sends a timer value */
		if(xQueueReceive(xTimerValueDisplayQueue, (void*)&time, (TickType_t)0) == pdTRUE)
		{
			xil_printf("\r                 ");
			FormatTime(time, &buffer);
			xil_printf("\rTime: %s", buffer);
		}
	}
}


int main( void )
{
    driverInit();
    configGpio();
    configTmrCtr();

    /* Create the queues needed for avoiding the concurrency and manage the tasks properly*/
    xButtonLedQueue = xQueueCreate(1, sizeof(int32_t));
    xButtonTimerControlQueue = xQueueCreate(1, sizeof(int32_t));
    xTimerValueDisplayQueue = xQueueCreate(1, sizeof(uint64_t));

    TaskHandle_t xButtonsHandler = NULL;
    TaskHandle_t xLedDisplayHandler = NULL;
    TaskHandle_t xTimerControlHandler = NULL;
    TaskHandle_t xTimerDisplayHandler = NULL;

/* Creating the FreeRTOS tasks */
    xTaskCreate(vReadButtons, "vReadButtons", configMINIMAL_STACK_SIZE, (void*)NULL, 0, &xButtonsHandler);
    xil_printf("Created button task\r\n");

    xTaskCreate(vLedDisplay, "vLedDisplay", configMINIMAL_STACK_SIZE, (void*)NULL, 0, &xLedDisplayHandler);
    xil_printf("Created led task\r\n");

    xTaskCreate(vTimerControl, "vTimerControl", configMINIMAL_STACK_SIZE * 2, (void*)NULL, 0, &xTimerControlHandler);
    xil_printf("Created timer control task\r\n");

    xTaskCreate(vTimerDisplay, "vTimerDisplay", configMINIMAL_STACK_SIZE * 2, (void*)NULL, 0, &xTimerDisplayHandler);
    xil_printf("Created timer display task\r\n");
/* Scheduling the tasks using a queue system */
    xil_printf("Starting scheduler...\r\n\r\n");
    vTaskStartScheduler();

    xil_printf("Ending application...\r\n");
    vQueueDelete(xButtonLedQueue);

    return 0;
}

