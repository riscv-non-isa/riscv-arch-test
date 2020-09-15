
#This assembly file tests the sw instruction of the RISC-V I extension for the misalign-sw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-sw)

RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-sw)

la x1,signature_x1_1

# opcode: sw; op1:x10; op2:x11; op2val:0x40000000; immval: 1365; align:1
TEST_STORE(x1,x2,0,x10,x11,0x40000000,1365,0,sw,1)

# opcode: sw; op1:x10; op2:x11; op2val:0x00000800; immval: 3; align:2
TEST_STORE(x1,x2,0,x10,x11,0x00000800,3,4,sw,2)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffe; immval: -4; align:3
TEST_STORE(x1,x2,0,x10,x11,0xfffffffe,-4,8,sw,3)
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
    .fill 3*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
