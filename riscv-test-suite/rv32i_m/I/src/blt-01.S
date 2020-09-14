
#This assembly file tests the blt instruction of the RISC-V I extension for the blt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",blt)

la x5,signature_x5_1

# opcode: blt, op1:x3; op2:x3; op1val:0x00008000; op2val:0x00010000; immval:16; align: 0
TEST_BRANCH_OP(blt, x12, x3, x3, 0x00008000, 0x00010000, 16, 3f, x5, 0,0)

# opcode: blt, op1:x11; op2:x8; op1val:0x00004000; op2val:0xfffff7ff; immval:4; align: 0
TEST_BRANCH_OP(blt, x12, x11, x8, 0x00004000, 0xfffff7ff, 4, 1b, x5, 4,0)

# opcode: blt, op1:x31; op2:x22; op1val:0xfffdffff; op2val:0xefffffff; immval:32; align: 0
TEST_BRANCH_OP(blt, x12, x31, x22, 0xfffdffff, 0xefffffff, 32, 3f, x5, 8,0)

# opcode: blt, op1:x29; op2:x17; op1val:0xffffffbf; op2val:0x04000000; immval:32; align: 0
TEST_BRANCH_OP(blt, x12, x29, x17, 0xffffffbf, 0x04000000, 32, 3f, x5, 12,0)

# opcode: blt, op1:x9; op2:x15; op1val:0xffffbfff; op2val:0xffffbfff; immval:32; align: 0
TEST_BRANCH_OP(blt, x12, x9, x15, 0xffffbfff, 0xffffbfff, 32, 3f, x5, 16,0)

# opcode: blt, op1:x25; op2:x29; op1val:0xfffffbff; op2val:0xfffffbff; immval:0; align: 0
TEST_BRANCH_OP(blt, x12, x25, x29, 0xfffffbff, 0xfffffbff, 0, 1b, x5, 20,0)

# opcode: blt, op1:x20; op2:x23; op1val:0xefffffff; op2val:0x00020000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x12, x20, x23, 0xefffffff, 0x00020000, 1024, 1b, x5, 24,0)

# opcode: blt, op1:x6; op2:x11; op1val:0x00000001; op2val:0xbfffffff; immval:64; align: 0
TEST_BRANCH_OP(blt, x12, x6, x11, 0x00000001, 0xbfffffff, 64, 3f, x5, 28,0)

# opcode: blt, op1:x18; op2:x31; op1val:0x00000002; op2val:0xfeffffff; immval:256; align: 0
TEST_BRANCH_OP(blt, x12, x18, x31, 0x00000002, 0xfeffffff, 256, 3f, x5, 32,0)

# opcode: blt, op1:x8; op2:x28; op1val:0x00000004; op2val:0xfdffffff; immval:64; align: 0
TEST_BRANCH_OP(blt, x12, x8, x28, 0x00000004, 0xfdffffff, 64, 3f, x5, 36,0)

# opcode: blt, op1:x26; op2:x10; op1val:0x00000008; op2val:0xffff7fff; immval:1366; align: 0
TEST_BRANCH_OP(blt, x12, x26, x10, 0x00000008, 0xffff7fff, 1366, 1b, x5, 40,0)

# opcode: blt, op1:x15; op2:x4; op1val:0x00000010; op2val:0xf7ffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x12, x15, x4, 0x00000010, 0xf7ffffff, 4, 1b, x5, 44,0)

# opcode: blt, op1:x1; op2:x30; op1val:0x00000020; op2val:0x00000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x12, x1, x30, 0x00000020, 0x00000000, 8, 3f, x5, 48,0)

# opcode: blt, op1:x0; op2:x24; op1val:0x00000040; op2val:0x20000000; immval:16; align: 0
TEST_BRANCH_OP(blt, x12, x0, x24, 0x00000040, 0x20000000, 16, 3f, x5, 52,0)

# opcode: blt, op1:x22; op2:x27; op1val:0x00000080; op2val:0xffff7fff; immval:8; align: 0
TEST_BRANCH_OP(blt, x12, x22, x27, 0x00000080, 0xffff7fff, 8, 3f, x5, 56,0)

# opcode: blt, op1:x7; op2:x19; op1val:0x00000100; op2val:0x00000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x12, x7, x19, 0x00000100, 0x00000000, 8, 3f, x5, 60,0)

# opcode: blt, op1:x4; op2:x25; op1val:0x00000200; op2val:0xfbffffff; immval:6; align: 0
TEST_BRANCH_OP(blt, x12, x4, x25, 0x00000200, 0xfbffffff, 6, 1b, x5, 64,0)

# opcode: blt, op1:x24; op2:x2; op1val:0x00000400; op2val:0xefffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x12, x24, x2, 0x00000400, 0xefffffff, 2, 1b, x5, 68,0)

# opcode: blt, op1:x19; op2:x7; op1val:0x00000800; op2val:0x00000002; immval:32; align: 0
TEST_BRANCH_OP(blt, x12, x19, x7, 0x00000800, 0x00000002, 32, 3f, x5, 72,0)

# opcode: blt, op1:x21; op2:x20; op1val:0x00001000; op2val:0xefffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x12, x21, x20, 0x00001000, 0xefffffff, 0, 3f, x5, 76,0)

# opcode: blt, op1:x28; op2:x16; op1val:0x00002000; op2val:0x10000000; immval:256; align: 0
TEST_BRANCH_OP(blt, x12, x28, x16, 0x00002000, 0x10000000, 256, 3f, x5, 80,0)

# opcode: blt, op1:x16; op2:x0; op1val:0x00010000; op2val:0x20000000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x16, x0, 0x00010000, 0x20000000, 0, 1b, x5, 84,0)

# opcode: blt, op1:x14; op2:x1; op1val:0x00020000; op2val:0x00080000; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x14, x1, 0x00020000, 0x00080000, 10, 1b, x5, 88,0)
la x1,signature_x1_0

# opcode: blt, op1:x12; op2:x5; op1val:0x00040000; op2val:0xfffffeff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x12, x5, 0x00040000, 0xfffffeff, 4, 1b, x1, 0,0)

# opcode: blt, op1:x13; op2:x12; op1val:0x00080000; op2val:0x00000007; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x13, x12, 0x00080000, 0x00000007, 128, 3f, x1, 4,0)

# opcode: blt, op1:x23; op2:x21; op1val:0x00100000; op2val:0x00000100; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x23, x21, 0x00100000, 0x00000100, 256, 3f, x1, 8,0)

# opcode: blt, op1:x17; op2:x13; op1val:0x00200000; op2val:0xdfffffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x17, x13, 0x00200000, 0xdfffffff, 8, 3f, x1, 12,0)

# opcode: blt, op1:x10; op2:x14; op1val:0x00400000; op2val:0xfffffdff; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x10, x14, 0x00400000, 0xfffffdff, 10, 1b, x1, 16,0)

# opcode: blt, op1:x5; op2:x6; op1val:0x00800000; op2val:0x00000010; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x5, x6, 0x00800000, 0x00000010, 8, 3f, x1, 20,0)

# opcode: blt, op1:x2; op2:x9; op1val:0x01000000; op2val:0xfffff7ff; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x2, x9, 0x01000000, 0xfffff7ff, 1366, 1b, x1, 24,0)

# opcode: blt, op1:x27; op2:x26; op1val:0x02000000; op2val:0x00000020; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x27, x26, 0x02000000, 0x00000020, 10, 1b, x1, 28,0)

# opcode: blt, op1:x30; op2:x18; op1val:0x04000000; op2val:0xffffff7f; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x30, x18, 0x04000000, 0xffffff7f, 0, 3f, x1, 32,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x08000000; op2val:0x00000003; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x08000000, 0x00000003, 8, 3f, x1, 36,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x10000000; op2val:0x00000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x10000000, 0x00000000, 4, 1b, x1, 40,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x20000000; op2val:0x00400000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x20000000, 0x00400000, 0, 1b, x1, 44,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x40000000; op2val:0xfffbffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x40000000, 0xfffbffff, 0, 3f, x1, 48,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x80000000; op2val:0x55555555; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x80000000, 0x55555555, 8, 3f, x1, 52,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xfffffffb; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffe, 0xfffffffb, 4, 1b, x1, 56,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x7fffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffd, 0x7fffffff, 2, 3f, x1, 60,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xfdffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffb, 0xfdffffff, 0, 1b, x1, 64,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xffefffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xaaaaaaaa, 0xffefffff, 4, 3f, x1, 68,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xffdfffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffff7fff, 0xffdfffff, 4, 1b, x1, 72,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x10000000; op2val:0xffbfffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x10000000, 0xffbfffff, 4, 3f, x1, 76,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00100000; op2val:0xff7fffff; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00100000, 0xff7fffff, 128, 3f, x1, 80,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000000; op2val:0xaaaaaaaa; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00000000, 0xaaaaaaaa, 8, 1b, x1, 84,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00000007; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffff7, 0x00000007, 6, 1b, x1, 88,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffef; op2val:0x00000001; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffef, 0x00000001, 10, 1b, x1, 92,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x10000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffdf, 0x10000000, 1024, 1b, x1, 96,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x00000010; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffff7f, 0x00000010, 1024, 3f, x1, 100,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000400; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffeff, 0x00000400, 6, 1b, x1, 104,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00000002; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffdff, 0x00000002, 8, 1b, x1, 108,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xfffffff7; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffff7ff, 0xfffffff7, 8, 1b, x1, 112,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xfffffbff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffefff, 0xfffffbff, 0, 3f, x1, 116,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x02000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffdfff, 0x02000000, 4, 1b, x1, 120,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00000200; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffeffff, 0x00000200, 512, 3f, x1, 124,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00080000; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffbffff, 0x00080000, 512, 3f, x1, 128,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0xfdffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfff7ffff, 0xfdffffff, 4, 1b, x1, 132,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffefffff; op2val:0xefffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffefffff, 0xefffffff, 4, 1b, x1, 136,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x80000000; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffdfffff, 0x80000000, 32, 3f, x1, 140,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00000001; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffbfffff, 0x00000001, 6, 3f, x1, 144,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xfffffffd; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xff7fffff, 0xfffffffd, 4, 3f, x1, 148,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xfffffdff; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfeffffff, 0xfffffdff, 8, 1b, x1, 152,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x3fffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfdffffff, 0x3fffffff, 4, 3f, x1, 156,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xfffffff6; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfbffffff, 0xfffffff6, 1366, 1b, x1, 160,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xfdffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xf7ffffff, 0xfdffffff, 4, 3f, x1, 164,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00000002; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xdfffffff, 0x00000002, 64, 3f, x1, 168,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x20000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xbfffffff, 0x20000000, 4, 1b, x1, 172,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00040000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x7fffffff, 0x00040000, 4, 1b, x1, 176,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x55555555; op2val:0xfffffffc; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x55555555, 0xfffffffc, 128, 3f, x1, 180,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00080000; op2val:0x00000004; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00080000, 0x00000004, 10, 1b, x1, 184,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00000008; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xdfffffff, 0x00000008, 2, 3f, x1, 188,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000080; op2val:0x00000040; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00000080, 0x00000040, 6, 3f, x1, 192,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00100000; op2val:0x00000080; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00100000, 0x00000080, 512, 3f, x1, 196,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00000800; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffb, 0x00000800, 1366, 1b, x1, 200,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00400000; op2val:0x00001000; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00400000, 0x00001000, 32, 3f, x1, 204,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00800000; op2val:0x00002000; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00800000, 0x00002000, 512, 3f, x1, 208,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x00004000; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffdffff, 0x00004000, 8, 1b, x1, 212,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00008000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffbfffff, 0x00008000, 1024, 3f, x1, 216,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000400; op2val:0x00100000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00000400, 0x00100000, 0, 3f, x1, 220,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x00200000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffdf, 0x00200000, 4, 1b, x1, 224,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00800000; op2val:0x00800000; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00800000, 0x00800000, 512, 3f, x1, 228,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x40000000; op2val:0x01000000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x40000000, 0x01000000, 0, 3f, x1, 232,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00020000; op2val:0x08000000; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00020000, 0x08000000, 256, 3f, x1, 236,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x40000000; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffdfffff, 0x40000000, 2, 1b, x1, 240,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00800000; op2val:0xfffffffe; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00800000, 0xfffffffe, 2, 3f, x1, 244,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffa; op2val:0xffffffef; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffa, 0xffffffef, 4, 1b, x1, 248,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000004; op2val:0xffffffdf; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00000004, 0xffffffdf, 6, 1b, x1, 252,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000800; op2val:0xffffffbf; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00000800, 0xffffffbf, 1024, 3f, x1, 256,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00800000; op2val:0xffffefff; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00800000, 0xffffefff, 6, 3f, x1, 260,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xffffdfff; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffbffff, 0xffffdfff, 1366, 1b, x1, 264,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0xfffeffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffbfff, 0xfffeffff, 8, 1b, x1, 268,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xfffdffff; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xff7fffff, 0xfffdffff, 128, 3f, x1, 272,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x80000000; op2val:0xfff7ffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x80000000, 0xfff7ffff, 2, 3f, x1, 276,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00008000; op2val:0x00010000; immval:16; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00008000, 0x00010000, 16, 3f, x1, 280,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00000040; op2val:0x20000000; immval:16; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00000040, 0x20000000, 16, 3f, x1, 284,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x00010000; op2val:0x20000000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x00010000, 0x20000000, 0, 1b, x1, 288,0)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x5_1:
    .fill 23*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 73*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
