set_property SRC_FILE_INFO {cfile:{c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_clk_wiz_0_0/RV_RTDS_clk_wiz_0_0.xdc} rfile:../../../RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_clk_wiz_0_0/RV_RTDS_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.080
