#
# Ensure you have set the following Variables
#
#

RISCV_TARGET ?= riscvOVPsim 
RISCV_DEVICE ?= rv32i

GCC_BIN ?= /home/moore/Imperas/lib/Linux32/CrossCompiler/microsemi-riscv-unknown-elf-gcc/bin
OVP_BIN ?= /home/moore/Imperas/fixedPlatform/riscvOVPsim/bin/Linux32
SPK_BIN ?= /scratch/install/20180201/bin
PATH := $(PATH):$(GCC_BIN):$(OVP_BIN):$(SPK_BIN):.

export ROOTDIR = $(shell pwd)
export WORK    = $(ROOTDIR)/work
export ISA     = $(ROOTDIR)/riscv-test-suite/rv32i/ISA


all: simulate verify

simulate:
	make \
		RISCV_TARGET=$(RISCV_TARGET) RISCV_DEVICE=$(RISCV_DEVICE) \
		RISCV_PREFIX=riscv64-unknown-elf- run -C $(ISA)
	
verify:
	riscv-test-env/verify.sh

clean:
	make clean -C $(ISA)
	
help:
	@echo "make"
	@echo "RISCV_TARGET='riscvOVPsim|spike'"
	@echo "RISCV_DEVICE='rv32i|...'"