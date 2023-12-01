# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\raulm\Desktop\Facultate\Master\Anul1\Sem1\SDTR\RISCV-RTDS\work\pynqz2v2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\raulm\Desktop\Facultate\Master\Anul1\Sem1\SDTR\RISCV-RTDS\work\pynqz2v2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {pynqz2v2}\
-hw {C:\Users\raulm\Desktop\Facultate\Master\Anul1\Sem1\SDTR\RISCV-RTDS\work\PynqZ2_platform\PynqZ2_AXI_Interc.xsa}\
-proc {ps7_cortexa9_0} -os {freertos10_xilinx} -out {C:/Users/raulm/Desktop/Facultate/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work}

platform write
platform generate -domains 
platform active {pynqz2v2}
bsp reload
domain active {zynq_fsbl}
bsp reload
