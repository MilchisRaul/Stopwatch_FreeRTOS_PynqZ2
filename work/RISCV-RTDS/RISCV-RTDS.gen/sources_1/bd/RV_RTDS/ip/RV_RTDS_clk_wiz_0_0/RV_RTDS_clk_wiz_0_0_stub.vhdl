-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Nov  9 17:33:45 2023
-- Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/raulm/Desktop/Facultate/Master/Anul
--               1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_clk_wiz_0_0/RV_RTDS_clk_wiz_0_0_stub.vhdl}
-- Design      : RV_RTDS_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RV_RTDS_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end RV_RTDS_clk_wiz_0_0;

architecture stub of RV_RTDS_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
