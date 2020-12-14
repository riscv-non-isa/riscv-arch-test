# SAIL C Emulator

To use this as a target you will need to make the following changes

1. in riscv-target/sail-riscv-c/device/ you will find a directory structure simlar to the riscv-test-suite. Each leaf folder will include a Makefile.include file. For all the Makefile.include files inside `rv32i_m` folder please change `TARGET_SIM` to point to the `riscv_sim_RV32` SAIL C Emulator binary. For all the Makefile.include files inside the `rv64i_m` folder please change `TARGET_SIM` to point to the `riscv_sim_RV64` SAIL C emulator binary

2. In the Makefile in the rootfolder change the `RISCV_TARGET` to `sail-riscv-c` and change XLEN to
   32 or 64
