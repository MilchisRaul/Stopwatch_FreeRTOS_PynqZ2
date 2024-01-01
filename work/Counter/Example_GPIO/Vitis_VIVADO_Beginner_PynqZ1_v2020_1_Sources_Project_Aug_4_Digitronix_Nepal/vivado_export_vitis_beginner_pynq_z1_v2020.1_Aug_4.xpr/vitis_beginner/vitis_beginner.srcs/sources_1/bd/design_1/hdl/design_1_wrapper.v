//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Aug  4 10:58:37 2020
//Host        : Nielfotech running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    btns_tri_i,
    rgb_tri_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [3:0]btns_tri_i;
  inout [5:0]rgb_tri_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]btns_tri_i;
  wire [0:0]rgb_tri_i_0;
  wire [1:1]rgb_tri_i_1;
  wire [2:2]rgb_tri_i_2;
  wire [3:3]rgb_tri_i_3;
  wire [4:4]rgb_tri_i_4;
  wire [5:5]rgb_tri_i_5;
  wire [0:0]rgb_tri_io_0;
  wire [1:1]rgb_tri_io_1;
  wire [2:2]rgb_tri_io_2;
  wire [3:3]rgb_tri_io_3;
  wire [4:4]rgb_tri_io_4;
  wire [5:5]rgb_tri_io_5;
  wire [0:0]rgb_tri_o_0;
  wire [1:1]rgb_tri_o_1;
  wire [2:2]rgb_tri_o_2;
  wire [3:3]rgb_tri_o_3;
  wire [4:4]rgb_tri_o_4;
  wire [5:5]rgb_tri_o_5;
  wire [0:0]rgb_tri_t_0;
  wire [1:1]rgb_tri_t_1;
  wire [2:2]rgb_tri_t_2;
  wire [3:3]rgb_tri_t_3;
  wire [4:4]rgb_tri_t_4;
  wire [5:5]rgb_tri_t_5;

  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .btns_tri_i(btns_tri_i),
        .rgb_tri_i({rgb_tri_i_5,rgb_tri_i_4,rgb_tri_i_3,rgb_tri_i_2,rgb_tri_i_1,rgb_tri_i_0}),
        .rgb_tri_o({rgb_tri_o_5,rgb_tri_o_4,rgb_tri_o_3,rgb_tri_o_2,rgb_tri_o_1,rgb_tri_o_0}),
        .rgb_tri_t({rgb_tri_t_5,rgb_tri_t_4,rgb_tri_t_3,rgb_tri_t_2,rgb_tri_t_1,rgb_tri_t_0}));
  IOBUF rgb_tri_iobuf_0
       (.I(rgb_tri_o_0),
        .IO(rgb_tri_io[0]),
        .O(rgb_tri_i_0),
        .T(rgb_tri_t_0));
  IOBUF rgb_tri_iobuf_1
       (.I(rgb_tri_o_1),
        .IO(rgb_tri_io[1]),
        .O(rgb_tri_i_1),
        .T(rgb_tri_t_1));
  IOBUF rgb_tri_iobuf_2
       (.I(rgb_tri_o_2),
        .IO(rgb_tri_io[2]),
        .O(rgb_tri_i_2),
        .T(rgb_tri_t_2));
  IOBUF rgb_tri_iobuf_3
       (.I(rgb_tri_o_3),
        .IO(rgb_tri_io[3]),
        .O(rgb_tri_i_3),
        .T(rgb_tri_t_3));
  IOBUF rgb_tri_iobuf_4
       (.I(rgb_tri_o_4),
        .IO(rgb_tri_io[4]),
        .O(rgb_tri_i_4),
        .T(rgb_tri_t_4));
  IOBUF rgb_tri_iobuf_5
       (.I(rgb_tri_o_5),
        .IO(rgb_tri_io[5]),
        .O(rgb_tri_i_5),
        .T(rgb_tri_t_5));
endmodule
