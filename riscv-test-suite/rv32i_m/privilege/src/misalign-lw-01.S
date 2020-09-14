
#This assembly file tests the lw instruction of the RISC-V I extension for the misalign-lw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True;def TEST_CASE_1=True;",misalign-lw)

RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-lw)

la x1,signature_x1_1

# opcode:lw op1:x10; dest:x11; immval:16; align:1
TEST_LOAD(x1,x2,0,x10,x11,16,0,lw,1)

# opcode:lw op1:x10; dest:x11; immval:-17; align:2
TEST_LOAD(x1,x2,0,x10,x11,-17,4,lw,2)

# opcode:lw op1:x10; dest:x11; immval:2047; align:3
TEST_LOAD(x1,x2,0,x10,x11,2047,8,lw,3)
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
