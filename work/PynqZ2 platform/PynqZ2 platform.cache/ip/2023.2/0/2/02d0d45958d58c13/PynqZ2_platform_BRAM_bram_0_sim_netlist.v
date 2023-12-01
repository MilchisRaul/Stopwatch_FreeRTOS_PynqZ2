// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Dec  1 12:51:37 2023
// Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PynqZ2_platform_BRAM_bram_0_sim_netlist.v
// Design      : PynqZ2_platform_BRAM_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PynqZ2_platform_BRAM_bram_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59856)
`pragma protect data_block
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
zbd5X4+N
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
