# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/stopwatch_v3_system/_ide/scripts/debugger_stopwatch_v3-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/stopwatch_v3_system/_ide/scripts/debugger_stopwatch_v3-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-23727093-0"}
fpga -file /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/stopwatch_v3/_ide/bitstream/stopwatch_64bit.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/stopwatch_platformv3/export/stopwatch_platformv3/hw/stopwatch_64bit.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/stopwatch_v3/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/raul/Desktop/Master/Anul1/Sem1/SDTR/RISCV-RTDS/work/Counter/stopwatch_v3/Debug/stopwatch_v3.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
