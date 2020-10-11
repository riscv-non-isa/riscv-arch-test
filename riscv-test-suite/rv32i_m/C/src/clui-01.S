
#This assembly file tests the c.lui instruction of the RISC-V C extension for the clui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clui)

la x2,signature_x2_1

# rd==x21, rs1_val > 0 and imm_val > 32, imm_val == 42
# opcode:c.lui; op1:x21; dest:x21 op1val:0x00000002; immval:1048554
TEST_CI_OP( c.lui, x21, 0x00000000, 0x00000002, 1048554, x2, 0, x15)

# rd==x26, rs1_val > 0 and imm_val < 32 and imm_val !=0 , 
# opcode:c.lui; op1:x26; dest:x26 op1val:0x00000400; immval:15
TEST_CI_OP( c.lui, x26, 0x00000000, 0x00000400, 15, x2, 4, x15)

# rd==x23, rs1_val < 0 and imm_val > 32, imm_val == 55
# opcode:c.lui; op1:x23; dest:x23 op1val:0xffdfffff; immval:1048567
TEST_CI_OP( c.lui, x23, 0x00000000, 0xffdfffff, 1048567, x2, 8, x15)

# rd==x4, rs1_val < 0 and imm_val < 32 and imm_val !=0 , 
# opcode:c.lui; op1:x4; dest:x4 op1val:0xfffff7ff; immval:3
TEST_CI_OP( c.lui, x4, 0x00000000, 0xfffff7ff, 3, x2, 12, x15)

# rd==x12, imm_val == 1, 
# opcode:c.lui; op1:x12; dest:x12 op1val:0x00000080; immval:1
TEST_CI_OP( c.lui, x12, 0x00000000, 0x00000080, 1, x2, 16, x15)

# rd==x5, imm_val == 2, 
# opcode:c.lui; op1:x5; dest:x5 op1val:0x00000007; immval:2
TEST_CI_OP( c.lui, x5, 0x00000000, 0x00000007, 2, x2, 20, x15)

# rd==x17, imm_val == 4, 
# opcode:c.lui; op1:x17; dest:x17 op1val:0xfffffffb; immval:4
TEST_CI_OP( c.lui, x17, 0x00000000, 0xfffffffb, 4, x2, 24, x15)

# rd==x10, imm_val == 8, 
# opcode:c.lui; op1:x10; dest:x10 op1val:0x00800000; immval:8
TEST_CI_OP( c.lui, x10, 0x00000000, 0x00800000, 8, x2, 28, x15)

# rd==x16, imm_val == 16, 
# opcode:c.lui; op1:x16; dest:x16 op1val:0xfff7ffff; immval:16
TEST_CI_OP( c.lui, x16, 0x00000000, 0xfff7ffff, 16, x2, 32, x15)

# rd==x3, imm_val == 21, 
# opcode:c.lui; op1:x3; dest:x3 op1val:0x3fffffff; immval:21
TEST_CI_OP( c.lui, x3, 0x00000000, 0x3fffffff, 21, x2, 36, x15)

# rd==x27, imm_val == 32, 
# opcode:c.lui; op1:x27; dest:x27 op1val:0xffdfffff; immval:1048544
TEST_CI_OP( c.lui, x27, 0x00000000, 0xffdfffff, 1048544, x2, 40, x15)

# rd==x18, imm_val == 62, 
# opcode:c.lui; op1:x18; dest:x18 op1val:0x00002000; immval:1048574
TEST_CI_OP( c.lui, x18, 0x00000000, 0x00002000, 1048574, x2, 44, x15)

# rd==x6, imm_val == 61, 
# opcode:c.lui; op1:x6; dest:x6 op1val:0x7fffffff; immval:1048573
TEST_CI_OP( c.lui, x6, 0x00000000, 0x7fffffff, 1048573, x2, 48, x15)

# rd==x20, imm_val == 59, 
# opcode:c.lui; op1:x20; dest:x20 op1val:0xc0000000; immval:1048571
TEST_CI_OP( c.lui, x20, 0x00000000, 0xc0000000, 1048571, x2, 52, x15)

# rd==x7, imm_val == 47, 
# opcode:c.lui; op1:x7; dest:x7 op1val:0xfffffffc; immval:1048559
TEST_CI_OP( c.lui, x7, 0x00000000, 0xfffffffc, 1048559, x2, 56, x15)

# rd==x13, imm_val == 31, 
# opcode:c.lui; op1:x13; dest:x13 op1val:0xfffffeff; immval:31
TEST_CI_OP( c.lui, x13, 0x00000000, 0xfffffeff, 31, x2, 60, x15)

# rd==x28, 
# opcode:c.lui; op1:x28; dest:x28 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x28, 0x00000000, 0x00000000, 16, x2, 64, x15)

# rd==x22, 
# opcode:c.lui; op1:x22; dest:x22 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x22, 0x00000000, 0x00000000, 16, x2, 68, x15)

# rd==x14, 
# opcode:c.lui; op1:x14; dest:x14 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x14, 0x00000000, 0x00000000, 16, x2, 72, x15)

# rd==x31, 
# opcode:c.lui; op1:x31; dest:x31 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x31, 0x00000000, 0x00000000, 16, x2, 76, x15)

# rd==x11, 
# opcode:c.lui; op1:x11; dest:x11 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x11, 0x00000000, 0x00000000, 16, x2, 80, x15)

# rd==x25, 
# opcode:c.lui; op1:x25; dest:x25 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x25, 0x00000000, 0x00000000, 16, x2, 84, x15)

# rd==x19, 
# opcode:c.lui; op1:x19; dest:x19 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x19, 0x00000000, 0x00000000, 16, x2, 88, x15)

# rd==x1, 
# opcode:c.lui; op1:x1; dest:x1 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x1, 0x00000000, 0x00000000, 16, x2, 92, x15)

# rd==x9, 
# opcode:c.lui; op1:x9; dest:x9 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x9, 0x00000000, 0x00000000, 16, x2, 96, x15)

# rd==x8, 
# opcode:c.lui; op1:x8; dest:x8 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x8, 0x00000000, 0x00000000, 16, x2, 100, x15)

# rd==x24, 
# opcode:c.lui; op1:x24; dest:x24 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x24, 0x00000000, 0x00000000, 16, x2, 104, x15)

# rd==x15, 
# opcode:c.lui; op1:x15; dest:x15 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x15, 0x00000000, 0x00000000, 16, x2, 108, x3)
la x1,signature_x1_0

# rd==x0, 
# opcode:c.lui; op1:x0; dest:x0 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x0, 0x00000000, 0x00000000, 16, x1, 0, x3)

# rd==x29, 
# opcode:c.lui; op1:x29; dest:x29 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x29, 0x00000000, 0x00000000, 16, x1, 4, x3)

# rd==x30, 
# opcode:c.lui; op1:x30; dest:x30 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x30, 0x00000000, 0x00000000, 16, x1, 8, x3)

# 
# opcode:c.lui; op1:x10; dest:x10 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x10, 0x00000000, 0x00000000, 16, x1, 12, x3)
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
