#=======================================================================
# Makefile for riscv-tests/isa
#-----------------------------------------------------------------------

act_dir := .
src_dir := $(act_dir)/src
work_dir := $(act_dir)/../../work/bc

include $(act_dir)/Makefrag

default: all

#--------------------------------------------------------------------
# Build rules
#--------------------------------------------------------------------

RISCV_PREFIX ?= riscv32-unknown-elf-
RISCV_GCC ?= $(RISCV_PREFIX)gcc
RISCV_GCC_OPTS ?= -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles
RISCV_OBJDUMP ?= $(RISCV_PREFIX)objdump  -S -j .text.init

vpath %.S $(act_dir)

#------------------------------------------------------------
# Build assembly tests

%.dump: %
	$(RISCV_OBJDUMP) $(work_dir)/$< | cut -f 2 | sed --expression='s/ //g'| grep -x '[0-9a-fA-F]\{8\}' > $(work_dir)/$@

define compile_template

$$($(1)_tests): %: $(src_dir)/%.S
	$$(RISCV_GCC) $(2) $$(RISCV_GCC_OPTS) -I$(act_dir)/../../riscv-test-env/p/ -T$(act_dir)/../../riscv-test-env/p/link.ld $$< -o $(work_dir)/$$@
$(1)_tests += $$($(1)_p_tests)

.PHONY: $(1)

tests += $$($(1)_tests)

endef

$(eval $(call compile_template,rv32i,-march=rv32i -mabi=ilp32))

tests_dump = $(addsuffix .dump, $(tests))

run: $(tests_dump)

junk += $(tests) $(tests_dump)

#------------------------------------------------------------
# Default

all: $(tests_dump)

#------------------------------------------------------------
# Clean up

clean:
	rm -rf $(work_dir)
