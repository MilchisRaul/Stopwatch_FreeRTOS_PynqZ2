# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/rgb_led/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/rgb_led/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {rgb_led}\
-hw {/home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/Vivado/rgb_led_platform/rgb_led_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {freertos10_xilinx} -out {/home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter}

platform write
platform generate -domains 
platform active {rgb_led}
platform generate
