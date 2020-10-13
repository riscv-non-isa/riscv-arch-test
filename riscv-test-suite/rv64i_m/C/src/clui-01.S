
#This assembly file tests the c.lui instruction of the RISC-V C extension for the clui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clui)

RVTEST_SIGBASE( x2,signature_x2_1)

# rd==x10, rs1_val > 0 and imm_val > 32, imm_val == 42
# opcode:c.lui; op1:x10; dest:x10 op1val:0x0000000004000000; immval:1048554
TEST_CI_OP( c.lui, x10, 0x0000000000000000, 0x0000000004000000, 1048554, x2, 0, x6)

# rd==x23, rs1_val > 0 and imm_val < 32 and imm_val !=0 , 
# opcode:c.lui; op1:x23; dest:x23 op1val:0x0000000000000007; immval:11
TEST_CI_OP( c.lui, x23, 0x0000000000000000, 0x0000000000000007, 11, x2, 8, x6)

# rd==x27, rs1_val < 0 and imm_val > 32, 
# opcode:c.lui; op1:x27; dest:x27 op1val:0xfffffffffffff7ff; immval:1048554
TEST_CI_OP( c.lui, x27, 0x0000000000000000, 0xfffffffffffff7ff, 1048554, x2, 16, x6)

# rd==x26, rs1_val < 0 and imm_val < 32 and imm_val !=0 , 
# opcode:c.lui; op1:x26; dest:x26 op1val:0xfffffdffffffffff; immval:6
TEST_CI_OP( c.lui, x26, 0x0000000000000000, 0xfffffdffffffffff, 6, x2, 24, x6)

# rd==x24, imm_val == 1, 
# opcode:c.lui; op1:x24; dest:x24 op1val:0x0000000002000000; immval:1
TEST_CI_OP( c.lui, x24, 0x0000000000000000, 0x0000000002000000, 1, x2, 32, x6)

# rd==x17, imm_val == 2, 
# opcode:c.lui; op1:x17; dest:x17 op1val:0x0000002000000000; immval:2
TEST_CI_OP( c.lui, x17, 0x0000000000000000, 0x0000002000000000, 2, x2, 40, x6)

# rd==x1, imm_val == 4, 
# opcode:c.lui; op1:x1; dest:x1 op1val:0x0000000000000800; immval:4
TEST_CI_OP( c.lui, x1, 0x0000000000000000, 0x0000000000000800, 4, x2, 48, x6)

# rd==x19, imm_val == 8, 
# opcode:c.lui; op1:x19; dest:x19 op1val:0xffffffdfffffffff; immval:8
TEST_CI_OP( c.lui, x19, 0x0000000000000000, 0xffffffdfffffffff, 8, x2, 56, x6)

# rd==x31, imm_val == 16, 
# opcode:c.lui; op1:x31; dest:x31 op1val:0x0020000000000000; immval:16
TEST_CI_OP( c.lui, x31, 0x0000000000000000, 0x0020000000000000, 16, x2, 64, x6)

# rd==x13, imm_val == 32, 
# opcode:c.lui; op1:x13; dest:x13 op1val:0x0000040000000000; immval:1048544
TEST_CI_OP( c.lui, x13, 0x0000000000000000, 0x0000040000000000, 1048544, x2, 72, x6)

# rd==x30, imm_val == 21, 
# opcode:c.lui; op1:x30; dest:x30 op1val:0x0000000000001000; immval:21
TEST_CI_OP( c.lui, x30, 0x0000000000000000, 0x0000000000001000, 21, x2, 80, x6)

# rd==x14, imm_val == 62, 
# opcode:c.lui; op1:x14; dest:x14 op1val:0xffefffffffffffff; immval:1048574
TEST_CI_OP( c.lui, x14, 0x0000000000000000, 0xffefffffffffffff, 1048574, x2, 88, x6)

# rd==x15, imm_val == 61, 
# opcode:c.lui; op1:x15; dest:x15 op1val:0xfffffffffffffffb; immval:1048573
TEST_CI_OP( c.lui, x15, 0x0000000000000000, 0xfffffffffffffffb, 1048573, x2, 96, x6)

# rd==x3, imm_val == 59, 
# opcode:c.lui; op1:x3; dest:x3 op1val:0xfffffffffff7ffff; immval:1048571
TEST_CI_OP( c.lui, x3, 0x0000000000000000, 0xfffffffffff7ffff, 1048571, x2, 104, x6)

# rd==x28, imm_val == 55, 
# opcode:c.lui; op1:x28; dest:x28 op1val:0xfffffffffffffdff; immval:1048567
TEST_CI_OP( c.lui, x28, 0x0000000000000000, 0xfffffffffffffdff, 1048567, x2, 112, x6)

# rd==x18, imm_val == 47, 
# opcode:c.lui; op1:x18; dest:x18 op1val:0x1000000000000000; immval:1048559
TEST_CI_OP( c.lui, x18, 0x0000000000000000, 0x1000000000000000, 1048559, x2, 120, x6)

# rd==x22, imm_val == 31, 
# opcode:c.lui; op1:x22; dest:x22 op1val:0xffffffffffefffff; immval:31
TEST_CI_OP( c.lui, x22, 0x0000000000000000, 0xffffffffffefffff, 31, x2, 128, x6)

# rd==x9, 
# opcode:c.lui; op1:x9; dest:x9 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x9, 0x0000000000000000, 0x0000000000000000, 16, x2, 136, x6)

# rd==x5, 
# opcode:c.lui; op1:x5; dest:x5 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x5, 0x0000000000000000, 0x0000000000000000, 16, x2, 144, x6)

# rd==x7, 
# opcode:c.lui; op1:x7; dest:x7 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x7, 0x0000000000000000, 0x0000000000000000, 16, x2, 152, x6)

# rd==x21, 
# opcode:c.lui; op1:x21; dest:x21 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x21, 0x0000000000000000, 0x0000000000000000, 16, x2, 160, x6)

# rd==x8, 
# opcode:c.lui; op1:x8; dest:x8 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x8, 0x0000000000000000, 0x0000000000000000, 16, x2, 168, x6)

# rd==x16, 
# opcode:c.lui; op1:x16; dest:x16 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x16, 0x0000000000000000, 0x0000000000000000, 16, x2, 176, x6)

# rd==x4, 
# opcode:c.lui; op1:x4; dest:x4 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x4, 0x0000000000000000, 0x0000000000000000, 16, x2, 184, x6)

# rd==x11, 
# opcode:c.lui; op1:x11; dest:x11 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x11, 0x0000000000000000, 0x0000000000000000, 16, x2, 192, x6)

# rd==x29, 
# opcode:c.lui; op1:x29; dest:x29 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x29, 0x0000000000000000, 0x0000000000000000, 16, x2, 200, x6)

# rd==x12, 
# opcode:c.lui; op1:x12; dest:x12 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x12, 0x0000000000000000, 0x0000000000000000, 16, x2, 208, x6)

# rd==x20, 
# opcode:c.lui; op1:x20; dest:x20 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x20, 0x0000000000000000, 0x0000000000000000, 16, x2, 216, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x6, 
# opcode:c.lui; op1:x6; dest:x6 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x6, 0x0000000000000000, 0x0000000000000000, 16, x1, 0, x3)

# rd==x0, 
# opcode:c.lui; op1:x0; dest:x0 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x0, 0x0000000000000000, 0x0000000000000000, 16, x1, 8, x3)

# rd==x25, 
# opcode:c.lui; op1:x25; dest:x25 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x25, 0x0000000000000000, 0x0000000000000000, 16, x1, 16, x3)

# 
# opcode:c.lui; op1:x10; dest:x10 op1val:0x0000000000000000; immval:16
TEST_CI_OP( c.lui, x10, 0x0000000000000000, 0x0000000000000000, 16, x1, 24, x3)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 4*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
