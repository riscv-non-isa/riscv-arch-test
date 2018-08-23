#
# Ensure the compiler and necessary executables are on the search PATH
#

#
# Ensure you have set the following Variables
#
#

pipe:= |
empty:=
space:= $(empty) $(empty)

RISCV_ISA_ALL = $(shell ls $(ROOTDIR)/riscv-test-suite)
RISCV_ISA_OPT = $(subst $(space),$(pipe),$(RISCV_ISA_ALL))

RISCV_TARGET ?= riscvOVPsim 
RISCV_DEVICE ?= rv32i
RISCV_PREFIX ?= riscv64-unknown-elf-
RISCV_ISA    ?= rv32i

export ROOTDIR  = $(shell pwd)
export WORK     = $(ROOTDIR)/work
export SUITEDIR = $(ROOTDIR)/riscv-test-suite/$(RISCV_ISA)

all: simulate verify

all_variant:
	$(MAKE) RISCV_TARGET=riscvOVPsim RISCV_DEVICE=rv32i  RISCV_ISA=rv32i
	$(MAKE) RISCV_TARGET=riscvOVPsim RISCV_DEVICE=rv32im RISCV_ISA=rv32im
	$(MAKE) RISCV_TARGET=spike       RISCV_DEVICE=rv32i  RISCV_ISA=rv32i
	$(MAKE) RISCV_TARGET=spike       RISCV_DEVICE=rv32im RISCV_ISA=rv32im

simulate:
	make \
		RISCV_TARGET=$(RISCV_TARGET) \
		RISCV_DEVICE=$(RISCV_DEVICE) \
		RISCV_PREFIX=$(RISCV_PREFIX) \
		run -C $(SUITEDIR)
	
verify:
	riscv-test-env/verify.sh

clean:
	make \
		RISCV_TARGET=$(RISCV_TARGET) \
		RISCV_DEVICE=$(RISCV_DEVICE) \
		RISCV_PREFIX=$(RISCV_PREFIX) \
		clean -C $(SUITEDIR)

help:
	@echo "make"
	@echo "RISCV_TARGET='riscvOVPsim|spike'"
	@echo "RISCV_DEVICE='rv32i|rv32im|...'"
	@echo "RISCV_ISA=$(RISCV_ISA_OPT)"
	@echo "make all_variant // all combinations"
	
