#
# Ensure the compiler and necessary executables are on the search PATH
#

#
# Ensure you have set the following Variables
#
#
export ROOTDIR    = $(shell pwd)
export WORK      ?= $(ROOTDIR)/work

include Makefile.include

pipe:= |
empty:=
comma:= ,
space:= $(empty) $(empty)

RISCV_ISA_ALL = $(shell ls $(TARGETDIR)/$(RISCV_TARGET)/device/rv$(XLEN)i_m)
RISCV_ISA_OPT = $(subst $(space),$(pipe),$(RISCV_ISA_ALL))

RISCV_ISA_ALL := $(filter-out Makefile.include,$(RISCV_ISA_ALL))

ifeq ($(RISCV_DEVICE),)
    RISCV_DEVICE = I
    DEFAULT_TARGET=all_variant
else
    DEFAULT_TARGET=variant
endif
export SUITEDIR   = $(ROOTDIR)/riscv-test-suite/rv$(XLEN)i_m/$(RISCV_DEVICE)

$(info )
$(info ============================ VARIABLE INFO ==================================)
$(info ROOTDIR: ${ROOTDIR} [origin: $(origin ROOTDIR)])
$(info WORK: ${WORK} [origin: $(origin WORK)])
$(info TARGETDIR: ${TARGETDIR} [origin: $(origin TARGETDIR)])
$(info RISCV_TARGET: ${RISCV_TARGET} [origin: $(origin RISCV_TARGET)])
$(info XLEN: ${XLEN} [origin: $(origin XLEN)])
$(info RISCV_DEVICE: ${RISCV_DEVICE} [origin: $(origin RISCV_DEVICE)])
$(info =============================================================================)
$(info )

RVTEST_DEFINES = 
ifeq ($(RISCV_ASSERT),1)
	RVTEST_DEFINES += -DRVMODEL_ASSERT
endif
export RVTEST_DEFINES

VERBOSE ?= 0
ifeq ($(VERBOSE),1)
    export V=
    export REDIR1 =
    export REDIR2 =
else
    export V=@
    export REDIR1 = 1>/dev/null
    export REDIR2 = 2>/dev/null
endif

default: $(DEFAULT_TARGET)

variant: simulate verify

all_variant:
	@for isa in $(RISCV_ISA_ALL); do \
		$(MAKE) $(JOBS) RISCV_TARGET=$(RISCV_TARGET) RISCV_TARGET_FLAGS="$(RISCV_TARGET_FLAGS)" RISCV_DEVICE=$$isa variant; \
			rc=$$?; \
			if [ $$rc -ne 0 ]; then \
				exit $$rc; \
			fi \
	done

build: compile
run: simulate
clean_all: clean

compile:
	$(MAKE) $(JOBS) \
		RISCV_TARGET=$(RISCV_TARGET) \
		RISCV_DEVICE=$(RISCV_DEVICE) \
		compile -C $(SUITEDIR)

simulate:
	$(MAKE) $(JOBS) \
		RISCV_TARGET=$(RISCV_TARGET) \
		RISCV_DEVICE=$(RISCV_DEVICE) \
		run -C $(SUITEDIR)

verify: simulate
	riscv-test-env/verify.sh

postverify:
ifeq ($(wildcard $(TARGETDIR)/$(RISCV_TARGET)/postverify.sh),)
	$(info No post verify script found $(TARGETDIR)/$(RISCV_TARGET)/postverify.sh)
else
	$(TARGETDIR)/$(RISCV_TARGET)/postverify.sh
endif

clean:
	$(MAKE) $(JOBS) \
		RISCV_TARGET=$(RISCV_TARGET) \
		RISCV_DEVICE=$(RISCV_DEVICE) \
		clean -C $(SUITEDIR)

help:
	@echo "RISC-V Architectural Tests"
	@echo ""
	@echo "  Makefile Environment Variables to be set per Target"
	@echo "     -- TARGETDIR='<directory containing the target folder>'"
	@echo "     -- XLEN='<make supported xlen>'"
	@echo "     -- RISCV_TARGET='<name of target>'"
	@echo "     -- RISCV_TARGET_FLAGS='<any flags to be passed to target>'"
	@echo "     -- RISCV_DEVICE='$(RISCV_ISA_OPT)' [ leave empty to run all devices ]"
	@echo "     -- RISCV_TEST='<name of the test. eg. I-ADD-01'"
	@echo "    "
	@echo "  Makefile targets available"
	@echo "     -- build: To compile all the tests within the RISCV_DEVICE suite and generate the elfs. Note this will default to running on the I extension alone if RISCV_DEVICE is empty"
	@echo "     -- run: To run compiled tests on the target model and generate signatures. Note this will default to running on the I extension alone if RISCV_DEVICE is empty"
	@echo "     -- verify: To verify if the generated signatures match the corresponding reference signatures. Note this will default to running on the I extension alone if RISCV_DEVICE is empty"
	@echo "     -- postverify: To run post verification processing for a target, for example with this, riscvOVPsim runs instructional functional coverage on the tests"
	@echo "     -- clean : removes the working directory from the root folder and also from the respective device folders of the target"
	@echo "     -- default: build, run, and verify on all devices enabled"

