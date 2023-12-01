// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Dec  1 12:51:38 2023
// Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               {c:/Users/raulm/Desktop/Facultate/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/PynqZ2 platform/PynqZ2
//               platform.gen/sources_1/bd/PynqZ2_platform/ip/PynqZ2_platform_BRAM_bram_0/PynqZ2_platform_BRAM_bram_0_sim_netlist.v}
// Design      : PynqZ2_platform_BRAM_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PynqZ2_platform_BRAM_bram_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module PynqZ2_platform_BRAM_bram_0
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
  PynqZ2_platform_BRAM_bram_0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59936)
`pragma protect data_block
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
V76fvpXYzY+39oPOucoqroC89RGKwAVYkjApIGs=
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
