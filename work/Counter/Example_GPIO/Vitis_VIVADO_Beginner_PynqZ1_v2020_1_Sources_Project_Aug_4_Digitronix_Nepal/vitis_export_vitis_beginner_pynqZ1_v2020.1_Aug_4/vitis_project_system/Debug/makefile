#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = D:/Digitronix/Vitis_Beginner_Tutorial/vitis_project_platform/export/vitis_project_platform/vitis_project_platform.xpfm
SYS_CONFIG = vitis_project_platform
DOMAINS = standalone_domain
BIF_PATH = D:/Digitronix/Vitis_Beginner_Tutorial/vitis_project_system/Debug/system.bif

BITSTREAM_PATH = D:/Digitronix/Vitis_Beginner_Tutorial/vitis_project/_ide/bitstream/design_1_wrapper.bit
SD_FILES = --elf D:/Digitronix/Vitis_Beginner_Tutorial/vitis_project/Debug/vitis_project.elf,ps7_cortexa9_0

#
# primary build targets
#

all: package

package:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 54199 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean


