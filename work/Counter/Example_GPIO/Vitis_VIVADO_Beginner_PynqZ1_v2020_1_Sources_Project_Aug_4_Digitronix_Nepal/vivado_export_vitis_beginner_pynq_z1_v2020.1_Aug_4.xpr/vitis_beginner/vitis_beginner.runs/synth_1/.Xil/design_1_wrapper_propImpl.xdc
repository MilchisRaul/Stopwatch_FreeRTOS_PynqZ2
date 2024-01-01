set_property SRC_FILE_INFO {cfile:{d:/Digitronix/Vitis Beginner Tutorial/vitis_beginner/vitis_beginner.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc} rfile:../../../vitis_beginner.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/processing_system7_0} [current_design]
set_property SRC_FILE_INFO {cfile:{D:/Digitronix/Vitis Beginner Tutorial/vitis_beginner/vitis_beginner.srcs/constrs_1/imports/Vitis Beginner Tutorial/PYNQ-Z1_C.xdc} rfile:{../../../vitis_beginner.srcs/constrs_1/imports/Vitis Beginner Tutorial/PYNQ-Z1_C.xdc} id:2} [current_design]
current_instance design_1_i/processing_system7_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L7N_T1_AD2N_35 Sch=sw[0]
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L7P_T1_AD2P_35 Sch=sw[1]
set_property src_info {type:XDC file:2 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { rgb[0] }]; #IO_L22N_T3_AD7N_35 Sch=led4_b
set_property src_info {type:XDC file:2 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { rgb[1] }]; #IO_L16P_T2_35 Sch=led4_g
set_property src_info {type:XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { rgb[2] }]; #IO_L21P_T3_DQS_AD14P_35 Sch=led4_r
set_property src_info {type:XDC file:2 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_0_35 Sch=led5_b
set_property src_info {type:XDC file:2 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { led[4] }]; #IO_L22P_T3_AD7P_35 Sch=led5_g
set_property src_info {type:XDC file:2 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { led[5] }]; #IO_L23N_T3_35 Sch=led5_r
set_property src_info {type:XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { btns[0] }]; #IO_L4P_T0_35 Sch=btn[0]
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { btns[1] }]; #IO_L4N_T0_35 Sch=btn[1]
set_property src_info {type:XDC file:2 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { btns[2] }]; #IO_L9N_T1_DQS_AD3N_35 Sch=btn[2]
set_property src_info {type:XDC file:2 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { btns[3] }]; #IO_L9P_T1_DQS_AD3P_35 Sch=btn[3]
set_property src_info {type:XDC file:2 line:160 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { hdmi_in_cec }]; #IO_L13N_T2_MRCC_35 Sch=hdmi_rx_cec
set_property src_info {type:XDC file:2 line:161 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P19   IOSTANDARD TMDS_33  } [get_ports { hdmi_in_clk_n }]; #IO_L13N_T2_MRCC_34 Sch=hdmi_rx_clk_n
set_property src_info {type:XDC file:2 line:162 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N18   IOSTANDARD TMDS_33  } [get_ports { hdmi_in_clk_p }]; #IO_L13P_T2_MRCC_34 Sch=hdmi_rx_clk_p
set_property src_info {type:XDC file:2 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W20   IOSTANDARD TMDS_33  } [get_ports { hdmi_in_data_n[0] }]; #IO_L16N_T2_34 Sch=hdmi_rx_d_n[0]
set_property src_info {type:XDC file:2 line:164 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V20   IOSTANDARD TMDS_33  } [get_ports { hdmi_in_data_p[0] }]; #IO_L16P_T2_34 Sch=hdmi_rx_d_p[0]
set_property src_info {type:XDC file:2 line:165 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U20   IOSTANDARD TMDS_33  } [get_ports { hdmi_in_data_n[1] }]; #IO_L15N_T2_DQS_34 Sch=hdmi_rx_d_n[1]
set_property src_info {type:XDC file:2 line:166 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T20   IOSTANDARD TMDS_33  } [get_ports { hdmi_in_data_p[1] }]; #IO_L15P_T2_DQS_34 Sch=hdmi_rx_d_p[1]
set_property src_info {type:XDC file:2 line:167 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P20   IOSTANDARD TMDS_33  } [get_ports { hdmi_in_data_n[2] }]; #IO_L14N_T2_SRCC_34 Sch=hdmi_rx_d_n[2]
set_property src_info {type:XDC file:2 line:168 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N20   IOSTANDARD TMDS_33  } [get_ports { hdmi_in_data_p[2] }]; #IO_L14P_T2_SRCC_34 Sch=hdmi_rx_d_p[2]
set_property src_info {type:XDC file:2 line:169 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { hdmi_in_hpd_tri_o }]; #IO_25_34 Sch=hdmi_rx_hpd
set_property src_info {type:XDC file:2 line:170 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { hdmi_in_ddc_scl_io }]; #IO_L11P_T1_SRCC_34 Sch=hdmi_rx_scl
set_property src_info {type:XDC file:2 line:171 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { hdmi_in_ddc_sda_io }]; #IO_L11N_T1_SRCC_34 Sch=hdmi_rx_sda
set_property src_info {type:XDC file:2 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { hdmi_out_cec }]; #IO_L19N_T3_VREF_35 Sch=hdmi_tx_cec
set_property src_info {type:XDC file:2 line:176 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L17   IOSTANDARD TMDS_33  } [get_ports { hdmi_out_clk_n }]; #IO_L11N_T1_SRCC_35 Sch=hdmi_tx_clk_n
set_property src_info {type:XDC file:2 line:177 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD TMDS_33  } [get_ports { hdmi_out_clk_p }]; #IO_L11P_T1_SRCC_35 Sch=hdmi_tx_clk_p
set_property src_info {type:XDC file:2 line:178 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD TMDS_33  } [get_ports { hdmi_out_data_n[0] }]; #IO_L12N_T1_MRCC_35 Sch=hdmi_tx_d_n[0]
set_property src_info {type:XDC file:2 line:179 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD TMDS_33  } [get_ports { hdmi_out_data_p[0] }]; #IO_L12P_T1_MRCC_35 Sch=hdmi_tx_d_p[0]
set_property src_info {type:XDC file:2 line:180 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J19   IOSTANDARD TMDS_33  } [get_ports { hdmi_out_data_n[1] }]; #IO_L10N_T1_AD11N_35 Sch=hdmi_tx_d_n[1]
set_property src_info {type:XDC file:2 line:181 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K19   IOSTANDARD TMDS_33  } [get_ports { hdmi_out_data_p[1] }]; #IO_L10P_T1_AD11P_35 Sch=hdmi_tx_d_p[1]
set_property src_info {type:XDC file:2 line:182 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD TMDS_33  } [get_ports { hdmi_out_data_n[2] }]; #IO_L14N_T2_AD4N_SRCC_35 Sch=hdmi_tx_d_n[2]
set_property src_info {type:XDC file:2 line:183 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD TMDS_33  } [get_ports { hdmi_out_data_p[2] }]; #IO_L14P_T2_AD4P_SRCC_35 Sch=hdmi_tx_d_p[2]
set_property src_info {type:XDC file:2 line:185 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { hdmi_out_ddc_scl_io }]; #IO_L8P_T1_AD10P_35 Sch=hdmi_tx_scl
set_property src_info {type:XDC file:2 line:186 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { hdmi_out_ddc_sda_io }]; #IO_L8N_T1_AD10N_35 Sch=hdmi_tx_sda
