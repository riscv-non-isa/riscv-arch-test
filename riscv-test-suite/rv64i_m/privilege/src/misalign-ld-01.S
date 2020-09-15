
#This assembly file tests the ld instruction of the RISC-V I extension for the misalign-ld covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-ld)

RVTEST_CASE(1,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-ld)

la x1,signature_x1_1

# opcode:ld op1:x10; dest:x11; immval:1023; align:1
TEST_LOAD(x1,x2,0,x10,x11,1023,0,ld,1)

# opcode:ld op1:x10; dest:x11; immval:1365; align:2
TEST_LOAD(x1,x2,0,x10,x11,1365,8,ld,2)

# opcode:ld op1:x10; dest:x11; immval:-257; align:3
TEST_LOAD(x1,x2,0,x10,x11,-257,16,ld,3)

# opcode:ld op1:x10; dest:x11; immval:8; align:4
TEST_LOAD(x1,x2,0,x10,x11,8,24,ld,4)

# opcode:ld op1:x10; dest:x11; immval:4; align:5
TEST_LOAD(x1,x2,0,x10,x11,4,32,ld,5)

# opcode:ld op1:x10; dest:x11; immval:-257; align:6
TEST_LOAD(x1,x2,0,x10,x11,-257,40,ld,6)

# opcode:ld op1:x10; dest:x11; immval:256; align:7
TEST_LOAD(x1,x2,0,x10,x11,256,48,ld,7)
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
