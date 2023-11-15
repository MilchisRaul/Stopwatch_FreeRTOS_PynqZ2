// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Nov  9 17:34:11 2023
// Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/raulm/Desktop/Facultate/Master/Anul
//               1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_blk_mem_gen_0_0/RV_RTDS_blk_mem_gen_0_0_sim_netlist.v}
// Design      : RV_RTDS_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RV_RTDS_blk_mem_gen_0_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module RV_RTDS_blk_mem_gen_0_0
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
  RV_RTDS_blk_mem_gen_0_0_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59872)
`pragma protect data_block
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
NPT7AeHJYTFSPHWZeVRfh6gKsMjfew==
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
