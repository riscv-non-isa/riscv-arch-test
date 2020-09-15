
#This assembly file tests the c.addi instruction of the RISC-V C extension for the caddi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi)

la x3,signature_x3_1

#opcode:c.addi; op1:x29; dest:x29 op1val:0x80000000; immval:-17
TEST_CI_OP( c.addi, x29, 0x00000000, 0x80000000, -17, x3, 0, x6)

#opcode:c.addi; op1:x20; dest:x20 op1val:0x00000000; immval:1
TEST_CI_OP( c.addi, x20, 0x00000000, 0x00000000, 1, x3, 4, x6)

#opcode:c.addi; op1:x26; dest:x26 op1val:0x7fffffff; immval:-32
TEST_CI_OP( c.addi, x26, 0x00000000, 0x7fffffff, -32, x3, 8, x6)

#opcode:c.addi; op1:x7; dest:x7 op1val:0x00000001; immval:-6
TEST_CI_OP( c.addi, x7, 0x00000000, 0x00000001, -6, x3, 12, x6)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffefffff; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffefffff, 0, x3, 16, x6)

#opcode:c.addi; op1:x1; dest:x1 op1val:0xfffbffff; immval:31
TEST_CI_OP( c.addi, x1, 0x00000000, 0xfffbffff, 31, x3, 20, x6)

#opcode:c.addi; op1:x21; dest:x21 op1val:0xffffffff; immval:-1
TEST_CI_OP( c.addi, x21, 0x00000000, 0xffffffff, -1, x3, 24, x6)

#opcode:c.addi; op1:x24; dest:x24 op1val:0x04000000; immval:21
TEST_CI_OP( c.addi, x24, 0x00000000, 0x04000000, 21, x3, 28, x6)

#opcode:c.addi; op1:x9; dest:x9 op1val:0x00000002; immval:1
TEST_CI_OP( c.addi, x9, 0x00000000, 0x00000002, 1, x3, 32, x6)

#opcode:c.addi; op1:x31; dest:x31 op1val:0x00000004; immval:6
TEST_CI_OP( c.addi, x31, 0x00000000, 0x00000004, 6, x3, 36, x6)

#opcode:c.addi; op1:x8; dest:x8 op1val:0x00000008; immval:-7
TEST_CI_OP( c.addi, x8, 0x00000000, 0x00000008, -7, x3, 40, x6)

#opcode:c.addi; op1:x19; dest:x19 op1val:0x00000010; immval:0
TEST_CI_OP( c.addi, x19, 0x00000000, 0x00000010, 0, x3, 44, x6)

#opcode:c.addi; op1:x13; dest:x13 op1val:0x00000020; immval:-7
TEST_CI_OP( c.addi, x13, 0x00000000, 0x00000020, -7, x3, 48, x6)

#opcode:c.addi; op1:x15; dest:x15 op1val:0x00000040; immval:15
TEST_CI_OP( c.addi, x15, 0x00000000, 0x00000040, 15, x3, 52, x6)

#opcode:c.addi; op1:x5; dest:x5 op1val:0x00000080; immval:-3
TEST_CI_OP( c.addi, x5, 0x00000000, 0x00000080, -3, x3, 56, x6)

#opcode:c.addi; op1:x28; dest:x28 op1val:0x00000100; immval:1
TEST_CI_OP( c.addi, x28, 0x00000000, 0x00000100, 1, x3, 60, x6)

#opcode:c.addi; op1:x25; dest:x25 op1val:0x00000200; immval:-7
TEST_CI_OP( c.addi, x25, 0x00000000, 0x00000200, -7, x3, 64, x6)

#opcode:c.addi; op1:x2; dest:x2 op1val:0x00000400; immval:-22
TEST_CI_OP( c.addi, x2, 0x00000000, 0x00000400, -22, x3, 68, x6)

#opcode:c.addi; op1:x18; dest:x18 op1val:0x00000800; immval:4
TEST_CI_OP( c.addi, x18, 0x00000000, 0x00000800, 4, x3, 72, x6)

#opcode:c.addi; op1:x14; dest:x14 op1val:0x00001000; immval:1
TEST_CI_OP( c.addi, x14, 0x00000000, 0x00001000, 1, x3, 76, x6)

#opcode:c.addi; op1:x11; dest:x11 op1val:0x00002000; immval:2
TEST_CI_OP( c.addi, x11, 0x00000000, 0x00002000, 2, x3, 80, x6)

#opcode:c.addi; op1:x27; dest:x27 op1val:0x00004000; immval:21
TEST_CI_OP( c.addi, x27, 0x00000000, 0x00004000, 21, x3, 84, x6)

#opcode:c.addi; op1:x16; dest:x16 op1val:0x00008000; immval:7
TEST_CI_OP( c.addi, x16, 0x00000000, 0x00008000, 7, x3, 88, x6)

#opcode:c.addi; op1:x30; dest:x30 op1val:0x00010000; immval:-4
TEST_CI_OP( c.addi, x30, 0x00000000, 0x00010000, -4, x3, 92, x6)

#opcode:c.addi; op1:x22; dest:x22 op1val:0x00020000; immval:5
TEST_CI_OP( c.addi, x22, 0x00000000, 0x00020000, 5, x3, 96, x6)

#opcode:c.addi; op1:x4; dest:x4 op1val:0x00040000; immval:-6
TEST_CI_OP( c.addi, x4, 0x00000000, 0x00040000, -6, x3, 100, x6)

#opcode:c.addi; op1:x17; dest:x17 op1val:0x00080000; immval:16
TEST_CI_OP( c.addi, x17, 0x00000000, 0x00080000, 16, x3, 104, x6)

#opcode:c.addi; op1:x12; dest:x12 op1val:0x00100000; immval:1
TEST_CI_OP( c.addi, x12, 0x00000000, 0x00100000, 1, x3, 108, x2)
la x1,signature_x1_0

#opcode:c.addi; op1:x23; dest:x23 op1val:0x00200000; immval:21
TEST_CI_OP( c.addi, x23, 0x00000000, 0x00200000, 21, x1, 0, x2)

#opcode:c.addi; op1:x6; dest:x6 op1val:0x00400000; immval:-3
TEST_CI_OP( c.addi, x6, 0x00000000, 0x00400000, -3, x1, 4, x2)

#opcode:c.addi; op1:x3; dest:x3 op1val:0x00800000; immval:6
TEST_CI_OP( c.addi, x3, 0x00000000, 0x00800000, 6, x1, 8, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x01000000; immval:1
TEST_CI_OP( c.addi, x10, 0x00000000, 0x01000000, 1, x1, 12, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x02000000; immval:9
TEST_CI_OP( c.addi, x10, 0x00000000, 0x02000000, 9, x1, 16, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x08000000; immval:-32
TEST_CI_OP( c.addi, x10, 0x00000000, 0x08000000, -32, x1, 20, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x10000000; immval:8
TEST_CI_OP( c.addi, x10, 0x00000000, 0x10000000, 8, x1, 24, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x20000000; immval:21
TEST_CI_OP( c.addi, x10, 0x00000000, 0x20000000, 21, x1, 28, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x40000000; immval:-3
TEST_CI_OP( c.addi, x10, 0x00000000, 0x40000000, -3, x1, 32, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffe; immval:15
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffe, 15, x1, 36, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffd; immval:0
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffd, 0, x1, 40, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffb; immval:4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffffb, 4, x1, 44, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfff7ffff; immval:-5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfff7ffff, -5, x1, 48, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffdfffff; immval:15
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffdfffff, 15, x1, 52, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffbfffff; immval:5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffbfffff, 5, x1, 56, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xff7fffff; immval:1
TEST_CI_OP( c.addi, x10, 0x00000000, 0xff7fffff, 1, x1, 60, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfeffffff; immval:-8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfeffffff, -8, x1, 64, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfdffffff; immval:-7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfdffffff, -7, x1, 68, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfbffffff; immval:-2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfbffffff, -2, x1, 72, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xf7ffffff; immval:8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xf7ffffff, 8, x1, 76, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xefffffff; immval:8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xefffffff, 8, x1, 80, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xdfffffff; immval:6
TEST_CI_OP( c.addi, x10, 0x00000000, 0xdfffffff, 6, x1, 84, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xbfffffff; immval:-22
TEST_CI_OP( c.addi, x10, 0x00000000, 0xbfffffff, -22, x1, 88, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x55555555; immval:5
TEST_CI_OP( c.addi, x10, 0x00000000, 0x55555555, 5, x1, 92, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xaaaaaaaa; immval:-5
TEST_CI_OP( c.addi, x10, 0x00000000, 0xaaaaaaaa, -5, x1, 96, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x00000010; immval:-9
TEST_CI_OP( c.addi, x10, 0x00000000, 0x00000010, -9, x1, 100, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffff7; immval:16
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffff7, 16, x1, 104, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffef; immval:-10
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffef, -10, x1, 108, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffdf; immval:4
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffdf, 4, x1, 112, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffbf; immval:15
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffffbf, 15, x1, 116, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffff7f; immval:7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffff7f, 7, x1, 120, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffeff; immval:-9
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffeff, -9, x1, 124, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffdff; immval:16
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffdff, 16, x1, 128, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffbff; immval:-17
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffffbff, -17, x1, 132, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffff7ff; immval:8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffff7ff, 8, x1, 136, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffefff; immval:-2
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffefff, -2, x1, 140, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffdfff; immval:-6
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffdfff, -6, x1, 144, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffbfff; immval:-17
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffffbfff, -17, x1, 148, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffff7fff; immval:31
TEST_CI_OP( c.addi, x10, 0x00000000, 0xffff7fff, 31, x1, 152, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffeffff; immval:-7
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffeffff, -7, x1, 156, x2)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffdffff; immval:8
TEST_CI_OP( c.addi, x10, 0x00000000, 0xfffdffff, 8, x1, 160, x2)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x3_1:
    .fill 28*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 41*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
