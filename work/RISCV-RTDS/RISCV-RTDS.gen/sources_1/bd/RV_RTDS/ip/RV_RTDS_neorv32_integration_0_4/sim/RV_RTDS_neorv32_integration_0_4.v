// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:neorv32_integration_top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module RV_RTDS_neorv32_integration_0_4 (
  m_axi_aclk,
  m_axi_aresetn,
  m_axi_awaddr,
  m_axi_awprot,
  m_axi_awvalid,
  m_axi_awready,
  m_axi_wdata,
  m_axi_wstrb,
  m_axi_wvalid,
  m_axi_wready,
  m_axi_araddr,
  m_axi_arprot,
  m_axi_arvalid,
  m_axi_arready,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rvalid,
  m_axi_rready,
  m_axi_bresp,
  m_axi_bvalid,
  m_axi_bready,
  s0_axis_tdata,
  s0_axis_tvalid,
  s0_axis_tready,
  s1_axis_tdata,
  s1_axis_tvalid,
  s1_axis_tready,
  jtag_trst_i,
  jtag_tck_i,
  jtag_tdi_i,
  jtag_tdo_o,
  jtag_tms_i,
  xip_csn_o,
  xip_clk_o,
  xip_dat_i,
  xip_dat_o,
  gpio_o,
  gpio_i,
  uart0_txd_o,
  uart0_rxd_i,
  uart0_rts_o,
  uart0_cts_i,
  uart1_txd_o,
  uart1_rxd_i,
  uart1_rts_o,
  uart1_cts_i,
  spi_clk_o,
  spi_dat_o,
  spi_dat_i,
  spi_csn_o,
  sdi_clk_i,
  sdi_dat_o,
  sdi_dat_i,
  sdi_csn_i,
  twi_sda_i,
  twi_sda_o,
  twi_scl_i,
  twi_scl_o,
  onewire_i,
  onewire_o,
  pwm_o,
  cfs_in_i,
  cfs_out_o,
  neoled_o,
  xirq_i,
  mtime_irq_i,
  msw_irq_i,
  mext_irq_i
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_aclk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axi_aclk CLK" *)
input wire m_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axi_aresetn RST" *)
input wire m_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *)
output wire [31 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *)
output wire [31 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *)
output wire [3 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *)
output wire [31 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *)
input wire [31 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *)
output wire m_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *)
output wire [31 : 0] s0_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *)
output wire s0_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *)
input wire s0_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TDATA" *)
input wire [31 : 0] s1_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TVALID" *)
input wire s1_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s1_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TREADY" *)
output wire s1_axis_tready;
input wire jtag_trst_i;
input wire jtag_tck_i;
input wire jtag_tdi_i;
output wire jtag_tdo_o;
input wire jtag_tms_i;
output wire xip_csn_o;
output wire xip_clk_o;
input wire xip_dat_i;
output wire xip_dat_o;
output wire [31 : 0] gpio_o;
input wire [31 : 0] gpio_i;
output wire uart0_txd_o;
input wire uart0_rxd_i;
output wire uart0_rts_o;
input wire uart0_cts_i;
output wire uart1_txd_o;
input wire uart1_rxd_i;
output wire uart1_rts_o;
input wire uart1_cts_i;
output wire spi_clk_o;
output wire spi_dat_o;
input wire spi_dat_i;
output wire spi_csn_o;
input wire sdi_clk_i;
output wire sdi_dat_o;
input wire sdi_dat_i;
input wire sdi_csn_i;
input wire twi_sda_i;
output wire twi_sda_o;
input wire twi_scl_i;
output wire twi_scl_o;
input wire onewire_i;
output wire onewire_o;
output wire pwm_o;
input wire cfs_in_i;
output wire cfs_out_o;
output wire neoled_o;
input wire xirq_i;
input wire mtime_irq_i;
input wire msw_irq_i;
input wire mext_irq_i;

  neorv32_integration_top #(
    .CLOCK_FREQUENCY(0),
    .HART_ID(0),
    .VENDOR_ID(0),
    .INT_BOOTLOADER_EN(1),
    .ON_CHIP_DEBUGGER_EN(0),
    .DM_LEGACY_MODE(0),
    .CPU_EXTENSION_RISCV_A(0),
    .CPU_EXTENSION_RISCV_B(0),
    .CPU_EXTENSION_RISCV_C(0),
    .CPU_EXTENSION_RISCV_E(0),
    .CPU_EXTENSION_RISCV_M(0),
    .CPU_EXTENSION_RISCV_U(0),
    .CPU_EXTENSION_RISCV_Zfinx(0),
    .CPU_EXTENSION_RISCV_Zicntr(1),
    .CPU_EXTENSION_RISCV_Zihpm(0),
    .CPU_EXTENSION_RISCV_Zmmul(0),
    .CPU_EXTENSION_RISCV_Zxcfu(0),
    .FAST_MUL_EN(0),
    .FAST_SHIFT_EN(0),
    .PMP_NUM_REGIONS(0),
    .PMP_MIN_GRANULARITY(4),
    .HPM_NUM_CNTS(0),
    .HPM_CNT_WIDTH(40),
    .AMO_RVS_GRANULARITY(4),
    .MEM_INT_IMEM_EN(1),
    .MEM_INT_IMEM_SIZE(16384),
    .MEM_INT_DMEM_EN(1),
    .MEM_INT_DMEM_SIZE(8192),
    .ICACHE_EN(0),
    .ICACHE_NUM_BLOCKS(4),
    .ICACHE_BLOCK_SIZE(64),
    .ICACHE_ASSOCIATIVITY(1),
    .DCACHE_EN(0),
    .DCACHE_NUM_BLOCKS(4),
    .DCACHE_BLOCK_SIZE(64),
    .XIRQ_NUM_CH(0),
    .XIRQ_TRIGGER_TYPE(32'HFFFFFFFF),
    .XIRQ_TRIGGER_POLARITY(32'HFFFFFFFF),
    .IO_GPIO_NUM(0),
    .IO_MTIME_EN(1),
    .IO_UART0_EN(1),
    .IO_UART0_RX_FIFO(1),
    .IO_UART0_TX_FIFO(1),
    .IO_UART1_EN(1),
    .IO_UART1_RX_FIFO(1),
    .IO_UART1_TX_FIFO(1),
    .IO_SPI_EN(1),
    .IO_SPI_FIFO(1),
    .IO_SDI_EN(0),
    .IO_SDI_FIFO(1),
    .IO_TWI_EN(1),
    .IO_PWM_NUM_CH(0),
    .IO_WDT_EN(1),
    .IO_TRNG_EN(1),
    .IO_TRNG_FIFO(1),
    .IO_CFS_EN(0),
    .IO_CFS_CONFIG(0),
    .IO_CFS_IN_SIZE(32),
    .IO_CFS_OUT_SIZE(32),
    .IO_NEOLED_EN(1),
    .IO_NEOLED_TX_FIFO(1),
    .IO_GPTMR_EN(0),
    .IO_XIP_EN(0),
    .IO_ONEWIRE_EN(0),
    .IO_DMA_EN(0),
    .IO_SLINK_EN(0),
    .IO_SLINK_RX_FIFO(1),
    .IO_SLINK_TX_FIFO(1),
    .IO_CRC_EN(0)
  ) inst (
    .m_axi_aclk(m_axi_aclk),
    .m_axi_aresetn(m_axi_aresetn),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awready(m_axi_awready),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wready(m_axi_wready),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bready(m_axi_bready),
    .s0_axis_tdata(s0_axis_tdata),
    .s0_axis_tvalid(s0_axis_tvalid),
    .s0_axis_tready(s0_axis_tready),
    .s1_axis_tdata(s1_axis_tdata),
    .s1_axis_tvalid(s1_axis_tvalid),
    .s1_axis_tready(s1_axis_tready),
    .jtag_trst_i(jtag_trst_i),
    .jtag_tck_i(jtag_tck_i),
    .jtag_tdi_i(jtag_tdi_i),
    .jtag_tdo_o(jtag_tdo_o),
    .jtag_tms_i(jtag_tms_i),
    .xip_csn_o(xip_csn_o),
    .xip_clk_o(xip_clk_o),
    .xip_dat_i(xip_dat_i),
    .xip_dat_o(xip_dat_o),
    .gpio_o(gpio_o),
    .gpio_i(gpio_i),
    .uart0_txd_o(uart0_txd_o),
    .uart0_rxd_i(uart0_rxd_i),
    .uart0_rts_o(uart0_rts_o),
    .uart0_cts_i(uart0_cts_i),
    .uart1_txd_o(uart1_txd_o),
    .uart1_rxd_i(uart1_rxd_i),
    .uart1_rts_o(uart1_rts_o),
    .uart1_cts_i(uart1_cts_i),
    .spi_clk_o(spi_clk_o),
    .spi_dat_o(spi_dat_o),
    .spi_dat_i(spi_dat_i),
    .spi_csn_o(spi_csn_o),
    .sdi_clk_i(sdi_clk_i),
    .sdi_dat_o(sdi_dat_o),
    .sdi_dat_i(sdi_dat_i),
    .sdi_csn_i(sdi_csn_i),
    .twi_sda_i(twi_sda_i),
    .twi_sda_o(twi_sda_o),
    .twi_scl_i(twi_scl_i),
    .twi_scl_o(twi_scl_o),
    .onewire_i(onewire_i),
    .onewire_o(onewire_o),
    .pwm_o(pwm_o),
    .cfs_in_i(cfs_in_i),
    .cfs_out_o(cfs_out_o),
    .neoled_o(neoled_o),
    .xirq_i(xirq_i),
    .mtime_irq_i(mtime_irq_i),
    .msw_irq_i(msw_irq_i),
    .mext_irq_i(mext_irq_i)
  );
endmodule
