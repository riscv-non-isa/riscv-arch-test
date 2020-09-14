
#This assembly file tests the srli instruction of the RISC-V I extension for the srli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srli)

la x1,signature_x1_1

# opcode: srli ; op1:x16; dest:x30; op1val:0xfffffbff;  immval:17
TEST_IMM_OP( srli, x30, x16, 0x7fff, 0xfffffbff, 17, x1, 0, x9)

# opcode: srli ; op1:x0; dest:x0; op1val:0x08000000;  immval:7
TEST_IMM_OP( srli, x0, x0, 0x100000, 0x08000000, 7, x1, 4, x9)

# opcode: srli ; op1:x7; dest:x25; op1val:0xff7fffff;  immval:0
TEST_IMM_OP( srli, x25, x7, 0xff7fffff, 0xff7fffff, 0, x1, 8, x9)

# opcode: srli ; op1:x22; dest:x7; op1val:0x00000008;  immval:0
TEST_IMM_OP( srli, x7, x22, 0x8, 0x00000008, 0, x1, 12, x9)

# opcode: srli ; op1:x11; dest:x26; op1val:0xfffffffc;  immval:31
TEST_IMM_OP( srli, x26, x11, 0x1, 0xfffffffc, 31, x1, 16, x9)

# opcode: srli ; op1:x25; dest:x2; op1val:0x00010000;  immval:31
TEST_IMM_OP( srli, x2, x25, 0x0, 0x00010000, 31, x1, 20, x9)

# opcode: srli ; op1:x15; dest:x22; op1val:0x00000002;  immval:2
TEST_IMM_OP( srli, x22, x15, 0x0, 0x00000002, 2, x1, 24, x9)

# opcode: srli ; op1:x20; dest:x28; op1val:0x80000000;  immval:8
TEST_IMM_OP( srli, x28, x20, 0x800000, 0x80000000, 8, x1, 28, x9)

# opcode: srli ; op1:x5; dest:x14; op1val:0x00000000;  immval:18
TEST_IMM_OP( srli, x14, x5, 0x0, 0x00000000, 18, x1, 32, x9)

# opcode: srli ; op1:x31; dest:x19; op1val:0x7fffffff;  immval:6
TEST_IMM_OP( srli, x19, x31, 0x1ffffff, 0x7fffffff, 6, x1, 36, x9)

# opcode: srli ; op1:x14; dest:x31; op1val:0x00000001;  immval:29
TEST_IMM_OP( srli, x31, x14, 0x0, 0x00000001, 29, x1, 40, x9)

# opcode: srli ; op1:x3; dest:x10; op1val:0xfffdffff;  immval:1
TEST_IMM_OP( srli, x10, x3, 0x7ffeffff, 0xfffdffff, 1, x1, 44, x9)

# opcode: srli ; op1:x27; dest:x16; op1val:0x00002000;  immval:4
TEST_IMM_OP( srli, x16, x27, 0x200, 0x00002000, 4, x1, 48, x9)

# opcode: srli ; op1:x23; dest:x20; op1val:0xfffffff6;  immval:16
TEST_IMM_OP( srli, x20, x23, 0xffff, 0xfffffff6, 16, x1, 52, x9)

# opcode: srli ; op1:x28; dest:x4; op1val:0x00000100;  immval:30
TEST_IMM_OP( srli, x4, x28, 0x0, 0x00000100, 30, x1, 56, x9)

# opcode: srli ; op1:x2; dest:x17; op1val:0x00000010;  immval:27
TEST_IMM_OP( srli, x17, x2, 0x0, 0x00000010, 27, x1, 60, x9)

# opcode: srli ; op1:x4; dest:x23; op1val:0x00400000;  immval:23
TEST_IMM_OP( srli, x23, x4, 0x0, 0x00400000, 23, x1, 64, x9)

# opcode: srli ; op1:x6; dest:x18; op1val:0x10000000;  immval:15
TEST_IMM_OP( srli, x18, x6, 0x2000, 0x10000000, 15, x1, 68, x9)

# opcode: srli ; op1:x13; dest:x29; op1val:0x00000006;  immval:21
TEST_IMM_OP( srli, x29, x13, 0x0, 0x00000006, 21, x1, 72, x9)

# opcode: srli ; op1:x21; dest:x13; op1val:0xffffffef;  immval:10
TEST_IMM_OP( srli, x13, x21, 0x3fffff, 0xffffffef, 10, x1, 76, x9)

# opcode: srli ; op1:x8; dest:x12; op1val:0x00000004;  immval:27
TEST_IMM_OP( srli, x12, x8, 0x0, 0x00000004, 27, x1, 80, x9)
la x2,signature_x2_0

# opcode: srli ; op1:x29; dest:x8; op1val:0x00000020;  immval:16
TEST_IMM_OP( srli, x8, x29, 0x0, 0x00000020, 16, x2, 0, x4)

# opcode: srli ; op1:x19; dest:x3; op1val:0x00000040;  immval:6
TEST_IMM_OP( srli, x3, x19, 0x1, 0x00000040, 6, x2, 4, x4)

# opcode: srli ; op1:x30; dest:x21; op1val:0x00000080;  immval:19
TEST_IMM_OP( srli, x21, x30, 0x0, 0x00000080, 19, x2, 8, x4)

# opcode: srli ; op1:x18; dest:x27; op1val:0x00000200;  immval:5
TEST_IMM_OP( srli, x27, x18, 0x10, 0x00000200, 5, x2, 12, x4)

# opcode: srli ; op1:x17; dest:x5; op1val:0x00000400;  immval:9
TEST_IMM_OP( srli, x5, x17, 0x2, 0x00000400, 9, x2, 16, x4)

# opcode: srli ; op1:x9; dest:x15; op1val:0x00000800;  immval:19
TEST_IMM_OP( srli, x15, x9, 0x0, 0x00000800, 19, x2, 20, x4)

# opcode: srli ; op1:x12; dest:x24; op1val:0x00001000;  immval:16
TEST_IMM_OP( srli, x24, x12, 0x0, 0x00001000, 16, x2, 24, x4)

# opcode: srli ; op1:x26; dest:x11; op1val:0x00004000;  immval:23
TEST_IMM_OP( srli, x11, x26, 0x0, 0x00004000, 23, x2, 28, x4)

# opcode: srli ; op1:x10; dest:x6; op1val:0x00008000;  immval:17
TEST_IMM_OP( srli, x6, x10, 0x0, 0x00008000, 17, x2, 32, x4)

# opcode: srli ; op1:x24; dest:x1; op1val:0x00020000;  immval:9
TEST_IMM_OP( srli, x1, x24, 0x100, 0x00020000, 9, x2, 36, x4)

# opcode: srli ; op1:x1; dest:x9; op1val:0x00040000;  immval:19
TEST_IMM_OP( srli, x9, x1, 0x0, 0x00040000, 19, x2, 40, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00080000;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x0, 0x00080000, 21, x2, 44, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00100000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x400, 0x00100000, 10, x2, 48, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00200000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x40, 0x00200000, 15, x2, 52, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x00800000;  immval:12
TEST_IMM_OP( srli, x11, x10, 0x800, 0x00800000, 12, x2, 56, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x01000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x200000, 0x01000000, 3, x2, 60, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x02000000;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x0, 0x02000000, 27, x2, 64, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x04000000;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x0, 0x04000000, 27, x2, 68, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3fffff7, 0xfffffdff, 6, x2, 72, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xfffff7ff, 0xfffff7ff, 0, x2, 76, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffefff;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x1f, 0xffffefff, 27, x2, 80, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3ffff7f, 0xffffdfff, 6, x2, 84, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xffffbfff, 19, x2, 88, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:30
TEST_IMM_OP( srli, x11, x10, 0x3, 0xffff7fff, 30, x2, 92, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1fffdff, 0xfffeffff, 7, x2, 96, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffbfff, 0xfffbffff, 4, x2, 100, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:29
TEST_IMM_OP( srli, x11, x10, 0x7, 0xfff7ffff, 29, x2, 104, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffefffff;  immval:30
TEST_IMM_OP( srli, x11, x10, 0x3, 0xffefffff, 30, x2, 108, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:29
TEST_IMM_OP( srli, x11, x10, 0x7, 0xffdfffff, 29, x2, 112, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ff7f, 0xffbfffff, 15, x2, 116, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x1f, 0xfeffffff, 27, x2, 120, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:30
TEST_IMM_OP( srli, x11, x10, 0x3, 0xfdffffff, 30, x2, 124, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3efffff, 0xfbffffff, 6, x2, 128, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x7bfff, 0xf7ffffff, 13, x2, 132, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fff, 0xfffffffd, 18, x2, 136, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffffff, 0xfffffffb, 8, x2, 140, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3bffffff, 0xefffffff, 2, x2, 144, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x37fff, 0xdfffffff, 14, x2, 148, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x20000000;  immval:27
TEST_IMM_OP( srli, x11, x10, 0x4, 0x20000000, 27, x2, 152, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x2ffff, 0xbfffffff, 14, x2, 156, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x40000000;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x1000000, 0x40000000, 6, x2, 160, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x55555555;  immval:27
TEST_IMM_OP( srli, x11, x10, 0xa, 0x55555555, 27, x2, 164, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xfffffffe, 12, x2, 168, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x55555555, 0xaaaaaaaa, 1, x2, 172, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xfffffff7, 11, x2, 176, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xffffffdf, 12, x2, 180, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xffffffbf, 21, x2, 184, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1fffffe, 0xffffff7f, 7, x2, 188, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xfffffeff, 11, x2, 192, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x08000000;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x100000, 0x08000000, 7, x2, 196, x4)
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
    .fill 21*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 50*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
