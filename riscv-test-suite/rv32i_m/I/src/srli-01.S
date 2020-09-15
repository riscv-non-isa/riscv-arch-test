
#This assembly file tests the srli instruction of the RISC-V I extension for the srli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srli)

la x4,signature_x4_1

# opcode: srli ; op1:x15; dest:x3; op1val:0xffffffef;  immval:12
TEST_IMM_OP( srli, x3, x15, 0xfffff, 0xffffffef, 12, x4, 0, x6)

# opcode: srli ; op1:x19; dest:x19; op1val:0x00001000;  immval:13
TEST_IMM_OP( srli, x19, x19, 0x0, 0x00001000, 13, x4, 4, x6)

# opcode: srli ; op1:x2; dest:x7; op1val:0xffbfffff;  immval:0
TEST_IMM_OP( srli, x7, x2, 0xffbfffff, 0xffbfffff, 0, x4, 8, x6)

# opcode: srli ; op1:x14; dest:x11; op1val:0x00040000;  immval:0
TEST_IMM_OP( srli, x11, x14, 0x40000, 0x00040000, 0, x4, 12, x6)

# opcode: srli ; op1:x5; dest:x23; op1val:0xf7ffffff;  immval:31
TEST_IMM_OP( srli, x23, x5, 0x1, 0xf7ffffff, 31, x4, 16, x6)

# opcode: srli ; op1:x27; dest:x10; op1val:0x00000006;  immval:31
TEST_IMM_OP( srli, x10, x27, 0x0, 0x00000006, 31, x4, 20, x6)

# opcode: srli ; op1:x11; dest:x0; op1val:0x00000001;  immval:1
TEST_IMM_OP( srli, x0, x11, 0x0, 0x00000001, 1, x4, 24, x6)

# opcode: srli ; op1:x13; dest:x18; op1val:0x80000000;  immval:0
TEST_IMM_OP( srli, x18, x13, 0x80000000, 0x80000000, 0, x4, 28, x6)

# opcode: srli ; op1:x25; dest:x21; op1val:0x00000000;  immval:2
TEST_IMM_OP( srli, x21, x25, 0x0, 0x00000000, 2, x4, 32, x6)

# opcode: srli ; op1:x16; dest:x29; op1val:0x7fffffff;  immval:0
TEST_IMM_OP( srli, x29, x16, 0x7fffffff, 0x7fffffff, 0, x4, 36, x6)

# opcode: srli ; op1:x3; dest:x26; op1val:0x3fffffff;  immval:4
TEST_IMM_OP( srli, x26, x3, 0x3ffffff, 0x3fffffff, 4, x4, 40, x6)

# opcode: srli ; op1:x17; dest:x14; op1val:0x55555555;  immval:8
TEST_IMM_OP( srli, x14, x17, 0x555555, 0x55555555, 8, x4, 44, x6)

# opcode: srli ; op1:x21; dest:x25; op1val:0xffffdfff;  immval:16
TEST_IMM_OP( srli, x25, x21, 0xffff, 0xffffdfff, 16, x4, 48, x6)

# opcode: srli ; op1:x26; dest:x8; op1val:0x00002000;  immval:30
TEST_IMM_OP( srli, x8, x26, 0x0, 0x00002000, 30, x4, 52, x6)

# opcode: srli ; op1:x0; dest:x15; op1val:0x00100000;  immval:29
TEST_IMM_OP( srli, x15, x0, 0x0, 0x00100000, 29, x4, 56, x6)

# opcode: srli ; op1:x28; dest:x1; op1val:0x00100000;  immval:27
TEST_IMM_OP( srli, x1, x28, 0x0, 0x00100000, 27, x4, 60, x6)

# opcode: srli ; op1:x20; dest:x31; op1val:0x00000005;  immval:23
TEST_IMM_OP( srli, x31, x20, 0x0, 0x00000005, 23, x4, 64, x6)

# opcode: srli ; op1:x12; dest:x13; op1val:0xfbffffff;  immval:15
TEST_IMM_OP( srli, x13, x12, 0x1f7ff, 0xfbffffff, 15, x4, 68, x6)

# opcode: srli ; op1:x9; dest:x17; op1val:0xfff7ffff;  immval:21
TEST_IMM_OP( srli, x17, x9, 0x7ff, 0xfff7ffff, 21, x4, 72, x6)

# opcode: srli ; op1:x22; dest:x12; op1val:0x00000002;  immval:10
TEST_IMM_OP( srli, x12, x22, 0x0, 0x00000002, 10, x4, 76, x6)

# opcode: srli ; op1:x8; dest:x30; op1val:0x00000004;  immval:9
TEST_IMM_OP( srli, x30, x8, 0x0, 0x00000004, 9, x4, 80, x12)
la x3,signature_x3_0

# opcode: srli ; op1:x10; dest:x9; op1val:0x00000008;  immval:14
TEST_IMM_OP( srli, x9, x10, 0x0, 0x00000008, 14, x3, 0, x12)

# opcode: srli ; op1:x1; dest:x27; op1val:0x00000010;  immval:21
TEST_IMM_OP( srli, x27, x1, 0x0, 0x00000010, 21, x3, 4, x12)

# opcode: srli ; op1:x23; dest:x24; op1val:0x00000020;  immval:12
TEST_IMM_OP( srli, x24, x23, 0x0, 0x00000020, 12, x3, 8, x12)

# opcode: srli ; op1:x31; dest:x2; op1val:0x00000040;  immval:23
TEST_IMM_OP( srli, x2, x31, 0x0, 0x00000040, 23, x3, 12, x12)

# opcode: srli ; op1:x18; dest:x6; op1val:0x00000080;  immval:30
TEST_IMM_OP( srli, x6, x18, 0x0, 0x00000080, 30, x3, 16, x12)

# opcode: srli ; op1:x4; dest:x5; op1val:0x00000100;  immval:23
TEST_IMM_OP( srli, x5, x4, 0x0, 0x00000100, 23, x3, 20, x12)

# opcode: srli ; op1:x6; dest:x16; op1val:0x00000200;  immval:15
TEST_IMM_OP( srli, x16, x6, 0x0, 0x00000200, 15, x3, 24, x12)

# opcode: srli ; op1:x7; dest:x20; op1val:0x00000400;  immval:16
TEST_IMM_OP( srli, x20, x7, 0x0, 0x00000400, 16, x3, 28, x12)

# opcode: srli ; op1:x29; dest:x28; op1val:0x00000800;  immval:29
TEST_IMM_OP( srli, x28, x29, 0x0, 0x00000800, 29, x3, 32, x12)

# opcode: srli ; op1:x24; dest:x4; op1val:0x00004000;  immval:9
TEST_IMM_OP( srli, x4, x24, 0x20, 0x00004000, 9, x3, 36, x12)

# opcode: srli ; op1:x30; dest:x22; op1val:0x00008000;  immval:2
TEST_IMM_OP( srli, x22, x30, 0x2000, 0x00008000, 2, x3, 40, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00010000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x1000, 0x00010000, 4, x3, 44, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00020000;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x800, 0x00020000, 6, x3, 48, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00080000;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00080000, 31, x3, 52, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00200000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x400, 0x00200000, 11, x3, 56, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00400000;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00400000, 27, x3, 60, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00800000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x100000, 0x00800000, 3, x3, 64, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x01000000;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x20000, 0x01000000, 7, x3, 68, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x02000000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x8000, 0x02000000, 10, x3, 72, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x1f, 0xfffffdff, 27, x3, 76, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfffffbff, 31, x3, 80, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xfffff7ff, 21, x3, 84, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffefff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3ffffb, 0xffffefff, 10, x3, 88, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x1f, 0xffffbfff, 27, x3, 92, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xffff7ff, 0xffff7fff, 4, x3, 96, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x7fff7fff, 0xfffeffff, 1, x3, 100, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3fff7f, 0xfffdffff, 10, x3, 104, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfffbffff, 31, x3, 108, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffefffff;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xffefffff, 21, x3, 112, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1ffbfff, 0xffdfffff, 7, x3, 116, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:29
TEST_IMM_OP( srli, x11, x10, 0x7, 0xff7fffff, 29, x3, 120, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x7f7ff, 0xfeffffff, 13, x3, 124, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7efffff, 0xfdffffff, 5, x3, 128, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:23
TEST_IMM_OP( srli, x11, x10, 0x1df, 0xefffffff, 23, x3, 132, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x37ffffff, 0xdfffffff, 2, x3, 136, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1ffffff, 0xfffffff7, 7, x3, 140, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x04000000;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x1000000, 0x04000000, 2, x3, 144, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x08000000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x20000, 0x08000000, 10, x3, 148, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x10000000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x800, 0x10000000, 17, x3, 152, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x20000000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x80000, 0x20000000, 10, x3, 156, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x17ffffff, 0xbfffffff, 3, x3, 160, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x40000000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x100000, 0x40000000, 10, x3, 164, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3fffffff, 0xfffffffe, 2, x3, 168, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x55555555, 0xaaaaaaaa, 1, x3, 172, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xfffffffd, 0xfffffffd, 0, x3, 176, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ffff, 0xfffffffb, 15, x3, 180, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:30
TEST_IMM_OP( srli, x11, x10, 0x3, 0xffffffdf, 30, x3, 184, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fff, 0xffffffbf, 18, x3, 188, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xffffff7f, 12, x3, 192, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xfffffeff, 11, x3, 196, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00001000;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00001000, 13, x3, 200, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00000001;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00000001, 1, x3, 204, x12)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00100000;  immval:29
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00100000, 29, x3, 208, x12)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x4_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 53*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
