// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Nov  9 17:34:10 2023
// Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RV_RTDS_blk_mem_gen_0_1 -prefix
//               RV_RTDS_blk_mem_gen_0_1_ RV_RTDS_blk_mem_gen_0_0_sim_netlist.v
// Design      : RV_RTDS_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RV_RTDS_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module RV_RTDS_blk_mem_gen_0_1
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  RV_RTDS_blk_mem_gen_0_1_blk_mem_gen_v8_4_7 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59584)
`pragma protect data_block
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
wO/q7D+8WR4jX2tKZAI/XAEBbQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
