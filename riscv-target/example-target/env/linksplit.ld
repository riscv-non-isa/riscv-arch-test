OUTPUT_ARCH("riscv")
ENTRY(_start)

MEMORY {               
  sram (rwx) : ORIGIN = <ram_address>, LENGTH = <ram_size>
  maskrom_mem (rx) : ORIGIN = <rom_address>, LENGTH = <rom_size>
}

SECTIONS
{
 
  .text.init ALIGN((ORIGIN(maskrom_mem) + 0x0), 64) : AT(ALIGN((ORIGIN(maskrom_mem) + 0x0), 64)) {
    PROVIDE(_ftext = .);
    *(.text.init)
    PROVIDE(_etext = .);
  }

  .text ALIGN((ADDR(.text.init) + SIZEOF(.text.init)), 64) : AT(ALIGN((LOADADDR(.text.init) + SIZEOF(.text.init)), 64)) {
    *(.text)
  } 

  .tohost ALIGN((ORIGIN(sram)), 64) : AT(ALIGN((LOADADDR(.text) + SIZEOF(.text)), 64)) {
    *(.tohost)
  }

  .data ALIGN((ADDR(.tohost) + SIZEOF(.tohost)), 64) : AT(ALIGN((LOADADDR(.tohost) + SIZEOF(.tohost)), 64)) {
    *(.data)
  } 

  PROVIDE(_data = ADDR(.data));
  PROVIDE(_data_lma = LOADADDR(.data));
  PROVIDE(_edata = ADDR(.data) + SIZEOF(.data));

  .data.string ALIGN((ADDR(.data) + SIZEOF(.data)), 64) : AT(ALIGN((LOADADDR(.data) + SIZEOF(.data)), 64)) {
    *(.data.string)
  }  

  PROVIDE(_fstext = ADDR(.data.string));
  PROVIDE(_data_strings = LOADADDR(.data.string));
  PROVIDE(_estext = ADDR(.data.string) + SIZEOF(.data.string));

  .bss ALIGN((ADDR(.data.string) + SIZEOF(.data.string)), 64) : AT(ALIGN((LOADADDR(.data.string) + SIZEOF(.data.string)), 64)) ALIGN(8) {
    PROVIDE(_fbss = .);
    *(.bss)
    PROVIDE(_ebss = .);
  } 

  PROVIDE(_end = .);

}