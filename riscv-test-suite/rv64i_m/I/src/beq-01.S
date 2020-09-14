
#This assembly file tests the beq instruction of the RISC-V I extension for the beq covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",beq)

la x6,signature_x6_1

# opcode: beq, op1:x19; op2:x30; op1val:0x0000000000000100; op2val:0x0000001000000000; immval:32; align: 0
TEST_BRANCH_OP(beq, x18, x19, x30, 0x0000000000000100, 0x0000001000000000, 32, 3f, x6, 0,0)

# opcode: beq, op1:x13; op2:x13; op1val:0x0000000000008000; op2val:0xfffffffffffffff9; immval:0; align: 0
TEST_BRANCH_OP(beq, x18, x13, x13, 0x0000000000008000, 0xfffffffffffffff9, 0, 3f, x6, 8,0)

# opcode: beq, op1:x11; op2:x7; op1val:0xffffffdfffffffff; op2val:0xfffffffffffffffb; immval:4; align: 0
TEST_BRANCH_OP(beq, x18, x11, x7, 0xffffffdfffffffff, 0xfffffffffffffffb, 4, 3f, x6, 16,0)

# opcode: beq, op1:x12; op2:x14; op1val:0xffffffffefffffff; op2val:0x0001000000000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x18, x12, x14, 0xffffffffefffffff, 0x0001000000000000, 1024, 1b, x6, 24,0)

# opcode: beq, op1:x28; op2:x4; op1val:0xfbffffffffffffff; op2val:0xfbffffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(beq, x18, x28, x4, 0xfbffffffffffffff, 0xfbffffffffffffff, 16, 3f, x6, 32,0)

# opcode: beq, op1:x25; op2:x27; op1val:0xfff7ffffffffffff; op2val:0xfff7ffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x18, x25, x27, 0xfff7ffffffffffff, 0xfff7ffffffffffff, 0, 1b, x6, 40,0)

# opcode: beq, op1:x3; op2:x28; op1val:0xfffffff7ffffffff; op2val:0xffdfffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(beq, x18, x3, x28, 0xfffffff7ffffffff, 0xffdfffffffffffff, 16, 3f, x6, 48,0)

# opcode: beq, op1:x22; op2:x20; op1val:0x0800000000000000; op2val:0xfffbffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x18, x22, x20, 0x0800000000000000, 0xfffbffffffffffff, 8, 1b, x6, 56,0)

# opcode: beq, op1:x30; op2:x29; op1val:0x0000000000000001; op2val:0xfffffffffffffffb; immval:1366; align: 0
TEST_BRANCH_OP(beq, x18, x30, x29, 0x0000000000000001, 0xfffffffffffffffb, 1366, 1b, x6, 64,0)

# opcode: beq, op1:x23; op2:x31; op1val:0x0000000000000002; op2val:0xffffffffffffdfff; immval:0; align: 0
TEST_BRANCH_OP(beq, x18, x23, x31, 0x0000000000000002, 0xffffffffffffdfff, 0, 3f, x6, 72,0)

# opcode: beq, op1:x4; op2:x0; op1val:0x0000000000000004; op2val:0xfffffffffffffff7; immval:1024; align: 0
TEST_BRANCH_OP(beq, x18, x4, x0, 0x0000000000000004, 0xfffffffffffffff7, 1024, 3f, x6, 80,0)

# opcode: beq, op1:x2; op2:x10; op1val:0x0000000000000008; op2val:0xffffffffbfffffff; immval:512; align: 0
TEST_BRANCH_OP(beq, x18, x2, x10, 0x0000000000000008, 0xffffffffbfffffff, 512, 3f, x6, 88,0)

# opcode: beq, op1:x14; op2:x5; op1val:0x0000000000000010; op2val:0x0020000000000000; immval:128; align: 0
TEST_BRANCH_OP(beq, x18, x14, x5, 0x0000000000000010, 0x0020000000000000, 128, 3f, x6, 96,0)

# opcode: beq, op1:x0; op2:x19; op1val:0x0000000000000020; op2val:0x0002000000000000; immval:16; align: 0
TEST_BRANCH_OP(beq, x18, x0, x19, 0x0000000000000020, 0x0002000000000000, 16, 3f, x6, 104,0)

# opcode: beq, op1:x1; op2:x25; op1val:0x0000000000000040; op2val:0x0000000000000800; immval:4; align: 0
TEST_BRANCH_OP(beq, x18, x1, x25, 0x0000000000000040, 0x0000000000000800, 4, 1b, x6, 112,0)

# opcode: beq, op1:x8; op2:x9; op1val:0x0000000000000080; op2val:0x0000000000000020; immval:128; align: 0
TEST_BRANCH_OP(beq, x18, x8, x9, 0x0000000000000080, 0x0000000000000020, 128, 3f, x6, 120,0)

# opcode: beq, op1:x16; op2:x23; op1val:0x0000000000000200; op2val:0x0000000000020000; immval:0; align: 0
TEST_BRANCH_OP(beq, x18, x16, x23, 0x0000000000000200, 0x0000000000020000, 0, 1b, x6, 128,0)

# opcode: beq, op1:x7; op2:x2; op1val:0x0000000000000400; op2val:0x7fffffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(beq, x18, x7, x2, 0x0000000000000400, 0x7fffffffffffffff, 32, 3f, x6, 136,0)

# opcode: beq, op1:x20; op2:x21; op1val:0x0000000000000800; op2val:0x0000000080000000; immval:10; align: 0
TEST_BRANCH_OP(beq, x18, x20, x21, 0x0000000000000800, 0x0000000080000000, 10, 1b, x6, 144,0)

# opcode: beq, op1:x21; op2:x24; op1val:0x0000000000001000; op2val:0xffffffbfffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x18, x21, x24, 0x0000000000001000, 0xffffffbfffffffff, 4, 3f, x6, 152,0)

# opcode: beq, op1:x17; op2:x15; op1val:0x0000000000002000; op2val:0xdfffffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(beq, x18, x17, x15, 0x0000000000002000, 0xdfffffffffffffff, 16, 3f, x6, 160,0)
la x2,signature_x2_0

# opcode: beq, op1:x6; op2:x1; op1val:0x0000000000004000; op2val:0x0000800000000000; immval:128; align: 0
TEST_BRANCH_OP(beq, x4, x6, x1, 0x0000000000004000, 0x0000800000000000, 128, 3f, x2, 0,0)

# opcode: beq, op1:x31; op2:x17; op1val:0x0000000000010000; op2val:0x0000000004000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x31, x17, 0x0000000000010000, 0x0000000004000000, 6, 1b, x2, 8,0)

# opcode: beq, op1:x15; op2:x18; op1val:0x0000000000020000; op2val:0x0000000000400000; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x15, x18, 0x0000000000020000, 0x0000000000400000, 6, 1b, x2, 16,0)

# opcode: beq, op1:x29; op2:x6; op1val:0x0000000000040000; op2val:0xfffffffffeffffff; immval:64; align: 0
TEST_BRANCH_OP(beq, x4, x29, x6, 0x0000000000040000, 0xfffffffffeffffff, 64, 3f, x2, 24,0)

# opcode: beq, op1:x9; op2:x3; op1val:0x0000000000080000; op2val:0x0000000000400000; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x9, x3, 0x0000000000080000, 0x0000000000400000, 4, 1b, x2, 32,0)

# opcode: beq, op1:x18; op2:x16; op1val:0x0000000000100000; op2val:0x0000000000000080; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x18, x16, 0x0000000000100000, 0x0000000000000080, 0, 1b, x2, 40,0)

# opcode: beq, op1:x27; op2:x11; op1val:0x0000000000200000; op2val:0x0000001000000000; immval:64; align: 0
TEST_BRANCH_OP(beq, x4, x27, x11, 0x0000000000200000, 0x0000001000000000, 64, 3f, x2, 48,0)

# opcode: beq, op1:x24; op2:x26; op1val:0x0000000000400000; op2val:0xdfffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x24, x26, 0x0000000000400000, 0xdfffffffffffffff, 8, 3f, x2, 56,0)

# opcode: beq, op1:x10; op2:x8; op1val:0x0000000000800000; op2val:0xfffffffffffff7ff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x8, 0x0000000000800000, 0xfffffffffffff7ff, 1024, 1b, x2, 64,0)

# opcode: beq, op1:x26; op2:x22; op1val:0x0000000001000000; op2val:0xfff7ffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x26, x22, 0x0000000001000000, 0xfff7ffffffffffff, 2, 1b, x2, 72,0)

# opcode: beq, op1:x5; op2:x12; op1val:0x0000000002000000; op2val:0x0001000000000000; immval:128; align: 0
TEST_BRANCH_OP(beq, x4, x5, x12, 0x0000000002000000, 0x0001000000000000, 128, 3f, x2, 80,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0x5555555555555555; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000004000000, 0x5555555555555555, 32, 3f, x2, 88,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xfffffffffffffff7; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000008000000, 0xfffffffffffffff7, 0, 3f, x2, 96,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xffffffffffdfffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000010000000, 0xffffffffffdfffff, 8, 1b, x2, 104,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000000400000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000020000000, 0x0000000400000000, 1024, 3f, x2, 112,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0010000000000000; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000040000000, 0x0010000000000000, 8, 3f, x2, 120,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xfffffffffffffdff; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000080000000, 0xfffffffffffffdff, 32, 3f, x2, 128,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xdfffffffffffffff; immval:64; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000100000000, 0xdfffffffffffffff, 64, 3f, x2, 136,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0000000200000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000200000000, 0x0000000200000000, 2, 3f, x2, 144,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xaaaaaaaaaaaaaaaa; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000400000000, 0xaaaaaaaaaaaaaaaa, 6, 1b, x2, 152,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x4000000000000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000800000000, 0x4000000000000000, 2, 3f, x2, 160,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0001000000000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000001000000000, 0x0001000000000000, 0, 1b, x2, 168,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xfffffffffffffff7; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000002000000000, 0xfffffffffffffff7, 4, 1b, x2, 176,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xfffffff7ffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000004000000000, 0xfffffff7ffffffff, 0, 3f, x2, 184,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x0000100000000000; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000008000000000, 0x0000100000000000, 32, 3f, x2, 192,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xfffffffffffffffe; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000010000000000, 0xfffffffffffffffe, 8, 1b, x2, 200,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x2000000000000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000020000000000, 0x2000000000000000, 2, 1b, x2, 208,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xffffffffff7fffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000040000000000, 0xffffffffff7fffff, 8, 1b, x2, 216,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xbfffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000080000000000, 0xbfffffffffffffff, 4, 1b, x2, 224,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xfdffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000100000000000, 0xfdffffffffffffff, 8, 3f, x2, 232,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xffffffefffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000200000000000, 0xffffffefffffffff, 0, 3f, x2, 240,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xffffffff7fffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000400000000000, 0xffffffff7fffffff, 2, 3f, x2, 248,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfffffffffffeffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000800000000000, 0xfffffffffffeffff, 6, 3f, x2, 256,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xffffff7fffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0001000000000000, 0xffffff7fffffffff, 0, 3f, x2, 264,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000000001000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0002000000000000, 0x0000000001000000, 6, 1b, x2, 272,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xff7fffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0004000000000000, 0xff7fffffffffffff, 0, 3f, x2, 280,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x7fffffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0008000000000000, 0x7fffffffffffffff, 6, 1b, x2, 288,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0200000000000000; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0010000000000000, 0x0200000000000000, 1366, 1b, x2, 296,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xbfffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0020000000000000, 0xbfffffffffffffff, 8, 1b, x2, 304,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xfbffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0040000000000000, 0xfbffffffffffffff, 8, 1b, x2, 312,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xffff7fffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0080000000000000, 0xffff7fffffffffff, 1024, 3f, x2, 320,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000000004; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0100000000000000, 0x0000000000000004, 8, 1b, x2, 328,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xfffffffffffffffb; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0200000000000000, 0xfffffffffffffffb, 32, 3f, x2, 336,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x0004000000000000; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0400000000000000, 0x0004000000000000, 16, 3f, x2, 344,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xfffffffbffffffff; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x1000000000000000, 0xfffffffbffffffff, 16, 3f, x2, 352,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0000002000000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x2000000000000000, 0x0000002000000000, 1024, 1b, x2, 360,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xffffffffefffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x4000000000000000, 0xffffffffefffffff, 4, 3f, x2, 368,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xfffffffeffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x8000000000000000, 0xfffffffeffffffff, 2, 3f, x2, 376,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xffffffffffdfffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffffe, 0xffffffffffdfffff, 0, 1b, x2, 384,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000001000000000; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffffd, 0x0000001000000000, 512, 3f, x2, 392,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xfffffffdffffffff; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffffb, 0xfffffffdffffffff, 1024, 3f, x2, 400,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000000200; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffff7, 0x0000000000000200, 8, 3f, x2, 408,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000000100000000; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffffffef, 0x0000000100000000, 256, 3f, x2, 416,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xfffffffff7ffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffffffdf, 0xfffffffff7ffffff, 4, 1b, x2, 424,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000000008000; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffffffbf, 0x0000000000008000, 256, 3f, x2, 432,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xffefffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000002000000000, 0xffefffffffffffff, 0, 1b, x2, 440,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xffbfffffffffffff; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffeffff, 0xffbfffffffffffff, 10, 1b, x2, 448,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0xfeffffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000000008, 0xfeffffffffffffff, 6, 1b, x2, 456,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xf7ffffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000002000000000, 0xf7ffffffffffffff, 0, 3f, x2, 464,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xefffffffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffff7ffffff, 0xefffffffffffffff, 1366, 1b, x2, 472,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xfdffffffffffffff; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffffff7f, 0xfdffffffffffffff, 10, 1b, x2, 480,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000000000100000; immval:128; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffeff, 0x0000000000100000, 128, 3f, x2, 488,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xfffffffffffffff9; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffdff, 0xfffffffffffffff9, 0, 3f, x2, 496,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0100000000000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffbff, 0x0100000000000000, 4, 3f, x2, 504,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000000000000003; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffff7ff, 0x0000000000000003, 8, 1b, x2, 512,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000008000000; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffffefff, 0x0000000008000000, 10, 1b, x2, 520,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x7fffffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffffdfff, 0x7fffffffffffffff, 0, 1b, x2, 528,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000000008000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffffbfff, 0x0000000008000000, 1024, 1b, x2, 536,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000040000; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffff7fff, 0x0000000000040000, 6, 1b, x2, 544,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000000020000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffdffff, 0x0000000020000000, 6, 3f, x2, 552,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0000000000000200; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffbffff, 0x0000000000000200, 4, 3f, x2, 560,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0xffffffffffffefff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffff7ffff, 0xffffffffffffefff, 1366, 1b, x2, 568,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0xffffbfffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffefffff, 0xffffbfffffffffff, 2, 3f, x2, 576,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xfffdffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffdfffff, 0xfffdffffffffffff, 2, 3f, x2, 584,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xffffffffffbfffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffbfffff, 0xffffffffffbfffff, 6, 1b, x2, 592,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000000000000800; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffff7fffff, 0x0000000000000800, 32, 3f, x2, 600,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0020000000000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffeffffff, 0x0020000000000000, 6, 3f, x2, 608,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffff7fffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffdffffff, 0xffff7fffffffffff, 0, 1b, x2, 616,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0000000800000000; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffbffffff, 0x0000000800000000, 32, 3f, x2, 624,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xffffffbfffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffdfffffff, 0xffffffbfffffffff, 2, 3f, x2, 632,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0400000000000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffbfffffff, 0x0400000000000000, 1024, 3f, x2, 640,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0000000400000000; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffff7fffffff, 0x0000000400000000, 1366, 1b, x2, 648,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0x0080000000000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffeffffffff, 0x0080000000000000, 4, 1b, x2, 656,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xfdffffffffffffff; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffdffffffff, 0xfdffffffffffffff, 10, 1b, x2, 664,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000010000000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffbffffffff, 0x0000010000000000, 2, 1b, x2, 672,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0000000080000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffefffffffff, 0x0000000080000000, 1024, 3f, x2, 680,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xffffffffffbfffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffbfffffffff, 0xffffffffffbfffff, 0, 3f, x2, 688,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xdfffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffff7fffffffff, 0xdfffffffffffffff, 2, 1b, x2, 696,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000200000; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffeffffffffff, 0x0000000000200000, 16, 3f, x2, 704,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x5555555555555555; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffdffffffffff, 0x5555555555555555, 8, 1b, x2, 712,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0800000000000000; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffbffffffffff, 0x0800000000000000, 512, 3f, x2, 720,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0002000000000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffff7ffffffffff, 0x0002000000000000, 1024, 3f, x2, 728,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000000800000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffefffffffffff, 0x0000000800000000, 1024, 3f, x2, 736,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xffffffff7fffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffdfffffffffff, 0xffffffff7fffffff, 2, 3f, x2, 744,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x0000000010000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffbfffffffffff, 0x0000000010000000, 1024, 3f, x2, 752,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xfffffbffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffff7fffffffffff, 0xfffffbffffffffff, 4, 3f, x2, 760,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffeffffffffffff, 0xaaaaaaaaaaaaaaaa, 1024, 1b, x2, 768,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0080000000000000; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffdffffffffffff, 0x0080000000000000, 4, 1b, x2, 776,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xffffffffff7fffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffbfffffffffffff, 0xffffffffff7fffff, 128, 3f, x2, 784,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0x4000000000000000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xff7fffffffffffff, 0x4000000000000000, 2, 3f, x2, 792,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x0002000000000000; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfeffffffffffffff, 0x0002000000000000, 1366, 1b, x2, 800,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x7fffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfdffffffffffffff, 0x7fffffffffffffff, 2, 1b, x2, 808,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000000002000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xf7ffffffffffffff, 0x0000000002000000, 1024, 3f, x2, 816,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xfffffffffffeffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xefffffffffffffff, 0xfffffffffffeffff, 1366, 1b, x2, 824,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xfffffbffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xdfffffffffffffff, 0xfffffbffffffffff, 4, 1b, x2, 832,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xffff7fffffffffff; immval:256; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xbfffffffffffffff, 0xffff7fffffffffff, 256, 3f, x2, 840,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xfffffffdffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x7fffffffffffffff, 0xfffffffdffffffff, 0, 1b, x2, 848,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x4000000000000000; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x5555555555555555, 0x4000000000000000, 16, 3f, x2, 856,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfffffffbffffffff; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfffffffbffffffff, 6, 3f, x2, 864,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0000000000000001; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffffe, 0x0000000000000001, 0, 1b, x2, 872,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000000000002; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffff7ffff, 0x0000000000000002, 1024, 1b, x2, 880,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000000000000008; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0020000000000000, 0x0000000000000008, 2, 3f, x2, 888,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000000000010; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0800000000000000, 0x0000000000000010, 2, 1b, x2, 896,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x0000000000000040; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xaaaaaaaaaaaaaaaa, 0x0000000000000040, 512, 3f, x2, 904,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000000000000100; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffefffffff, 0x0000000000000100, 1366, 1b, x2, 912,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0x0000000000000400; immval:128; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffffffff, 0x0000000000000400, 128, 3f, x2, 920,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000002000; op2val:0x0000000000001000; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000002000, 0x0000000000001000, 4, 3f, x2, 928,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffa; op2val:0x0000000000002000; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffffa, 0x0000000000002000, 4, 1b, x2, 936,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0000000000004000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffdfffff, 0x0000000000004000, 0, 1b, x2, 944,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000000010000; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffbfffffffff, 0x0000000000010000, 8, 3f, x2, 952,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000080000; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffff7, 0x0000000000080000, 8, 3f, x2, 960,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000000800000; immval:2; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffbffffffffff, 0x0000000000800000, 2, 3f, x2, 968,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x0000000040000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0400000000000000, 0x0000000040000000, 6, 1b, x2, 976,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000400000; op2val:0x0000004000000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000400000, 0x0000004000000000, 0, 1b, x2, 984,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000008000000000; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfbffffffffffffff, 0x0000008000000000, 1024, 1b, x2, 992,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0x0000020000000000; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000000100, 0x0000020000000000, 0, 1b, x2, 1000,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0000040000000000; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0001000000000000, 0x0000040000000000, 512, 3f, x2, 1008,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000080000000000; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffff7ffffffff, 0x0000080000000000, 8, 3f, x2, 1016,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0x0000200000000000; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000008000, 0x0000200000000000, 16, 3f, x2, 1024,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0040000000000000; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffbffffffffffff, 0x0040000000000000, 8, 1b, x2, 1032,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0008000000000000; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffffe, 0x0008000000000000, 1366, 1b, x2, 1040,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000400; op2val:0x1000000000000000; immval:10; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000000400, 0x1000000000000000, 10, 1b, x2, 1048,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x8000000000000000; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0020000000000000, 0x8000000000000000, 8, 3f, x2, 1056,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xfffffffffffffffd; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffbffff, 0xfffffffffffffffd, 8, 3f, x2, 1064,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xffffffffffffffef; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffdffffffffffff, 0xffffffffffffffef, 1366, 1b, x2, 1072,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xffffffffffffffdf; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffff7fffff, 0xffffffffffffffdf, 1024, 3f, x2, 1080,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xffffffffffffffbf; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffff7ff, 0xffffffffffffffbf, 6, 1b, x2, 1088,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xffffffffffffff7f; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffdffffffffffff, 0xffffffffffffff7f, 4, 3f, x2, 1096,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xfffffffffffffeff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffefffffffff, 0xfffffffffffffeff, 4, 1b, x2, 1104,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0xfffffffffffffbff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000100000, 0xfffffffffffffbff, 0, 1b, x2, 1112,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xffffffffffffbfff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0020000000000000, 0xffffffffffffbfff, 1366, 1b, x2, 1120,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000040000; op2val:0xffffffffffff7fff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000040000, 0xffffffffffff7fff, 0, 3f, x2, 1128,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xfffffffffffdffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffdfffff, 0xfffffffffffdffff, 0, 1b, x2, 1136,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0xfffffffffffbffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000000800, 0xfffffffffffbffff, 4, 1b, x2, 1144,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xffffffffffefffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xdfffffffffffffff, 0xffffffffffefffff, 1366, 1b, x2, 1152,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xfffffffffff7ffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfdffffffffffffff, 0xfffffffffff7ffff, 0, 3f, x2, 1160,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0xfffffffffdffffff; immval:64; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000000003, 0xfffffffffdffffff, 64, 3f, x2, 1168,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xfffffffffbffffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffffffffffff7fff, 0xfffffffffbffffff, 1366, 1b, x2, 1176,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000009; op2val:0xffffffffdfffffff; immval:128; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000000009, 0xffffffffdfffffff, 128, 3f, x2, 1184,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xffffffdfffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffbffffffffffff, 0xffffffdfffffffff, 4, 3f, x2, 1192,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xfffffeffffffffff; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfdffffffffffffff, 0xfffffeffffffffff, 0, 1b, x2, 1200,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffc; op2val:0xfffffdffffffffff; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffffffc, 0xfffffdffffffffff, 8, 3f, x2, 1208,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000080000; op2val:0xfffff7ffffffffff; immval:4; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000080000, 0xfffff7ffffffffff, 4, 1b, x2, 1216,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xffffefffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfffffffffffeffff, 0xffffefffffffffff, 1366, 1b, x2, 1224,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xffffdfffffffffff; immval:512; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000400000000000, 0xffffdfffffffffff, 512, 3f, x2, 1232,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0000400000000000; immval:6; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x7fffffffffffffff, 0x0000400000000000, 6, 3f, x2, 1240,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0xfffeffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xfbffffffffffffff, 0xfffeffffffffffff, 32, 3f, x2, 1248,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffff7ffffffffff; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffefffffffffffff, 0xfffff7ffffffffff, 16, 3f, x2, 1256,0)

# opcode: beq, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0000000000010000; immval:8; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0xffdfffffffffffff, 0x0000000000010000, 8, 3f, x2, 1264,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xfffffffffffffff9; immval:0; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000008000, 0xfffffffffffffff9, 0, 3f, x2, 1272,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000004; op2val:0xfffffffffffffff7; immval:1024; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000000004, 0xfffffffffffffff7, 1024, 3f, x2, 1280,0)

# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0x0002000000000000; immval:16; align: 0
TEST_BRANCH_OP(beq, x4, x10, x11, 0x0000000000000020, 0x0002000000000000, 16, 3f, x2, 1288,0)
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


signature_x2_0:
    .fill 162*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
