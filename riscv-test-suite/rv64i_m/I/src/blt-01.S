
#This assembly file tests the blt instruction of the RISC-V I extension for the blt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",blt)

la x6,signature_x6_1

# opcode: blt, op1:x27; op2:x27; op1val:0x0000040000000000; op2val:0x0000000010000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x10, x27, x27, 0x0000040000000000, 0x0000000010000000, 4, 3f, x6, 0,0)

# opcode: blt, op1:x14; op2:x26; op1val:0x0000000000000001; op2val:0xfffffffffeffffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x10, x14, x26, 0x0000000000000001, 0xfffffffffeffffff, 8, 1b, x6, 8,0)

# opcode: blt, op1:x1; op2:x31; op1val:0xfffffffffffffeff; op2val:0xfffffffbffffffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x10, x1, x31, 0xfffffffffffffeff, 0xfffffffbffffffff, 8, 1b, x6, 16,0)

# opcode: blt, op1:x17; op2:x5; op1val:0xf7ffffffffffffff; op2val:0x0000000000000400; immval:128; align: 0
TEST_BRANCH_OP(blt, x10, x17, x5, 0xf7ffffffffffffff, 0x0000000000000400, 128, 3f, x6, 24,0)

# opcode: blt, op1:x30; op2:x19; op1val:0x0000000000000002; op2val:0x0000000000000002; immval:8; align: 0
TEST_BRANCH_OP(blt, x10, x30, x19, 0x0000000000000002, 0x0000000000000002, 8, 3f, x6, 32,0)

# opcode: blt, op1:x22; op2:x13; op1val:0x0000400000000000; op2val:0x0000400000000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x10, x22, x13, 0x0000400000000000, 0x0000400000000000, 4, 1b, x6, 40,0)

# opcode: blt, op1:x9; op2:x30; op1val:0xfdffffffffffffff; op2val:0x0000000000100000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x10, x9, x30, 0xfdffffffffffffff, 0x0000000000100000, 1024, 1b, x6, 48,0)

# opcode: blt, op1:x29; op2:x1; op1val:0x0000000000000004; op2val:0xffffbfffffffffff; immval:256; align: 0
TEST_BRANCH_OP(blt, x10, x29, x1, 0x0000000000000004, 0xffffbfffffffffff, 256, 3f, x6, 56,0)

# opcode: blt, op1:x15; op2:x17; op1val:0x0000000000000008; op2val:0x0000000000000400; immval:1024; align: 0
TEST_BRANCH_OP(blt, x10, x15, x17, 0x0000000000000008, 0x0000000000000400, 1024, 1b, x6, 64,0)

# opcode: blt, op1:x31; op2:x12; op1val:0x0000000000000010; op2val:0xfffffffffffffff9; immval:256; align: 0
TEST_BRANCH_OP(blt, x10, x31, x12, 0x0000000000000010, 0xfffffffffffffff9, 256, 3f, x6, 72,0)

# opcode: blt, op1:x19; op2:x7; op1val:0x0000000000000020; op2val:0x0000000200000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x10, x19, x7, 0x0000000000000020, 0x0000000200000000, 1024, 1b, x6, 80,0)

# opcode: blt, op1:x16; op2:x3; op1val:0x0000000000000040; op2val:0x0000002000000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x10, x16, x3, 0x0000000000000040, 0x0000002000000000, 8, 1b, x6, 88,0)

# opcode: blt, op1:x3; op2:x22; op1val:0x0000000000000080; op2val:0x0000000000010000; immval:0; align: 0
TEST_BRANCH_OP(blt, x10, x3, x22, 0x0000000000000080, 0x0000000000010000, 0, 1b, x6, 96,0)

# opcode: blt, op1:x18; op2:x20; op1val:0x0000000000000100; op2val:0xffffffffffefffff; immval:256; align: 0
TEST_BRANCH_OP(blt, x10, x18, x20, 0x0000000000000100, 0xffffffffffefffff, 256, 3f, x6, 104,0)

# opcode: blt, op1:x23; op2:x18; op1val:0x0000000000000200; op2val:0x0000000000800000; immval:6; align: 0
TEST_BRANCH_OP(blt, x10, x23, x18, 0x0000000000000200, 0x0000000000800000, 6, 3f, x6, 112,0)

# opcode: blt, op1:x25; op2:x8; op1val:0x0000000000000400; op2val:0x4000000000000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x10, x25, x8, 0x0000000000000400, 0x4000000000000000, 1024, 3f, x6, 120,0)

# opcode: blt, op1:x2; op2:x24; op1val:0x0000000000000800; op2val:0x0000000000400000; immval:128; align: 0
TEST_BRANCH_OP(blt, x10, x2, x24, 0x0000000000000800, 0x0000000000400000, 128, 3f, x6, 128,0)

# opcode: blt, op1:x5; op2:x29; op1val:0x0000000000001000; op2val:0xffffffff7fffffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x10, x5, x29, 0x0000000000001000, 0xffffffff7fffffff, 8, 1b, x6, 136,0)

# opcode: blt, op1:x4; op2:x16; op1val:0x0000000000002000; op2val:0x0000000200000000; immval:128; align: 0
TEST_BRANCH_OP(blt, x10, x4, x16, 0x0000000000002000, 0x0000000200000000, 128, 3f, x6, 144,0)

# opcode: blt, op1:x8; op2:x28; op1val:0x0000000000004000; op2val:0x0000000000800000; immval:8; align: 0
TEST_BRANCH_OP(blt, x10, x8, x28, 0x0000000000004000, 0x0000000000800000, 8, 1b, x6, 152,0)

# opcode: blt, op1:x21; op2:x10; op1val:0x0000000000008000; op2val:0x5555555555555555; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x21, x10, 0x0000000000008000, 0x5555555555555555, 1024, 1b, x6, 160,0)
la x1,signature_x1_0

# opcode: blt, op1:x7; op2:x6; op1val:0x0000000000010000; op2val:0xffffffffffffffbf; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x7, x6, 0x0000000000010000, 0xffffffffffffffbf, 4, 1b, x1, 0,0)

# opcode: blt, op1:x12; op2:x2; op1val:0x0000000000020000; op2val:0x0000000002000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x12, x2, 0x0000000000020000, 0x0000000002000000, 1024, 1b, x1, 8,0)

# opcode: blt, op1:x10; op2:x0; op1val:0x0000000000040000; op2val:0xfffffffffffffffa; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x0, 0x0000000000040000, 0xfffffffffffffffa, 8, 3f, x1, 16,0)

# opcode: blt, op1:x11; op2:x23; op1val:0x0000000000080000; op2val:0x0002000000000000; immval:16; align: 0
TEST_BRANCH_OP(blt, x3, x11, x23, 0x0000000000080000, 0x0002000000000000, 16, 3f, x1, 24,0)

# opcode: blt, op1:x28; op2:x15; op1val:0x0000000000100000; op2val:0x0000000000010000; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x28, x15, 0x0000000000100000, 0x0000000000010000, 6, 1b, x1, 32,0)

# opcode: blt, op1:x26; op2:x14; op1val:0x0000000000200000; op2val:0xf7ffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x26, x14, 0x0000000000200000, 0xf7ffffffffffffff, 4, 1b, x1, 40,0)

# opcode: blt, op1:x6; op2:x4; op1val:0x0000000000400000; op2val:0xffffffffff7fffff; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x6, x4, 0x0000000000400000, 0xffffffffff7fffff, 6, 3f, x1, 48,0)

# opcode: blt, op1:x13; op2:x9; op1val:0x0000000000800000; op2val:0x0400000000000000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x13, x9, 0x0000000000800000, 0x0400000000000000, 0, 1b, x1, 56,0)

# opcode: blt, op1:x20; op2:x11; op1val:0x0000000001000000; op2val:0xfffffffffbffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x20, x11, 0x0000000001000000, 0xfffffffffbffffff, 4, 1b, x1, 64,0)

# opcode: blt, op1:x24; op2:x25; op1val:0x0000000002000000; op2val:0xffffffbfffffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x24, x25, 0x0000000002000000, 0xffffffbfffffffff, 2, 1b, x1, 72,0)

# opcode: blt, op1:x0; op2:x21; op1val:0x0000000004000000; op2val:0x0000200000000000; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x0, x21, 0x0000000004000000, 0x0000200000000000, 6, 3f, x1, 80,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0x0000004000000000; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000008000000, 0x0000004000000000, 256, 3f, x1, 88,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0200000000000000; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000010000000, 0x0200000000000000, 2, 3f, x1, 96,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0xffffdfffffffffff; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000020000000, 0xffffdfffffffffff, 32, 3f, x1, 104,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000010000000; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000040000000, 0x0000000010000000, 2, 1b, x1, 112,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xfffffffffffffff7; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000080000000, 0xfffffffffffffff7, 1024, 3f, x1, 120,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000000000080000; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000100000000, 0x0000000000080000, 8, 1b, x1, 128,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0000200000000000; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000200000000, 0x0000200000000000, 128, 3f, x1, 136,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xfffffffffffffdff; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000400000000, 0xfffffffffffffdff, 1024, 3f, x1, 144,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x4000000000000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000800000000, 0x4000000000000000, 8, 1b, x1, 152,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000000000000010; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000001000000000, 0x0000000000000010, 10, 1b, x1, 160,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xfeffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000002000000000, 0xfeffffffffffffff, 1024, 3f, x1, 168,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xfffffffffffffff7; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000004000000000, 0xfffffffffffffff7, 32, 3f, x1, 176,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xfffffffffffeffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000008000000000, 0xfffffffffffeffff, 8, 3f, x1, 184,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xffefffffffffffff; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000010000000000, 0xffefffffffffffff, 512, 3f, x1, 192,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0000000000000005; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000020000000000, 0x0000000000000005, 1366, 1b, x1, 200,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xffbfffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000080000000000, 0xffbfffffffffffff, 0, 3f, x1, 208,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000000000008000; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000100000000000, 0x0000000000008000, 256, 3f, x1, 216,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0x0040000000000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000200000000000, 0x0040000000000000, 1024, 3f, x1, 224,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0800000000000000; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000800000000000, 0x0800000000000000, 2, 3f, x1, 232,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0000010000000000; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0001000000000000, 0x0000010000000000, 256, 3f, x1, 240,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000200000000000; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0002000000000000, 0x0000200000000000, 256, 3f, x1, 248,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffdffffffffff; immval:16; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0004000000000000, 0xfffffdffffffffff, 16, 3f, x1, 256,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0800000000000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0008000000000000, 0x0800000000000000, 4, 1b, x1, 264,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0000000020000000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0010000000000000, 0x0000000020000000, 0, 1b, x1, 272,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000000000000020; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0020000000000000, 0x0000000000000020, 6, 1b, x1, 280,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffffbfffffffff; immval:16; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0040000000000000, 0xffffffbfffffffff, 16, 3f, x1, 288,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xfffffffdffffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0080000000000000, 0xfffffffdffffffff, 0, 3f, x1, 296,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0xfffffffffffffffa; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0100000000000000, 0xfffffffffffffffa, 32, 3f, x1, 304,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000000002000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0200000000000000, 0x0000000002000000, 1024, 1b, x1, 312,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x0200000000000000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0400000000000000, 0x0200000000000000, 0, 1b, x1, 320,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xfffffbffffffffff; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0800000000000000, 0xfffffbffffffffff, 64, 3f, x1, 328,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x0000000000000400; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x1000000000000000, 0x0000000000000400, 8, 1b, x1, 336,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0000000008000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x2000000000000000, 0x0000000008000000, 4, 3f, x1, 344,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0000010000000000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x4000000000000000, 0x0000010000000000, 0, 3f, x1, 352,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0000000008000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x8000000000000000, 0x0000000008000000, 8, 3f, x1, 360,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xc000000000000000; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffffffe, 0xc000000000000000, 64, 3f, x1, 368,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x7fffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffffffd, 0x7fffffffffffffff, 8, 1b, x1, 376,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xffffffbfffffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffffffb, 0xffffffbfffffffff, 4, 1b, x1, 384,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0001000000000000; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffffff7, 0x0001000000000000, 512, 3f, x1, 392,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0040000000000000; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffffef, 0x0040000000000000, 2, 3f, x1, 400,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000400000000; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffffdf, 0x0000000400000000, 256, 3f, x1, 408,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000000040000; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffffbf, 0x0000000000040000, 6, 1b, x1, 416,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0x8000000000000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffff7f, 0x8000000000000000, 8, 3f, x1, 424,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000000002000; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffffdff, 0x0000000000002000, 32, 3f, x1, 432,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0100000000000000; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffffbff, 0x0100000000000000, 6, 3f, x1, 440,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xaaaaaaaaaaaaaaaa; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffff7ff, 0xaaaaaaaaaaaaaaaa, 1366, 1b, x1, 448,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xffff7fffffffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffefff, 0xffff7fffffffffff, 2, 1b, x1, 456,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xffdfffffffffffff; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000001000000000, 0xffdfffffffffffff, 256, 3f, x1, 464,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xff7fffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffdfffff, 0xff7fffffffffffff, 4, 1b, x1, 472,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xfdffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000000006, 0xfdffffffffffffff, 1024, 1b, x1, 480,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfbffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfbffffffffffffff, 2, 1b, x1, 488,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xefffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000200000000000, 0xefffffffffffffff, 2, 1b, x1, 496,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xdfffffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffbffffff, 0xdfffffffffffffff, 128, 3f, x1, 504,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xbfffffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000000006, 0xbfffffffffffffff, 0, 3f, x1, 512,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x1000000000000000; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffdfff, 0x1000000000000000, 2, 1b, x1, 520,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000000000004000; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffbfff, 0x0000000000004000, 128, 3f, x1, 528,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000000020; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffff7fff, 0x0000000000000020, 128, 3f, x1, 536,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0000000000800000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffeffff, 0x0000000000800000, 0, 3f, x1, 544,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000000000000002; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffdffff, 0x0000000000000002, 512, 3f, x1, 552,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xffffffffff7fffff; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffbffff, 0xffffffffff7fffff, 1366, 1b, x1, 560,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000020000000; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffff7ffff, 0x0000000020000000, 64, 3f, x1, 568,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0xffffffffffffffdf; immval:16; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffefffff, 0xffffffffffffffdf, 16, 3f, x1, 576,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000020000000000; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffbfffff, 0x0000020000000000, 128, 3f, x1, 584,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0800000000000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffff7fffff, 0x0800000000000000, 4, 1b, x1, 592,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xfffffffeffffffff; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffeffffff, 0xfffffffeffffffff, 64, 3f, x1, 600,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xfffffff7ffffffff; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffdffffff, 0xfffffff7ffffffff, 128, 3f, x1, 608,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xfffffffffffffdff; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffff7ffffff, 0xfffffffffffffdff, 512, 3f, x1, 616,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000000000000800; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffefffffff, 0x0000000000000800, 6, 3f, x1, 624,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0001000000000000; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffdfffffff, 0x0001000000000000, 10, 1b, x1, 632,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000080000000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffbfffffff, 0x0000080000000000, 4, 1b, x1, 640,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xdfffffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffff7fffffff, 0xdfffffffffffffff, 32, 3f, x1, 648,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfffffffff7ffffff; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffeffffffff, 0xfffffffff7ffffff, 6, 3f, x1, 656,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0004000000000000; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffdffffffff, 0x0004000000000000, 6, 3f, x1, 664,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xfffbffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffbffffffff, 0xfffbffffffffffff, 16, 3f, x1, 672,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000000200000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffff7ffffffff, 0x0000000000200000, 4, 1b, x1, 680,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xfffffff7ffffffff; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffefffffffff, 0xfffffff7ffffffff, 8, 1b, x1, 688,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0100000000000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffdfffffffff, 0x0100000000000000, 8, 1b, x1, 696,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xfff7ffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffbfffffffff, 0xfff7ffffffffffff, 128, 3f, x1, 704,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0001000000000000; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffff7fffffffff, 0x0001000000000000, 64, 3f, x1, 712,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xffffffffffbfffff; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffeffffffffff, 0xffffffffffbfffff, 1024, 3f, x1, 720,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0000200000000000; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffdffffffffff, 0x0000200000000000, 512, 3f, x1, 728,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfdffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffbffffffffff, 0xfdffffffffffffff, 4, 3f, x1, 736,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000800000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffff7ffffffffff, 0x0000000800000000, 1024, 3f, x1, 744,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000000000000010; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffefffffffffff, 0x0000000000000010, 2, 3f, x1, 752,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0000000800000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffdfffffffffff, 0x0000000800000000, 1024, 1b, x1, 760,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x0000020000000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffbfffffffffff, 0x0000020000000000, 8, 3f, x1, 768,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000000000000800; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffff7fffffffffff, 0x0000000000000800, 4, 3f, x1, 776,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000000010000000; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffeffffffffffff, 0x0000000010000000, 10, 1b, x1, 784,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0000000000000007; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffdffffffffffff, 0x0000000000000007, 512, 3f, x1, 792,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xffffffffffffbfff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffbffffffffffff, 0xffffffffffffbfff, 0, 3f, x1, 800,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0xffffffffffefffff; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfff7ffffffffffff, 0xffffffffffefffff, 1366, 1b, x1, 808,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000020000000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffbfffffffffffff, 0x0000020000000000, 1024, 1b, x1, 816,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xffffffffefffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xff7fffffffffffff, 0xffffffffefffffff, 2, 3f, x1, 824,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x0000000000000001; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfeffffffffffffff, 0x0000000000000001, 128, 3f, x1, 832,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0xffffffffffffffdf; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfbffffffffffffff, 0xffffffffffffffdf, 6, 1b, x1, 840,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0000000000000020; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xefffffffffffffff, 0x0000000000000020, 4, 1b, x1, 848,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xff7fffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xdfffffffffffffff, 0xff7fffffffffffff, 32, 3f, x1, 856,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0000000000000400; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xbfffffffffffffff, 0x0000000000000400, 0, 3f, x1, 864,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xffffffffffffbfff; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x7fffffffffffffff, 0xffffffffffffbfff, 4, 1b, x1, 872,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000000000008000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x5555555555555555, 0x0000000000008000, 1024, 3f, x1, 880,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000000000004; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffffdff, 0x0000000000000004, 1366, 1b, x1, 888,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000000000000008; immval:16; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfdffffffffffffff, 0x0000000000000008, 16, 3f, x1, 896,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000000000000040; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffff7fffff, 0x0000000000000040, 6, 1b, x1, 904,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000000000080; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffefff, 0x0000000000000080, 2, 1b, x1, 912,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0000000000000100; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffdfffffffffffff, 0x0000000000000100, 6, 3f, x1, 920,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000000000000200; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffbfffffffffffff, 0x0000000000000200, 0, 3f, x1, 928,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000000001000; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000010000000, 0x0000000000001000, 64, 3f, x1, 936,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0x0000000000020000; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000000040, 0x0000000000020000, 2, 3f, x1, 944,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0x0000000001000000; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000004000000, 0x0000000001000000, 0, 1b, x1, 952,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000000004000000; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xdfffffffffffffff, 0x0000000004000000, 64, 3f, x1, 960,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0x0000000040000000; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xff7fffffffffffff, 0x0000000040000000, 512, 3f, x1, 968,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000080000000; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffff7ffffffffff, 0x0000000080000000, 64, 3f, x1, 976,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0000000100000000; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0010000000000000, 0x0000000100000000, 2, 3f, x1, 984,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000001000000000; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffffeff, 0x0000001000000000, 128, 3f, x1, 992,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0000008000000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffefffffffffffff, 0x0000008000000000, 1024, 1b, x1, 1000,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000040000000000; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffffef, 0x0000040000000000, 256, 3f, x1, 1008,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000100000000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0002000000000000, 0x0000100000000000, 8, 1b, x1, 1016,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0000800000000000; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000800000000000, 0x0000800000000000, 10, 1b, x1, 1024,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0010000000000000; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfbffffffffffffff, 0x0010000000000000, 8, 3f, x1, 1032,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0020000000000000; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffdfffffff, 0x0020000000000000, 1024, 3f, x1, 1040,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0080000000000000; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x2000000000000000, 0x0080000000000000, 10, 1b, x1, 1048,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000009; op2val:0x2000000000000000; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000000009, 0x2000000000000000, 256, 3f, x1, 1056,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xfffffffffffffffe; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffefff, 0xfffffffffffffffe, 2, 3f, x1, 1064,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xfffffffffffffffd; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffbfffff, 0xfffffffffffffffd, 1024, 1b, x1, 1072,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xfffffffffffffffb; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffeffffffffff, 0xfffffffffffffffb, 8, 1b, x1, 1080,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xffffffffffffffef; immval:1366; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000010000000, 0xffffffffffffffef, 1366, 1b, x1, 1088,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xffffffffffffff7f; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffdfffffffffff, 0xffffffffffffff7f, 32, 3f, x1, 1096,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xfffffffffffffeff; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffffefff, 0xfffffffffffffeff, 512, 3f, x1, 1104,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000080000; op2val:0xfffffffffffffbff; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000080000, 0xfffffffffffffbff, 512, 3f, x1, 1112,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0xfffffffffffff7ff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000000003, 0xfffffffffffff7ff, 0, 3f, x1, 1120,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0xffffffffffffefff; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000004000000, 0xffffffffffffefff, 256, 3f, x1, 1128,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000004; op2val:0xffffffffffffdfff; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000000004, 0xffffffffffffdfff, 32, 3f, x1, 1136,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xffffffffffff7fff; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfdffffffffffffff, 0xffffffffffff7fff, 256, 3f, x1, 1144,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xfffffffffffdffff; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffdfffffffff, 0xfffffffffffdffff, 512, 3f, x1, 1152,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xffffffffffdfffff; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffbfffff, 0xffffffffffdfffff, 1024, 1b, x1, 1160,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xfffffffffff7ffff; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffff7fffffffffff, 0xfffffffffff7ffff, 6, 3f, x1, 1168,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xfffffffffdffffff; immval:128; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffffff7ff, 0xfffffffffdffffff, 128, 3f, x1, 1176,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xffffffffdfffffff; immval:32; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffdfffff, 0xffffffffdfffffff, 32, 3f, x1, 1184,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffffffffbfffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xfffffffffdffffff, 0xffffffffbfffffff, 0, 1b, x1, 1192,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xffffffefffffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffefffffffffffff, 0xffffffefffffffff, 0, 1b, x1, 1200,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xffffffdfffffffff; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0800000000000000, 0xffffffdfffffffff, 64, 3f, x1, 1208,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffff7fffffffff; immval:1024; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0040000000000000, 0xffffff7fffffffff, 1024, 3f, x1, 1216,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffffeffffffffff; immval:10; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffefffffffffffff, 0xfffffeffffffffff, 10, 1b, x1, 1224,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xfffff7ffffffffff; immval:2; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffefffffffff, 0xfffff7ffffffffff, 2, 1b, x1, 1232,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xffffefffffffffff; immval:0; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000000006, 0xffffefffffffffff, 0, 3f, x1, 1240,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xfffeffffffffffff; immval:64; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffffbfffff, 0xfffeffffffffffff, 64, 3f, x1, 1248,0)

# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0xfffdffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0xffffffffbfffffff, 0xfffdffffffffffff, 6, 1b, x1, 1256,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0xfffffffffffbffff; immval:256; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000100000, 0xfffffffffffbffff, 256, 3f, x1, 1264,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0x0008000000000000; immval:512; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000000008, 0x0008000000000000, 512, 3f, x1, 1272,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000010000000; immval:4; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000040000000000, 0x0000000010000000, 4, 3f, x1, 1280,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000040000; op2val:0xfffffffffffffffa; immval:8; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000000040000, 0xfffffffffffffffa, 8, 3f, x1, 1288,0)

# opcode: blt, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0x0000200000000000; immval:6; align: 0
TEST_BRANCH_OP(blt, x3, x10, x11, 0x0000000004000000, 0x0000200000000000, 6, 3f, x1, 1296,0)
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
    .fill 21*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 163*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
