-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Nov  9 17:34:19 2023
-- Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RV_RTDS_neorv32_integration_0_4_stub.vhdl
-- Design      : RV_RTDS_neorv32_integration_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tvalid : out STD_LOGIC;
    s0_axis_tready : in STD_LOGIC;
    s1_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s1_axis_tvalid : in STD_LOGIC;
    s1_axis_tready : out STD_LOGIC;
    jtag_trst_i : in STD_LOGIC;
    jtag_tck_i : in STD_LOGIC;
    jtag_tdi_i : in STD_LOGIC;
    jtag_tdo_o : out STD_LOGIC;
    jtag_tms_i : in STD_LOGIC;
    xip_csn_o : out STD_LOGIC;
    xip_clk_o : out STD_LOGIC;
    xip_dat_i : in STD_LOGIC;
    xip_dat_o : out STD_LOGIC;
    gpio_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    uart0_txd_o : out STD_LOGIC;
    uart0_rxd_i : in STD_LOGIC;
    uart0_rts_o : out STD_LOGIC;
    uart0_cts_i : in STD_LOGIC;
    uart1_txd_o : out STD_LOGIC;
    uart1_rxd_i : in STD_LOGIC;
    uart1_rts_o : out STD_LOGIC;
    uart1_cts_i : in STD_LOGIC;
    spi_clk_o : out STD_LOGIC;
    spi_dat_o : out STD_LOGIC;
    spi_dat_i : in STD_LOGIC;
    spi_csn_o : out STD_LOGIC;
    sdi_clk_i : in STD_LOGIC;
    sdi_dat_o : out STD_LOGIC;
    sdi_dat_i : in STD_LOGIC;
    sdi_csn_i : in STD_LOGIC;
    twi_sda_i : in STD_LOGIC;
    twi_sda_o : out STD_LOGIC;
    twi_scl_i : in STD_LOGIC;
    twi_scl_o : out STD_LOGIC;
    onewire_i : in STD_LOGIC;
    onewire_o : out STD_LOGIC;
    pwm_o : out STD_LOGIC;
    cfs_in_i : in STD_LOGIC;
    cfs_out_o : out STD_LOGIC;
    neoled_o : out STD_LOGIC;
    xirq_i : in STD_LOGIC;
    mtime_irq_i : in STD_LOGIC;
    msw_irq_i : in STD_LOGIC;
    mext_irq_i : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_axi_aclk,m_axi_aresetn,m_axi_awaddr[31:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wvalid,m_axi_wready,m_axi_araddr[31:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rvalid,m_axi_rready,m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,s0_axis_tdata[31:0],s0_axis_tvalid,s0_axis_tready,s1_axis_tdata[31:0],s1_axis_tvalid,s1_axis_tready,jtag_trst_i,jtag_tck_i,jtag_tdi_i,jtag_tdo_o,jtag_tms_i,xip_csn_o,xip_clk_o,xip_dat_i,xip_dat_o,gpio_o[31:0],gpio_i[31:0],uart0_txd_o,uart0_rxd_i,uart0_rts_o,uart0_cts_i,uart1_txd_o,uart1_rxd_i,uart1_rts_o,uart1_cts_i,spi_clk_o,spi_dat_o,spi_dat_i,spi_csn_o,sdi_clk_i,sdi_dat_o,sdi_dat_i,sdi_csn_i,twi_sda_i,twi_sda_o,twi_scl_i,twi_scl_o,onewire_i,onewire_o,pwm_o,cfs_in_i,cfs_out_o,neoled_o,xirq_i,mtime_irq_i,msw_irq_i,mext_irq_i";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "neorv32_integration_top,Vivado 2023.2";
begin
end;
