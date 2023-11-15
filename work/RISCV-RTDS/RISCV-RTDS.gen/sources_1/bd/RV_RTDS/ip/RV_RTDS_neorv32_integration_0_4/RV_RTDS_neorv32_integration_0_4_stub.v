// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Nov  9 17:34:20 2023
// Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/raulm/Desktop/Facultate/Master/Anul
//               1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_neorv32_integration_0_4/RV_RTDS_neorv32_integration_0_4_stub.v}
// Design      : RV_RTDS_neorv32_integration_0_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "neorv32_integration_top,Vivado 2023.2" *)
module RV_RTDS_neorv32_integration_0_4(m_axi_aclk, m_axi_aresetn, m_axi_awaddr, 
  m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, 
  m_axi_wready, m_axi_araddr, m_axi_arprot, m_axi_arvalid, m_axi_arready, m_axi_rdata, 
  m_axi_rresp, m_axi_rvalid, m_axi_rready, m_axi_bresp, m_axi_bvalid, m_axi_bready, 
  s0_axis_tdata, s0_axis_tvalid, s0_axis_tready, s1_axis_tdata, s1_axis_tvalid, 
  s1_axis_tready, jtag_trst_i, jtag_tck_i, jtag_tdi_i, jtag_tdo_o, jtag_tms_i, xip_csn_o, 
  xip_clk_o, xip_dat_i, xip_dat_o, gpio_o, gpio_i, uart0_txd_o, uart0_rxd_i, uart0_rts_o, 
  uart0_cts_i, uart1_txd_o, uart1_rxd_i, uart1_rts_o, uart1_cts_i, spi_clk_o, spi_dat_o, 
  spi_dat_i, spi_csn_o, sdi_clk_i, sdi_dat_o, sdi_dat_i, sdi_csn_i, twi_sda_i, twi_sda_o, 
  twi_scl_i, twi_scl_o, onewire_i, onewire_o, pwm_o, cfs_in_i, cfs_out_o, neoled_o, xirq_i, 
  mtime_irq_i, msw_irq_i, mext_irq_i)
/* synthesis syn_black_box black_box_pad_pin="m_axi_aresetn,m_axi_awaddr[31:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wvalid,m_axi_wready,m_axi_araddr[31:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rvalid,m_axi_rready,m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,s0_axis_tdata[31:0],s0_axis_tvalid,s0_axis_tready,s1_axis_tdata[31:0],s1_axis_tvalid,s1_axis_tready,jtag_trst_i,jtag_tck_i,jtag_tdi_i,jtag_tdo_o,jtag_tms_i,xip_csn_o,xip_clk_o,xip_dat_i,xip_dat_o,gpio_o[31:0],gpio_i[31:0],uart0_txd_o,uart0_rxd_i,uart0_rts_o,uart0_cts_i,uart1_txd_o,uart1_rxd_i,uart1_rts_o,uart1_cts_i,spi_clk_o,spi_dat_o,spi_dat_i,spi_csn_o,sdi_clk_i,sdi_dat_o,sdi_dat_i,sdi_csn_i,twi_sda_i,twi_sda_o,twi_scl_i,twi_scl_o,onewire_i,onewire_o,pwm_o,cfs_in_i,cfs_out_o,neoled_o,xirq_i,mtime_irq_i,msw_irq_i,mext_irq_i" */
/* synthesis syn_force_seq_prim="m_axi_aclk" */;
  input m_axi_aclk /* synthesis syn_isclock = 1 */;
  input m_axi_aresetn;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]s0_axis_tdata;
  output s0_axis_tvalid;
  input s0_axis_tready;
  input [31:0]s1_axis_tdata;
  input s1_axis_tvalid;
  output s1_axis_tready;
  input jtag_trst_i;
  input jtag_tck_i;
  input jtag_tdi_i;
  output jtag_tdo_o;
  input jtag_tms_i;
  output xip_csn_o;
  output xip_clk_o;
  input xip_dat_i;
  output xip_dat_o;
  output [31:0]gpio_o;
  input [31:0]gpio_i;
  output uart0_txd_o;
  input uart0_rxd_i;
  output uart0_rts_o;
  input uart0_cts_i;
  output uart1_txd_o;
  input uart1_rxd_i;
  output uart1_rts_o;
  input uart1_cts_i;
  output spi_clk_o;
  output spi_dat_o;
  input spi_dat_i;
  output spi_csn_o;
  input sdi_clk_i;
  output sdi_dat_o;
  input sdi_dat_i;
  input sdi_csn_i;
  input twi_sda_i;
  output twi_sda_o;
  input twi_scl_i;
  output twi_scl_o;
  input onewire_i;
  output onewire_o;
  output pwm_o;
  input cfs_in_i;
  output cfs_out_o;
  output neoled_o;
  input xirq_i;
  input mtime_irq_i;
  input msw_irq_i;
  input mext_irq_i;
endmodule
