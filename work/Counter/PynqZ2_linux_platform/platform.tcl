# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/PynqZ2_linux_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/PynqZ2_linux_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {PynqZ2_linux_platform}\
-hw {/home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/PynqZ2_platform/PynqZ2_linux_platform.xsa}\
-out {/home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_hello_world}
platform generate -domains 
platform active {PynqZ2_linux_platform}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
platform generate
platform clean
platform generate
