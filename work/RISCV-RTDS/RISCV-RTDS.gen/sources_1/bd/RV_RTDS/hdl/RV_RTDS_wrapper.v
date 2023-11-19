//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sun Nov 19 15:30:15 2023
//Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
//Command     : generate_target RV_RTDS_wrapper.bd
//Design      : RV_RTDS_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RV_RTDS_wrapper
   (gpio_i,
    gpio_out,
    neoled_o,
    onewire_o,
    pwm,
    reset_rtl,
    sdi_clk_i,
    sdi_csn_i,
    sdi_dat_i,
    sdi_dat_o,
    spi_clk_o,
    spi_csn0,
    spi_dat_i,
    spi_dat_o,
    sys_clock,
    uart0_cts_i,
    uart0_rts_o,
    uart0_rxd_i,
    uart0_txd_o,
    uart1_cts_i,
    uart1_rts_o,
    uart1_rxd_i,
    uart1_txd_o);
  input [7:0]gpio_i;
  output [0:0]gpio_out;
  output neoled_o;
  output onewire_o;
  output [3:0]pwm;
  input reset_rtl;
  input sdi_clk_i;
  input sdi_csn_i;
  input sdi_dat_i;
  output sdi_dat_o;
  output spi_clk_o;
  output [0:0]spi_csn0;
  input spi_dat_i;
  output spi_dat_o;
  input sys_clock;
  input uart0_cts_i;
  output uart0_rts_o;
  input uart0_rxd_i;
  output uart0_txd_o;
  input uart1_cts_i;
  output uart1_rts_o;
  input uart1_rxd_i;
  output uart1_txd_o;

  wire [7:0]gpio_i;
  wire [0:0]gpio_out;
  wire neoled_o;
  wire onewire_o;
  wire [3:0]pwm;
  wire reset_rtl;
  wire sdi_clk_i;
  wire sdi_csn_i;
  wire sdi_dat_i;
  wire sdi_dat_o;
  wire spi_clk_o;
  wire [0:0]spi_csn0;
  wire spi_dat_i;
  wire spi_dat_o;
  wire sys_clock;
  wire uart0_cts_i;
  wire uart0_rts_o;
  wire uart0_rxd_i;
  wire uart0_txd_o;
  wire uart1_cts_i;
  wire uart1_rts_o;
  wire uart1_rxd_i;
  wire uart1_txd_o;

  RV_RTDS RV_RTDS_i
       (.gpio_i(gpio_i),
        .gpio_out(gpio_out),
        .neoled_o(neoled_o),
        .onewire_o(onewire_o),
        .pwm(pwm),
        .reset_rtl(reset_rtl),
        .sdi_clk_i(sdi_clk_i),
        .sdi_csn_i(sdi_csn_i),
        .sdi_dat_i(sdi_dat_i),
        .sdi_dat_o(sdi_dat_o),
        .spi_clk_o(spi_clk_o),
        .spi_csn0(spi_csn0),
        .spi_dat_i(spi_dat_i),
        .spi_dat_o(spi_dat_o),
        .sys_clock(sys_clock),
        .uart0_cts_i(uart0_cts_i),
        .uart0_rts_o(uart0_rts_o),
        .uart0_rxd_i(uart0_rxd_i),
        .uart0_txd_o(uart0_txd_o),
        .uart1_cts_i(uart1_cts_i),
        .uart1_rts_o(uart1_rts_o),
        .uart1_rxd_i(uart1_rxd_i),
        .uart1_txd_o(uart1_txd_o));
endmodule
