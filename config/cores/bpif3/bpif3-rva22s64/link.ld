/*
 * Linker script for SpacemiT K1 / Banana Pi BPI-F3 bare-metal ACT tests.
 *
 * Load address: 0x04200000.
 *
 * Layout rationale:
 *   0x04000000 — ACT runner firmware (BOARD_FW_LOAD_ADDR)
 *   0x04100000 — tohost polling address (BOARD_FIXED_TOHOST_ADDR)
 *   0x04200000 — test ELF pack + individual ELF load point (here)
 *
 * K1 peripherals (UART 0xD4017000, CLINT 0xE4000000, PLIC 0xE0000000) are
 * more than 2GB from this load address, so they are reached via LOAD_ADDR32
 * (absolute li+shift, see rvmodel_macros.h) rather than PC-relative auipc.
 */

STACK_SIZE = 0x20000;
NUM_HARTS = 1;

PROVIDE(__stack_size = STACK_SIZE);
PROVIDE(__num_harts = NUM_HARTS);

OUTPUT_ARCH( "riscv" )
ENTRY(rvtest_entry_point)

SECTIONS
{
  . = 0x04200000;
  .text.init    : { *(.text.init) }
  .text.rvtest  : { *(.text.rvtest) *(.text.rvtest.*) }
  . = ALIGN(0x4000);
  .rodata       : { *(.rodata) *(.rodata.*) *(.srodata) *(.srodata.*) }
  .data         : { *(.data) *(.data.*) *(.sdata) *(.sdata.*) }
  . = ALIGN(16);
  .bss : {
    __bss_start = .;
    *(.sbss) *(.sbss.*) *(.bss) *(.bss.*) *(COMMON)
    . = ALIGN(16);
    __bss_end = .;
  }
  . = ALIGN(16);
  __stack_bottom = .;
  . += __stack_size * __num_harts;
  __stack_top = .;
  . = ALIGN(0x1000);
  .text.rvmodel : { *(.text.rvmodel) *(.text.rvmodel.*) *(.text) *(.text.*) }
  . = ALIGN(0x1000);
  _end = .;

  /* Peripheral-address stub: a zero-size NOLOAD section so that
   * RVMODEL_MTIMECMP_ADDRESS expands to a relocatable symbol instead of a
   * numeric constant. GAS then emits auipc+addi (pc-relative) for la/LA,
   * which avoids the RV64 sign-extension problem that lui+addi hits for
   * addresses with bit 31 set. The section holds no bytes; only the
   * symbol VMA matters. */
  .k1_periph_mtimecmp 0xE4004000 (NOLOAD) : { _k1_mtimecmp = .; }
}
