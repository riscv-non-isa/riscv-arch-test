
#This assembly file tests the ld instruction of the RISC-V I extension for the misalign-ld covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-ld)

RVTEST_CASE(1,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-ld)

RVTEST_SIGBASE( x1,signature_x1_1)

# ea_align == 1, 
# opcode:ld op1:x10; dest:x11; immval:-4; align:1
TEST_LOAD(x1,x2,0,x10,x11,-4,0,ld,1)

# ea_align == 2, 
# opcode:ld op1:x10; dest:x11; immval:-2048; align:2
TEST_LOAD(x1,x2,0,x10,x11,-2048,8,ld,2)

# ea_align == 3, 
# opcode:ld op1:x10; dest:x11; immval:2047; align:3
TEST_LOAD(x1,x2,0,x10,x11,2047,16,ld,3)

# ea_align == 4, 
# opcode:ld op1:x10; dest:x11; immval:-3; align:4
TEST_LOAD(x1,x2,0,x10,x11,-3,24,ld,4)

# ea_align == 5, 
# opcode:ld op1:x10; dest:x11; immval:-3; align:5
TEST_LOAD(x1,x2,0,x10,x11,-3,32,ld,5)

# ea_align == 6, 
# opcode:ld op1:x10; dest:x11; immval:32; align:6
TEST_LOAD(x1,x2,0,x10,x11,32,40,ld,6)

# ea_align == 7, 
# opcode:ld op1:x10; dest:x11; immval:-9; align:7
TEST_LOAD(x1,x2,0,x10,x11,-9,48,ld,7)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 7*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
