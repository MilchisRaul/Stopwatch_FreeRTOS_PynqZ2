//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Nov 22 19:07:59 2023
//Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
//Command     : generate_target RISCV_RTDS.bd
//Design      : RISCV_RTDS
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RISCV_RTDS,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RISCV_RTDS,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "RISCV_RTDS.hwdef" *) 
module RISCV_RTDS
   (gpio_i,
    gpio_o,
    neoled_o,
    onewire_o,
    pwm,
    s0_axis_tdata,
    s0_axis_tready,
    s0_axis_tvalid,
    s1_axis_tdata,
    s1_axis_tready,
    s1_axis_tvalid,
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
  output [7:0]gpio_o;
  output neoled_o;
  output onewire_o;
  output [3:0]pwm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]s0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *) input s0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *) output s0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s1_axis, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]s1_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TREADY" *) output s1_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TVALID" *) input s1_axis_tvalid;
  input sdi_clk_i;
  input sdi_csn_i;
  input sdi_dat_i;
  output sdi_dat_o;
  output spi_clk_o;
  output [0:0]spi_csn0;
  input spi_dat_i;
  output spi_dat_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN RISCV_RTDS_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;
  input uart0_cts_i;
  output uart0_rts_o;
  input uart0_rxd_i;
  output uart0_txd_o;
  input uart1_cts_i;
  output uart1_rts_o;
  input uart1_rxd_i;
  output uart1_txd_o;

  wire clk_wiz_clk_out1;
  wire [7:0]gpio_i_1;
  wire [7:0]rv_rtds_top_0_gpio_o;
  wire rv_rtds_top_0_neoled_o;
  wire rv_rtds_top_0_onewire_o;
  wire [3:0]rv_rtds_top_0_pwm;
  wire [31:0]rv_rtds_top_0_s0_axis_TDATA;
  wire rv_rtds_top_0_s0_axis_TREADY;
  wire rv_rtds_top_0_s0_axis_TVALID;
  wire rv_rtds_top_0_sdi_dat_o;
  wire rv_rtds_top_0_spi_clk_o;
  wire [0:0]rv_rtds_top_0_spi_csn0;
  wire rv_rtds_top_0_spi_dat_o;
  wire rv_rtds_top_0_uart0_rts_o;
  wire rv_rtds_top_0_uart0_txd_o;
  wire rv_rtds_top_0_uart1_rts_o;
  wire rv_rtds_top_0_uart1_txd_o;
  wire [31:0]s1_axis_1_TDATA;
  wire s1_axis_1_TREADY;
  wire s1_axis_1_TVALID;
  wire sdi_clk_i_1;
  wire sdi_csn_i_1;
  wire sdi_dat_i_1;
  wire spi_dat_i_1;
  wire sys_clock_1;
  wire uart0_cts_i_1;
  wire uart0_rxd_i_1;
  wire uart1_cts_i_1;
  wire uart1_rxd_i_1;

  assign gpio_i_1 = gpio_i[7:0];
  assign gpio_o[7:0] = rv_rtds_top_0_gpio_o;
  assign neoled_o = rv_rtds_top_0_neoled_o;
  assign onewire_o = rv_rtds_top_0_onewire_o;
  assign pwm[3:0] = rv_rtds_top_0_pwm;
  assign rv_rtds_top_0_s0_axis_TREADY = s0_axis_tready;
  assign s0_axis_tdata[31:0] = rv_rtds_top_0_s0_axis_TDATA;
  assign s0_axis_tvalid = rv_rtds_top_0_s0_axis_TVALID;
  assign s1_axis_1_TDATA = s1_axis_tdata[31:0];
  assign s1_axis_1_TVALID = s1_axis_tvalid;
  assign s1_axis_tready = s1_axis_1_TREADY;
  assign sdi_clk_i_1 = sdi_clk_i;
  assign sdi_csn_i_1 = sdi_csn_i;
  assign sdi_dat_i_1 = sdi_dat_i;
  assign sdi_dat_o = rv_rtds_top_0_sdi_dat_o;
  assign spi_clk_o = rv_rtds_top_0_spi_clk_o;
  assign spi_csn0[0] = rv_rtds_top_0_spi_csn0;
  assign spi_dat_i_1 = spi_dat_i;
  assign spi_dat_o = rv_rtds_top_0_spi_dat_o;
  assign sys_clock_1 = sys_clock;
  assign uart0_cts_i_1 = uart0_cts_i;
  assign uart0_rts_o = rv_rtds_top_0_uart0_rts_o;
  assign uart0_rxd_i_1 = uart0_rxd_i;
  assign uart0_txd_o = rv_rtds_top_0_uart0_txd_o;
  assign uart1_cts_i_1 = uart1_cts_i;
  assign uart1_rts_o = rv_rtds_top_0_uart1_rts_o;
  assign uart1_rxd_i_1 = uart1_rxd_i;
  assign uart1_txd_o = rv_rtds_top_0_uart1_txd_o;
  RISCV_RTDS_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1));
  RISCV_RTDS_rv_rtds_top_0_0 rv_rtds_top_0
       (.gpio_i(gpio_i_1),
        .gpio_o(rv_rtds_top_0_gpio_o),
        .neoled_o(rv_rtds_top_0_neoled_o),
        .onewire_o(rv_rtds_top_0_onewire_o),
        .pwm(rv_rtds_top_0_pwm),
        .s0_axis_tdata(rv_rtds_top_0_s0_axis_TDATA),
        .s0_axis_tready(rv_rtds_top_0_s0_axis_TREADY),
        .s0_axis_tvalid(rv_rtds_top_0_s0_axis_TVALID),
        .s1_axis_tdata(s1_axis_1_TDATA),
        .s1_axis_tready(s1_axis_1_TREADY),
        .s1_axis_tvalid(s1_axis_1_TVALID),
        .sdi_clk_i(sdi_clk_i_1),
        .sdi_csn_i(sdi_csn_i_1),
        .sdi_dat_i(sdi_dat_i_1),
        .sdi_dat_o(rv_rtds_top_0_sdi_dat_o),
        .spi_clk_o(rv_rtds_top_0_spi_clk_o),
        .spi_csn0(rv_rtds_top_0_spi_csn0),
        .spi_dat_i(spi_dat_i_1),
        .spi_dat_o(rv_rtds_top_0_spi_dat_o),
        .sys_clock(clk_wiz_clk_out1),
        .uart0_cts_i(uart0_cts_i_1),
        .uart0_rts_o(rv_rtds_top_0_uart0_rts_o),
        .uart0_rxd_i(uart0_rxd_i_1),
        .uart0_txd_o(rv_rtds_top_0_uart0_txd_o),
        .uart1_cts_i(uart1_cts_i_1),
        .uart1_rts_o(rv_rtds_top_0_uart1_rts_o),
        .uart1_rxd_i(uart1_rxd_i_1),
        .uart1_txd_o(rv_rtds_top_0_uart1_txd_o));
endmodule
