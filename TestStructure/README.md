The only setup required is to define where the toolchain is found, and where the fixed platform executable is found

In the Makefile there are 2 entries to be defined for
GCC_BIN & OVP_BIN

I have as yet only defined a single test which uses any logging, this is the test I-IO
This test contains a number of logging macros, eg

    RVTEST_IO_WRITE_STR("# Test part A1 - Complete\n");

and assertion macros for sequential correctness

    RVTEST_IO_ASSERT_EQ(x3, 0x00000000)

To run on rv32i on either riscOVPsim or spike

    make RISCV_TARGET=riscOVPsim RISCV_DEVICE=rv32i
    make RISCV_TARGET=riscOVPsim RISCV_DEVICE=rv32i