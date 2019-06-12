ifndef IMPERAS_HOME
  IMPERAS_ERROR := $(error "IMPERAS_HOME not defined, please setup Imperas/OVP environment")
endif
IMPERAS_HOME := $(shell getpath.exe "$(IMPERAS_HOME)")

SRC     = $(wildcard *.S)
ELF     = $(SRC:.S=.elf)
OD      = $(SRC:.S=.od)

PATH          := $(PATH):$(IMPERAS_HOME)/lib/$(IMPERAS_ARCH)/CrossCompiler/riscv-none-embed/bin
RISCV_PREFIX  ?= riscv-none-embed-
RISCV_CC      ?= $(RISCV_PREFIX)gcc
RISCV_OBJDUMP ?= $(RISCV_PREFIX)objdump

OPT_CC  = -mabi=lp64 -march=rv64im -DXLEN64
OPT_CC += -Wl,-Ttext=0x80000000 -nostartfiles


all: $(ELF) $(OD)

%.elf: %.S
	@echo "# Build $@"
	$(RISCV_CC)  $(OPT_CC) -o $@ $<

%.od: %.elf
	@echo "# Objdump $<"
	$(RISCV_OBJDUMP) -D $< > $@

clean:
	rm -f $(ELF) $(OD)
