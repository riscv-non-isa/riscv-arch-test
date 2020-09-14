
#This assembly file tests the bge instruction of the RISC-V I extension for the bge covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bge)

la x12,signature_x12_1

# opcode: bge, op1:x29; op2:x29; op1val:0x04000000; op2val:0x00000001; immval:128; align: 0
TEST_BRANCH_OP(bge, x14, x29, x29, 0x04000000, 0x00000001, 128, 3f, x12, 0,0)

# opcode: bge, op1:x17; op2:x15; op1val:0x00000080; op2val:0xffffff7f; immval:4; align: 0
TEST_BRANCH_OP(bge, x14, x17, x15, 0x00000080, 0xffffff7f, 4, 1b, x12, 4,0)

# opcode: bge, op1:x9; op2:x5; op1val:0xefffffff; op2val:0x80000000; immval:512; align: 0
TEST_BRANCH_OP(bge, x14, x9, x5, 0xefffffff, 0x80000000, 512, 3f, x12, 8,0)

# opcode: bge, op1:x13; op2:x23; op1val:0xffffffbf; op2val:0x00400000; immval:8; align: 0
TEST_BRANCH_OP(bge, x14, x13, x23, 0xffffffbf, 0x00400000, 8, 1b, x12, 12,0)

# opcode: bge, op1:x4; op2:x2; op1val:0xfffdffff; op2val:0xfffdffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x14, x4, x2, 0xfffdffff, 0xfffdffff, 1024, 3f, x12, 16,0)

# opcode: bge, op1:x16; op2:x4; op1val:0x04000000; op2val:0x04000000; immval:1024; align: 0
TEST_BRANCH_OP(bge, x14, x16, x4, 0x04000000, 0x04000000, 1024, 1b, x12, 20,0)

# opcode: bge, op1:x24; op2:x31; op1val:0xffffffdf; op2val:0x00800000; immval:4; align: 0
TEST_BRANCH_OP(bge, x14, x24, x31, 0xffffffdf, 0x00800000, 4, 3f, x12, 24,0)

# opcode: bge, op1:x11; op2:x6; op1val:0x00000001; op2val:0xffffffbf; immval:512; align: 0
TEST_BRANCH_OP(bge, x14, x11, x6, 0x00000001, 0xffffffbf, 512, 3f, x12, 28,0)

# opcode: bge, op1:x22; op2:x26; op1val:0x00000002; op2val:0xfffffffd; immval:32; align: 0
TEST_BRANCH_OP(bge, x14, x22, x26, 0x00000002, 0xfffffffd, 32, 3f, x12, 32,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00000004; op2val:0x00000200; immval:1024; align: 0
TEST_BRANCH_OP(bge, x14, x10, x11, 0x00000004, 0x00000200, 1024, 3f, x12, 36,0)

# opcode: bge, op1:x6; op2:x7; op1val:0x00000008; op2val:0xff7fffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x14, x6, x7, 0x00000008, 0xff7fffff, 1024, 3f, x12, 40,0)

# opcode: bge, op1:x30; op2:x9; op1val:0x00000010; op2val:0x20000000; immval:128; align: 0
TEST_BRANCH_OP(bge, x14, x30, x9, 0x00000010, 0x20000000, 128, 3f, x12, 44,0)

# opcode: bge, op1:x18; op2:x10; op1val:0x00000020; op2val:0x00001000; immval:128; align: 0
TEST_BRANCH_OP(bge, x14, x18, x10, 0x00000020, 0x00001000, 128, 3f, x12, 48,0)

# opcode: bge, op1:x15; op2:x18; op1val:0x00000040; op2val:0xf7ffffff; immval:0; align: 0
TEST_BRANCH_OP(bge, x14, x15, x18, 0x00000040, 0xf7ffffff, 0, 1b, x12, 52,0)

# opcode: bge, op1:x1; op2:x22; op1val:0x00000100; op2val:0x00004000; immval:4; align: 0
TEST_BRANCH_OP(bge, x14, x1, x22, 0x00000100, 0x00004000, 4, 3f, x12, 56,0)

# opcode: bge, op1:x26; op2:x3; op1val:0x00000200; op2val:0xfffffffa; immval:1024; align: 0
TEST_BRANCH_OP(bge, x14, x26, x3, 0x00000200, 0xfffffffa, 1024, 3f, x12, 60,0)

# opcode: bge, op1:x19; op2:x28; op1val:0x00000400; op2val:0xfffff7ff; immval:8; align: 0
TEST_BRANCH_OP(bge, x14, x19, x28, 0x00000400, 0xfffff7ff, 8, 1b, x12, 64,0)

# opcode: bge, op1:x25; op2:x0; op1val:0x00000800; op2val:0xffffefff; immval:6; align: 0
TEST_BRANCH_OP(bge, x14, x25, x0, 0x00000800, 0xffffefff, 6, 3f, x12, 68,0)

# opcode: bge, op1:x8; op2:x13; op1val:0x00001000; op2val:0x00800000; immval:6; align: 0
TEST_BRANCH_OP(bge, x14, x8, x13, 0x00001000, 0x00800000, 6, 1b, x12, 72,0)

# opcode: bge, op1:x2; op2:x1; op1val:0x00002000; op2val:0x00100000; immval:2; align: 0
TEST_BRANCH_OP(bge, x14, x2, x1, 0x00002000, 0x00100000, 2, 3f, x12, 76,0)

# opcode: bge, op1:x20; op2:x24; op1val:0x00004000; op2val:0xfffdffff; immval:128; align: 0
TEST_BRANCH_OP(bge, x14, x20, x24, 0x00004000, 0xfffdffff, 128, 3f, x12, 80,0)

# opcode: bge, op1:x0; op2:x27; op1val:0x00008000; op2val:0xffffdfff; immval:32; align: 0
TEST_BRANCH_OP(bge, x2, x0, x27, 0x00008000, 0xffffdfff, 32, 3f, x12, 84,0)
la x1,signature_x1_0

# opcode: bge, op1:x3; op2:x16; op1val:0x00010000; op2val:0x00000000; immval:4; align: 0
TEST_BRANCH_OP(bge, x2, x3, x16, 0x00010000, 0x00000000, 4, 1b, x1, 0,0)

# opcode: bge, op1:x5; op2:x17; op1val:0x00020000; op2val:0x01000000; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x5, x17, 0x00020000, 0x01000000, 6, 3f, x1, 4,0)

# opcode: bge, op1:x27; op2:x14; op1val:0x00040000; op2val:0xffff7fff; immval:10; align: 0
TEST_BRANCH_OP(bge, x2, x27, x14, 0x00040000, 0xffff7fff, 10, 1b, x1, 8,0)

# opcode: bge, op1:x31; op2:x8; op1val:0x00080000; op2val:0x00010000; immval:1366; align: 0
TEST_BRANCH_OP(bge, x2, x31, x8, 0x00080000, 0x00010000, 1366, 1b, x1, 12,0)

# opcode: bge, op1:x21; op2:x25; op1val:0x00100000; op2val:0xfffffff6; immval:1024; align: 0
TEST_BRANCH_OP(bge, x2, x21, x25, 0x00100000, 0xfffffff6, 1024, 3f, x1, 16,0)

# opcode: bge, op1:x14; op2:x20; op1val:0x00200000; op2val:0x00000007; immval:4; align: 0
TEST_BRANCH_OP(bge, x2, x14, x20, 0x00200000, 0x00000007, 4, 3f, x1, 20,0)

# opcode: bge, op1:x28; op2:x19; op1val:0x00400000; op2val:0xfff7ffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x2, x28, x19, 0x00400000, 0xfff7ffff, 4, 1b, x1, 24,0)

# opcode: bge, op1:x23; op2:x30; op1val:0x00800000; op2val:0x00080000; immval:1024; align: 0
TEST_BRANCH_OP(bge, x2, x23, x30, 0x00800000, 0x00080000, 1024, 3f, x1, 28,0)

# opcode: bge, op1:x7; op2:x21; op1val:0x01000000; op2val:0x00800000; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x7, x21, 0x01000000, 0x00800000, 256, 3f, x1, 32,0)

# opcode: bge, op1:x12; op2:x25; op1val:0x02000000; op2val:0xfffffffd; immval:0; align: 0
TEST_BRANCH_OP(bge, x2, x12, x25, 0x02000000, 0xfffffffd, 0, 3f, x1, 36,0)

# opcode: bge, op1:x5; op2:x12; op1val:0x08000000; op2val:0xfffffbff; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x5, x12, 0x08000000, 0xfffffbff, 256, 3f, x1, 40,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x10000000; op2val:0xffffffef; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x10000000, 0xffffffef, 256, 3f, x1, 44,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x20000000; op2val:0x00000100; immval:1024; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x20000000, 0x00000100, 1024, 1b, x1, 48,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x40000000; op2val:0xffdfffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x40000000, 0xffdfffff, 4, 1b, x1, 52,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x80000000; op2val:0xfffffff7; immval:0; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x80000000, 0xfffffff7, 0, 3f, x1, 56,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xfffffffa; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffffe, 0xfffffffa, 6, 1b, x1, 60,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xfffffffa; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffffd, 0xfffffffa, 6, 1b, x1, 64,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00000001; immval:16; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffffb, 0x00000001, 16, 3f, x1, 68,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00100000; immval:32; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffff7, 0x00100000, 32, 3f, x1, 72,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xffefffff; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xbfffffff, 0xffefffff, 6, 3f, x1, 76,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00080000; op2val:0xffbfffff; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00080000, 0xffbfffff, 256, 3f, x1, 80,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xfeffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffffe, 0xfeffffff, 2, 1b, x1, 84,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00000040; op2val:0xfdffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00000040, 0xfdffffff, 2, 3f, x1, 88,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00000003; op2val:0xfbffffff; immval:0; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00000003, 0xfbffffff, 0, 3f, x1, 92,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00010000; op2val:0xefffffff; immval:128; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00010000, 0xefffffff, 128, 3f, x1, 96,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xdfffffff; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xbfffffff, 0xdfffffff, 256, 3f, x1, 100,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xbfffffff; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfeffffff, 0xbfffffff, 256, 3f, x1, 104,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x7fffffff; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffffdfff, 0x7fffffff, 6, 1b, x1, 108,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffa; op2val:0x55555555; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffffa, 0x55555555, 256, 3f, x1, 112,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xaaaaaaaa; immval:2; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffffffef, 0xaaaaaaaa, 2, 3f, x1, 116,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0xffffbfff; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffffff7f, 0xffffbfff, 256, 3f, x1, 120,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000000; immval:2; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffeff, 0x00000000, 2, 1b, x1, 124,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00000006; immval:1024; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffdff, 0x00000006, 1024, 1b, x1, 128,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xfffffff9; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffbff, 0xfffffff9, 256, 3f, x1, 132,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x00000007; immval:0; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffff7ff, 0x00000007, 0, 3f, x1, 136,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xefffffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffffefff, 0xefffffff, 1024, 1b, x1, 140,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0xffffff7f; immval:8; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffffbfff, 0xffffff7f, 8, 3f, x1, 144,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0x10000000; immval:0; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffff7fff, 0x10000000, 0, 1b, x1, 148,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x02000000; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffeffff, 0x02000000, 256, 3f, x1, 152,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xfff7ffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffbffff, 0xfff7ffff, 8, 3f, x1, 156,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00000080; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfff7ffff, 0x00000080, 256, 3f, x1, 160,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffefffff; op2val:0xfffdffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffefffff, 0xfffdffff, 1024, 1b, x1, 164,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00010000; immval:8; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffdfffff, 0x00010000, 8, 3f, x1, 168,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x02000000; immval:2; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffbfffff, 0x02000000, 2, 1b, x1, 172,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xfffffbff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xff7fffff, 0xfffffbff, 1024, 1b, x1, 176,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x00000007; immval:4; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfdffffff, 0x00000007, 4, 1b, x1, 180,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xffefffff; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfbffffff, 0xffefffff, 6, 3f, x1, 184,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xfffffeff; immval:0; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xf7ffffff, 0xfffffeff, 0, 1b, x1, 188,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0xfbffffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xdfffffff, 0xfbffffff, 1024, 1b, x1, 192,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0xfffffeff; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x7fffffff, 0xfffffeff, 256, 3f, x1, 196,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x55555555; op2val:0xfff7ffff; immval:64; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x55555555, 0xfff7ffff, 64, 3f, x1, 200,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xffefffff; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xaaaaaaaa, 0xffefffff, 6, 3f, x1, 204,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00000002; immval:0; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffffb, 0x00000002, 0, 3f, x1, 208,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00200000; op2val:0x00000004; immval:16; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00200000, 0x00000004, 16, 3f, x1, 212,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00000003; op2val:0x00000008; immval:10; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00000003, 0x00000008, 10, 1b, x1, 216,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x20000000; op2val:0x00000010; immval:0; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x20000000, 0x00000010, 0, 3f, x1, 220,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00000020; immval:10; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffffe, 0x00000020, 10, 1b, x1, 224,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000040; immval:128; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffeff, 0x00000040, 128, 3f, x1, 228,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00000080; op2val:0x00200000; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00000080, 0x00200000, 6, 1b, x1, 232,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00000100; op2val:0x08000000; immval:1024; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00000100, 0x08000000, 1024, 1b, x1, 236,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x40000000; immval:16; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffffbfff, 0x40000000, 16, 3f, x1, 240,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffa; op2val:0xfffffffe; immval:8; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffffa, 0xfffffffe, 8, 1b, x1, 244,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xfffffffb; immval:4; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffdff, 0xfffffffb, 4, 1b, x1, 248,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00001000; op2val:0xffffffdf; immval:16; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00001000, 0xffffffdf, 16, 3f, x1, 252,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00000800; op2val:0xfffffdff; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00000800, 0xfffffdff, 6, 3f, x1, 256,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xc0000000; op2val:0x00040000; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xc0000000, 0x00040000, 6, 3f, x1, 260,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00000400; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffdfffff, 0x00000400, 256, 3f, x1, 264,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00000800; immval:4; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffbfffff, 0x00000800, 4, 3f, x1, 268,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00002000; immval:8; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffffdfff, 0x00002000, 8, 3f, x1, 272,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00020000; op2val:0x00008000; immval:16; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00020000, 0x00008000, 16, 3f, x1, 276,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0xfffeffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xffffff7f, 0xfffeffff, 8, 1b, x1, 280,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x10000000; op2val:0x00020000; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x10000000, 0x00020000, 6, 3f, x1, 284,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffa; op2val:0xfffbffff; immval:256; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0xfffffffa, 0xfffbffff, 256, 3f, x1, 288,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x04000000; op2val:0x00000001; immval:128; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x04000000, 0x00000001, 128, 3f, x1, 292,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00000800; op2val:0xffffefff; immval:6; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00000800, 0xffffefff, 6, 3f, x1, 296,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x00008000; op2val:0xffffdfff; immval:32; align: 0
TEST_BRANCH_OP(bge, x2, x10, x11, 0x00008000, 0xffffdfff, 32, 3f, x1, 300,0)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x12_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 76*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
