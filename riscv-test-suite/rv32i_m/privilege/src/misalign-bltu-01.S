
#This assembly file tests the bltu instruction of the RISC-V I extension for the misalign-bltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",misalign-bltu)

RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zicsr.*); check ISA:=regex(^[^C]+$); def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-bltu)

la x1,signature_x1_1

# opcode: bltu, op1:x10; op2:x11; op1val:0x02000000; op2val:0xaaaaaaaa; immval:1024; align: 2
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x02000000, 0xaaaaaaaa, 1024, 1b, x1, 0,2)
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
