
/*******************************************************************
*
* CAUTION: This file is automatically generated by HSI.
* Version: 2023.2
* DO NOT EDIT.
*
* Copyright (C) 2010-2023 Xilinx, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT 

* 
* Description: Driver configuration
*
*******************************************************************/

#include "xparameters.h"
#include "xgpio.h"

/*
* The configuration table for devices
*/

XGpio_Config XGpio_ConfigTable[XPAR_XGPIO_NUM_INSTANCES] =
{
	{
		XPAR_BUTTONS_DEVICE_ID,
		XPAR_BUTTONS_BASEADDR,
		XPAR_BUTTONS_INTERRUPT_PRESENT,
		XPAR_BUTTONS_IS_DUAL
	},
	{
		XPAR_LEDS_DEVICE_ID,
		XPAR_LEDS_BASEADDR,
		XPAR_LEDS_INTERRUPT_PRESENT,
		XPAR_LEDS_IS_DUAL
	},
	{
		XPAR_SWITCHES_DEVICE_ID,
		XPAR_SWITCHES_BASEADDR,
		XPAR_SWITCHES_INTERRUPT_PRESENT,
		XPAR_SWITCHES_IS_DUAL
	}
};


