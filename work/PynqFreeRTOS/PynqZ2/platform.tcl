# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\raulm\Desktop\Facultate\Master\Anul1\Sem1\SDTR\RISCV-RTDS\work\PynqFreeRTOS\PynqZ2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\raulm\Desktop\Facultate\Master\Anul1\Sem1\SDTR\RISCV-RTDS\work\PynqFreeRTOS\PynqZ2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {PynqZ2}\
-hw {C:\Users\raulm\Desktop\Facultate\Master\Anul1\Sem1\SDTR\RISCV-RTDS\work\PynqZ2_platform\PynqZ2_AXI_Interc.xsa}\
-out {C:/Users/raulm/Desktop/Facultate/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/PynqFreeRTOS}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_hello_world}
platform generate -domains 
platform active {PynqZ2}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
