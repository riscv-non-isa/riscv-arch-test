
#This assembly file tests the bltu instruction of the RISC-V I extension for the bltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bltu)

la x6,signature_x6_1

# opcode: bltu, op1:x21; op2:x21; op1val:0x08000000; op2val:0xfdffffff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x10, x21, x21, 0x08000000, 0xfdffffff, 2, 3f, x6, 0,0)

# opcode: bltu, op1:x7; op2:x4; op1val:0xfffbffff; op2val:0xfffbffff; immval:256; align: 0
TEST_BRANCH_OP(bltu, x10, x7, x4, 0xfffbffff, 0xfffbffff, 256, 3f, x6, 4,0)

# opcode: bltu, op1:x1; op2:x15; op1val:0xff7fffff; op2val:0xff7fffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x10, x1, x15, 0xff7fffff, 0xff7fffff, 1366, 1b, x6, 8,0)

# opcode: bltu, op1:x8; op2:x1; op1val:0xfffff7ff; op2val:0x0000000d; immval:128; align: 0
TEST_BRANCH_OP(bltu, x10, x8, x1, 0xfffff7ff, 0x0000000d, 128, 3f, x6, 12,0)

# opcode: bltu, op1:x25; op2:x12; op1val:0xaaaaaaaa; op2val:0x00000040; immval:6; align: 0
TEST_BRANCH_OP(bltu, x10, x25, x12, 0xaaaaaaaa, 0x00000040, 6, 1b, x6, 16,0)

# opcode: bltu, op1:x12; op2:x25; op1val:0x00000004; op2val:0x00000020; immval:4; align: 0
TEST_BRANCH_OP(bltu, x10, x12, x25, 0x00000004, 0x00000020, 4, 1b, x6, 20,0)

# opcode: bltu, op1:x29; op2:x30; op1val:0x00000001; op2val:0xffffefff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x10, x29, x30, 0x00000001, 0xffffefff, 6, 1b, x6, 24,0)

# opcode: bltu, op1:x4; op2:x22; op1val:0x00000002; op2val:0x0000000d; immval:0; align: 0
TEST_BRANCH_OP(bltu, x10, x4, x22, 0x00000002, 0x0000000d, 0, 1b, x6, 28,0)

# opcode: bltu, op1:x3; op2:x7; op1val:0x00000008; op2val:0x00400000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x10, x3, x7, 0x00000008, 0x00400000, 2, 1b, x6, 32,0)

# opcode: bltu, op1:x19; op2:x23; op1val:0x00000010; op2val:0x00020000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x10, x19, x23, 0x00000010, 0x00020000, 4, 3f, x6, 36,0)

# opcode: bltu, op1:x9; op2:x3; op1val:0x00000020; op2val:0x0000000a; immval:10; align: 0
TEST_BRANCH_OP(bltu, x10, x9, x3, 0x00000020, 0x0000000a, 10, 1b, x6, 40,0)

# opcode: bltu, op1:x30; op2:x0; op1val:0x00000040; op2val:0xfffff7ff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x10, x30, x0, 0x00000040, 0xfffff7ff, 128, 3f, x6, 44,0)

# opcode: bltu, op1:x20; op2:x31; op1val:0x00000080; op2val:0x00000400; immval:0; align: 0
TEST_BRANCH_OP(bltu, x10, x20, x31, 0x00000080, 0x00000400, 0, 3f, x6, 48,0)

# opcode: bltu, op1:x0; op2:x2; op1val:0x00000100; op2val:0xffffffbf; immval:256; align: 0
TEST_BRANCH_OP(bltu, x10, x0, x2, 0x00000100, 0xffffffbf, 256, 3f, x6, 52,0)

# opcode: bltu, op1:x5; op2:x20; op1val:0x00000200; op2val:0x00010000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x10, x5, x20, 0x00000200, 0x00010000, 6, 3f, x6, 56,0)

# opcode: bltu, op1:x22; op2:x18; op1val:0x00000400; op2val:0x00000200; immval:8; align: 0
TEST_BRANCH_OP(bltu, x10, x22, x18, 0x00000400, 0x00000200, 8, 3f, x6, 60,0)

# opcode: bltu, op1:x15; op2:x28; op1val:0x00000800; op2val:0xffffffff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x10, x15, x28, 0x00000800, 0xffffffff, 128, 3f, x6, 64,0)

# opcode: bltu, op1:x23; op2:x16; op1val:0x00001000; op2val:0x00002000; immval:8; align: 0
TEST_BRANCH_OP(bltu, x10, x23, x16, 0x00001000, 0x00002000, 8, 3f, x6, 68,0)

# opcode: bltu, op1:x17; op2:x14; op1val:0x00002000; op2val:0x0000000e; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x10, x17, x14, 0x00002000, 0x0000000e, 1024, 1b, x6, 72,0)

# opcode: bltu, op1:x13; op2:x29; op1val:0x00004000; op2val:0xffffffdf; immval:0; align: 0
TEST_BRANCH_OP(bltu, x10, x13, x29, 0x00004000, 0xffffffdf, 0, 3f, x6, 76,0)

# opcode: bltu, op1:x2; op2:x27; op1val:0x00008000; op2val:0x00000004; immval:4; align: 0
TEST_BRANCH_OP(bltu, x10, x2, x27, 0x00008000, 0x00000004, 4, 3f, x6, 80,0)

# opcode: bltu, op1:x28; op2:x9; op1val:0x00010000; op2val:0x7fffffff; immval:256; align: 0
TEST_BRANCH_OP(bltu, x10, x28, x9, 0x00010000, 0x7fffffff, 256, 3f, x6, 84,0)

# opcode: bltu, op1:x26; op2:x5; op1val:0x00020000; op2val:0x0000000a; immval:6; align: 0
TEST_BRANCH_OP(bltu, x10, x26, x5, 0x00020000, 0x0000000a, 6, 1b, x6, 88,0)

# opcode: bltu, op1:x31; op2:x11; op1val:0x00040000; op2val:0xfffff7ff; immval:0; align: 0
TEST_BRANCH_OP(bltu, x2, x31, x11, 0x00040000, 0xfffff7ff, 0, 1b, x6, 92,0)
la x1,signature_x1_0

# opcode: bltu, op1:x11; op2:x24; op1val:0x00080000; op2val:0x00040000; immval:64; align: 0
TEST_BRANCH_OP(bltu, x2, x11, x24, 0x00080000, 0x00040000, 64, 3f, x1, 0,0)

# opcode: bltu, op1:x27; op2:x6; op1val:0x00100000; op2val:0xffdfffff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x27, x6, 0x00100000, 0xffdfffff, 6, 1b, x1, 4,0)

# opcode: bltu, op1:x18; op2:x19; op1val:0x00200000; op2val:0x00200000; immval:10; align: 0
TEST_BRANCH_OP(bltu, x2, x18, x19, 0x00200000, 0x00200000, 10, 1b, x1, 8,0)

# opcode: bltu, op1:x14; op2:x26; op1val:0x00400000; op2val:0x80000000; immval:10; align: 0
TEST_BRANCH_OP(bltu, x2, x14, x26, 0x00400000, 0x80000000, 10, 1b, x1, 12,0)

# opcode: bltu, op1:x6; op2:x10; op1val:0x00800000; op2val:0x00000006; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x6, x10, 0x00800000, 0x00000006, 6, 3f, x1, 16,0)

# opcode: bltu, op1:x24; op2:x17; op1val:0x01000000; op2val:0x00400000; immval:64; align: 0
TEST_BRANCH_OP(bltu, x2, x24, x17, 0x01000000, 0x00400000, 64, 3f, x1, 20,0)

# opcode: bltu, op1:x16; op2:x8; op1val:0x02000000; op2val:0x00001000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x16, x8, 0x02000000, 0x00001000, 2, 1b, x1, 24,0)

# opcode: bltu, op1:x10; op2:x13; op1val:0x04000000; op2val:0xffffffbf; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x13, 0x04000000, 0xffffffbf, 2, 1b, x1, 28,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x10000000; op2val:0xffffffbf; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x10000000, 0xffffffbf, 4, 3f, x1, 32,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x20000000; op2val:0xffffffff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x20000000, 0xffffffff, 2, 3f, x1, 36,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x40000000; op2val:0x55555555; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x40000000, 0x55555555, 6, 1b, x1, 40,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x80000000; op2val:0x00040000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x80000000, 0x00040000, 1024, 1b, x1, 44,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00000080; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffffe, 0x00000080, 2, 3f, x1, 48,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xaaaaaaaa; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffffd, 0xaaaaaaaa, 2, 3f, x1, 52,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00000800; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffffb, 0x00000800, 6, 1b, x1, 56,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0xf7ffffff; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffff7, 0xf7ffffff, 8, 3f, x1, 60,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0x00000040; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffffef, 0x00000040, 2, 1b, x1, 64,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xfffffffd; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffffdf, 0xfffffffd, 1366, 1b, x1, 68,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00800000; op2val:0xfeffffff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00800000, 0xfeffffff, 4, 3f, x1, 72,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0xfbffffff; immval:512; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x7fffffff, 0xfbffffff, 512, 3f, x1, 76,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000005; op2val:0xefffffff; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000005, 0xefffffff, 8, 3f, x1, 80,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0xdfffffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffbfff, 0xdfffffff, 1024, 1b, x1, 84,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000009; op2val:0xbfffffff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000009, 0xbfffffff, 128, 3f, x1, 88,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x00000000; immval:64; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffffbf, 0x00000000, 64, 3f, x1, 92,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x0000000b; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffff7f, 0x0000000b, 1024, 1b, x1, 96,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x01000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffeff, 0x01000000, 6, 1b, x1, 100,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xdfffffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffdff, 0xdfffffff, 1024, 3f, x1, 104,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xffff7fff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffbff, 0xffff7fff, 6, 3f, x1, 108,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xfffffeff; immval:512; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffefff, 0xfffffeff, 512, 3f, x1, 112,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00400000; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffdfff, 0x00400000, 8, 1b, x1, 116,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0x00008000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffff7fff, 0x00008000, 1024, 3f, x1, 120,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x0000000c; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffeffff, 0x0000000c, 8, 3f, x1, 124,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x40000000; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffdffff, 0x40000000, 128, 3f, x1, 128,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0xffefffff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfff7ffff, 0xffefffff, 4, 3f, x1, 132,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffefffff; op2val:0xffffefff; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffefffff, 0xffffefff, 8, 3f, x1, 136,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0xfffdffff; immval:64; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffdfffff, 0xfffdffff, 64, 3f, x1, 140,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00000011; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffbfffff, 0x00000011, 32, 3f, x1, 144,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x80000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfeffffff, 0x80000000, 2, 3f, x1, 148,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xfeffffff; immval:256; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfdffffff, 0xfeffffff, 256, 3f, x1, 152,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xfffbffff; immval:256; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfbffffff, 0xfffbffff, 256, 3f, x1, 156,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xffffffdf; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xf7ffffff, 0xffffffdf, 1024, 1b, x1, 160,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xfffffdff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xefffffff, 0xfffffdff, 6, 1b, x1, 164,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0xffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xdfffffff, 0xffffffff, 1024, 1b, x1, 168,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xffffffbf; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xbfffffff, 0xffffffbf, 128, 3f, x1, 172,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x55555555; op2val:0x00080000; immval:256; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x55555555, 0x00080000, 256, 3f, x1, 176,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x04000000; op2val:0x00000001; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x04000000, 0x00000001, 2, 3f, x1, 180,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00000002; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffefffff, 0x00000002, 32, 3f, x1, 184,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffefff; op2val:0x00000008; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffefff, 0x00000008, 8, 3f, x1, 188,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00100000; op2val:0x00000010; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00100000, 0x00000010, 32, 3f, x1, 192,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x01000000; op2val:0x00000100; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x01000000, 0x00000100, 8, 1b, x1, 196,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x04000000; op2val:0x00004000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x04000000, 0x00004000, 6, 1b, x1, 200,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000009; op2val:0x00100000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000009, 0x00100000, 1024, 1b, x1, 204,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x20000000; op2val:0x00800000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x20000000, 0x00800000, 6, 1b, x1, 208,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000d; op2val:0x02000000; immval:512; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x0000000d, 0x02000000, 512, 3f, x1, 212,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000009; op2val:0x04000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000009, 0x04000000, 4, 3f, x1, 216,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x08000000; immval:512; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffff7, 0x08000000, 512, 3f, x1, 220,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000001; op2val:0x10000000; immval:256; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000001, 0x10000000, 256, 3f, x1, 224,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffff; op2val:0x20000000; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffffff, 0x20000000, 32, 3f, x1, 228,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x08000000; op2val:0xfffffffe; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x08000000, 0xfffffffe, 6, 1b, x1, 232,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00002000; op2val:0xfffffffb; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00002000, 0xfffffffb, 32, 3f, x1, 236,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xfffffff7; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffdff, 0xfffffff7, 4, 1b, x1, 240,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000001; op2val:0xffffffef; immval:0; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000001, 0xffffffef, 0, 3f, x1, 244,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0xffffff7f; immval:64; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x7fffffff, 0xffffff7f, 64, 3f, x1, 248,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000800; op2val:0xfffffbff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000800, 0xfffffbff, 1366, 1b, x1, 252,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xffffdfff; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffffd, 0xffffdfff, 32, 3f, x1, 256,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xfffeffff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffbffff, 0xfffeffff, 128, 3f, x1, 260,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000b; op2val:0xfff7ffff; immval:256; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x0000000b, 0xfff7ffff, 256, 3f, x1, 264,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000008; op2val:0xffbfffff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000008, 0xffbfffff, 6, 1b, x1, 268,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xffffbfff; immval:256; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffffef, 0xffffbfff, 256, 3f, x1, 272,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x08000000; op2val:0xfdffffff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x08000000, 0xfdffffff, 2, 3f, x1, 276,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000040; op2val:0xfffff7ff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000040, 0xfffff7ff, 128, 3f, x1, 280,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000100; op2val:0xffffffbf; immval:256; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000100, 0xffffffbf, 256, 3f, x1, 284,0)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 24*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 72*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
