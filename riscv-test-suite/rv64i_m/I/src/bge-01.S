
#This assembly file tests the bge instruction of the RISC-V I extension for the bge covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bge)

la x14,signature_x14_1

# opcode: bge, op1:x25; op2:x18; op1val:0x0400000000000000; op2val:0x1000000000000000; immval:128; align: 0
TEST_BRANCH_OP(bge, x7, x25, x18, 0x0400000000000000, 0x1000000000000000, 128, 3f, x14, 0,0)

# opcode: bge, op1:x22; op2:x22; op1val:0x0000000000000040; op2val:0xffffffffffffdfff; immval:8; align: 0
TEST_BRANCH_OP(bge, x7, x22, x22, 0x0000000000000040, 0xffffffffffffdfff, 8, 1b, x14, 8,0)

# opcode: bge, op1:x15; op2:x6; op1val:0xfffbffffffffffff; op2val:0xffefffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x7, x15, x6, 0xfffbffffffffffff, 0xffefffffffffffff, 4, 3f, x14, 16,0)

# opcode: bge, op1:x30; op2:x16; op1val:0xfffffffffffffffa; op2val:0x0080000000000000; immval:4; align: 0
TEST_BRANCH_OP(bge, x7, x30, x16, 0xfffffffffffffffa, 0x0080000000000000, 4, 3f, x14, 24,0)

# opcode: bge, op1:x26; op2:x29; op1val:0x0000000010000000; op2val:0x0000000010000000; immval:32; align: 0
TEST_BRANCH_OP(bge, x7, x26, x29, 0x0000000010000000, 0x0000000010000000, 32, 3f, x14, 32,0)

# opcode: bge, op1:x21; op2:x20; op1val:0xfffffffffffffdff; op2val:0xfffffffffffffdff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x7, x21, x20, 0xfffffffffffffdff, 0xfffffffffffffdff, 1024, 1b, x14, 40,0)

# opcode: bge, op1:x1; op2:x26; op1val:0xfffffffffeffffff; op2val:0x0000040000000000; immval:4; align: 0
TEST_BRANCH_OP(bge, x7, x1, x26, 0xfffffffffeffffff, 0x0000040000000000, 4, 1b, x14, 48,0)

# opcode: bge, op1:x19; op2:x5; op1val:0x0000000000000001; op2val:0x0000002000000000; immval:8; align: 0
TEST_BRANCH_OP(bge, x7, x19, x5, 0x0000000000000001, 0x0000002000000000, 8, 1b, x14, 56,0)

# opcode: bge, op1:x10; op2:x30; op1val:0x0000000000000002; op2val:0xffffffffffffefff; immval:2; align: 0
TEST_BRANCH_OP(bge, x7, x10, x30, 0x0000000000000002, 0xffffffffffffefff, 2, 1b, x14, 64,0)

# opcode: bge, op1:x17; op2:x25; op1val:0x0000000000000004; op2val:0xfffffdffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x7, x17, x25, 0x0000000000000004, 0xfffffdffffffffff, 4, 3f, x14, 72,0)

# opcode: bge, op1:x0; op2:x28; op1val:0x0000000000000008; op2val:0xffefffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x7, x0, x28, 0x0000000000000008, 0xffefffffffffffff, 8, 3f, x14, 80,0)

# opcode: bge, op1:x18; op2:x4; op1val:0x0000000000000010; op2val:0x7fffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x7, x18, x4, 0x0000000000000010, 0x7fffffffffffffff, 2, 1b, x14, 88,0)

# opcode: bge, op1:x28; op2:x11; op1val:0x0000000000000020; op2val:0xfffbffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(bge, x7, x28, x11, 0x0000000000000020, 0xfffbffffffffffff, 16, 3f, x14, 96,0)

# opcode: bge, op1:x13; op2:x31; op1val:0x0000000000000080; op2val:0xfbffffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bge, x7, x13, x31, 0x0000000000000080, 0xfbffffffffffffff, 128, 3f, x14, 104,0)

# opcode: bge, op1:x11; op2:x10; op1val:0x0000000000000100; op2val:0x0000000040000000; immval:10; align: 0
TEST_BRANCH_OP(bge, x7, x11, x10, 0x0000000000000100, 0x0000000040000000, 10, 1b, x14, 112,0)

# opcode: bge, op1:x2; op2:x3; op1val:0x0000000000000200; op2val:0xfffffbffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bge, x7, x2, x3, 0x0000000000000200, 0xfffffbffffffffff, 0, 3f, x14, 120,0)

# opcode: bge, op1:x9; op2:x23; op1val:0x0000000000000400; op2val:0x0002000000000000; immval:256; align: 0
TEST_BRANCH_OP(bge, x7, x9, x23, 0x0000000000000400, 0x0002000000000000, 256, 3f, x14, 128,0)

# opcode: bge, op1:x5; op2:x12; op1val:0x0000000000000800; op2val:0xc000000000000000; immval:32; align: 0
TEST_BRANCH_OP(bge, x7, x5, x12, 0x0000000000000800, 0xc000000000000000, 32, 3f, x14, 136,0)

# opcode: bge, op1:x27; op2:x15; op1val:0x0000000000001000; op2val:0x0000000020000000; immval:2; align: 0
TEST_BRANCH_OP(bge, x7, x27, x15, 0x0000000000001000, 0x0000000020000000, 2, 3f, x14, 144,0)

# opcode: bge, op1:x12; op2:x1; op1val:0x0000000000002000; op2val:0x0000000000000003; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x12, x1, 0x0000000000002000, 0x0000000000000003, 2, 1b, x14, 152,0)

# opcode: bge, op1:x7; op2:x8; op1val:0x0000000000004000; op2val:0x2000000000000000; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x7, x8, 0x0000000000004000, 0x2000000000000000, 1366, 1b, x14, 160,0)
la x1,signature_x1_0

# opcode: bge, op1:x29; op2:x9; op1val:0x0000000000008000; op2val:0xfffffffffffffff6; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x29, x9, 0x0000000000008000, 0xfffffffffffffff6, 8, 3f, x1, 0,0)

# opcode: bge, op1:x8; op2:x19; op1val:0x0000000000010000; op2val:0xffbfffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x8, x19, 0x0000000000010000, 0xffbfffffffffffff, 8, 1b, x1, 8,0)

# opcode: bge, op1:x14; op2:x2; op1val:0x0000000000020000; op2val:0xfeffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x14, x2, 0x0000000000020000, 0xfeffffffffffffff, 4, 1b, x1, 16,0)

# opcode: bge, op1:x23; op2:x17; op1val:0x0000000000040000; op2val:0x0000000000000001; immval:128; align: 0
TEST_BRANCH_OP(bge, x5, x23, x17, 0x0000000000040000, 0x0000000000000001, 128, 3f, x1, 24,0)

# opcode: bge, op1:x3; op2:x21; op1val:0x0000000000080000; op2val:0x4000000000000000; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x3, x21, 0x0000000000080000, 0x4000000000000000, 32, 3f, x1, 32,0)

# opcode: bge, op1:x16; op2:x14; op1val:0x0000000000100000; op2val:0x5555555555555555; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x16, x14, 0x0000000000100000, 0x5555555555555555, 4, 3f, x1, 40,0)

# opcode: bge, op1:x31; op2:x0; op1val:0x0000000000200000; op2val:0x0000000000004000; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x31, x0, 0x0000000000200000, 0x0000000000004000, 2, 1b, x1, 48,0)

# opcode: bge, op1:x4; op2:x27; op1val:0x0000000000400000; op2val:0x0100000000000000; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x4, x27, 0x0000000000400000, 0x0100000000000000, 0, 1b, x1, 56,0)

# opcode: bge, op1:x24; op2:x13; op1val:0x0000000000800000; op2val:0x0400000000000000; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x24, x13, 0x0000000000800000, 0x0400000000000000, 4, 3f, x1, 64,0)

# opcode: bge, op1:x20; op2:x7; op1val:0x0000000001000000; op2val:0x0000000000004000; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x20, x7, 0x0000000001000000, 0x0000000000004000, 10, 1b, x1, 72,0)

# opcode: bge, op1:x6; op2:x24; op1val:0x0000000002000000; op2val:0x0800000000000000; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x6, x24, 0x0000000002000000, 0x0800000000000000, 0, 3f, x1, 80,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0xfffffffffffdffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000004000000, 0xfffffffffffdffff, 4, 3f, x1, 88,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0x0000000800000000; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000008000000, 0x0000000800000000, 0, 3f, x1, 96,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0080000000000000; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000020000000, 0x0080000000000000, 0, 1b, x1, 104,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0xfffdffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000040000000, 0xfffdffffffffffff, 6, 3f, x1, 112,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0020000000000000; immval:64; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000080000000, 0x0020000000000000, 64, 3f, x1, 120,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000400000000000; immval:16; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000100000000, 0x0000400000000000, 16, 3f, x1, 128,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffffffff7fffffff; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000200000000, 0xffffffff7fffffff, 1366, 1b, x1, 136,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0000008000000000; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000400000000, 0x0000008000000000, 4, 1b, x1, 144,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xffffffdfffffffff; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000800000000, 0xffffffdfffffffff, 0, 3f, x1, 152,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000004000000000; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000001000000000, 0x0000004000000000, 2, 3f, x1, 160,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000040000; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000002000000000, 0x0000000000040000, 1024, 3f, x1, 168,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x5555555555555555; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000004000000000, 0x5555555555555555, 0, 1b, x1, 176,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xffffdfffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000008000000000, 0xffffdfffffffffff, 1366, 1b, x1, 184,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x0000000000000009; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000010000000000, 0x0000000000000009, 2, 3f, x1, 192,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xffffffffffffffbf; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000020000000000, 0xffffffffffffffbf, 2, 3f, x1, 200,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000000100000; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000040000000000, 0x0000000000100000, 4, 1b, x1, 208,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xffffff7fffffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000080000000000, 0xffffff7fffffffff, 2, 3f, x1, 216,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xfffffffffffffdff; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000100000000000, 0xfffffffffffffdff, 32, 3f, x1, 224,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xffffffffff7fffff; immval:16; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000200000000000, 0xffffffffff7fffff, 16, 3f, x1, 232,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfbffffffffffffff; immval:512; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000400000000000, 0xfbffffffffffffff, 512, 3f, x1, 240,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0040000000000000; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000800000000000, 0x0040000000000000, 32, 3f, x1, 248,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x1000000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0001000000000000, 0x1000000000000000, 1024, 1b, x1, 256,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000000000000003; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0002000000000000, 0x0000000000000003, 1366, 1b, x1, 264,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffffffffffffd; immval:16; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0004000000000000, 0xfffffffffffffffd, 16, 3f, x1, 272,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000000000800; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0008000000000000, 0x0000000000000800, 8, 1b, x1, 280,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0000000000004000; immval:512; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0010000000000000, 0x0000000000004000, 512, 3f, x1, 288,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000000001000000; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0020000000000000, 0x0000000001000000, 32, 3f, x1, 296,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xfffffffffffff7ff; immval:128; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0040000000000000, 0xfffffffffffff7ff, 128, 3f, x1, 304,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000000080000000; immval:256; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0080000000000000, 0x0000000080000000, 256, 3f, x1, 312,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000008000; immval:512; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0100000000000000, 0x0000000000008000, 512, 3f, x1, 320,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000000000000009; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0200000000000000, 0x0000000000000009, 0, 1b, x1, 328,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000000000006; immval:64; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0800000000000000, 0x0000000000000006, 64, 3f, x1, 336,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x0000000000200000; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x1000000000000000, 0x0000000000200000, 0, 1b, x1, 344,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0000400000000000; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x2000000000000000, 0x0000400000000000, 0, 1b, x1, 352,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xff7fffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x4000000000000000, 0xff7fffffffffffff, 1024, 1b, x1, 360,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0008000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x8000000000000000, 0x0008000000000000, 1024, 1b, x1, 368,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0000000000000007; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffffffe, 0x0000000000000007, 1024, 1b, x1, 376,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000000000000080; immval:128; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffffffd, 0x0000000000000080, 128, 3f, x1, 384,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000000000000002; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffffffb, 0x0000000000000002, 1024, 1b, x1, 392,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000000006; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffffff7, 0x0000000000000006, 10, 1b, x1, 400,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xfffff7ffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffffef, 0xfffff7ffffffffff, 2, 1b, x1, 408,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xfffffffffbffffff; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffffdf, 0xfffffffffbffffff, 10, 1b, x1, 416,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000004000000; immval:128; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffffbf, 0x0000000004000000, 128, 3f, x1, 424,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0x0000000200000000; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffff7f, 0x0000000200000000, 8, 1b, x1, 432,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xdfffffffffffffff; immval:512; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffffeff, 0xdfffffffffffffff, 512, 3f, x1, 440,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffdfffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000200000000, 0xffdfffffffffffff, 4, 1b, x1, 448,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xfdffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffdfffffffffff, 0xfdffffffffffffff, 1024, 3f, x1, 456,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xf7ffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000100000000, 0xf7ffffffffffffff, 8, 1b, x1, 464,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xefffffffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000040000000000, 0xefffffffffffffff, 10, 1b, x1, 472,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000009; op2val:0xbfffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000000009, 0xbfffffffffffffff, 2, 3f, x1, 480,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xaaaaaaaaaaaaaaaa; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000400000000, 0xaaaaaaaaaaaaaaaa, 1024, 3f, x1, 488,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0xffffffffbfffffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffffbff, 0xffffffffbfffffff, 4, 3f, x1, 496,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xfffffffff7ffffff; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffff7ff, 0xfffffffff7ffffff, 0, 3f, x1, 504,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000000000080; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffefff, 0x0000000000000080, 1024, 1b, x1, 512,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xfffff7ffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffdfff, 0xfffff7ffffffffff, 1024, 1b, x1, 520,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000001000000000; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffbfff, 0x0000001000000000, 0, 3f, x1, 528,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xff7fffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffff7fff, 0xff7fffffffffffff, 8, 1b, x1, 536,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xfeffffffffffffff; immval:64; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffeffff, 0xfeffffffffffffff, 64, 3f, x1, 544,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffffffffffffff9; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffdffff, 0xfffffffffffffff9, 4, 3f, x1, 552,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xffffffffffbfffff; immval:256; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffbffff, 0xffffffffffbfffff, 256, 3f, x1, 560,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000000000005; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffff7ffff, 0x0000000000000005, 2, 1b, x1, 568,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0xfffffffdffffffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffefffff, 0xfffffffdffffffff, 4, 1b, x1, 576,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xffffffff7fffffff; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffdfffff, 0xffffffff7fffffff, 1366, 1b, x1, 584,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000000004000000; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffbfffff, 0x0000000004000000, 8, 3f, x1, 592,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xffffefffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffff7fffff, 0xffffefffffffffff, 8, 3f, x1, 600,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0x0000000000000002; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffdffffff, 0x0000000000000002, 0, 1b, x1, 608,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0000008000000000; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffbffffff, 0x0000008000000000, 0, 1b, x1, 616,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0000000000020000; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffff7ffffff, 0x0000000000020000, 1024, 1b, x1, 624,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0002000000000000; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffefffffff, 0x0002000000000000, 32, 3f, x1, 632,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xfffffffffffffff7; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffdfffffff, 0xfffffffffffffff7, 0, 1b, x1, 640,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000000000000009; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffbfffffff, 0x0000000000000009, 1024, 1b, x1, 648,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xfffffffffdffffff; immval:128; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffff7fffffff, 0xfffffffffdffffff, 128, 3f, x1, 656,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfbffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffeffffffff, 0xfbffffffffffffff, 2, 3f, x1, 664,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xfffeffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffdffffffff, 0xfffeffffffffffff, 128, 3f, x1, 672,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xfeffffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffbffffffff, 0xfeffffffffffffff, 0, 1b, x1, 680,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000100000000000; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffff7ffffffff, 0x0000100000000000, 2, 1b, x1, 688,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xfffffffffbffffff; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffefffffffff, 0xfffffffffbffffff, 32, 3f, x1, 696,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0000000000000100; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffdfffffffff, 0x0000000000000100, 32, 3f, x1, 704,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000000000010; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffbfffffffff, 0x0000000000000010, 1366, 1b, x1, 712,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0200000000000000; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffff7fffffffff, 0x0200000000000000, 4, 3f, x1, 720,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xfffffffffffffffd; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffeffffffffff, 0xfffffffffffffffd, 1366, 1b, x1, 728,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xfffffffffffffffb; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffdffffffffff, 0xfffffffffffffffb, 4, 3f, x1, 736,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000000400000; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffbffffffffff, 0x0000000000400000, 32, 3f, x1, 744,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000200000000; immval:64; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffff7ffffffffff, 0x0000000200000000, 64, 3f, x1, 752,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000000000800000; immval:6; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffefffffffffff, 0x0000000000800000, 6, 1b, x1, 760,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xffffffffffffffef; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffbfffffffffff, 0xffffffffffffffef, 10, 1b, x1, 768,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xffffffffffffefff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffff7fffffffffff, 0xffffffffffffefff, 2, 3f, x1, 776,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xfffffbffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffeffffffffffff, 0xfffffbffffffffff, 10, 1b, x1, 784,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000000020000000; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffbfffffffffffff, 0x0000000020000000, 4, 1b, x1, 792,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xdfffffffffffffff; immval:256; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xff7fffffffffffff, 0xdfffffffffffffff, 256, 3f, x1, 800,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x0000040000000000; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfeffffffffffffff, 0x0000040000000000, 1024, 1b, x1, 808,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000000000000080; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfdffffffffffffff, 0x0000000000000080, 2, 1b, x1, 816,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xfff7ffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000004000000000, 0xfff7ffffffffffff, 1024, 3f, x1, 824,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0xfffdffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfbffffffffffffff, 0xfffdffffffffffff, 4, 1b, x1, 832,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xffffffffffffffbf; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xf7ffffffffffffff, 0xffffffffffffffbf, 10, 1b, x1, 840,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0200000000000000; immval:256; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xefffffffffffffff, 0x0200000000000000, 256, 3f, x1, 848,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000000000010000; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xdfffffffffffffff, 0x0000000000010000, 4, 3f, x1, 856,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0000000000000080; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xbfffffffffffffff, 0x0000000000000080, 10, 1b, x1, 864,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0000000000000008; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x7fffffffffffffff, 0x0000000000000008, 10, 1b, x1, 872,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0040000000000000; immval:64; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x5555555555555555, 0x0040000000000000, 64, 3f, x1, 880,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfffffffffffdffff; immval:512; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfffffffffffdffff, 512, 3f, x1, 888,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000000000000004; immval:128; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x5555555555555555, 0x0000000000000004, 128, 3f, x1, 896,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0000000000000020; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffefffffffff, 0x0000000000000020, 8, 3f, x1, 904,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000000000000040; immval:16; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffefffffff, 0x0000000000000040, 16, 3f, x1, 912,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0x0000000000000200; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000010000, 0x0000000000000200, 0, 3f, x1, 920,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000000000000400; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffeffffffffffff, 0x0000000000000400, 1366, 1b, x1, 928,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000000001000; immval:16; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0008000000000000, 0x0000000000001000, 16, 3f, x1, 936,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000000002000; immval:64; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffbffffffffff, 0x0000000000002000, 64, 3f, x1, 944,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0000000000080000; immval:128; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x2000000000000000, 0x0000000000080000, 128, 3f, x1, 952,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0000000002000000; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffefffffffffffff, 0x0000000002000000, 32, 3f, x1, 960,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000008000000; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffeffffffffff, 0x0000000008000000, 4, 3f, x1, 968,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000000100000000; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffbfff, 0x0000000100000000, 0, 3f, x1, 976,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0000000400000000; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffdffffffff, 0x0000000400000000, 10, 1b, x1, 984,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffff8; op2val:0x0000010000000000; immval:512; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffffff8, 0x0000010000000000, 512, 3f, x1, 992,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x0000020000000000; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xaaaaaaaaaaaaaaaa, 0x0000020000000000, 8, 1b, x1, 1000,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000009; op2val:0x0000080000000000; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000000009, 0x0000080000000000, 8, 1b, x1, 1008,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0000200000000000; immval:6; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000200000000, 0x0000200000000000, 6, 1b, x1, 1016,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0010000000000000; immval:512; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffffbf, 0x0010000000000000, 512, 3f, x1, 1024,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0x8000000000000000; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffffffffffff, 0x8000000000000000, 1366, 1b, x1, 1032,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xfffffffffffffffe; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xf7ffffffffffffff, 0xfffffffffffffffe, 2, 3f, x1, 1040,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0xffffffffffffffdf; immval:6; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000004000, 0xffffffffffffffdf, 6, 1b, x1, 1048,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0xffffffffffffff7f; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000000003, 0xffffffffffffff7f, 2, 1b, x1, 1056,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfffffffffffffeff; immval:1366; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000400000000000, 0xfffffffffffffeff, 1366, 1b, x1, 1064,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xfffffffffffffbff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x1000000000000000, 0xfffffffffffffbff, 2, 3f, x1, 1072,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xffffffffffffbfff; immval:6; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0200000000000000, 0xffffffffffffbfff, 6, 3f, x1, 1080,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0xffffffffffff7fff; immval:6; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffefffffffffff, 0xffffffffffff7fff, 6, 1b, x1, 1088,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfffffffffffeffff; immval:512; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000010000000, 0xfffffffffffeffff, 512, 3f, x1, 1096,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0xfffffffffffbffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000000008, 0xfffffffffffbffff, 2, 3f, x1, 1104,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffffffffff7ffff; immval:32; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffefffffffffffff, 0xfffffffffff7ffff, 32, 3f, x1, 1112,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xffffffffffefffff; immval:4; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffeffffff, 0xffffffffffefffff, 4, 3f, x1, 1120,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffffffffffdfffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000200000000, 0xffffffffffdfffff, 8, 1b, x1, 1128,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0xfffffffffeffffff; immval:128; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffffffd, 0xfffffffffeffffff, 128, 3f, x1, 1136,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xffffffffefffffff; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffff7ffffff, 0xffffffffefffffff, 0, 1b, x1, 1144,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xffffffffdfffffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000400000000000, 0xffffffffdfffffff, 1024, 3f, x1, 1152,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfffffffeffffffff; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000010000000, 0xfffffffeffffffff, 0, 1b, x1, 1160,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0000000000000080; immval:6; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffdffffffffffff, 0x0000000000000080, 6, 3f, x1, 1168,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000800000000000; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffbffffffffff, 0x0000800000000000, 8, 3f, x1, 1176,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfffffffbffffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffeffffffff, 0xfffffffbffffffff, 2, 1b, x1, 1184,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfffffff7ffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfffffff7ffffffff, 1024, 1b, x1, 1192,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xffffffefffffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffffffbfffffffff, 0xffffffefffffffff, 2, 3f, x1, 1200,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xffffffbfffffffff; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfffffffffffffffe, 0xffffffbfffffffff, 2, 1b, x1, 1208,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0xfffffeffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000010000, 0xfffffeffffffffff, 8, 1b, x1, 1216,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0xffffbfffffffffff; immval:64; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000001000000, 0xffffbfffffffffff, 64, 3f, x1, 1224,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0xffff7fffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000000100, 0xffff7fffffffffff, 10, 1b, x1, 1232,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0001000000000000; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000010000000, 0x0001000000000000, 8, 1b, x1, 1240,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000008000000000; immval:6; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xfff7ffffffffffff, 0x0000008000000000, 6, 1b, x1, 1248,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0004000000000000; immval:10; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000100000000000, 0x0004000000000000, 10, 1b, x1, 1256,0)

# opcode: bge, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0xfffffffffff7ffff; immval:0; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0xffdfffffffffffff, 0xfffffffffff7ffff, 0, 1b, x1, 1264,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0xffffffffffffdfff; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000000040, 0xffffffffffffdfff, 8, 1b, x1, 1272,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0xffefffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000000008, 0xffefffffffffffff, 8, 3f, x1, 1280,0)

# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0x0000000000004000; immval:2; align: 0
TEST_BRANCH_OP(bge, x5, x10, x11, 0x0000000000200000, 0x0000000000004000, 2, 1b, x1, 1288,0)
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

signature_x14_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x14_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 162*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
