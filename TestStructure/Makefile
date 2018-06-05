#
# Ensure you have set the following Variables
#
#
CWD=$(shell pwd)

RISCV_TARGET?=riscvOVPsim 
RISCV_DEVICE?=rv32i

GCC_BIN ?= /home/moore/Imperas/lib/Linux32/CrossCompiler/microsemi-riscv-unknown-elf-gcc/bin
OVP_BIN ?= /home/moore/Imperas/fixedPlatform/riscvOVPsim/bin/Linux32
SPK_BIN ?= /scratch/install/20180201/bin
PATH := $(PATH):$(GCC_BIN):$(OVP_BIN):$(SPK_BIN):.

export WORK=$(CWD)/work
#export ENV=$(CWD)/riscv-test-env/p/
export ISA=$(CWD)/rv32i/ISA
export BC=$(CWD)/rv32i/binary_coding


all: simulate verify

simulate:
	make RISCV_TARGET=$(RISCV_TARGET) RISCV_DEVICE=$(RISCV_DEVICE) RISCV_PREFIX=riscv64-unknown-elf- run -C $(ISA)
	
verify:
	verify.sh

clean:
	make clean -C $(BC)
	make clean -C $(ISA)
	
help:
	@echo "make"
	@echo "RISCV_TARGET='riscvOVPsim|spike'"
	@echo "RISCV_DEVICE='rv32i|...'"