
#This assembly file tests the bltu instruction of the RISC-V I extension for the bltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bltu)

la x10,signature_x10_1

# opcode: bltu, op1:x9; op2:x17; op1val:0xffff7fff; op2val:0xfdffffff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x12, x9, x17, 0xffff7fff, 0xfdffffff, 128, 3f, x10, 0,0)

# opcode: bltu, op1:x1; op2:x1; op1val:0x00000007; op2val:0x00000007; immval:2; align: 0
TEST_BRANCH_OP(bltu, x12, x1, x1, 0x00000007, 0x00000007, 2, 3f, x10, 4,0)

# opcode: bltu, op1:x20; op2:x26; op1val:0xaaaaaaaa; op2val:0xaaaaaaaa; immval:0; align: 0
TEST_BRANCH_OP(bltu, x12, x20, x26, 0xaaaaaaaa, 0xaaaaaaaa, 0, 1b, x10, 8,0)

# opcode: bltu, op1:x29; op2:x27; op1val:0x00001000; op2val:0x0000000c; immval:8; align: 0
TEST_BRANCH_OP(bltu, x12, x29, x27, 0x00001000, 0x0000000c, 8, 1b, x10, 12,0)

# opcode: bltu, op1:x16; op2:x22; op1val:0x00000011; op2val:0xfffff7ff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x12, x16, x22, 0x00000011, 0xfffff7ff, 6, 3f, x10, 16,0)

# opcode: bltu, op1:x22; op2:x14; op1val:0x00000007; op2val:0xffffff7f; immval:0; align: 0
TEST_BRANCH_OP(bltu, x12, x22, x14, 0x00000007, 0xffffff7f, 0, 1b, x10, 20,0)

# opcode: bltu, op1:x0; op2:x18; op1val:0x00000001; op2val:0x00000003; immval:128; align: 0
TEST_BRANCH_OP(bltu, x12, x0, x18, 0x00000001, 0x00000003, 128, 3f, x10, 24,0)

# opcode: bltu, op1:x4; op2:x24; op1val:0x00000002; op2val:0x00040000; immval:128; align: 0
TEST_BRANCH_OP(bltu, x12, x4, x24, 0x00000002, 0x00040000, 128, 3f, x10, 28,0)

# opcode: bltu, op1:x25; op2:x5; op1val:0x00000004; op2val:0x00200000; immval:10; align: 0
TEST_BRANCH_OP(bltu, x12, x25, x5, 0x00000004, 0x00200000, 10, 1b, x10, 32,0)

# opcode: bltu, op1:x6; op2:x20; op1val:0x00000008; op2val:0x00000800; immval:2; align: 0
TEST_BRANCH_OP(bltu, x12, x6, x20, 0x00000008, 0x00000800, 2, 3f, x10, 36,0)

# opcode: bltu, op1:x8; op2:x3; op1val:0x00000010; op2val:0x00000020; immval:64; align: 0
TEST_BRANCH_OP(bltu, x12, x8, x3, 0x00000010, 0x00000020, 64, 3f, x10, 40,0)

# opcode: bltu, op1:x11; op2:x25; op1val:0x00000020; op2val:0x00080000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x12, x11, x25, 0x00000020, 0x00080000, 4, 1b, x10, 44,0)

# opcode: bltu, op1:x13; op2:x31; op1val:0x00000040; op2val:0x00000005; immval:4; align: 0
TEST_BRANCH_OP(bltu, x12, x13, x31, 0x00000040, 0x00000005, 4, 3f, x10, 48,0)

# opcode: bltu, op1:x21; op2:x11; op1val:0x00000080; op2val:0xfffffeff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x12, x21, x11, 0x00000080, 0xfffffeff, 1024, 3f, x10, 52,0)

# opcode: bltu, op1:x27; op2:x19; op1val:0x00000100; op2val:0x80000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x12, x27, x19, 0x00000100, 0x80000000, 2, 1b, x10, 56,0)

# opcode: bltu, op1:x14; op2:x13; op1val:0x00000200; op2val:0xfffff7ff; immval:0; align: 0
TEST_BRANCH_OP(bltu, x12, x14, x13, 0x00000200, 0xfffff7ff, 0, 1b, x10, 60,0)

# opcode: bltu, op1:x17; op2:x6; op1val:0x00000400; op2val:0xffffffdf; immval:128; align: 0
TEST_BRANCH_OP(bltu, x12, x17, x6, 0x00000400, 0xffffffdf, 128, 3f, x10, 64,0)

# opcode: bltu, op1:x2; op2:x23; op1val:0x00000800; op2val:0x0000000c; immval:64; align: 0
TEST_BRANCH_OP(bltu, x12, x2, x23, 0x00000800, 0x0000000c, 64, 3f, x10, 68,0)

# opcode: bltu, op1:x19; op2:x9; op1val:0x00002000; op2val:0xfffffffe; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x12, x19, x9, 0x00002000, 0xfffffffe, 1366, 1b, x10, 72,0)

# opcode: bltu, op1:x18; op2:x30; op1val:0x00004000; op2val:0x00000012; immval:0; align: 0
TEST_BRANCH_OP(bltu, x12, x18, x30, 0x00004000, 0x00000012, 0, 1b, x10, 76,0)

# opcode: bltu, op1:x23; op2:x2; op1val:0x00008000; op2val:0xffbfffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x12, x23, x2, 0x00008000, 0xffbfffff, 1024, 3f, x10, 80,0)

# opcode: bltu, op1:x5; op2:x29; op1val:0x00010000; op2val:0x00000012; immval:16; align: 0
TEST_BRANCH_OP(bltu, x12, x5, x29, 0x00010000, 0x00000012, 16, 3f, x10, 84,0)

# opcode: bltu, op1:x30; op2:x4; op1val:0x00020000; op2val:0xf7ffffff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x12, x30, x4, 0x00020000, 0xf7ffffff, 6, 3f, x10, 88,0)

# opcode: bltu, op1:x31; op2:x0; op1val:0x00040000; op2val:0x00000007; immval:10; align: 0
TEST_BRANCH_OP(bltu, x12, x31, x0, 0x00040000, 0x00000007, 10, 1b, x10, 92,0)

# opcode: bltu, op1:x7; op2:x21; op1val:0x00080000; op2val:0xaaaaaaaa; immval:4; align: 0
TEST_BRANCH_OP(bltu, x12, x7, x21, 0x00080000, 0xaaaaaaaa, 4, 3f, x10, 96,0)

# opcode: bltu, op1:x28; op2:x8; op1val:0x00100000; op2val:0x00000002; immval:0; align: 0
TEST_BRANCH_OP(bltu, x2, x28, x8, 0x00100000, 0x00000002, 0, 1b, x10, 100,0)
la x1,signature_x1_0

# opcode: bltu, op1:x24; op2:x12; op1val:0x00200000; op2val:0x00000010; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x24, x12, 0x00200000, 0x00000010, 4, 1b, x1, 0,0)

# opcode: bltu, op1:x15; op2:x10; op1val:0x00400000; op2val:0x20000000; immval:16; align: 0
TEST_BRANCH_OP(bltu, x2, x15, x10, 0x00400000, 0x20000000, 16, 3f, x1, 4,0)

# opcode: bltu, op1:x10; op2:x28; op1val:0x00800000; op2val:0x00200000; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x28, 0x00800000, 0x00200000, 128, 3f, x1, 8,0)

# opcode: bltu, op1:x26; op2:x15; op1val:0x01000000; op2val:0x00000020; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x26, x15, 0x01000000, 0x00000020, 2, 1b, x1, 12,0)

# opcode: bltu, op1:x12; op2:x7; op1val:0x02000000; op2val:0x55555555; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x12, x7, 0x02000000, 0x55555555, 32, 3f, x1, 16,0)

# opcode: bltu, op1:x3; op2:x16; op1val:0x04000000; op2val:0x00000200; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x3, x16, 0x04000000, 0x00000200, 6, 1b, x1, 20,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x08000000; op2val:0x00000100; immval:256; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x08000000, 0x00000100, 256, 3f, x1, 24,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x10000000; op2val:0x00000013; immval:16; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x10000000, 0x00000013, 16, 3f, x1, 28,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x20000000; op2val:0xfffffffe; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x20000000, 0xfffffffe, 1024, 3f, x1, 32,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x40000000; op2val:0x55555555; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x40000000, 0x55555555, 2, 1b, x1, 36,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x80000000; op2val:0xfffdffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x80000000, 0xfffdffff, 1366, 1b, x1, 40,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00000001; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffffe, 0x00000001, 6, 3f, x1, 44,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xdfffffff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffffd, 0xdfffffff, 4, 3f, x1, 48,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xfffffffd; immval:0; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffffb, 0xfffffffd, 0, 1b, x1, 52,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0xfffffdff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffff7, 0xfffffdff, 1024, 1b, x1, 56,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0x0000000c; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffffef, 0x0000000c, 6, 1b, x1, 60,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xfffeffff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffffdf, 0xfffeffff, 128, 3f, x1, 64,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xdfffffff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffffbf, 0xdfffffff, 128, 3f, x1, 68,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0xffffdfff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffff7f, 0xffffdfff, 4, 3f, x1, 72,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000e; op2val:0xff7fffff; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x0000000e, 0xff7fffff, 32, 3f, x1, 76,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x55555555; op2val:0xfeffffff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x55555555, 0xfeffffff, 2, 1b, x1, 80,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x20000000; op2val:0xfbffffff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x20000000, 0xfbffffff, 6, 3f, x1, 84,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000080; op2val:0xefffffff; immval:0; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000080, 0xefffffff, 0, 1b, x1, 88,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00080000; op2val:0xbfffffff; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00080000, 0xbfffffff, 8, 3f, x1, 92,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000020; op2val:0x7fffffff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000020, 0x7fffffff, 2, 1b, x1, 96,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000800; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffeff, 0x00000800, 8, 1b, x1, 100,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00000080; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffdff, 0x00000080, 1366, 1b, x1, 104,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x00000005; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffbff, 0x00000005, 32, 3f, x1, 108,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xbfffffff; immval:32; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffff7ff, 0xbfffffff, 32, 3f, x1, 112,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffefff; op2val:0x0000000a; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffefff, 0x0000000a, 2, 3f, x1, 116,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0xfffffffb; immval:0; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffdfff, 0xfffffffb, 0, 3f, x1, 120,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x0000000c; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffbfff, 0x0000000c, 128, 3f, x1, 124,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00000002; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffeffff, 0x00000002, 6, 1b, x1, 128,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x00000013; immval:16; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffdffff, 0x00000013, 16, 3f, x1, 132,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xffdfffff; immval:512; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffbffff, 0xffdfffff, 512, 3f, x1, 136,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00001000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfff7ffff, 0x00001000, 4, 3f, x1, 140,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00040000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffefffff, 0x00040000, 2, 3f, x1, 144,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x04000000; immval:10; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffdfffff, 0x04000000, 10, 1b, x1, 148,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00000400; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffbfffff, 0x00000400, 1024, 1b, x1, 152,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0x10000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xff7fffff, 0x10000000, 4, 1b, x1, 156,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xffffefff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfeffffff, 0xffffefff, 2, 1b, x1, 160,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x00002000; immval:0; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfdffffff, 0x00002000, 0, 1b, x1, 164,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xfffffff7; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfbffffff, 0xfffffff7, 1024, 3f, x1, 168,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x00000011; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xf7ffffff, 0x00000011, 1366, 1b, x1, 172,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x55555555; immval:6; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xefffffff, 0x55555555, 6, 3f, x1, 176,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0xdfffffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xdfffffff, 0xdfffffff, 1366, 1b, x1, 180,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xfffff7ff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xbfffffff, 0xfffff7ff, 1366, 1b, x1, 184,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0xfffffdff; immval:16; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x7fffffff, 0xfffffdff, 16, 3f, x1, 188,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00200000; op2val:0x00000004; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00200000, 0x00000004, 128, 3f, x1, 192,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00010000; op2val:0x00000008; immval:16; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00010000, 0x00000008, 16, 3f, x1, 196,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x00000040; immval:512; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xefffffff, 0x00000040, 512, 3f, x1, 200,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x55555555; op2val:0x00004000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x55555555, 0x00004000, 1024, 3f, x1, 204,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00008000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffff7, 0x00008000, 1024, 3f, x1, 208,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000400; op2val:0x00010000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000400, 0x00010000, 1024, 1b, x1, 212,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000006; op2val:0x00020000; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000006, 0x00020000, 128, 3f, x1, 216,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00002000; op2val:0x00800000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00002000, 0x00800000, 2, 3f, x1, 220,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x01000000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xbfffffff, 0x01000000, 1024, 3f, x1, 224,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00004000; op2val:0x02000000; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00004000, 0x02000000, 8, 1b, x1, 228,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x08000000; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xfffffffe, 0x08000000, 128, 3f, x1, 232,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00040000; op2val:0x40000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00040000, 0x40000000, 2, 3f, x1, 236,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x10000000; op2val:0xffffffef; immval:256; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x10000000, 0xffffffef, 256, 3f, x1, 240,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000d; op2val:0xffffffbf; immval:10; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x0000000d, 0xffffffbf, 10, 1b, x1, 244,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xfffffbff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xbfffffff, 0xfffffbff, 4, 3f, x1, 248,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x02000000; op2val:0xffefffff; immval:16; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x02000000, 0xffefffff, 16, 3f, x1, 252,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000010; op2val:0xffffbfff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000010, 0xffffbfff, 1024, 1b, x1, 256,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00004000; op2val:0xffff7fff; immval:8; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00004000, 0xffff7fff, 8, 1b, x1, 260,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000000; op2val:0xfffbffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000000, 0xfffbffff, 1024, 1b, x1, 264,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffff; op2val:0xfff7ffff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0xffffffff, 0xfff7ffff, 4, 3f, x1, 268,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000006; op2val:0x00100000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000006, 0x00100000, 1024, 3f, x1, 272,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000c; op2val:0x00400000; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x0000000c, 0x00400000, 1366, 1b, x1, 276,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000007; op2val:0x00000007; immval:2; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000007, 0x00000007, 2, 3f, x1, 280,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00000001; op2val:0x00000003; immval:128; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00000001, 0x00000003, 128, 3f, x1, 284,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x00040000; op2val:0x00000007; immval:10; align: 0
TEST_BRANCH_OP(bltu, x2, x10, x11, 0x00040000, 0x00000007, 10, 1b, x1, 288,0)
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
    .fill 26*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 73*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
