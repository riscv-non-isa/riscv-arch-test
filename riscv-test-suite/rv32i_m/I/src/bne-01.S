
#This assembly file tests the bne instruction of the RISC-V I extension for the bne covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bne)

la x10,signature_x10_1

# opcode: bne, op1:x9; op2:x9; op1val:0x00020000; op2val:0x00000200; immval:16; align: 0
TEST_BRANCH_OP(bne, x20, x9, x9, 0x00020000, 0x00000200, 16, 3f, x10, 0,0)

# opcode: bne, op1:x14; op2:x0; op1val:0x00000080; op2val:0xffffffef; immval:8; align: 0
TEST_BRANCH_OP(bne, x20, x14, x0, 0x00000080, 0xffffffef, 8, 1b, x10, 4,0)

# opcode: bne, op1:x17; op2:x31; op1val:0xfffffdff; op2val:0xfffffff8; immval:512; align: 0
TEST_BRANCH_OP(bne, x20, x17, x31, 0xfffffdff, 0xfffffff8, 512, 3f, x10, 8,0)

# opcode: bne, op1:x23; op2:x2; op1val:0xfbffffff; op2val:0x7fffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x20, x23, x2, 0xfbffffff, 0x7fffffff, 1024, 1b, x10, 12,0)

# opcode: bne, op1:x12; op2:x8; op1val:0x00000400; op2val:0x00000400; immval:1024; align: 0
TEST_BRANCH_OP(bne, x20, x12, x8, 0x00000400, 0x00000400, 1024, 3f, x10, 16,0)

# opcode: bne, op1:x0; op2:x27; op1val:0x00400000; op2val:0x00400000; immval:4; align: 0
TEST_BRANCH_OP(bne, x20, x0, x27, 0x00400000, 0x00400000, 4, 1b, x10, 20,0)

# opcode: bne, op1:x6; op2:x11; op1val:0x00000001; op2val:0x00000040; immval:1024; align: 0
TEST_BRANCH_OP(bne, x20, x6, x11, 0x00000001, 0x00000040, 1024, 1b, x10, 24,0)

# opcode: bne, op1:x27; op2:x5; op1val:0x00000002; op2val:0x00000002; immval:8; align: 0
TEST_BRANCH_OP(bne, x20, x27, x5, 0x00000002, 0x00000002, 8, 3f, x10, 28,0)

# opcode: bne, op1:x2; op2:x18; op1val:0x00000004; op2val:0x00001000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x20, x2, x18, 0x00000004, 0x00001000, 1024, 1b, x10, 32,0)

# opcode: bne, op1:x3; op2:x30; op1val:0x00000008; op2val:0xffefffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x20, x3, x30, 0x00000008, 0xffefffff, 1024, 1b, x10, 36,0)

# opcode: bne, op1:x15; op2:x28; op1val:0x00000010; op2val:0xfdffffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x20, x15, x28, 0x00000010, 0xfdffffff, 0, 3f, x10, 40,0)

# opcode: bne, op1:x7; op2:x29; op1val:0x00000020; op2val:0x10000000; immval:8; align: 0
TEST_BRANCH_OP(bne, x20, x7, x29, 0x00000020, 0x10000000, 8, 3f, x10, 44,0)

# opcode: bne, op1:x11; op2:x22; op1val:0x00000040; op2val:0xfdffffff; immval:6; align: 0
TEST_BRANCH_OP(bne, x20, x11, x22, 0x00000040, 0xfdffffff, 6, 3f, x10, 48,0)

# opcode: bne, op1:x5; op2:x23; op1val:0x00000100; op2val:0xfffffffa; immval:1024; align: 0
TEST_BRANCH_OP(bne, x20, x5, x23, 0x00000100, 0xfffffffa, 1024, 3f, x10, 52,0)

# opcode: bne, op1:x18; op2:x15; op1val:0x00000200; op2val:0xfffeffff; immval:8; align: 0
TEST_BRANCH_OP(bne, x20, x18, x15, 0x00000200, 0xfffeffff, 8, 3f, x10, 56,0)

# opcode: bne, op1:x13; op2:x1; op1val:0x00000800; op2val:0x00000006; immval:2; align: 0
TEST_BRANCH_OP(bne, x20, x13, x1, 0x00000800, 0x00000006, 2, 3f, x10, 60,0)

# opcode: bne, op1:x30; op2:x6; op1val:0x00001000; op2val:0xfffffff8; immval:1024; align: 0
TEST_BRANCH_OP(bne, x20, x30, x6, 0x00001000, 0xfffffff8, 1024, 1b, x10, 64,0)

# opcode: bne, op1:x24; op2:x13; op1val:0x00002000; op2val:0x00400000; immval:8; align: 0
TEST_BRANCH_OP(bne, x20, x24, x13, 0x00002000, 0x00400000, 8, 1b, x10, 68,0)

# opcode: bne, op1:x21; op2:x4; op1val:0x00004000; op2val:0xfffffffb; immval:1024; align: 0
TEST_BRANCH_OP(bne, x20, x21, x4, 0x00004000, 0xfffffffb, 1024, 3f, x10, 72,0)

# opcode: bne, op1:x19; op2:x16; op1val:0x00008000; op2val:0x00004000; immval:128; align: 0
TEST_BRANCH_OP(bne, x20, x19, x16, 0x00008000, 0x00004000, 128, 3f, x10, 76,0)

# opcode: bne, op1:x26; op2:x17; op1val:0x00010000; op2val:0x04000000; immval:256; align: 0
TEST_BRANCH_OP(bne, x5, x26, x17, 0x00010000, 0x04000000, 256, 3f, x10, 80,0)
la x2,signature_x2_0

# opcode: bne, op1:x10; op2:x7; op1val:0x00040000; op2val:0xffffffbf; immval:16; align: 0
TEST_BRANCH_OP(bne, x5, x10, x7, 0x00040000, 0xffffffbf, 16, 3f, x2, 0,0)

# opcode: bne, op1:x8; op2:x10; op1val:0x00080000; op2val:0x20000000; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x8, x10, 0x00080000, 0x20000000, 4, 3f, x2, 4,0)

# opcode: bne, op1:x20; op2:x24; op1val:0x00100000; op2val:0x00080000; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x20, x24, 0x00100000, 0x00080000, 0, 3f, x2, 8,0)

# opcode: bne, op1:x22; op2:x25; op1val:0x00200000; op2val:0xfffffbff; immval:64; align: 0
TEST_BRANCH_OP(bne, x5, x22, x25, 0x00200000, 0xfffffbff, 64, 3f, x2, 12,0)

# opcode: bne, op1:x31; op2:x21; op1val:0x00800000; op2val:0x00000400; immval:6; align: 0
TEST_BRANCH_OP(bne, x5, x31, x21, 0x00800000, 0x00000400, 6, 3f, x2, 16,0)

# opcode: bne, op1:x16; op2:x20; op1val:0x01000000; op2val:0xaaaaaaaa; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x16, x20, 0x01000000, 0xaaaaaaaa, 4, 1b, x2, 20,0)

# opcode: bne, op1:x28; op2:x14; op1val:0x02000000; op2val:0x00020000; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x28, x14, 0x02000000, 0x00020000, 0, 3f, x2, 24,0)

# opcode: bne, op1:x29; op2:x12; op1val:0x04000000; op2val:0x55555555; immval:128; align: 0
TEST_BRANCH_OP(bne, x5, x29, x12, 0x04000000, 0x55555555, 128, 3f, x2, 28,0)

# opcode: bne, op1:x4; op2:x3; op1val:0x08000000; op2val:0xfffffff8; immval:1366; align: 0
TEST_BRANCH_OP(bne, x5, x4, x3, 0x08000000, 0xfffffff8, 1366, 1b, x2, 32,0)

# opcode: bne, op1:x1; op2:x19; op1val:0x10000000; op2val:0xffff7fff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x5, x1, x19, 0x10000000, 0xffff7fff, 1024, 3f, x2, 36,0)

# opcode: bne, op1:x25; op2:x26; op1val:0x20000000; op2val:0xfffffffd; immval:1366; align: 0
TEST_BRANCH_OP(bne, x5, x25, x26, 0x20000000, 0xfffffffd, 1366, 1b, x2, 40,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x40000000; op2val:0x04000000; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x40000000, 0x04000000, 4, 3f, x2, 44,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x80000000; op2val:0xfffffffd; immval:64; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x80000000, 0xfffffffd, 64, 3f, x2, 48,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00000080; immval:64; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffe, 0x00000080, 64, 3f, x2, 52,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xfffffff9; immval:8; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffd, 0xfffffff9, 8, 1b, x2, 56,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00040000; immval:8; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffb, 0x00040000, 8, 1b, x2, 60,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0xfffffff6; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffff7, 0xfffffff6, 0, 3f, x2, 64,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xfffffff7; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffef, 0xfffffff7, 4, 3f, x2, 68,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xffffffdf; immval:128; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffdf, 0xffffffdf, 128, 3f, x2, 72,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x04000000; immval:256; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffbf, 0x04000000, 256, 3f, x2, 76,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffff; op2val:0xffdfffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffff, 0xffdfffff, 0, 3f, x2, 80,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x55555555; op2val:0xffbfffff; immval:128; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x55555555, 0xffbfffff, 128, 3f, x2, 84,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00008000; op2val:0xff7fffff; immval:2; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00008000, 0xff7fffff, 2, 3f, x2, 88,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xfeffffff; immval:128; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffefff, 0xfeffffff, 128, 3f, x2, 92,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xfbffffff; immval:512; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffff7ff, 0xfbffffff, 512, 3f, x2, 96,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffa; op2val:0xf7ffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffa, 0xf7ffffff, 4, 3f, x2, 100,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xefffffff; immval:512; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffe, 0xefffffff, 512, 3f, x2, 104,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffc; op2val:0xdfffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffc, 0xdfffffff, 4, 3f, x2, 108,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00000004; op2val:0xbfffffff; immval:2; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000004, 0xbfffffff, 2, 1b, x2, 112,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0xdfffffff; immval:512; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffff7f, 0xdfffffff, 512, 3f, x2, 116,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0xffff7fff; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffeff, 0xffff7fff, 0, 1b, x2, 120,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xfffffffe; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffbff, 0xfffffffe, 0, 1b, x2, 124,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0xc0000000; immval:8; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffdfff, 0xc0000000, 8, 1b, x2, 128,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0xaaaaaaaa; immval:32; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffbfff, 0xaaaaaaaa, 32, 3f, x2, 132,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xdfffffff; immval:256; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffff7fff, 0xdfffffff, 256, 3f, x2, 136,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0xfffffffb; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffeffff, 0xfffffffb, 4, 3f, x2, 140,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0xffdfffff; immval:10; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffdffff, 0xffdfffff, 10, 1b, x2, 144,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x7fffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffbffff, 0x7fffffff, 4, 1b, x2, 148,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0xfffbffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfff7ffff, 0xfffbffff, 0, 3f, x2, 152,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffefffff; op2val:0xffff7fff; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffefffff, 0xffff7fff, 0, 3f, x2, 156,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00200000; immval:256; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffdfffff, 0x00200000, 256, 3f, x2, 160,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00000040; immval:64; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffbfffff, 0x00000040, 64, 3f, x2, 164,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0x00000003; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xff7fffff, 0x00000003, 0, 3f, x2, 168,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x04000000; immval:8; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfeffffff, 0x04000000, 8, 1b, x2, 172,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x3fffffff; immval:6; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfdffffff, 0x3fffffff, 6, 1b, x2, 176,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xfffbffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xf7ffffff, 0xfffbffff, 0, 3f, x2, 180,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xffbfffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xefffffff, 0xffbfffff, 0, 1b, x2, 184,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00080000; immval:2; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xdfffffff, 0x00080000, 2, 3f, x2, 188,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x00000400; immval:8; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xbfffffff, 0x00000400, 8, 1b, x2, 192,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0xff7fffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x7fffffff, 0xff7fffff, 0, 3f, x2, 196,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xffffffef; immval:16; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xaaaaaaaa, 0xffffffef, 16, 3f, x2, 200,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00000001; immval:128; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffeffff, 0x00000001, 128, 3f, x2, 204,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00000004; immval:6; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffbffff, 0x00000004, 6, 3f, x2, 208,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00000008; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffdfffff, 0x00000008, 4, 3f, x2, 212,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x08000000; op2val:0x00000010; immval:1024; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x08000000, 0x00000010, 1024, 1b, x2, 216,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00080000; op2val:0x00000020; immval:2; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00080000, 0x00000020, 2, 3f, x2, 220,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00000080; op2val:0x00000100; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000080, 0x00000100, 4, 1b, x2, 224,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00000400; op2val:0x00000800; immval:6; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000400, 0x00000800, 6, 3f, x2, 228,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00008000; op2val:0x00002000; immval:2; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00008000, 0x00002000, 2, 1b, x2, 232,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x01000000; op2val:0x00008000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x01000000, 0x00008000, 1024, 3f, x2, 236,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xc0000000; op2val:0x00010000; immval:2; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xc0000000, 0x00010000, 2, 3f, x2, 240,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00008000; op2val:0x00100000; immval:64; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00008000, 0x00100000, 64, 3f, x2, 244,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00800000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x7fffffff, 0x00800000, 1024, 1b, x2, 248,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x80000000; op2val:0x01000000; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x80000000, 0x01000000, 0, 1b, x2, 252,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00002000; op2val:0x02000000; immval:256; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00002000, 0x02000000, 256, 3f, x2, 256,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x08000000; immval:6; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffefffff, 0x08000000, 6, 3f, x2, 260,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x40000000; immval:64; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffdfff, 0x40000000, 64, 3f, x2, 264,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x80000000; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffbfffff, 0x80000000, 0, 3f, x2, 268,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xffffff7f; immval:8; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffb, 0xffffff7f, 8, 3f, x2, 272,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00000080; op2val:0xfffffeff; immval:64; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000080, 0xfffffeff, 64, 3f, x2, 276,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xfffffdff; immval:16; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffbff, 0xfffffdff, 16, 3f, x2, 280,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x02000000; op2val:0xfffff7ff; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x02000000, 0xfffff7ff, 4, 3f, x2, 284,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xffffefff; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffbf, 0xffffefff, 4, 3f, x2, 288,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00000006; op2val:0xffffdfff; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000006, 0xffffdfff, 4, 1b, x2, 292,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00000008; op2val:0xffffbfff; immval:64; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000008, 0xffffbfff, 64, 3f, x2, 296,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xfffdffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffdff, 0xfffdffff, 0, 3f, x2, 300,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xfff7ffff; immval:6; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xbfffffff, 0xfff7ffff, 6, 3f, x2, 304,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00020000; op2val:0x00000200; immval:16; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00020000, 0x00000200, 16, 3f, x2, 308,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00000080; op2val:0xffffffef; immval:8; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000080, 0xffffffef, 8, 1b, x2, 312,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x00400000; op2val:0x00400000; immval:4; align: 0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00400000, 0x00400000, 4, 1b, x2, 316,0)
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


signature_x2_0:
    .fill 80*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
