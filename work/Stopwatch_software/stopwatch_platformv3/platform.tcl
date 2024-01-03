# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/stopwatch_platformv3/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/stopwatch_platformv3/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {stopwatch_platformv3}\
-hw {/home/raul/Desktop/Master/Anul1/Sem1/SDTR/Stopwatch_FreeRTOS_PynqZ2/work/Counter/Vivado/stopwatch_platform/stopwatch_64bit.xsa}\
-proc {ps7_cortexa9_0} -os {freertos10_xilinx} -out {/home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter}

platform write
platform generate -domains 
platform active {stopwatch_platformv3}
platform generate
