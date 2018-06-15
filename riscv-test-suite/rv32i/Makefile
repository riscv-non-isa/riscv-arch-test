#=======================================================================
# Makefile for riscv-tests/isa
#-----------------------------------------------------------------------

act_dir := .
src_dir := $(act_dir)/src
work_dir := $(ROOTDIR)/work
work_dir_isa := $(work_dir)/$(ISA)

include $(act_dir)/Makefrag

default: all

#--------------------------------------------------------------------
# Build rules
#--------------------------------------------------------------------

vpath %.S $(act_dir)

-include $(ROOTDIR)/riscv-target/$(RISCV_TARGET)/device/$(RISCV_DEVICE)/Makefile.include

#------------------------------------------------------------
# Build and run assembly tests

%.out32: %.elf
	$(RUN_TARGET)


define compile_template

$$($(1)_tests): %.elf: $(src_dir)/%.S
	mkdir -p $(work_dir_isa)/$$(@D)
	$(COMPILE_TARGET)
$(1)_tests += $$($(1)_p_tests)

.PHONY: $(1)

tests += $$($(1)_tests)

endef

$(eval $(call compile_template,rv32i,-march=rv32i -mabi=ilp32))

tests32_out = $(patsubst %.elf,%.out32,$(target32_tests))

run: $(tests32_out)

#------------------------------------------------------------
# Default

all: $(tests_dump)

#------------------------------------------------------------
# Clean up

clean:
	rm -rf $(work_dir)
