# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7z020clg400-1
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib
    rt::set_parameter defaultVhdlWorkLib xil_defaultlib

    rt::set_parameter loadVhdl2008Libs false
    rt::set_parameter loadVhdl2019Libs false
    rt::set_parameter deferParseUntilElab true
    rt::set_parameter sortHdlCommandLine true
    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ipshared/ec67/hdl}
    {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ipshared/c2c6}
  } {
      D:/VivadoSuiteStandard/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      D:/VivadoSuiteStandard/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog -include {
    {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ipshared/ec67/hdl}
    {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ipshared/c2c6}
  } {
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/RV_RTDS_xbar_0_stub.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/RV_RTDS_auto_pc_0_stub.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/RV_RTDS_axi_bram_ctrl_0_0_stub.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/RV_RTDS_axi_bram_ctrl_0_1_stub.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/RV_RTDS_blk_mem_gen_0_0_stub.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/RV_RTDS_blk_mem_gen_0_1_stub.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/RV_RTDS_clk_wiz_0_0_stub.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/RV_RTDS_rst_clk_wiz_0_100M_0_stub.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/RV_RTDS_neorv32_integration_0_4_stub.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/top/neorv32_integration_top.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.srcs/sources_1/imports/hdl/RV_RTDS_wrapper.v}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/top/rv_rtds_top.v}
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/synth/RV_RTDS.v}
    }
      rt::read_verilog -include {
    {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ipshared/ec67/hdl}
    {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ipshared/c2c6}
  } {
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ipshared/217a/hdl/xlslice_v1_0_vl_rfs.v}
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_xlslice_0_0/synth/RV_RTDS_xlslice_0_0.v}
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_xlslice_0_1/synth/RV_RTDS_xlslice_0_1.v}
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_xlslice_0_2/synth/RV_RTDS_xlslice_0_2.v}
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v}
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_xlconstant_0_0/synth/RV_RTDS_xlconstant_0_0.v}
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v}
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_xlconcat_0_0/synth/RV_RTDS_xlconcat_0_0.v}
      {c:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.gen/sources_1/bd/RV_RTDS/ip/RV_RTDS_xlconstant_0_1/synth/RV_RTDS_xlconstant_0_1.v}
    }
      rt::read_vhdl -lib xpm D:/VivadoSuiteStandard/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::read_vhdl -lib neorv32 {
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_package.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_application_image.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_boot_rom.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_bootloader_image.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cfs.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_fifo.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_decompressor.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_control.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_regfile.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_cp_shifter.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_cp_muldiv.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_cp_bitmanip.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_cp_fpu.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_cp_cfu.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_alu.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_lsu.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu_pmp.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_cpu.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_crc.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_dcache.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_debug_dm.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_debug_dtm.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_dma.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_dmem.entity.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/mem/neorv32_dmem.legacy.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_gpio.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_gptmr.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_icache.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_imem.entity.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/mem/neorv32_imem.legacy.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_intercon.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_mtime.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_neoled.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_onewire.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_pwm.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_sdi.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_slink.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_spi.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_sysinfo.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_xip.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_wishbone.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_wdt.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_uart.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_twi.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_trng.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_xirq.vhd}
      {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/core/neorv32_top.vhd}
    }
      rt::read_vhdl -lib xil_defaultlib {{C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/src/neorv32/rtl/system_integration/neorv32_SystemTop_axi4lite.vhd}}
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList {{C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/realtime/rv_rtds_top_synth.xdc}}
    rt::sdcChecksum
    set rt::top rv_rtds_top
    rt::set_parameter incrementalOnCache "C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/refSynth"
    rt::set_parameter doIncremental true
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter dataflowBusHighlighting false
    rt::set_parameter generateDataflowBusNetlist false
    rt::set_parameter dataFlowViewInElab false
    rt::set_parameter busViewFixBrokenConnections false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: 
    rt::set_parameter webTalkPath {C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.cache/wt}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "C:/Users/raulm/Desktop/Facultate/Master/Anul 1/Sem1/SDTR/RISCV-RTDS/work/RISCV-RTDS/RISCV-RTDS.runs/synth_1/.Xil/Vivado-13432-DESKTOP-CA1TKI1/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    rt::set_parameter incrementalOnCache ""
    rt::set_parameter doIncremental false
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}