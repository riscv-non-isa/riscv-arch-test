
#This assembly file tests the bltu instruction of the RISC-V I extension for the bltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bltu)

la x5,signature_x5_1

# opcode: bltu, op1:x0; op2:x0; op1val:0x0000000000001000; op2val:0x0001000000000000; immval:512; align: 0
TEST_BRANCH_OP(bltu, x12, x0, x0, 0x0000000000001000, 0x0001000000000000, 512, 3f, x5, 0,0)

# opcode: bltu, op1:x8; op2:x9; op1val:0x0100000000000000; op2val:0x0100000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x12, x8, x9, 0x0100000000000000, 0x0100000000000000, 1024, 3f, x5, 8,0)

# opcode: bltu, op1:x7; op2:x6; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xaaaaaaaaaaaaaaaa; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x12, x7, x6, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 1366, 1b, x5, 16,0)

# opcode: bltu, op1:x13; op2:x10; op1val:0xfffffffffffeffff; op2val:0x0000000000004000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x12, x13, x10, 0xfffffffffffeffff, 0x0000000000004000, 2, 3f, x5, 24,0)

# opcode: bltu, op1:x3; op2:x13; op1val:0x0000000000020000; op2val:0x0000000000010000; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x12, x3, x13, 0x0000000000020000, 0x0000000000010000, 1366, 1b, x5, 32,0)

# opcode: bltu, op1:x17; op2:x23; op1val:0x0000080000000000; op2val:0xfffffff7ffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x12, x17, x23, 0x0000080000000000, 0xfffffff7ffffffff, 1366, 1b, x5, 40,0)

# opcode: bltu, op1:x20; op2:x16; op1val:0x0000000000000001; op2val:0xfffffffffffffdff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x12, x20, x16, 0x0000000000000001, 0xfffffffffffffdff, 1024, 3f, x5, 48,0)

# opcode: bltu, op1:x19; op2:x22; op1val:0x0000000000000002; op2val:0x0000000008000000; immval:8; align: 0
TEST_BRANCH_OP(bltu, x12, x19, x22, 0x0000000000000002, 0x0000000008000000, 8, 3f, x5, 56,0)

# opcode: bltu, op1:x27; op2:x3; op1val:0x0000000000000004; op2val:0xfffffffbffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x12, x27, x3, 0x0000000000000004, 0xfffffffbffffffff, 1024, 1b, x5, 64,0)

# opcode: bltu, op1:x28; op2:x20; op1val:0x0000000000000008; op2val:0xffffefffffffffff; immval:16; align: 0
TEST_BRANCH_OP(bltu, x12, x28, x20, 0x0000000000000008, 0xffffefffffffffff, 16, 3f, x5, 72,0)

# opcode: bltu, op1:x14; op2:x30; op1val:0x0000000000000010; op2val:0xffffffffff7fffff; immval:16; align: 0
TEST_BRANCH_OP(bltu, x12, x14, x30, 0x0000000000000010, 0xffffffffff7fffff, 16, 3f, x5, 80,0)

# opcode: bltu, op1:x22; op2:x4; op1val:0x0000000000000020; op2val:0x0000000800000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x12, x22, x4, 0x0000000000000020, 0x0000000800000000, 6, 1b, x5, 88,0)

# opcode: bltu, op1:x15; op2:x26; op1val:0x0000000000000040; op2val:0xfdffffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x12, x15, x26, 0x0000000000000040, 0xfdffffffffffffff, 128, 3f, x5, 96,0)

# opcode: bltu, op1:x11; op2:x24; op1val:0x0000000000000080; op2val:0x0000000000000009; immval:4; align: 0
TEST_BRANCH_OP(bltu, x12, x11, x24, 0x0000000000000080, 0x0000000000000009, 4, 1b, x5, 104,0)

# opcode: bltu, op1:x10; op2:x19; op1val:0x0000000000000100; op2val:0x0000000000000000; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x12, x10, x19, 0x0000000000000100, 0x0000000000000000, 1366, 1b, x5, 112,0)

# opcode: bltu, op1:x31; op2:x1; op1val:0x0000000000000200; op2val:0x0000000001000000; immval:0; align: 0
TEST_BRANCH_OP(bltu, x12, x31, x1, 0x0000000000000200, 0x0000000001000000, 0, 3f, x5, 120,0)

# opcode: bltu, op1:x2; op2:x29; op1val:0x0000000000000400; op2val:0x0000000000000010; immval:8; align: 0
TEST_BRANCH_OP(bltu, x12, x2, x29, 0x0000000000000400, 0x0000000000000010, 8, 3f, x5, 128,0)

# opcode: bltu, op1:x21; op2:x7; op1val:0x0000000000000800; op2val:0xfffffffffffffdff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x12, x21, x7, 0x0000000000000800, 0xfffffffffffffdff, 1024, 1b, x5, 136,0)

# opcode: bltu, op1:x6; op2:x18; op1val:0x0000000000002000; op2val:0x000000000000000b; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x6, x18, 0x0000000000002000, 0x000000000000000b, 1366, 1b, x5, 144,0)
la x3,signature_x3_0

# opcode: bltu, op1:x4; op2:x28; op1val:0x0000000000004000; op2val:0xffffffffffffdfff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x4, x28, 0x0000000000004000, 0xffffffffffffdfff, 1024, 3f, x3, 0,0)

# opcode: bltu, op1:x1; op2:x11; op1val:0x0000000000008000; op2val:0xffffffffffffffbf; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x1, x11, 0x0000000000008000, 0xffffffffffffffbf, 4, 1b, x3, 8,0)

# opcode: bltu, op1:x29; op2:x21; op1val:0x0000000000010000; op2val:0x0100000000000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x29, x21, 0x0000000000010000, 0x0100000000000000, 6, 3f, x3, 16,0)

# opcode: bltu, op1:x12; op2:x8; op1val:0x0000000000040000; op2val:0xfffffffffffffdff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x12, x8, 0x0000000000040000, 0xfffffffffffffdff, 6, 3f, x3, 24,0)

# opcode: bltu, op1:x9; op2:x5; op1val:0x0000000000080000; op2val:0x0000000200000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x9, x5, 0x0000000000080000, 0x0000000200000000, 4, 1b, x3, 32,0)

# opcode: bltu, op1:x25; op2:x31; op1val:0x0000000000100000; op2val:0xf7ffffffffffffff; immval:64; align: 0
TEST_BRANCH_OP(bltu, x7, x25, x31, 0x0000000000100000, 0xf7ffffffffffffff, 64, 3f, x3, 40,0)

# opcode: bltu, op1:x23; op2:x17; op1val:0x0000000000200000; op2val:0x0080000000000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x23, x17, 0x0000000000200000, 0x0080000000000000, 6, 3f, x3, 48,0)

# opcode: bltu, op1:x26; op2:x25; op1val:0x0000000000400000; op2val:0x000000000000000a; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x26, x25, 0x0000000000400000, 0x000000000000000a, 2, 3f, x3, 56,0)

# opcode: bltu, op1:x5; op2:x12; op1val:0x0000000000800000; op2val:0xfffffffffffffeff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x5, x12, 0x0000000000800000, 0xfffffffffffffeff, 2, 1b, x3, 64,0)

# opcode: bltu, op1:x30; op2:x14; op1val:0x0000000001000000; op2val:0x2000000000000000; immval:64; align: 0
TEST_BRANCH_OP(bltu, x7, x30, x14, 0x0000000001000000, 0x2000000000000000, 64, 3f, x3, 72,0)

# opcode: bltu, op1:x18; op2:x15; op1val:0x0000000002000000; op2val:0xffffffffffff7fff; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x18, x15, 0x0000000002000000, 0xffffffffffff7fff, 0, 3f, x3, 80,0)

# opcode: bltu, op1:x24; op2:x27; op1val:0x0000000004000000; op2val:0xffffffffffdfffff; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x24, x27, 0x0000000004000000, 0xffffffffffdfffff, 512, 3f, x3, 88,0)

# opcode: bltu, op1:x16; op2:x2; op1val:0x0000000008000000; op2val:0x0000400000000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x16, x2, 0x0000000008000000, 0x0000400000000000, 4, 1b, x3, 96,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000000000013; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000010000000, 0x0000000000000013, 4, 1b, x3, 104,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000000000000003; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000020000000, 0x0000000000000003, 4, 3f, x3, 112,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0xffff7fffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000040000000, 0xffff7fffffffffff, 4, 3f, x3, 120,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000000000000009; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000080000000, 0x0000000000000009, 6, 3f, x3, 128,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000100000000000; immval:32; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000100000000, 0x0000100000000000, 32, 3f, x3, 136,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xfffffffffffffffe; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000200000000, 0xfffffffffffffffe, 2, 1b, x3, 144,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x000000000000000a; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000400000000, 0x000000000000000a, 16, 3f, x3, 152,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x0000000000002000; immval:128; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000800000000, 0x0000000000002000, 128, 3f, x3, 160,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x000000000000000f; immval:64; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000001000000000, 0x000000000000000f, 64, 3f, x3, 168,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xfffeffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000002000000000, 0xfffeffffffffffff, 2, 1b, x3, 176,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xfffffffffffffeff; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000004000000000, 0xfffffffffffffeff, 0, 3f, x3, 184,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xfffffffffffffffd; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000008000000000, 0xfffffffffffffffd, 1024, 3f, x3, 192,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x000000000000000f; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000010000000000, 0x000000000000000f, 512, 3f, x3, 200,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0080000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000020000000000, 0x0080000000000000, 1024, 1b, x3, 208,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000800000000; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000040000000000, 0x0000000800000000, 8, 1b, x3, 216,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xefffffffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000100000000000, 0xefffffffffffffff, 10, 1b, x3, 224,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xffffffefffffffff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000200000000000, 0xffffffefffffffff, 4, 1b, x3, 232,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x000000000000000e; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000400000000000, 0x000000000000000e, 8, 1b, x3, 240,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfffffffffffffffd; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000800000000000, 0xfffffffffffffffd, 1366, 1b, x3, 248,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0000000000000100; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0001000000000000, 0x0000000000000100, 16, 3f, x3, 256,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000010000000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0002000000000000, 0x0000010000000000, 4, 1b, x3, 264,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0x0000000000000004; immval:128; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0004000000000000, 0x0000000000000004, 128, 3f, x3, 272,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000008000000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0008000000000000, 0x0000008000000000, 4, 3f, x3, 280,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfeffffffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0010000000000000, 0xfeffffffffffffff, 10, 1b, x3, 288,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000100000000000; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0020000000000000, 0x0000100000000000, 0, 3f, x3, 296,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xfbffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0040000000000000, 0xfbffffffffffffff, 8, 1b, x3, 304,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000200000000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0080000000000000, 0x0000200000000000, 6, 1b, x3, 312,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000002000000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0200000000000000, 0x0000002000000000, 6, 1b, x3, 320,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x0000000000800000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0400000000000000, 0x0000000000800000, 6, 1b, x3, 328,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000200000000; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0800000000000000, 0x0000000200000000, 16, 3f, x3, 336,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xffffffffffffffef; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x1000000000000000, 0xffffffffffffffef, 8, 1b, x3, 344,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xffffffffffffdfff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x2000000000000000, 0xffffffffffffdfff, 6, 1b, x3, 352,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xfffffffffffffeff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x4000000000000000, 0xfffffffffffffeff, 4, 1b, x3, 360,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xfffffff7ffffffff; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x8000000000000000, 0xfffffff7ffffffff, 8, 3f, x3, 368,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0000000000200000; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffffe, 0x0000000000200000, 1366, 1b, x3, 376,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x1000000000000000; immval:256; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffffd, 0x1000000000000000, 256, 3f, x3, 384,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000000000800000; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffffb, 0x0000000000800000, 0, 3f, x3, 392,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0400000000000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffff7, 0x0400000000000000, 4, 3f, x3, 400,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0040000000000000; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffffffef, 0x0040000000000000, 8, 3f, x3, 408,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x5555555555555555; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffffffdf, 0x5555555555555555, 0, 3f, x3, 416,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000000000009; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffffffbf, 0x0000000000000009, 2, 3f, x3, 424,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0x0001000000000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffffff7f, 0x0001000000000000, 4, 3f, x3, 432,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000000004000000; immval:128; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffeff, 0x0000000004000000, 128, 3f, x3, 440,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xfffffffffffffffd; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffdff, 0xfffffffffffffffd, 8, 1b, x3, 448,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000010000000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffbff, 0x0000010000000000, 4, 1b, x3, 456,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000000000020000; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffff7ff, 0x0000000000020000, 16, 3f, x3, 464,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000000080000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffffefff, 0x0000000000080000, 2, 1b, x3, 472,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xfffffffffffffff7; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffffdfff, 0xfffffffffffffff7, 4, 3f, x3, 480,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000000000000011; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffffbfff, 0x0000000000000011, 16, 3f, x3, 488,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xff7fffffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffdff, 0xff7fffffffffffff, 1366, 1b, x3, 496,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0xdfffffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000020, 0xdfffffffffffffff, 32, 3f, x3, 504,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xbfffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000020000000000, 0xbfffffffffffffff, 1024, 3f, x3, 512,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x7fffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000001000000000, 0x7fffffffffffffff, 8, 3f, x3, 520,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x2000000000000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffff7fff, 0x2000000000000000, 6, 1b, x3, 528,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0004000000000000; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffdffff, 0x0004000000000000, 16, 3f, x3, 536,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x1000000000000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffbffff, 0x1000000000000000, 2, 1b, x3, 544,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0010000000000000; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffff7ffff, 0x0010000000000000, 512, 3f, x3, 552,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0xfffeffffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffefffff, 0xfffeffffffffffff, 1366, 1b, x3, 560,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0100000000000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffdfffff, 0x0100000000000000, 6, 3f, x3, 568,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xfdffffffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffbfffff, 0xfdffffffffffffff, 1366, 1b, x3, 576,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xfffffffffffeffff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffff7fffff, 0xfffffffffffeffff, 4, 3f, x3, 584,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xfffffffffffffff7; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffeffffff, 0xfffffffffffffff7, 1024, 1b, x3, 592,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0x0100000000000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffdffffff, 0x0100000000000000, 2, 1b, x3, 600,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0000000000000009; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffbffffff, 0x0000000000000009, 1024, 3f, x3, 608,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0000000000000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffff7ffffff, 0x0000000000000000, 2, 1b, x3, 616,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000000000000003; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffefffffff, 0x0000000000000003, 512, 3f, x3, 624,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0080000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffdfffffff, 0x0080000000000000, 1024, 1b, x3, 632,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0xffffffffbfffffff; immval:10; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffbfffffff, 0xffffffffbfffffff, 10, 1b, x3, 640,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xfffffffffffffffe; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffff7fffffff, 0xfffffffffffffffe, 1366, 1b, x3, 648,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffeffffffff, 0xaaaaaaaaaaaaaaaa, 4, 1b, x3, 656,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xfffffffeffffffff; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffdffffffff, 0xfffffffeffffffff, 16, 3f, x3, 664,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000000000000005; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffbffffffff, 0x0000000000000005, 4, 1b, x3, 672,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0040000000000000; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffff7ffffffff, 0x0040000000000000, 512, 3f, x3, 680,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xfffbffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffefffffffff, 0xfffbffffffffffff, 1024, 3f, x3, 688,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0000004000000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffdfffffffff, 0x0000004000000000, 6, 3f, x3, 696,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x5555555555555555; immval:10; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffbfffffffff, 0x5555555555555555, 10, 1b, x3, 704,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0000004000000000; immval:10; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffff7fffffffff, 0x0000004000000000, 10, 1b, x3, 712,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0008000000000000; immval:10; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffeffffffffff, 0x0008000000000000, 10, 1b, x3, 720,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xfffffffff7ffffff; immval:128; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffdffffffffff, 0xfffffffff7ffffff, 128, 3f, x3, 728,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfffff7ffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffbffffffffff, 0xfffff7ffffffffff, 1024, 3f, x3, 736,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xfffeffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffff7ffffffffff, 0xfffeffffffffffff, 6, 3f, x3, 744,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000000000000100; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffefffffffffff, 0x0000000000000100, 2, 3f, x3, 752,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xfffeffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffdfffffffffff, 0xfffeffffffffffff, 16, 3f, x3, 760,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x0000200000000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffbfffffffffff, 0x0000200000000000, 2, 1b, x3, 768,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xffffffffffffffef; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffff7fffffffffff, 0xffffffffffffffef, 512, 3f, x3, 776,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x000000000000000e; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffeffffffffffff, 0x000000000000000e, 6, 1b, x3, 784,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0000000000000001; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffdffffffffffff, 0x0000000000000001, 512, 3f, x3, 792,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000000000020000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffbffffffffffff, 0x0000000000020000, 1024, 3f, x3, 800,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000200000000; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfff7ffffffffffff, 0x0000000200000000, 0, 1b, x3, 808,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0000000000000020; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffefffffffffffff, 0x0000000000000020, 0, 1b, x3, 816,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0000000000000100; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffdfffffffffffff, 0x0000000000000100, 1366, 1b, x3, 824,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000002000000000; immval:128; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffbfffffffffffff, 0x0000002000000000, 128, 3f, x3, 832,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xfffffbffffffffff; immval:32; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xff7fffffffffffff, 0xfffffbffffffffff, 32, 3f, x3, 840,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x0000000008000000; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfeffffffffffffff, 0x0000000008000000, 1366, 1b, x3, 848,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0002000000000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfdffffffffffffff, 0x0002000000000000, 6, 1b, x3, 856,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000400000000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfbffffffffffffff, 0x0000400000000000, 2, 3f, x3, 864,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xfff7ffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xf7ffffffffffffff, 0xfff7ffffffffffff, 16, 3f, x3, 872,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0000000000004000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xefffffffffffffff, 0x0000000000004000, 1024, 3f, x3, 880,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000000000800000; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xdfffffffffffffff, 0x0000000000800000, 0, 1b, x3, 888,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xffdfffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xbfffffffffffffff, 0xffdfffffffffffff, 4, 3f, x3, 896,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0100000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x7fffffffffffffff, 0x0100000000000000, 1024, 3f, x3, 904,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000000000200000; immval:64; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x5555555555555555, 0x0000000000200000, 64, 3f, x3, 912,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000000000000002; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xf7ffffffffffffff, 0x0000000000000002, 2, 3f, x3, 920,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0x0000000000000008; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xff7fffffffffffff, 0x0000000000000008, 8, 1b, x3, 928,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000000000040; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffbffffffffff, 0x0000000000000040, 2, 3f, x3, 936,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000000000000080; immval:32; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffbffffffff, 0x0000000000000080, 32, 3f, x3, 944,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000000200; immval:128; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000002000000000, 0x0000000000000200, 128, 3f, x3, 952,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000000000000400; immval:64; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xdfffffffffffffff, 0x0000000000000400, 64, 3f, x3, 960,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000000000000800; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xf7ffffffffffffff, 0x0000000000000800, 4, 3f, x3, 968,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000001000; immval:64; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffff7, 0x0000000000001000, 64, 3f, x3, 976,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0000000000008000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000200000000, 0x0000000000008000, 4, 3f, x3, 984,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000000040000; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffffffdf, 0x0000000000040000, 0, 3f, x3, 992,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0000000000100000; immval:64; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x4000000000000000, 0x0000000000100000, 64, 3f, x3, 1000,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000000400000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000040000000, 0x0000000000400000, 2, 3f, x3, 1008,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0000000002000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffbffffff, 0x0000000002000000, 6, 1b, x3, 1016,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0000000010000000; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffdfffffffffff, 0x0000000010000000, 0, 3f, x3, 1024,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000000020000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffdffff, 0x0000000020000000, 6, 1b, x3, 1032,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0x0000000040000000; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000020000, 0x0000000040000000, 6, 3f, x3, 1040,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0x0000000080000000; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffdffffff, 0x0000000080000000, 4, 1b, x3, 1048,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000000100000000; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffbfffffffffffff, 0x0000000100000000, 8, 1b, x3, 1056,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000000400000000; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffeffffffffffff, 0x0000000400000000, 8, 1b, x3, 1064,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0000001000000000; immval:10; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffdfffffffff, 0x0000001000000000, 10, 1b, x3, 1072,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0x0000020000000000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000008000000, 0x0000020000000000, 1024, 3f, x3, 1080,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0000040000000000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffff7fffffff, 0x0000040000000000, 1024, 3f, x3, 1088,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000080000; op2val:0x0000080000000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000080000, 0x0000080000000000, 2, 1b, x3, 1096,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000800000000000; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffffd, 0x0000800000000000, 512, 3f, x3, 1104,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0x0020000000000000; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000100, 0x0020000000000000, 512, 3f, x3, 1112,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0x0200000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000001000, 0x0200000000000000, 1024, 1b, x3, 1120,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0800000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffeffffff, 0x0800000000000000, 1024, 3f, x3, 1128,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x4000000000000000; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffbfffffffffffff, 0x4000000000000000, 16, 3f, x3, 1136,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x8000000000000000; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffffffdff, 0x8000000000000000, 2, 3f, x3, 1144,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0xfffffffffffffffb; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000080, 0xfffffffffffffffb, 1366, 1b, x3, 1152,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0xffffffffffffffdf; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffefffff, 0xffffffffffffffdf, 6, 1b, x3, 1160,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xffffffffffffff7f; immval:256; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000008000000, 0xffffffffffffff7f, 256, 3f, x3, 1168,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xfffffffffffffbff; immval:64; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffdffffff, 0xfffffffffffffbff, 64, 3f, x3, 1176,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xfffffffffffff7ff; immval:16; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffbfffffffff, 0xfffffffffffff7ff, 16, 3f, x3, 1184,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xffffffffffffefff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000020000000000, 0xffffffffffffefff, 4, 1b, x3, 1192,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000005; op2val:0xffffffffffffbfff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000005, 0xffffffffffffbfff, 2, 3f, x3, 1200,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000013; op2val:0xfffffffffffdffff; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000013, 0xfffffffffffdffff, 0, 1b, x3, 1208,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0xfffffffffffbffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000003, 0xfffffffffffbffff, 1366, 1b, x3, 1216,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xfffffffffff7ffff; immval:4; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0080000000000000, 0xfffffffffff7ffff, 4, 1b, x3, 1224,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xffffffffffefffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x1000000000000000, 0xffffffffffefffff, 1366, 1b, x3, 1232,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0xffffffffffbfffff; immval:8; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000100, 0xffffffffffbfffff, 8, 3f, x3, 1240,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0xfffffffffeffffff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000080, 0xfffffffffeffffff, 6, 3f, x3, 1248,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0xfffffffffdffffff; immval:256; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffdfffffffffffff, 0xfffffffffdffffff, 256, 3f, x3, 1256,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffffffbffffff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0004000000000000, 0xfffffffffbffffff, 2, 1b, x3, 1264,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xffffffffefffffff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xffffffffffffff7f, 0xffffffffefffffff, 6, 3f, x3, 1272,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0xffffffffdfffffff; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000004000, 0xffffffffdfffffff, 512, 3f, x3, 1280,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xffffffff7fffffff; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffbffffffffff, 0xffffffff7fffffff, 0, 3f, x3, 1288,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfffffffdffffffff; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffeffffffff, 0xfffffffdffffffff, 0, 1b, x3, 1296,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xffffffdfffffffff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000008000, 0xffffffdfffffffff, 2, 1b, x3, 1304,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffffffbfffffffff; immval:10; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffffffdffffff, 0xffffffbfffffffff, 10, 1b, x3, 1312,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0xffffff7fffffffff; immval:64; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000007, 0xffffff7fffffffff, 64, 3f, x3, 1320,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xfffffeffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0xfffffdffffffffff, 0xfffffeffffffffff, 10, 1b, x3, 1328,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000001; op2val:0xfffffdffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000001, 0xfffffdffffffffff, 2, 1b, x3, 1336,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xffffdfffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000080000000, 0xffffdfffffffffff, 1366, 1b, x3, 1344,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffdffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0004000000000000, 0xfffdffffffffffff, 1024, 1b, x3, 1352,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0xffffbfffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000800, 0xffffbfffffffffff, 6, 1b, x3, 1360,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000013; op2val:0xffefffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000000013, 0xffefffffffffffff, 0, 1b, x3, 1368,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0xffbfffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000004000000, 0xffbfffffffffffff, 1024, 1b, x3, 1376,0)

# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0x0001000000000000; immval:512; align: 0
TEST_BRANCH_OP(bltu, x7, x10, x11, 0x0000000000001000, 0x0001000000000000, 512, 3f, x3, 1384,0)
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
    .fill 19*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 174*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
