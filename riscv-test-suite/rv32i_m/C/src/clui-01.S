
#This assembly file tests the c.lui instruction of the RISC-V C extension for the clui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clui)

RVTEST_SIGBASE( x1,signature_x1_1)

# rd==x20, rs1_val > 0 and imm_val > 32, imm_val == 61
# opcode:c.lui; op1:x20; dest:x20 op1val:0x10000000; immval:1048573
TEST_CI_OP( c.lui, x20, 0x00000000, 0x10000000, 1048573, x1, 0, x2)

# rd==x0, rs1_val > 0 and imm_val < 32 and imm_val !=0 , 
# opcode:c.lui; op1:x0; dest:x0 op1val:0x00000400; immval:10
TEST_CI_OP( c.lui, x0, 0x00000000, 0x00000400, 10, x1, 4, x2)

# rd==x12, rs1_val < 0 and imm_val > 32, imm_val == 59
# opcode:c.lui; op1:x12; dest:x12 op1val:0xfffffffe; immval:1048571
TEST_CI_OP( c.lui, x12, 0x00000000, 0xfffffffe, 1048571, x1, 8, x2)

# rd==x27, rs1_val < 0 and imm_val < 32 and imm_val !=0 , 
# opcode:c.lui; op1:x27; dest:x27 op1val:0xffbfffff; immval:7
TEST_CI_OP( c.lui, x27, 0x00000000, 0xffbfffff, 7, x1, 12, x2)

# rd==x28, imm_val == 1, 
# opcode:c.lui; op1:x28; dest:x28 op1val:0xff7fffff; immval:1
TEST_CI_OP( c.lui, x28, 0x00000000, 0xff7fffff, 1, x1, 16, x2)

# rd==x5, imm_val == 2, 
# opcode:c.lui; op1:x5; dest:x5 op1val:0x00008000; immval:2
TEST_CI_OP( c.lui, x5, 0x00000000, 0x00008000, 2, x1, 20, x2)

# rd==x11, imm_val == 4, 
# opcode:c.lui; op1:x11; dest:x11 op1val:0xffffbfff; immval:4
TEST_CI_OP( c.lui, x11, 0x00000000, 0xffffbfff, 4, x1, 24, x2)

# rd==x6, imm_val == 8, 
# opcode:c.lui; op1:x6; dest:x6 op1val:0x00000080; immval:8
TEST_CI_OP( c.lui, x6, 0x00000000, 0x00000080, 8, x1, 28, x2)

# rd==x13, imm_val == 16, 
# opcode:c.lui; op1:x13; dest:x13 op1val:0x10000000; immval:16
TEST_CI_OP( c.lui, x13, 0x00000000, 0x10000000, 16, x1, 32, x2)

# rd==x17, imm_val == 21, 
# opcode:c.lui; op1:x17; dest:x17 op1val:0x00002000; immval:21
TEST_CI_OP( c.lui, x17, 0x00000000, 0x00002000, 21, x1, 36, x2)

# rd==x19, imm_val == 42, 
# opcode:c.lui; op1:x19; dest:x19 op1val:0xfffffffa; immval:1048554
TEST_CI_OP( c.lui, x19, 0x00000000, 0xfffffffa, 1048554, x1, 40, x2)

# rd==x22, imm_val == 32, 
# opcode:c.lui; op1:x22; dest:x22 op1val:0x02000000; immval:1048544
TEST_CI_OP( c.lui, x22, 0x00000000, 0x02000000, 1048544, x1, 44, x2)

# rd==x18, imm_val == 62, 
# opcode:c.lui; op1:x18; dest:x18 op1val:0x00000400; immval:1048574
TEST_CI_OP( c.lui, x18, 0x00000000, 0x00000400, 1048574, x1, 48, x2)

# rd==x26, imm_val == 55, 
# opcode:c.lui; op1:x26; dest:x26 op1val:0xff7fffff; immval:1048567
TEST_CI_OP( c.lui, x26, 0x00000000, 0xff7fffff, 1048567, x1, 52, x2)

# rd==x7, imm_val == 47, 
# opcode:c.lui; op1:x7; dest:x7 op1val:0xffffefff; immval:1048559
TEST_CI_OP( c.lui, x7, 0x00000000, 0xffffefff, 1048559, x1, 56, x2)

# rd==x10, imm_val == 31, 
# opcode:c.lui; op1:x10; dest:x10 op1val:0xaaaaaaaa; immval:31
TEST_CI_OP( c.lui, x10, 0x00000000, 0xaaaaaaaa, 31, x1, 60, x2)

# rd==x31, 
# opcode:c.lui; op1:x31; dest:x31 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x31, 0x00000000, 0x00000000, 16, x1, 64, x2)

# rd==x25, 
# opcode:c.lui; op1:x25; dest:x25 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x25, 0x00000000, 0x00000000, 16, x1, 68, x2)

# rd==x23, 
# opcode:c.lui; op1:x23; dest:x23 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x23, 0x00000000, 0x00000000, 16, x1, 72, x2)

# rd==x14, 
# opcode:c.lui; op1:x14; dest:x14 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x14, 0x00000000, 0x00000000, 16, x1, 76, x2)

# rd==x30, 
# opcode:c.lui; op1:x30; dest:x30 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x30, 0x00000000, 0x00000000, 16, x1, 80, x2)

# rd==x3, 
# opcode:c.lui; op1:x3; dest:x3 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x3, 0x00000000, 0x00000000, 16, x1, 84, x2)

# rd==x29, 
# opcode:c.lui; op1:x29; dest:x29 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x29, 0x00000000, 0x00000000, 16, x1, 88, x2)

# rd==x21, 
# opcode:c.lui; op1:x21; dest:x21 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x21, 0x00000000, 0x00000000, 16, x1, 92, x2)

# rd==x9, 
# opcode:c.lui; op1:x9; dest:x9 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x9, 0x00000000, 0x00000000, 16, x1, 96, x2)

# rd==x4, 
# opcode:c.lui; op1:x4; dest:x4 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x4, 0x00000000, 0x00000000, 16, x1, 100, x2)

# rd==x15, 
# opcode:c.lui; op1:x15; dest:x15 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x15, 0x00000000, 0x00000000, 16, x1, 104, x2)

# rd==x8, 
# opcode:c.lui; op1:x8; dest:x8 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x8, 0x00000000, 0x00000000, 16, x1, 108, x2)

# rd==x24, 
# opcode:c.lui; op1:x24; dest:x24 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x24, 0x00000000, 0x00000000, 16, x1, 112, x3)
RVTEST_SIGBASE( x2,signature_x2_0)

# rd==x1, 
# opcode:c.lui; op1:x1; dest:x1 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x1, 0x00000000, 0x00000000, 16, x2, 0, x3)

# rd==x16, 
# opcode:c.lui; op1:x16; dest:x16 op1val:0x00000000; immval:16
TEST_CI_OP( c.lui, x16, 0x00000000, 0x00000000, 16, x2, 4, x3)
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
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 2*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
