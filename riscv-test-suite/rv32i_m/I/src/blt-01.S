
#This assembly file tests the blt instruction of the RISC-V I extension for the blt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",blt)

la x13,signature_x13_1

# opcode: blt, op1:x0; op2:x17; op1val:0x3fffffff; op2val:0x00000010; immval:8; align: 0
TEST_BRANCH_OP(blt, x5, x0, x17, 0x3fffffff, 0x00000010, 8, 1b, x13, 0,0)

# opcode: blt, op1:x2; op2:x2; op1val:0x04000000; op2val:0xfff7ffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x5, x2, x2, 0x04000000, 0xfff7ffff, 4, 1b, x13, 4,0)

# opcode: blt, op1:x7; op2:x21; op1val:0xfffeffff; op2val:0xfeffffff; immval:1024; align: 0
TEST_BRANCH_OP(blt, x5, x7, x21, 0xfffeffff, 0xfeffffff, 1024, 1b, x13, 8,0)

# opcode: blt, op1:x4; op2:x29; op1val:0xffbfffff; op2val:0x00000002; immval:64; align: 0
TEST_BRANCH_OP(blt, x5, x4, x29, 0xffbfffff, 0x00000002, 64, 3f, x13, 12,0)

# opcode: blt, op1:x23; op2:x4; op1val:0xffffffef; op2val:0xffffffef; immval:64; align: 0
TEST_BRANCH_OP(blt, x5, x23, x4, 0xffffffef, 0xffffffef, 64, 3f, x13, 16,0)

# opcode: blt, op1:x17; op2:x30; op1val:0xfffffffa; op2val:0xfffffffa; immval:0; align: 0
TEST_BRANCH_OP(blt, x5, x17, x30, 0xfffffffa, 0xfffffffa, 0, 1b, x13, 20,0)

# opcode: blt, op1:x19; op2:x31; op1val:0x02000000; op2val:0xfffffffa; immval:128; align: 0
TEST_BRANCH_OP(blt, x5, x19, x31, 0x02000000, 0xfffffffa, 128, 3f, x13, 24,0)

# opcode: blt, op1:x1; op2:x11; op1val:0xfffffffd; op2val:0x00080000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x5, x1, x11, 0xfffffffd, 0x00080000, 1024, 1b, x13, 28,0)

# opcode: blt, op1:x9; op2:x12; op1val:0x00000001; op2val:0x00004000; immval:32; align: 0
TEST_BRANCH_OP(blt, x5, x9, x12, 0x00000001, 0x00004000, 32, 3f, x13, 32,0)

# opcode: blt, op1:x16; op2:x8; op1val:0x00000002; op2val:0xffff7fff; immval:64; align: 0
TEST_BRANCH_OP(blt, x5, x16, x8, 0x00000002, 0xffff7fff, 64, 3f, x13, 36,0)

# opcode: blt, op1:x18; op2:x16; op1val:0x00000004; op2val:0x3fffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x5, x18, x16, 0x00000004, 0x3fffffff, 0, 1b, x13, 40,0)

# opcode: blt, op1:x21; op2:x14; op1val:0x00000008; op2val:0x02000000; immval:64; align: 0
TEST_BRANCH_OP(blt, x5, x21, x14, 0x00000008, 0x02000000, 64, 3f, x13, 44,0)

# opcode: blt, op1:x26; op2:x9; op1val:0x00000010; op2val:0xffffffff; immval:16; align: 0
TEST_BRANCH_OP(blt, x5, x26, x9, 0x00000010, 0xffffffff, 16, 3f, x13, 48,0)

# opcode: blt, op1:x31; op2:x1; op1val:0x00000020; op2val:0x00000006; immval:4; align: 0
TEST_BRANCH_OP(blt, x5, x31, x1, 0x00000020, 0x00000006, 4, 1b, x13, 52,0)

# opcode: blt, op1:x11; op2:x10; op1val:0x00000040; op2val:0xfffffffe; immval:0; align: 0
TEST_BRANCH_OP(blt, x5, x11, x10, 0x00000040, 0xfffffffe, 0, 3f, x13, 56,0)

# opcode: blt, op1:x8; op2:x20; op1val:0x00000080; op2val:0x00000400; immval:2; align: 0
TEST_BRANCH_OP(blt, x5, x8, x20, 0x00000080, 0x00000400, 2, 1b, x13, 60,0)

# opcode: blt, op1:x24; op2:x28; op1val:0x00000100; op2val:0x00000007; immval:4; align: 0
TEST_BRANCH_OP(blt, x5, x24, x28, 0x00000100, 0x00000007, 4, 1b, x13, 64,0)

# opcode: blt, op1:x15; op2:x3; op1val:0x00000200; op2val:0x00000004; immval:6; align: 0
TEST_BRANCH_OP(blt, x5, x15, x3, 0x00000200, 0x00000004, 6, 3f, x13, 68,0)

# opcode: blt, op1:x20; op2:x18; op1val:0x00000400; op2val:0xfbffffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x5, x20, x18, 0x00000400, 0xfbffffff, 8, 1b, x13, 72,0)

# opcode: blt, op1:x6; op2:x22; op1val:0x00000800; op2val:0xfffff7ff; immval:8; align: 0
TEST_BRANCH_OP(blt, x5, x6, x22, 0x00000800, 0xfffff7ff, 8, 3f, x13, 76,0)

# opcode: blt, op1:x14; op2:x26; op1val:0x00001000; op2val:0x00000400; immval:4; align: 0
TEST_BRANCH_OP(blt, x2, x14, x26, 0x00001000, 0x00000400, 4, 3f, x13, 80,0)

# opcode: blt, op1:x5; op2:x25; op1val:0x00002000; op2val:0x20000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x2, x5, x25, 0x00002000, 0x20000000, 8, 3f, x13, 84,0)
la x1,signature_x1_0

# opcode: blt, op1:x3; op2:x7; op1val:0x00004000; op2val:0xffffffff; immval:1366; align: 0
TEST_BRANCH_OP(blt, x2, x3, x7, 0x00004000, 0xffffffff, 1366, 1b, x1, 0,0)

# opcode: blt, op1:x13; op2:x19; op1val:0x00008000; op2val:0xff7fffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x2, x13, x19, 0x00008000, 0xff7fffff, 8, 1b, x1, 4,0)

# opcode: blt, op1:x28; op2:x24; op1val:0x00010000; op2val:0x00000080; immval:1024; align: 0
TEST_BRANCH_OP(blt, x2, x28, x24, 0x00010000, 0x00000080, 1024, 3f, x1, 8,0)

# opcode: blt, op1:x12; op2:x23; op1val:0x00020000; op2val:0x02000000; immval:16; align: 0
TEST_BRANCH_OP(blt, x2, x12, x23, 0x00020000, 0x02000000, 16, 3f, x1, 12,0)

# opcode: blt, op1:x25; op2:x27; op1val:0x00040000; op2val:0xf7ffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x25, x27, 0x00040000, 0xf7ffffff, 0, 1b, x1, 16,0)

# opcode: blt, op1:x27; op2:x5; op1val:0x00080000; op2val:0xfffffff8; immval:1024; align: 0
TEST_BRANCH_OP(blt, x2, x27, x5, 0x00080000, 0xfffffff8, 1024, 3f, x1, 20,0)

# opcode: blt, op1:x29; op2:x15; op1val:0x00100000; op2val:0x00002000; immval:16; align: 0
TEST_BRANCH_OP(blt, x2, x29, x15, 0x00100000, 0x00002000, 16, 3f, x1, 24,0)

# opcode: blt, op1:x10; op2:x0; op1val:0x00200000; op2val:0x00000003; immval:8; align: 0
TEST_BRANCH_OP(blt, x2, x10, x0, 0x00200000, 0x00000003, 8, 3f, x1, 28,0)

# opcode: blt, op1:x22; op2:x13; op1val:0x00400000; op2val:0x00000006; immval:1366; align: 0
TEST_BRANCH_OP(blt, x2, x22, x13, 0x00400000, 0x00000006, 1366, 1b, x1, 32,0)

# opcode: blt, op1:x30; op2:x6; op1val:0x00800000; op2val:0xbfffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x2, x30, x6, 0x00800000, 0xbfffffff, 2, 3f, x1, 36,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x01000000; op2val:0x00001000; immval:32; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x01000000, 0x00001000, 32, 3f, x1, 40,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x08000000; op2val:0x00000005; immval:2; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x08000000, 0x00000005, 2, 1b, x1, 44,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x10000000; op2val:0xffffffff; immval:10; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x10000000, 0xffffffff, 10, 1b, x1, 48,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x20000000; op2val:0x7fffffff; immval:512; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x20000000, 0x7fffffff, 512, 3f, x1, 52,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x40000000; op2val:0xffffffff; immval:16; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x40000000, 0xffffffff, 16, 3f, x1, 56,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x80000000; op2val:0x40000000; immval:10; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x80000000, 0x40000000, 10, 1b, x1, 60,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xff7fffff; immval:64; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffffffe, 0xff7fffff, 64, 3f, x1, 64,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00000040; immval:4; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffffffb, 0x00000040, 4, 1b, x1, 68,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00100000; immval:512; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffffff7, 0x00100000, 512, 3f, x1, 72,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xffffbfff; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffffffdf, 0xffffbfff, 0, 1b, x1, 76,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x01000000; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffffffbf, 0x01000000, 0, 1b, x1, 80,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x00000400; immval:6; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffffff7f, 0x00000400, 6, 3f, x1, 84,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x20000000; op2val:0xffefffff; immval:64; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x20000000, 0xffefffff, 64, 3f, x1, 88,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xffdfffff; immval:6; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffffffbf, 0xffdfffff, 6, 3f, x1, 92,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000003; op2val:0xffbfffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000003, 0xffbfffff, 0, 3f, x1, 96,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xc0000000; op2val:0xfdffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xc0000000, 0xfdffffff, 0, 1b, x1, 100,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000008; op2val:0xefffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000008, 0xefffffff, 2, 3f, x1, 104,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00400000; op2val:0xdfffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00400000, 0xdfffffff, 2, 1b, x1, 108,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000005; op2val:0x55555555; immval:1024; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000005, 0x55555555, 1024, 3f, x1, 112,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xaaaaaaaa; immval:6; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfeffffff, 0xaaaaaaaa, 6, 3f, x1, 116,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000007; immval:1024; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffffeff, 0x00000007, 1024, 1b, x1, 120,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xffefffff; immval:128; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffffdff, 0xffefffff, 128, 3f, x1, 124,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xfffffffc; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffffbff, 0xfffffffc, 0, 1b, x1, 128,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x00400000; immval:512; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffff7ff, 0x00400000, 512, 3f, x1, 132,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xffffffff; immval:512; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffffefff, 0xffffffff, 512, 3f, x1, 136,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0xffffbfff; immval:64; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffffdfff, 0xffffbfff, 64, 3f, x1, 140,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0xffffffef; immval:128; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffffbfff, 0xffffffef, 128, 3f, x1, 144,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xfffffdff; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffff7fff, 0xfffffdff, 0, 3f, x1, 148,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x3fffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffdffff, 0x3fffffff, 0, 3f, x1, 152,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x01000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffbffff, 0x01000000, 4, 1b, x1, 156,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0xdfffffff; immval:512; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfff7ffff, 0xdfffffff, 512, 3f, x1, 160,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffefffff; op2val:0xfffeffff; immval:128; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffefffff, 0xfffeffff, 128, 3f, x1, 164,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0xffbfffff; immval:512; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffdfffff, 0xffbfffff, 512, 3f, x1, 168,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xfff7ffff; immval:512; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xff7fffff, 0xfff7ffff, 512, 3f, x1, 172,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x00000020; immval:10; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfdffffff, 0x00000020, 10, 1b, x1, 176,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x00020000; immval:6; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfbffffff, 0x00020000, 6, 1b, x1, 180,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x00000009; immval:128; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xf7ffffff, 0x00000009, 128, 3f, x1, 184,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x00200000; immval:1366; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xefffffff, 0x00200000, 1366, 1b, x1, 188,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0xbfffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xdfffffff, 0xbfffffff, 0, 3f, x1, 192,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x00000000; immval:64; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xbfffffff, 0x00000000, 64, 3f, x1, 196,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x20000000; immval:10; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x7fffffff, 0x20000000, 10, 1b, x1, 200,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x55555555; op2val:0x40000000; immval:2; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x55555555, 0x40000000, 2, 1b, x1, 204,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xfffffff7; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xaaaaaaaa, 0xfffffff7, 0, 3f, x1, 208,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00002000; op2val:0x00000001; immval:8; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00002000, 0x00000001, 8, 3f, x1, 212,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x00000008; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffff7ff, 0x00000008, 0, 1b, x1, 216,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000004; op2val:0x00000100; immval:1366; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000004, 0x00000100, 1366, 1b, x1, 220,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00000200; immval:4; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffefffff, 0x00000200, 4, 3f, x1, 224,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00001000; op2val:0x00000800; immval:32; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00001000, 0x00000800, 32, 3f, x1, 228,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0x00008000; immval:0; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xff7fffff, 0x00008000, 0, 3f, x1, 232,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000000; op2val:0x00010000; immval:32; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000000, 0x00010000, 32, 3f, x1, 236,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0x00040000; immval:4; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xff7fffff, 0x00040000, 4, 1b, x1, 240,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x00800000; immval:10; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xf7ffffff, 0x00800000, 10, 1b, x1, 244,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x04000000; immval:64; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffffdfff, 0x04000000, 64, 3f, x1, 248,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00004000; op2val:0x08000000; immval:10; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00004000, 0x08000000, 10, 1b, x1, 252,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00200000; op2val:0x10000000; immval:1366; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00200000, 0x10000000, 1366, 1b, x1, 256,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000020; op2val:0x80000000; immval:32; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000020, 0x80000000, 32, 3f, x1, 260,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0xfffffffd; immval:16; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xffffdfff, 0xfffffffd, 16, 3f, x1, 264,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000003; op2val:0xfffffffb; immval:512; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000003, 0xfffffffb, 512, 3f, x1, 268,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xffffffdf; immval:1024; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xaaaaaaaa, 0xffffffdf, 1024, 3f, x1, 272,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xffffffbf; immval:1024; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xff7fffff, 0xffffffbf, 1024, 3f, x1, 276,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000006; op2val:0xffffff7f; immval:4; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000006, 0xffffff7f, 4, 3f, x1, 280,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000400; op2val:0xfffffeff; immval:4; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000400, 0xfffffeff, 4, 1b, x1, 284,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00080000; op2val:0xfffffbff; immval:512; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00080000, 0xfffffbff, 512, 3f, x1, 288,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000400; op2val:0xffffefff; immval:16; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000400, 0xffffefff, 16, 3f, x1, 292,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000002; op2val:0xffffdfff; immval:10; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00000002, 0xffffdfff, 10, 1b, x1, 296,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffff8; op2val:0xfffdffff; immval:128; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0xfffffff8, 0xfffdffff, 128, 3f, x1, 300,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00020000; op2val:0xfffbffff; immval:64; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00020000, 0xfffbffff, 64, 3f, x1, 304,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x3fffffff; op2val:0x00000010; immval:8; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x3fffffff, 0x00000010, 8, 1b, x1, 308,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x04000000; op2val:0xfff7ffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x04000000, 0xfff7ffff, 4, 1b, x1, 312,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00200000; op2val:0x00000003; immval:8; align: 0
TEST_BRANCH_OP(blt, x2, x10, x11, 0x00200000, 0x00000003, 8, 3f, x1, 316,0)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x13_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 80*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
