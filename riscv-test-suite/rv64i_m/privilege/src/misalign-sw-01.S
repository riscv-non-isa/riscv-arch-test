
#This assembly file tests the sw instruction of the RISC-V I extension for the misalign-sw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*); check hw_data_misaligned_support:=True; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-sw)

RVTEST_CASE(1,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*Zicsr.*); check hw_data_misaligned_support:=False; def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",misalign-sw)

RVTEST_SIGBASE( x1,signature_x1_1)

# ea_align == 1, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000000400000; immval:-1; align:1
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,-1,0,sw,1)

# ea_align == 2, 
# opcode: sw; op1:x10; op2:x11; op2val:0xc000000000000000; immval:-8; align:2
TEST_STORE(x1,x2,0,x10,x11,0xc000000000000000,-8,8,sw,2)

# ea_align == 3, 
# opcode: sw; op1:x10; op2:x11; op2val:0x0000000000010000; immval:-6; align:3
TEST_STORE(x1,x2,0,x10,x11,0x0000000000010000,-6,16,sw,3)
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
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 3*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
