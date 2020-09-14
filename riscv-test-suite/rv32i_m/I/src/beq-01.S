
#This assembly file tests the beq instruction of the RISC-V I extension for the beq covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",beq)

la x21,signature_x21_1

# opcode: beq, op1:x28; op2:x28; op1val:0x08000000; op2val:0x00000005; immval:8; align: 0
TEST_BRANCH_OP(beq, x2, x28, x28, 0x08000000, 0x00000005, 8, 3f, x21, 0,0)

# opcode: beq, op1:x3; op2:x27; op1val:0x3fffffff; op2val:0xfdffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x2, x3, x27, 0x3fffffff, 0xfdffffff, 8, 1b, x21, 4,0)

# opcode: beq, op1:x13; op2:x6; op1val:0x80000000; op2val:0xfffeffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x2, x13, x6, 0x80000000, 0xfffeffff, 8, 3f, x21, 8,0)

# opcode: beq, op1:x14; op2:x16; op1val:0xfffffff6; op2val:0x02000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x2, x14, x16, 0xfffffff6, 0x02000000, 1024, 1b, x21, 12,0)

# opcode: beq, op1:x22; op2:x17; op1val:0x7fffffff; op2val:0x7fffffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x2, x22, x17, 0x7fffffff, 0x7fffffff, 128, 3f, x21, 16,0)

# opcode: beq, op1:x31; op2:x5; op1val:0xfffffffb; op2val:0xfffffffb; immval:1024; align: 0
TEST_BRANCH_OP(beq, x2, x31, x5, 0xfffffffb, 0xfffffffb, 1024, 1b, x21, 20,0)

# opcode: beq, op1:x30; op2:x26; op1val:0x00000001; op2val:0xfffffbff; immval:2; align: 0
TEST_BRANCH_OP(beq, x2, x30, x26, 0x00000001, 0xfffffbff, 2, 3f, x21, 24,0)

# opcode: beq, op1:x4; op2:x7; op1val:0x00000002; op2val:0x08000000; immval:32; align: 0
TEST_BRANCH_OP(beq, x2, x4, x7, 0x00000002, 0x08000000, 32, 3f, x21, 28,0)

# opcode: beq, op1:x16; op2:x30; op1val:0x00000004; op2val:0xffffff7f; immval:256; align: 0
TEST_BRANCH_OP(beq, x2, x16, x30, 0x00000004, 0xffffff7f, 256, 3f, x21, 32,0)

# opcode: beq, op1:x19; op2:x15; op1val:0x00000008; op2val:0xf7ffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x2, x19, x15, 0x00000008, 0xf7ffffff, 2, 3f, x21, 36,0)

# opcode: beq, op1:x1; op2:x29; op1val:0x00000010; op2val:0x00010000; immval:32; align: 0
TEST_BRANCH_OP(beq, x2, x1, x29, 0x00000010, 0x00010000, 32, 3f, x21, 40,0)

# opcode: beq, op1:x24; op2:x11; op1val:0x00000020; op2val:0x00000010; immval:8; align: 0
TEST_BRANCH_OP(beq, x2, x24, x11, 0x00000020, 0x00000010, 8, 3f, x21, 44,0)

# opcode: beq, op1:x23; op2:x9; op1val:0x00000040; op2val:0xfdffffff; immval:64; align: 0
TEST_BRANCH_OP(beq, x2, x23, x9, 0x00000040, 0xfdffffff, 64, 3f, x21, 48,0)

# opcode: beq, op1:x9; op2:x10; op1val:0x00000080; op2val:0xfff7ffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x2, x9, x10, 0x00000080, 0xfff7ffff, 6, 3f, x21, 52,0)

# opcode: beq, op1:x5; op2:x4; op1val:0x00000100; op2val:0x00000008; immval:6; align: 0
TEST_BRANCH_OP(beq, x2, x5, x4, 0x00000100, 0x00000008, 6, 3f, x21, 56,0)

# opcode: beq, op1:x11; op2:x3; op1val:0x00000200; op2val:0xfffffbff; immval:512; align: 0
TEST_BRANCH_OP(beq, x2, x11, x3, 0x00000200, 0xfffffbff, 512, 3f, x21, 60,0)

# opcode: beq, op1:x20; op2:x8; op1val:0x00000400; op2val:0xfffffdff; immval:6; align: 0
TEST_BRANCH_OP(beq, x2, x20, x8, 0x00000400, 0xfffffdff, 6, 1b, x21, 64,0)

# opcode: beq, op1:x27; op2:x18; op1val:0x00000800; op2val:0xfffffffe; immval:10; align: 0
TEST_BRANCH_OP(beq, x2, x27, x18, 0x00000800, 0xfffffffe, 10, 1b, x21, 68,0)

# opcode: beq, op1:x6; op2:x20; op1val:0x00001000; op2val:0xfffffff6; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x6, x20, 0x00001000, 0xfffffff6, 2, 3f, x21, 72,0)

# opcode: beq, op1:x12; op2:x2; op1val:0x00002000; op2val:0x80000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x12, x2, 0x00002000, 0x80000000, 4, 1b, x21, 76,0)
la x3,signature_x3_0

# opcode: beq, op1:x21; op2:x13; op1val:0x00004000; op2val:0x00000004; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x21, x13, 0x00004000, 0x00000004, 6, 1b, x3, 0,0)

# opcode: beq, op1:x7; op2:x14; op1val:0x00008000; op2val:0xffffffdf; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x7, x14, 0x00008000, 0xffffffdf, 4, 3f, x3, 4,0)

# opcode: beq, op1:x29; op2:x25; op1val:0x00010000; op2val:0xffdfffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x29, x25, 0x00010000, 0xffdfffff, 4, 1b, x3, 8,0)

# opcode: beq, op1:x8; op2:x1; op1val:0x00020000; op2val:0x00004000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x8, x1, 0x00020000, 0x00004000, 0, 1b, x3, 12,0)

# opcode: beq, op1:x10; op2:x21; op1val:0x00040000; op2val:0xefffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x21, 0x00040000, 0xefffffff, 2, 1b, x3, 16,0)

# opcode: beq, op1:x0; op2:x19; op1val:0x00080000; op2val:0xffffffdf; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x0, x19, 0x00080000, 0xffffffdf, 256, 3f, x3, 20,0)

# opcode: beq, op1:x26; op2:x23; op1val:0x00100000; op2val:0xfffff7ff; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x26, x23, 0x00100000, 0xfffff7ff, 16, 3f, x3, 24,0)

# opcode: beq, op1:x15; op2:x24; op1val:0x00200000; op2val:0xfffff7ff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x15, x24, 0x00200000, 0xfffff7ff, 1024, 1b, x3, 28,0)

# opcode: beq, op1:x25; op2:x12; op1val:0x00400000; op2val:0xfffffdff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x25, x12, 0x00400000, 0xfffffdff, 0, 1b, x3, 32,0)

# opcode: beq, op1:x17; op2:x31; op1val:0x00800000; op2val:0x00200000; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x17, x31, 0x00800000, 0x00200000, 256, 3f, x3, 36,0)

# opcode: beq, op1:x18; op2:x0; op1val:0x01000000; op2val:0xffffffef; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x18, x0, 0x01000000, 0xffffffef, 2, 3f, x3, 40,0)

# opcode: beq, op1:x2; op2:x22; op1val:0x02000000; op2val:0xdfffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x2, x22, 0x02000000, 0xdfffffff, 0, 3f, x3, 44,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x04000000; op2val:0xfffffffe; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x04000000, 0xfffffffe, 512, 3f, x3, 48,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x10000000; op2val:0x80000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x10000000, 0x80000000, 4, 3f, x3, 52,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x20000000; op2val:0xfff7ffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x20000000, 0xfff7ffff, 1366, 1b, x3, 56,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x40000000; op2val:0x00004000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x40000000, 0x00004000, 0, 1b, x3, 60,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x40000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffe, 0x40000000, 2, 3f, x3, 64,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x00008000; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffd, 0x00008000, 512, 3f, x3, 68,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00000005; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffff7, 0x00000005, 0, 1b, x3, 72,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xffffbfff; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffef, 0xffffbfff, 512, 3f, x3, 76,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x00000400; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffdf, 0x00000400, 16, 3f, x3, 80,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xfffffff7; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffbf, 0xfffffff7, 256, 3f, x3, 84,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x00100000; op2val:0xffefffff; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x00100000, 0xffefffff, 512, 3f, x3, 88,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffa; op2val:0xffbfffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffa, 0xffbfffff, 4, 1b, x3, 92,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0xff7fffff; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfff7ffff, 0xff7fffff, 32, 3f, x3, 96,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xfeffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffff7fff, 0xfeffffff, 0, 3f, x3, 100,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xfbffffff; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xbfffffff, 0xfbffffff, 16, 3f, x3, 104,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0xbfffffff; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffff7, 0xbfffffff, 16, 3f, x3, 108,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x55555555; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffe, 0x55555555, 1366, 1b, x3, 112,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x04000000; op2val:0xaaaaaaaa; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x04000000, 0xaaaaaaaa, 1366, 1b, x3, 116,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0xfffffffa; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffff7f, 0xfffffffa, 8, 3f, x3, 120,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000002; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffeff, 0x00000002, 1024, 3f, x3, 124,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00000002; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffdff, 0x00000002, 6, 3f, x3, 128,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xf7ffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffbff, 0xf7ffffff, 2, 3f, x3, 132,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x00000080; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffff7ff, 0x00000080, 8, 3f, x3, 136,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xfffffff7; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffefff, 0xfffffff7, 1366, 1b, x3, 140,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x08000000; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffdfff, 0x08000000, 32, 3f, x3, 144,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00000008; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffbfff, 0x00000008, 10, 1b, x3, 148,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0xff7fffff; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffeffff, 0xff7fffff, 256, 3f, x3, 152,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0xf7ffffff; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffdffff, 0xf7ffffff, 10, 1b, x3, 156,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xffff7fff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffbffff, 0xffff7fff, 0, 3f, x3, 160,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x04000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffefffff, 0x04000000, 0, 3f, x3, 164,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00000001; immval:64; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffdfffff, 0x00000001, 64, 3f, x3, 168,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00001000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffbfffff, 0x00001000, 1024, 1b, x3, 172,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0x00000004; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xff7fffff, 0x00000004, 0, 1b, x3, 176,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xfffffeff; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfeffffff, 0xfffffeff, 256, 3f, x3, 180,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xc0000000; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfdffffff, 0xc0000000, 10, 1b, x3, 184,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x00000007; immval:128; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfbffffff, 0x00000007, 128, 3f, x3, 188,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xfffeffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xf7ffffff, 0xfffeffff, 1024, 3f, x3, 192,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x00040000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xefffffff, 0x00040000, 0, 1b, x3, 196,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00008000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xdfffffff, 0x00008000, 2, 1b, x3, 200,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x55555555; op2val:0xffffdfff; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x55555555, 0xffffdfff, 6, 3f, x3, 204,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0x00200000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xaaaaaaaa, 0x00200000, 0, 3f, x3, 208,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x20000000; op2val:0x00000020; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x20000000, 0x00000020, 1366, 1b, x3, 212,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x40000000; op2val:0x00000040; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x40000000, 0x00000040, 1024, 1b, x3, 216,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00000100; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x7fffffff, 0x00000100, 0, 1b, x3, 220,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x00000200; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffdffff, 0x00000200, 1366, 1b, x3, 224,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x00100000; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xefffffff, 0x00100000, 512, 3f, x3, 228,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x00000400; op2val:0x00400000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x00000400, 0x00400000, 1024, 1b, x3, 232,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0x00800000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xff7fffff, 0x00800000, 0, 3f, x3, 236,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x01000000; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffdffff, 0x01000000, 256, 3f, x3, 240,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x10000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffff7ff, 0x10000000, 1024, 1b, x3, 244,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x20000000; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffff7, 0x20000000, 1366, 1b, x3, 248,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xfffffffd; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xefffffff, 0xfffffffd, 8, 3f, x3, 252,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x04000000; op2val:0xffffffbf; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x04000000, 0xffffffbf, 32, 3f, x3, 256,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x00000200; op2val:0xfffdffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x00000200, 0xfffdffff, 1366, 1b, x3, 260,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x00000009; op2val:0x00000800; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x00000009, 0x00000800, 2, 1b, x3, 264,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xffffefff; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfeffffff, 0xffffefff, 10, 1b, x3, 268,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0x00002000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xff7fffff, 0x00002000, 2, 1b, x3, 272,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x00000008; op2val:0x00020000; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x00000008, 0x00020000, 6, 1b, x3, 276,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x00100000; op2val:0xfffbffff; immval:64; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x00100000, 0xfffbffff, 64, 3f, x3, 280,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x00080000; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffdf, 0x00080000, 4, 1b, x3, 284,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x08000000; op2val:0x00000005; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x08000000, 0x00000005, 8, 3f, x3, 288,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x00080000; op2val:0xffffffdf; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x00080000, 0xffffffdf, 256, 3f, x3, 292,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x01000000; op2val:0xffffffef; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x01000000, 0xffffffef, 2, 3f, x3, 296,0)
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

signature_x21_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x21_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 75*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
