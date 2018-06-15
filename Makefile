#
# Ensure the compiler and necessary executables are on the search PATH
#

#
# Ensure you have set the following Variables
#
#

RISCV_TARGET ?= riscvOVPsim 
RISCV_DEVICE ?= rv32i
RISCV_PREFIX ?= riscv64-unknown-elf-

export ROOTDIR  = $(shell pwd)
export WORK     = $(ROOTDIR)/work
export ISA      = rv32i
export SUITEDIR = $(ROOTDIR)/riscv-test-suite/$(ISA)


all: simulate verify

simulate:
	make \
		RISCV_TARGET=$(RISCV_TARGET) RISCV_DEVICE=$(RISCV_DEVICE) \
		RISCV_PREFIX=$(RISCV_PREFIX) run -C $(SUITEDIR)
	
verify:
	riscv-test-env/verify.sh

clean:
	make clean -C $(SUITEDIR)
	
help:
	@echo "make"
	@echo "RISCV_TARGET='riscvOVPsim|spike'"
	@echo "RISCV_DEVICE='rv32i|...'"
