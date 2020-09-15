
#This assembly file tests the sd instruction of the RISC-V I extension for the misalign-sd covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-sd)

RVTEST_CASE(1,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-sd)

la x1,signature_x1_1

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000000005; immval: 64; align:1
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000005,64,0,sd,1)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: 7; align:2
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,7,8,sd,2)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000200000; immval: 5; align:3
TEST_STORE(x1,x2,0,x10,x11,0x0000000000200000,5,16,sd,3)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: -9; align:4
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,-9,24,sd,4)

# opcode: sd; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: 1; align:5
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,1,32,sd,5)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000002000; immval: -8; align:6
TEST_STORE(x1,x2,0,x10,x11,0x0000000000002000,-8,40,sd,6)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: -8; align:7
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,-8,48,sd,7)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 7*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
