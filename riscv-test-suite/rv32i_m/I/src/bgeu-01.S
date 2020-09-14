
#This assembly file tests the bgeu instruction of the RISC-V I extension for the bgeu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bgeu)

la x10,signature_x10_1

# opcode: bgeu, op1:x18; op2:x18; op1val:0x00000020; op2val:0x00001000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x11, x18, x18, 0x00000020, 0x00001000, 0, 3f, x10, 0,0)

# opcode: bgeu, op1:x22; op2:x1; op1val:0xffbfffff; op2val:0xffbfffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x11, x22, x1, 0xffbfffff, 0xffbfffff, 6, 3f, x10, 4,0)

# opcode: bgeu, op1:x2; op2:x3; op1val:0xfffbffff; op2val:0xfffbffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x11, x2, x3, 0xfffbffff, 0xfffbffff, 1024, 1b, x10, 8,0)

# opcode: bgeu, op1:x19; op2:x8; op1val:0xfffffdff; op2val:0x00000080; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x11, x19, x8, 0xfffffdff, 0x00000080, 8, 3f, x10, 12,0)

# opcode: bgeu, op1:x1; op2:x19; op1val:0x00000009; op2val:0x00000008; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x11, x1, x19, 0x00000009, 0x00000008, 0, 1b, x10, 16,0)

# opcode: bgeu, op1:x26; op2:x5; op1val:0x00010000; op2val:0xaaaaaaaa; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x11, x26, x5, 0x00010000, 0xaaaaaaaa, 8, 3f, x10, 20,0)

# opcode: bgeu, op1:x17; op2:x26; op1val:0x00000400; op2val:0x00080000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x11, x17, x26, 0x00000400, 0x00080000, 8, 1b, x10, 24,0)

# opcode: bgeu, op1:x13; op2:x31; op1val:0x00000001; op2val:0x00040000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x11, x13, x31, 0x00000001, 0x00040000, 2, 3f, x10, 28,0)

# opcode: bgeu, op1:x5; op2:x29; op1val:0x00000002; op2val:0x00200000; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x11, x5, x29, 0x00000002, 0x00200000, 128, 3f, x10, 32,0)

# opcode: bgeu, op1:x16; op2:x30; op1val:0x00000004; op2val:0xfffff7ff; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x11, x16, x30, 0x00000004, 0xfffff7ff, 10, 1b, x10, 36,0)

# opcode: bgeu, op1:x25; op2:x9; op1val:0x00000008; op2val:0xaaaaaaaa; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x11, x25, x9, 0x00000008, 0xaaaaaaaa, 512, 3f, x10, 40,0)

# opcode: bgeu, op1:x30; op2:x4; op1val:0x00000010; op2val:0x00800000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x11, x30, x4, 0x00000010, 0x00800000, 10, 1b, x10, 44,0)

# opcode: bgeu, op1:x31; op2:x12; op1val:0x00000040; op2val:0x00000800; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x11, x31, x12, 0x00000040, 0x00000800, 128, 3f, x10, 48,0)

# opcode: bgeu, op1:x3; op2:x23; op1val:0x00000080; op2val:0xfffeffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x11, x3, x23, 0x00000080, 0xfffeffff, 6, 1b, x10, 52,0)

# opcode: bgeu, op1:x12; op2:x24; op1val:0x00000100; op2val:0xffefffff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x11, x12, x24, 0x00000100, 0xffefffff, 16, 3f, x10, 56,0)

# opcode: bgeu, op1:x29; op2:x13; op1val:0x00000200; op2val:0xdfffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x11, x29, x13, 0x00000200, 0xdfffffff, 2, 3f, x10, 60,0)

# opcode: bgeu, op1:x14; op2:x7; op1val:0x00000800; op2val:0xfffffbff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x11, x14, x7, 0x00000800, 0xfffffbff, 8, 3f, x10, 64,0)

# opcode: bgeu, op1:x15; op2:x27; op1val:0x00001000; op2val:0x20000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x11, x15, x27, 0x00001000, 0x20000000, 0, 1b, x10, 68,0)

# opcode: bgeu, op1:x21; op2:x0; op1val:0x00002000; op2val:0x00000040; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x11, x21, x0, 0x00002000, 0x00000040, 512, 3f, x10, 72,0)

# opcode: bgeu, op1:x4; op2:x6; op1val:0x00004000; op2val:0xfffffffe; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x11, x4, x6, 0x00004000, 0xfffffffe, 512, 3f, x10, 76,0)

# opcode: bgeu, op1:x8; op2:x11; op1val:0x00008000; op2val:0x00000200; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x3, x8, x11, 0x00008000, 0x00000200, 2, 1b, x10, 80,0)
la x1,signature_x1_0

# opcode: bgeu, op1:x27; op2:x25; op1val:0x00020000; op2val:0x00010000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x3, x27, x25, 0x00020000, 0x00010000, 6, 1b, x1, 0,0)

# opcode: bgeu, op1:x20; op2:x28; op1val:0x00040000; op2val:0xffffefff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x3, x20, x28, 0x00040000, 0xffffefff, 6, 3f, x1, 4,0)

# opcode: bgeu, op1:x24; op2:x2; op1val:0x00080000; op2val:0x00000009; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x3, x24, x2, 0x00080000, 0x00000009, 2, 3f, x1, 8,0)

# opcode: bgeu, op1:x10; op2:x16; op1val:0x00100000; op2val:0x00200000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x16, 0x00100000, 0x00200000, 10, 1b, x1, 12,0)

# opcode: bgeu, op1:x11; op2:x10; op1val:0x00200000; op2val:0x0000000a; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x3, x11, x10, 0x00200000, 0x0000000a, 128, 3f, x1, 16,0)

# opcode: bgeu, op1:x9; op2:x22; op1val:0x00400000; op2val:0xfffffffb; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x3, x9, x22, 0x00400000, 0xfffffffb, 4, 1b, x1, 20,0)

# opcode: bgeu, op1:x28; op2:x20; op1val:0x00800000; op2val:0x0000000d; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x3, x28, x20, 0x00800000, 0x0000000d, 512, 3f, x1, 24,0)

# opcode: bgeu, op1:x6; op2:x21; op1val:0x01000000; op2val:0xffffffdf; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x3, x6, x21, 0x01000000, 0xffffffdf, 4, 1b, x1, 28,0)

# opcode: bgeu, op1:x7; op2:x15; op1val:0x02000000; op2val:0xffffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x3, x7, x15, 0x02000000, 0xffffffff, 256, 3f, x1, 32,0)

# opcode: bgeu, op1:x0; op2:x17; op1val:0x04000000; op2val:0xfeffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x3, x0, x17, 0x04000000, 0xfeffffff, 2, 3f, x1, 36,0)

# opcode: bgeu, op1:x23; op2:x14; op1val:0x08000000; op2val:0x00000001; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x3, x23, x14, 0x08000000, 0x00000001, 64, 3f, x1, 40,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x10000000; op2val:0x00100000; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x10000000, 0x00100000, 64, 3f, x1, 44,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x20000000; op2val:0x00000010; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x20000000, 0x00000010, 4, 1b, x1, 48,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x40000000; op2val:0xefffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x40000000, 0xefffffff, 0, 1b, x1, 52,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x80000000; op2val:0x0000000e; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x80000000, 0x0000000e, 0, 1b, x1, 56,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00000400; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfffffffe, 0x00000400, 16, 3f, x1, 60,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x00000012; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfffffffd, 0x00000012, 512, 3f, x1, 64,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xfbffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfffffffb, 0xfbffffff, 0, 1b, x1, 68,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00000009; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfffffff7, 0x00000009, 0, 1b, x1, 72,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xff7fffff; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xff7fffff, 0xff7fffff, 512, 3f, x1, 76,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xfdffffff; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfdffffff, 0xfdffffff, 512, 3f, x1, 80,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000c; op2val:0xf7ffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x0000000c, 0xf7ffffff, 32, 3f, x1, 84,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xbfffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffff7fff, 0xbfffffff, 1024, 3f, x1, 88,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x7fffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfeffffff, 0x7fffffff, 2, 1b, x1, 92,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x55555555; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfffff7ff, 0x55555555, 6, 1b, x1, 96,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0x01000000; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffffef, 0x01000000, 16, 3f, x1, 100,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x00000008; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffffdf, 0x00000008, 1366, 1b, x1, 104,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x0000000b; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffffbf, 0x0000000b, 1366, 1b, x1, 108,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x0000000d; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffff7f, 0x0000000d, 8, 3f, x1, 112,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0xffffff7f; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfffffeff, 0xffffff7f, 1366, 1b, x1, 116,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x00000005; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfffffbff, 0x00000005, 0, 1b, x1, 120,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffefff; op2val:0x00000100; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffefff, 0x00000100, 1366, 1b, x1, 124,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00400000; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffdfff, 0x00400000, 64, 3f, x1, 128,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00000011; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffbfff, 0x00000011, 32, 3f, x1, 132,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00040000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfffeffff, 0x00040000, 4, 1b, x1, 136,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0xfffffffd; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfffdffff, 0xfffffffd, 0, 1b, x1, 140,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00000013; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfff7ffff, 0x00000013, 2, 3f, x1, 144,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x02000000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffefffff, 0x02000000, 10, 1b, x1, 148,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0xffffefff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffdfffff, 0xffffefff, 256, 3f, x1, 152,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x20000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfbffffff, 0x20000000, 0, 3f, x1, 156,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x0000000b; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xf7ffffff, 0x0000000b, 1024, 3f, x1, 160,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x80000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xefffffff, 0x80000000, 0, 1b, x1, 164,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00000080; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xdfffffff, 0x00000080, 6, 3f, x1, 168,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x00040000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xbfffffff, 0x00040000, 0, 3f, x1, 172,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00000010; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x7fffffff, 0x00000010, 64, 3f, x1, 176,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x55555555; op2val:0xffefffff; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x55555555, 0xffefffff, 1366, 1b, x1, 180,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0x00000800; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xaaaaaaaa, 0x00000800, 6, 3f, x1, 184,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff; op2val:0x00000002; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffffff, 0x00000002, 16, 3f, x1, 188,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000040; op2val:0x00000004; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00000040, 0x00000004, 64, 3f, x1, 192,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000800; op2val:0x00000020; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00000800, 0x00000020, 1024, 3f, x1, 196,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00002000; op2val:0x00002000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00002000, 0x00002000, 6, 1b, x1, 200,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000e; op2val:0x00004000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x0000000e, 0x00004000, 10, 1b, x1, 204,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000011; op2val:0x00008000; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00000011, 0x00008000, 16, 3f, x1, 208,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00020000; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffbfff, 0x00020000, 64, 3f, x1, 212,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000c; op2val:0x04000000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x0000000c, 0x04000000, 10, 1b, x1, 216,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x08000000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xfbffffff, 0x08000000, 1366, 1b, x1, 220,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0x10000000; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xffffffef, 0x10000000, 32, 3f, x1, 224,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00004000; op2val:0x40000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00004000, 0x40000000, 2, 1b, x1, 228,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00200000; op2val:0xfffffff7; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00200000, 0xfffffff7, 2, 3f, x1, 232,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x02000000; op2val:0xffffffef; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x02000000, 0xffffffef, 0, 3f, x1, 236,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00008000; op2val:0xffffffbf; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00008000, 0xffffffbf, 1024, 1b, x1, 240,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000004; op2val:0xfffffeff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00000004, 0xfffffeff, 32, 3f, x1, 244,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00400000; op2val:0xfffffdff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00400000, 0xfffffdff, 16, 3f, x1, 248,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xffffdfff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0xf7ffffff, 0xffffdfff, 8, 3f, x1, 252,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00040000; op2val:0xffffbfff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00040000, 0xffffbfff, 6, 1b, x1, 256,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00200000; op2val:0xffff7fff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00200000, 0xffff7fff, 4, 1b, x1, 260,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000002; op2val:0xfffdffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00000002, 0xfffdffff, 1024, 3f, x1, 264,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000009; op2val:0xfff7ffff; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00000009, 0xfff7ffff, 1366, 1b, x1, 268,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000013; op2val:0xffdfffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00000013, 0xffdfffff, 2, 1b, x1, 272,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000020; op2val:0x00001000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00000020, 0x00001000, 0, 3f, x1, 276,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x00002000; op2val:0x00000040; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x00002000, 0x00000040, 512, 3f, x1, 280,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x04000000; op2val:0xfeffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x3, x10, x11, 0x04000000, 0xfeffffff, 2, 3f, x1, 284,0)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x10_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 72*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
