
#This assembly file tests the bgeu instruction of the RISC-V I extension for the misalign-bgeu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",misalign-bgeu)

RVTEST_CASE(1,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*Zicsr.*); check ISA:=regex(^[^C]+$); def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-bgeu)

la x1,signature_x1_1

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xfffffffffffffbff; immval:16; align: 2
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffffeff, 0xfffffffffffffbff, 16, 3f, x1, 0,2)
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
    .fill 1*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
