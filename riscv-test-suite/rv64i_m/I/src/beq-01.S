
#This assembly file tests the beq instruction of the RISC-V I extension for the beq covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",beq)

la x2,signature_x2_1

# opcode: beq, op1:x6; op2:x6; op1val:0x0100000000000000; op2val:0x0000000004000000; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x6, x6, 0x0100000000000000, 0x0000000004000000, 32, 3f, x2, 0,0)

# opcode: beq, op1:x30; op2:x26; op1val:0x0400000000000000; op2val:0xfeffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x30, x26, 0x0400000000000000, 0xfeffffffffffffff, 1024, 3f, x2, 8,0)

# opcode: beq, op1:x12; op2:x1; op1val:0xffffffffffffdfff; op2val:0xffefffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x12, x1, 0xffffffffffffdfff, 0xffefffffffffffff, 4, 1b, x2, 16,0)

# opcode: beq, op1:x27; op2:x5; op1val:0xfffffffffffeffff; op2val:0x0000000000080000; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x27, x5, 0xfffffffffffeffff, 0x0000000000080000, 256, 3f, x2, 24,0)

# opcode: beq, op1:x21; op2:x16; op1val:0xfffffffffffffffc; op2val:0xfffffffffffffffc; immval:64; align: 0
TEST_BRANCH_OP(beq, x4, x21, x16, 0xfffffffffffffffc, 0xfffffffffffffffc, 64, 3f, x2, 32,0)

# opcode: beq, op1:x7; op2:x30; op1val:0xffdfffffffffffff; op2val:0xffdfffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x7, x30, 0xffdfffffffffffff, 0xffdfffffffffffff, 4, 1b, x2, 40,0)

# opcode: beq, op1:x31; op2:x20; op1val:0xfffffffffffffffb; op2val:0x0000000010000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x31, x20, 0xfffffffffffffffb, 0x0000000010000000, 0, 1b, x2, 48,0)

# opcode: beq, op1:x26; op2:x7; op1val:0x0000000000000001; op2val:0xfffbffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x26, x7, 0x0000000000000001, 0xfffbffffffffffff, 32, 3f, x2, 56,0)

# opcode: beq, op1:x15; op2:x8; op1val:0x0000000000000002; op2val:0x0000008000000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x15, x8, 0x0000000000000002, 0x0000008000000000, 2, 3f, x2, 64,0)

# opcode: beq, op1:x1; op2:x12; op1val:0x0000000000000004; op2val:0xfffffffffffff7ff; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x1, x12, 0x0000000000000004, 0xfffffffffffff7ff, 512, 3f, x2, 72,0)

# opcode: beq, op1:x29; op2:x11; op1val:0x0000000000000008; op2val:0xfffffffdffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x29, x11, 0x0000000000000008, 0xfffffffdffffffff, 2, 1b, x2, 80,0)

# opcode: beq, op1:x3; op2:x13; op1val:0x0000000000000010; op2val:0xfeffffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x4, x3, x13, 0x0000000000000010, 0xfeffffffffffffff, 128, 3f, x2, 88,0)

# opcode: beq, op1:x22; op2:x21; op1val:0x0000000000000020; op2val:0x0000000400000000; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x22, x21, 0x0000000000000020, 0x0000000400000000, 8, 3f, x2, 96,0)

# opcode: beq, op1:x13; op2:x31; op1val:0x0000000000000040; op2val:0xfff7ffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x13, x31, 0x0000000000000040, 0xfff7ffffffffffff, 0, 1b, x2, 104,0)

# opcode: beq, op1:x23; op2:x15; op1val:0x0000000000000080; op2val:0xfffffeffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x23, x15, 0x0000000000000080, 0xfffffeffffffffff, 1024, 1b, x2, 112,0)

# opcode: beq, op1:x10; op2:x27; op1val:0x0000000000000100; op2val:0xffffffffbfffffff; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x27, 0x0000000000000100, 0xffffffffbfffffff, 32, 3f, x2, 120,0)

# opcode: beq, op1:x28; op2:x0; op1val:0x0000000000000200; op2val:0xfbffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x28, x0, 0x0000000000000200, 0xfbffffffffffffff, 1024, 3f, x2, 128,0)

# opcode: beq, op1:x18; op2:x19; op1val:0x0000000000000400; op2val:0x0000000000001000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x18, x19, 0x0000000000000400, 0x0000000000001000, 2, 1b, x2, 136,0)

# opcode: beq, op1:x19; op2:x29; op1val:0x0000000000000800; op2val:0x0400000000000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x19, x29, 0x0000000000000800, 0x0400000000000000, 2, 3f, x2, 144,0)

# opcode: beq, op1:x9; op2:x28; op1val:0x0000000000001000; op2val:0x0000200000000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x9, x28, 0x0000000000001000, 0x0000200000000000, 0, 3f, x2, 152,0)

# opcode: beq, op1:x17; op2:x3; op1val:0x0000000000002000; op2val:0x0000000000200000; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x17, x3, 0x0000000000002000, 0x0000000000200000, 10, 1b, x2, 160,0)

# opcode: beq, op1:x25; op2:x22; op1val:0x0000000000004000; op2val:0x0080000000000000; immval:128; align: 0
TEST_BRANCH_OP(beq, x4, x25, x22, 0x0000000000004000, 0x0080000000000000, 128, 3f, x2, 168,0)

# opcode: beq, op1:x24; op2:x14; op1val:0x0000000000008000; op2val:0xfffffffffff7ffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x24, x14, 0x0000000000008000, 0xfffffffffff7ffff, 128, 3f, x2, 176,0)
la x1,signature_x1_0

# opcode: beq, op1:x8; op2:x4; op1val:0x0000000000010000; op2val:0xffff7fffffffffff; immval:32; align: 0
TEST_BRANCH_OP(beq, x3, x8, x4, 0x0000000000010000, 0xffff7fffffffffff, 32, 3f, x1, 0,0)

# opcode: beq, op1:x4; op2:x2; op1val:0x0000000000020000; op2val:0x0000000000008000; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x4, x2, 0x0000000000020000, 0x0000000000008000, 8, 1b, x1, 8,0)

# opcode: beq, op1:x11; op2:x17; op1val:0x0000000000040000; op2val:0x4000000000000000; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x11, x17, 0x0000000000040000, 0x4000000000000000, 8, 3f, x1, 16,0)

# opcode: beq, op1:x5; op2:x25; op1val:0x0000000000080000; op2val:0x0000000000008000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x5, x25, 0x0000000000080000, 0x0000000000008000, 4, 3f, x1, 24,0)

# opcode: beq, op1:x14; op2:x23; op1val:0x0000000000100000; op2val:0x0000000002000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x14, x23, 0x0000000000100000, 0x0000000002000000, 6, 3f, x1, 32,0)

# opcode: beq, op1:x0; op2:x18; op1val:0x0000000000200000; op2val:0xfffffbffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x0, x18, 0x0000000000200000, 0xfffffbffffffffff, 2, 3f, x1, 40,0)

# opcode: beq, op1:x20; op2:x9; op1val:0x0000000000400000; op2val:0x0000000000000006; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x20, x9, 0x0000000000400000, 0x0000000000000006, 1024, 1b, x1, 48,0)

# opcode: beq, op1:x16; op2:x24; op1val:0x0000000000800000; op2val:0x0000000800000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x16, x24, 0x0000000000800000, 0x0000000800000000, 4, 3f, x1, 56,0)

# opcode: beq, op1:x2; op2:x10; op1val:0x0000000001000000; op2val:0xfeffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x2, x10, 0x0000000001000000, 0xfeffffffffffffff, 1024, 3f, x1, 64,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0x0000000000000100; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000002000000, 0x0000000000000100, 8, 3f, x1, 72,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0x8000000000000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000004000000, 0x8000000000000000, 4, 1b, x1, 80,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0x0000000200000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000008000000, 0x0000000200000000, 6, 3f, x1, 88,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000000000001; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000010000000, 0x0000000000000001, 6, 1b, x1, 96,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0xfffffffffffffff9; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000020000000, 0xfffffffffffffff9, 2, 3f, x1, 104,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000010000000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000040000000, 0x0000010000000000, 1024, 3f, x1, 112,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xffefffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000080000000, 0xffefffffffffffff, 32, 3f, x1, 120,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0080000000000000; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000100000000, 0x0080000000000000, 10, 1b, x1, 128,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0000000000000400; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000200000000, 0x0000000000000400, 10, 1b, x1, 136,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xffffffffffffbfff; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000400000000, 0xffffffffffffbfff, 4, 1b, x1, 144,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xfeffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000800000000, 0xfeffffffffffffff, 2, 3f, x1, 152,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xffbfffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000001000000000, 0xffbfffffffffffff, 0, 1b, x1, 160,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xffefffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000002000000000, 0xffefffffffffffff, 0, 1b, x1, 168,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000000020000; immval:32; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000004000000000, 0x0000000000020000, 32, 3f, x1, 176,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xff7fffffffffffff; immval:64; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000008000000000, 0xff7fffffffffffff, 64, 3f, x1, 184,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xfffffffffffdffff; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000010000000000, 0xfffffffffffdffff, 256, 3f, x1, 192,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0000000001000000; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000020000000000, 0x0000000001000000, 8, 3f, x1, 200,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0200000000000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000040000000000, 0x0200000000000000, 4, 3f, x1, 208,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xffffffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000080000000000, 0xffffffffffffffff, 16, 3f, x1, 216,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xaaaaaaaaaaaaaaaa; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000100000000000, 0xaaaaaaaaaaaaaaaa, 0, 3f, x1, 224,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0x0000000000002000; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000200000000000, 0x0000000000002000, 10, 1b, x1, 232,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xffffdfffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000400000000000, 0xffffdfffffffffff, 4, 1b, x1, 240,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfffffffff7ffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000800000000000, 0xfffffffff7ffffff, 8, 3f, x1, 248,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xfffffffffffffffe; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0001000000000000, 0xfffffffffffffffe, 8, 3f, x1, 256,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xfffffffbffffffff; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0002000000000000, 0xfffffffbffffffff, 10, 1b, x1, 264,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffffdffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0004000000000000, 0xfffffffdffffffff, 0, 1b, x1, 272,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000200000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0008000000000000, 0x0000000200000000, 4, 1b, x1, 280,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfeffffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0010000000000000, 0xfeffffffffffffff, 0, 3f, x1, 288,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000800000000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0020000000000000, 0x0000800000000000, 1024, 3f, x1, 296,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffffff7fffffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0040000000000000, 0xffffffff7fffffff, 6, 3f, x1, 304,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000800000000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0080000000000000, 0x0000800000000000, 6, 1b, x1, 312,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xfffffffffffdffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0200000000000000, 0xfffffffffffdffff, 128, 3f, x1, 320,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x7fffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0800000000000000, 0x7fffffffffffffff, 1024, 1b, x1, 328,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x0000000000000800; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x1000000000000000, 0x0000000000000800, 0, 1b, x1, 336,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0020000000000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x2000000000000000, 0x0020000000000000, 6, 1b, x1, 344,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0000000000000007; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x4000000000000000, 0x0000000000000007, 1024, 1b, x1, 352,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0000008000000000; immval:32; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x8000000000000000, 0x0000008000000000, 32, 3f, x1, 360,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xfffffffff7ffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffffffe, 0xfffffffff7ffffff, 2, 1b, x1, 368,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000000000400000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffffffd, 0x0000000000400000, 4, 1b, x1, 376,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000020000000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffffff7, 0x0000020000000000, 1024, 1b, x1, 384,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000000400000000; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffffffef, 0x0000000400000000, 8, 1b, x1, 392,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000000000006; immval:1366; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffffffdf, 0x0000000000000006, 1366, 1b, x1, 400,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x1000000000000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffffffbf, 0x1000000000000000, 0, 3f, x1, 408,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xffffffffff7fffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffffff7f, 0xffffffffff7fffff, 0, 1b, x1, 416,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xffffffffffffffef; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffffeff, 0xffffffffffffffef, 6, 3f, x1, 424,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xfffffffffffffffb; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffffdff, 0xfffffffffffffffb, 0, 3f, x1, 432,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0xfdffffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffffffbf, 0xfdffffffffffffff, 128, 3f, x1, 440,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xf7ffffffffffffff; immval:512; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffeffff, 0xf7ffffffffffffff, 512, 3f, x1, 448,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xefffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffff7fffffff, 0xefffffffffffffff, 2, 1b, x1, 456,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xdfffffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffefffffffffffff, 0xdfffffffffffffff, 128, 3f, x1, 464,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xbfffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000400000000, 0xbfffffffffffffff, 1024, 1b, x1, 472,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x5555555555555555; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfeffffffffffffff, 0x5555555555555555, 4, 1b, x1, 480,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0xffffffbfffffffff; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffffbff, 0xffffffbfffffffff, 256, 3f, x1, 488,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0002000000000000; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffff7ff, 0x0002000000000000, 10, 1b, x1, 496,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xffffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffffefff, 0xffffffffffffffff, 4, 3f, x1, 504,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0800000000000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffffbfff, 0x0800000000000000, 0, 3f, x1, 512,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000800000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffff7fff, 0x0000000000800000, 4, 3f, x1, 520,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0008000000000000; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffdffff, 0x0008000000000000, 256, 3f, x1, 528,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0000000000100000; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffbffff, 0x0000000000100000, 128, 3f, x1, 536,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0xffffffdfffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffff7ffff, 0xffffffdfffffffff, 0, 1b, x1, 544,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0xfffffffffffffffc; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffefffff, 0xfffffffffffffffc, 0, 1b, x1, 552,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0000000080000000; immval:64; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffdfffff, 0x0000000080000000, 64, 3f, x1, 560,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xffffffffffffff7f; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffbfffff, 0xffffffffffffff7f, 4, 3f, x1, 568,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0010000000000000; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffff7fffff, 0x0010000000000000, 256, 3f, x1, 576,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xfffffffffffffbff; immval:64; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffeffffff, 0xfffffffffffffbff, 64, 3f, x1, 584,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xfffffffffffeffff; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffdffffff, 0xfffffffffffeffff, 10, 1b, x1, 592,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0000008000000000; immval:16; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffbffffff, 0x0000008000000000, 16, 3f, x1, 600,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0000000000002000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffff7ffffff, 0x0000000000002000, 4, 3f, x1, 608,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000040000000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffefffffff, 0x0000040000000000, 1024, 1b, x1, 616,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0000000000040000; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffdfffffff, 0x0000000000040000, 8, 3f, x1, 624,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0xfff7ffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffbfffffff, 0xfff7ffffffffffff, 0, 1b, x1, 632,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfffffdffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffeffffffff, 0xfffffdffffffffff, 4, 1b, x1, 640,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xfffffffffffffff9; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffdffffffff, 0xfffffffffffffff9, 4, 3f, x1, 648,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xbfffffffffffffff; immval:64; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffbffffffff, 0xbfffffffffffffff, 64, 3f, x1, 656,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000000080000; immval:64; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffff7ffffffff, 0x0000000000080000, 64, 3f, x1, 664,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xffffffffffff7fff; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffefffffffff, 0xffffffffffff7fff, 6, 1b, x1, 672,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xffffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffdfffffffff, 0xffffffffffffffff, 4, 1b, x1, 680,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xfffffffff7ffffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffbfffffffff, 0xfffffffff7ffffff, 1366, 1b, x1, 688,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xffffffffffffefff; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffff7fffffffff, 0xffffffffffffefff, 256, 3f, x1, 696,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xffffffffffbfffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffeffffffffff, 0xffffffffffbfffff, 6, 3f, x1, 704,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0000000000001000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffdffffffffff, 0x0000000000001000, 4, 3f, x1, 712,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000000000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffbffffffffff, 0x0000000000000000, 0, 3f, x1, 720,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xfffffffbffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffff7ffffffffff, 0xfffffffbffffffff, 2, 3f, x1, 728,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0xfffffffffffffffc; immval:64; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffefffffffffff, 0xfffffffffffffffc, 64, 3f, x1, 736,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xfffffbffffffffff; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffdfffffffffff, 0xfffffbffffffffff, 256, 3f, x1, 744,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x2000000000000000; immval:512; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffbfffffffffff, 0x2000000000000000, 512, 3f, x1, 752,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0200000000000000; immval:512; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffff7fffffffffff, 0x0200000000000000, 512, 3f, x1, 760,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xfffffffffffffeff; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffbfffffffffffff, 0xfffffffffffffeff, 6, 3f, x1, 768,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xfdffffffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xff7fffffffffffff, 0xfdffffffffffffff, 1366, 1b, x1, 776,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xfffffffffbffffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfdffffffffffffff, 0xfffffffffbffffff, 128, 3f, x1, 784,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0xefffffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfbffffffffffffff, 0xefffffffffffffff, 32, 3f, x1, 792,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xffffffffefffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xf7ffffffffffffff, 0xffffffffefffffff, 4, 1b, x1, 800,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xfffffffff7ffffff; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xefffffffffffffff, 0xfffffffff7ffffff, 10, 1b, x1, 808,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xfffffffdffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xdfffffffffffffff, 0xfffffffdffffffff, 1024, 3f, x1, 816,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xffffffffff7fffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xbfffffffffffffff, 0xffffffffff7fffff, 1024, 1b, x1, 824,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0000000000000400; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x7fffffffffffffff, 0x0000000000000400, 6, 1b, x1, 832,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0xfffdffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x5555555555555555, 0xfffdffffffffffff, 0, 1b, x1, 840,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x0000000000000003; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xaaaaaaaaaaaaaaaa, 0x0000000000000003, 2, 1b, x1, 848,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000000000000002; immval:1366; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffffeff, 0x0000000000000002, 1366, 1b, x1, 856,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000000000004; immval:16; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfff7ffffffffffff, 0x0000000000000004, 16, 3f, x1, 864,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0x0000000000000008; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000100000, 0x0000000000000008, 0, 3f, x1, 872,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0000000000000010; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000200000000, 0x0000000000000010, 128, 3f, x1, 880,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0x0000000000000020; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffdffffff, 0x0000000000000020, 1024, 3f, x1, 888,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0000000000000040; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffdfffffff, 0x0000000000000040, 10, 1b, x1, 896,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000040000; op2val:0x0000000000000080; immval:512; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000040000, 0x0000000000000080, 512, 3f, x1, 904,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000000200; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0100000000000000, 0x0000000000000200, 8, 1b, x1, 912,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000000004000; immval:1366; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfff7ffffffffffff, 0x0000000000004000, 1366, 1b, x1, 920,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000000010000; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfbffffffffffffff, 0x0000000000010000, 10, 1b, x1, 928,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000008000000; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfbffffffffffffff, 0x0000000008000000, 256, 3f, x1, 936,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000020000000; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffbfffffffff, 0x0000000020000000, 128, 3f, x1, 944,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffff6; op2val:0x0000000040000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffffff6, 0x0000000040000000, 4, 1b, x1, 952,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000000; op2val:0x0000000100000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000000000, 0x0000000100000000, 2, 3f, x1, 960,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0000001000000000; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffdfffffff, 0x0000001000000000, 256, 3f, x1, 968,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000002000000000; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000100000000, 0x0000002000000000, 256, 3f, x1, 976,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0040000000000000; immval:1366; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000100000000000, 0x0040000000000000, 1366, 1b, x1, 984,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0x0100000000000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000100000, 0x0100000000000000, 0, 1b, x1, 992,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffffffffffffffd; immval:512; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffdffffffffffff, 0xfffffffffffffffd, 512, 3f, x1, 1000,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xfffffffffffffff7; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffffffb, 0xfffffffffffffff7, 128, 3f, x1, 1008,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0xffffffffffffffdf; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffffffff, 0xffffffffffffffdf, 0, 1b, x1, 1016,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0xffffffffffffffbf; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000000040, 0xffffffffffffffbf, 6, 3f, x1, 1024,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xfffffffffffffdff; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0001000000000000, 0xfffffffffffffdff, 6, 1b, x1, 1032,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xffffffffffffdfff; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000200000000000, 0xffffffffffffdfff, 4, 3f, x1, 1040,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xfffff7ffffffffff; immval:16; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffefffffffff, 0xfffff7ffffffffff, 16, 3f, x1, 1048,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xfffffffffffbffff; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x7fffffffffffffff, 0xfffffffffffbffff, 256, 3f, x1, 1056,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xffffffffffefffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000200000, 0xffffffffffefffff, 2, 1b, x1, 1064,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000005; op2val:0x0000100000000000; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000000005, 0x0000100000000000, 128, 3f, x1, 1072,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xffffffffffdfffff; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000100000000, 0xffffffffffdfffff, 256, 3f, x1, 1080,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xfffffffffeffffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffbfffff, 0xfffffffffeffffff, 6, 3f, x1, 1088,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000000; op2val:0xfffffffffdffffff; immval:64; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 64, 3f, x1, 1096,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000400000000000; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0020000000000000, 0x0000400000000000, 10, 1b, x1, 1104,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000000000100000; immval:10; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffeffffffffffff, 0x0000000000100000, 10, 1b, x1, 1112,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000000; op2val:0xffffffffdfffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 8, 3f, x1, 1120,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfffffffeffffffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000010000000, 0xfffffffeffffffff, 1366, 1b, x1, 1128,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0xfffffff7ffffffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffffffffff, 0xfffffff7ffffffff, 6, 3f, x1, 1136,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xffffffefffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000100000000, 0xffffffefffffffff, 2, 3f, x1, 1144,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000004000000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000010000000, 0x0000004000000000, 4, 3f, x1, 1152,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xffffffffffbfffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffbffffffffffff, 0xffffffffffbfffff, 0, 1b, x1, 1160,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xffffff7fffffffff; immval:256; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffffffffdfffffff, 0xffffff7fffffffff, 256, 3f, x1, 1168,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0001000000000000; immval:16; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffffffeffff, 0x0001000000000000, 16, 3f, x1, 1176,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000080000000000; immval:32; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000020000000, 0x0000080000000000, 32, 3f, x1, 1184,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xffffefffffffffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xffbfffffffffffff, 0xffffefffffffffff, 128, 3f, x1, 1192,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xffffbfffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0xfffffffdffffffff, 0xffffbfffffffffff, 2, 3f, x1, 1200,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0xfffeffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000004000, 0xfffeffffffffffff, 8, 3f, x1, 1208,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000004; op2val:0x0004000000000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000000004, 0x0004000000000000, 2, 1b, x1, 1216,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000004000000; immval:32; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0100000000000000, 0x0000000004000000, 32, 3f, x1, 1224,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000200; op2val:0xfbffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000000200, 0xfbffffffffffffff, 1024, 3f, x1, 1232,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xfffffbffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x3, x10, x11, 0x0000000000200000, 0xfffffbffffffffff, 2, 3f, x1, 1240,0)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 23*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 156*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
