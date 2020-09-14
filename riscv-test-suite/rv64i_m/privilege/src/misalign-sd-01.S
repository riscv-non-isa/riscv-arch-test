
#This assembly file tests the sd instruction of the RISC-V I extension for the misalign-sd covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True;def TEST_CASE_1=True;",misalign-sd)

RVTEST_CASE(1,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-sd)

la x1,signature_x1_1

# opcode: sd; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 128; align:1
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,128,0,sd,1)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000800000000; immval: 5; align:2
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,5,8,sd,2)

# opcode: sd; op1:x10; op2:x11; op2val:0x0040000000000000; immval: 16; align:3
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,16,16,sd,3)

# opcode: sd; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: -17; align:4
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,-17,24,sd,4)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffff9; immval: 6; align:5
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff9,6,32,sd,5)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: -1024; align:6
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,-1024,40,sd,6)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000008000; immval: -1024; align:7
TEST_STORE(x1,x2,0,x10,x11,0x0000000000008000,-1024,48,sd,7)
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
