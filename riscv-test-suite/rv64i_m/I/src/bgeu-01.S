
#This assembly file tests the bgeu instruction of the RISC-V I extension for the bgeu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bgeu)

la x3,signature_x3_1

# opcode: bgeu, op1:x30; op2:x30; op1val:0xffffffffefffffff; op2val:0xffffffffffffffef; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x12, x30, x30, 0xffffffffefffffff, 0xffffffffffffffef, 1024, 1b, x3, 0,0)

# opcode: bgeu, op1:x6; op2:x1; op1val:0x0020000000000000; op2val:0x0020000000000000; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x12, x6, x1, 0x0020000000000000, 0x0020000000000000, 32, 3f, x3, 8,0)

# opcode: bgeu, op1:x21; op2:x11; op1val:0x0002000000000000; op2val:0x0002000000000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x12, x21, x11, 0x0002000000000000, 0x0002000000000000, 2, 1b, x3, 16,0)

# opcode: bgeu, op1:x24; op2:x19; op1val:0x0000100000000000; op2val:0x000000000000000a; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x12, x24, x19, 0x0000100000000000, 0x000000000000000a, 8, 3f, x3, 24,0)

# opcode: bgeu, op1:x14; op2:x29; op1val:0xfffffffffeffffff; op2val:0x0000000020000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x12, x14, x29, 0xfffffffffeffffff, 0x0000000020000000, 1024, 1b, x3, 32,0)

# opcode: bgeu, op1:x22; op2:x23; op1val:0x0000000000000800; op2val:0x0000000008000000; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x12, x22, x23, 0x0000000000000800, 0x0000000008000000, 128, 3f, x3, 40,0)

# opcode: bgeu, op1:x5; op2:x21; op1val:0x0000000000000001; op2val:0xfffffffffeffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x12, x5, x21, 0x0000000000000001, 0xfffffffffeffffff, 1024, 3f, x3, 48,0)

# opcode: bgeu, op1:x17; op2:x5; op1val:0x0000000000000002; op2val:0xfffffffffeffffff; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x12, x17, x5, 0x0000000000000002, 0xfffffffffeffffff, 128, 3f, x3, 56,0)

# opcode: bgeu, op1:x8; op2:x25; op1val:0x0000000000000004; op2val:0x000000000000000b; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x12, x8, x25, 0x0000000000000004, 0x000000000000000b, 1024, 1b, x3, 64,0)

# opcode: bgeu, op1:x18; op2:x0; op1val:0x0000000000000008; op2val:0xffffffffffffdfff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x12, x18, x0, 0x0000000000000008, 0xffffffffffffdfff, 2, 3f, x3, 72,0)

# opcode: bgeu, op1:x13; op2:x18; op1val:0x0000000000000010; op2val:0xffffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x12, x13, x18, 0x0000000000000010, 0xffffffffffffffff, 1024, 3f, x3, 80,0)

# opcode: bgeu, op1:x19; op2:x10; op1val:0x0000000000000020; op2val:0x0000000000000009; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x12, x19, x10, 0x0000000000000020, 0x0000000000000009, 6, 3f, x3, 88,0)

# opcode: bgeu, op1:x28; op2:x14; op1val:0x0000000000000040; op2val:0xfffff7ffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x12, x28, x14, 0x0000000000000040, 0xfffff7ffffffffff, 8, 3f, x3, 96,0)

# opcode: bgeu, op1:x15; op2:x24; op1val:0x0000000000000080; op2val:0xffffffefffffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x12, x15, x24, 0x0000000000000080, 0xffffffefffffffff, 32, 3f, x3, 104,0)

# opcode: bgeu, op1:x1; op2:x22; op1val:0x0000000000000100; op2val:0xfffffffff7ffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x12, x1, x22, 0x0000000000000100, 0xfffffffff7ffffff, 2, 3f, x3, 112,0)

# opcode: bgeu, op1:x25; op2:x8; op1val:0x0000000000000200; op2val:0x0000000000000400; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x12, x25, x8, 0x0000000000000200, 0x0000000000000400, 4, 1b, x3, 120,0)

# opcode: bgeu, op1:x20; op2:x6; op1val:0x0000000000000400; op2val:0x0000002000000000; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x12, x20, x6, 0x0000000000000400, 0x0000002000000000, 512, 3f, x3, 128,0)

# opcode: bgeu, op1:x2; op2:x4; op1val:0x0000000000001000; op2val:0x0100000000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x12, x2, x4, 0x0000000000001000, 0x0100000000000000, 6, 1b, x3, 136,0)

# opcode: bgeu, op1:x7; op2:x15; op1val:0x0000000000002000; op2val:0x0000004000000000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x12, x7, x15, 0x0000000000002000, 0x0000004000000000, 1366, 1b, x3, 144,0)

# opcode: bgeu, op1:x4; op2:x7; op1val:0x0000000000004000; op2val:0xff7fffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x12, x4, x7, 0x0000000000004000, 0xff7fffffffffffff, 6, 1b, x3, 152,0)

# opcode: bgeu, op1:x23; op2:x27; op1val:0x0000000000008000; op2val:0x0000000200000000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x12, x23, x27, 0x0000000000008000, 0x0000000200000000, 1366, 1b, x3, 160,0)

# opcode: bgeu, op1:x29; op2:x26; op1val:0x0000000000010000; op2val:0x0000000000000400; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x12, x29, x26, 0x0000000000010000, 0x0000000000000400, 8, 1b, x3, 168,0)

# opcode: bgeu, op1:x9; op2:x20; op1val:0x0000000000020000; op2val:0x0000100000000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x12, x9, x20, 0x0000000000020000, 0x0000100000000000, 4, 3f, x3, 176,0)

# opcode: bgeu, op1:x12; op2:x31; op1val:0x0000000000040000; op2val:0x0000000000400000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x4, x12, x31, 0x0000000000040000, 0x0000000000400000, 10, 1b, x3, 184,0)
la x1,signature_x1_0

# opcode: bgeu, op1:x11; op2:x28; op1val:0x0000000000080000; op2val:0x0000000080000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x11, x28, 0x0000000000080000, 0x0000000080000000, 8, 3f, x1, 0,0)

# opcode: bgeu, op1:x0; op2:x13; op1val:0x0000000000100000; op2val:0xfffffffffff7ffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x0, x13, 0x0000000000100000, 0xfffffffffff7ffff, 0, 1b, x1, 8,0)

# opcode: bgeu, op1:x16; op2:x9; op1val:0x0000000000200000; op2val:0x000000000000000f; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x16, x9, 0x0000000000200000, 0x000000000000000f, 0, 1b, x1, 16,0)

# opcode: bgeu, op1:x3; op2:x2; op1val:0x0000000000400000; op2val:0xffffffffbfffffff; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x4, x3, x2, 0x0000000000400000, 0xffffffffbfffffff, 64, 3f, x1, 24,0)

# opcode: bgeu, op1:x26; op2:x17; op1val:0x0000000000800000; op2val:0x0000000000000007; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x26, x17, 0x0000000000800000, 0x0000000000000007, 4, 3f, x1, 32,0)

# opcode: bgeu, op1:x31; op2:x12; op1val:0x0000000001000000; op2val:0x0000000100000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x31, x12, 0x0000000001000000, 0x0000000100000000, 1024, 3f, x1, 40,0)

# opcode: bgeu, op1:x10; op2:x16; op1val:0x0000000002000000; op2val:0xfffffffffffff7ff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x16, 0x0000000002000000, 0xfffffffffffff7ff, 0, 1b, x1, 48,0)

# opcode: bgeu, op1:x27; op2:x3; op1val:0x0000000004000000; op2val:0xfffffffffffff7ff; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x4, x27, x3, 0x0000000004000000, 0xfffffffffffff7ff, 128, 3f, x1, 56,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xffffefffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000008000000, 0xffffefffffffffff, 10, 1b, x1, 64,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x5555555555555555; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000010000000, 0x5555555555555555, 1366, 1b, x1, 72,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0xffffefffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000020000000, 0xffffefffffffffff, 1366, 1b, x1, 80,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000200000000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000040000000, 0x0000000200000000, 10, 1b, x1, 88,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xfffffffdffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000080000000, 0xfffffffdffffffff, 1366, 1b, x1, 96,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000000000000020; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000100000000, 0x0000000000000020, 0, 1b, x1, 104,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffffefffffffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000200000000, 0xffffefffffffffff, 256, 3f, x1, 112,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x4000000000000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000400000000, 0x4000000000000000, 2, 3f, x1, 120,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xffffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000800000000, 0xffffffffffffffff, 4, 1b, x1, 128,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0004000000000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000001000000000, 0x0004000000000000, 4, 3f, x1, 136,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xfffffffffdffffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000002000000000, 0xfffffffffdffffff, 4, 1b, x1, 144,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000000000080; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000004000000000, 0x0000000000000080, 512, 3f, x1, 152,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xffffffefffffffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000008000000000, 0xffffffefffffffff, 4, 3f, x1, 160,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xffffffffbfffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000010000000000, 0xffffffffbfffffff, 2, 1b, x1, 168,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xffffffefffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000020000000000, 0xffffffefffffffff, 6, 3f, x1, 176,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xf7ffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000040000000000, 0xf7ffffffffffffff, 1024, 1b, x1, 184,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0x0000200000000000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000080000000000, 0x0000200000000000, 1366, 1b, x1, 192,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xfffffffff7ffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000200000000000, 0xfffffffff7ffffff, 2, 1b, x1, 200,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfffffbffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000400000000000, 0xfffffbffffffffff, 2, 3f, x1, 208,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0000000000000020; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000800000000000, 0x0000000000000020, 4, 1b, x1, 216,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0000000000000100; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0001000000000000, 0x0000000000000100, 0, 3f, x1, 224,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffeffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0004000000000000, 0xfffffeffffffffff, 128, 3f, x1, 232,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000008000000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0008000000000000, 0x0000000008000000, 1366, 1b, x1, 240,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfffffffffffffff7; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0010000000000000, 0xfffffffffffffff7, 1366, 1b, x1, 248,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffefffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0040000000000000, 0xffffefffffffffff, 8, 1b, x1, 256,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000000000000020; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0080000000000000, 0x0000000000000020, 64, 3f, x1, 264,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x1000000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0100000000000000, 0x1000000000000000, 1024, 1b, x1, 272,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000002000000000; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0200000000000000, 0x0000002000000000, 32, 3f, x1, 280,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xffdfffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0400000000000000, 0xffdfffffffffffff, 6, 1b, x1, 288,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000010000000; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0800000000000000, 0x0000000010000000, 128, 3f, x1, 296,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xfffffffffeffffff; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x1000000000000000, 0xfffffffffeffffff, 512, 3f, x1, 304,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0000000080000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x2000000000000000, 0x0000000080000000, 4, 1b, x1, 312,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xfffffffffff7ffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x4000000000000000, 0xfffffffffff7ffff, 0, 3f, x1, 320,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xaaaaaaaaaaaaaaaa; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x8000000000000000, 0xaaaaaaaaaaaaaaaa, 128, 3f, x1, 328,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x2000000000000000; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffffe, 0x2000000000000000, 16, 3f, x1, 336,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x2000000000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffffd, 0x2000000000000000, 6, 3f, x1, 344,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xff7fffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffffb, 0xff7fffffffffffff, 8, 3f, x1, 352,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000800000; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffff7, 0x0000000000800000, 16, 3f, x1, 360,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xffefffffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffffef, 0xffefffffffffffff, 1366, 1b, x1, 368,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000000000011; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffffdf, 0x0000000000000011, 512, 3f, x1, 376,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0xfff7ffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffffbf, 0xfff7ffffffffffff, 6, 1b, x1, 384,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xfffffffffffdffff; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffff7f, 0xfffffffffffdffff, 128, 3f, x1, 392,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0800000000000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffeff, 0x0800000000000000, 2, 3f, x1, 400,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0020000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffdff, 0x0020000000000000, 1024, 1b, x1, 408,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000000000002000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffbff, 0x0000000000002000, 2, 1b, x1, 416,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000000000000800; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffff7ff, 0x0000000000000800, 1024, 3f, x1, 424,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000002000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffefff, 0x0000002000000000, 6, 1b, x1, 432,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xfffffffffdffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffdfff, 0xfffffffffdffffff, 8, 1b, x1, 440,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xfffeffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffbfff, 0xfffeffffffffffff, 16, 3f, x1, 448,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000000013; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffff7fff, 0x0000000000000013, 2, 3f, x1, 456,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0000000000800000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffeffff, 0x0000000000800000, 10, 1b, x1, 464,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xfeffffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000008000, 0xfeffffffffffffff, 16, 3f, x1, 472,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xfdffffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0020000000000000, 0xfdffffffffffffff, 6, 1b, x1, 480,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0xfbffffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000080, 0xfbffffffffffffff, 6, 3f, x1, 488,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0xefffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0008000000000000, 0xefffffffffffffff, 8, 1b, x1, 496,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xdfffffffffffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffdfffffff, 0xdfffffffffffffff, 256, 3f, x1, 504,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xbfffffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffdffffff, 0xbfffffffffffffff, 6, 3f, x1, 512,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000a; op2val:0x7fffffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x000000000000000a, 0x7fffffffffffffff, 32, 3f, x1, 520,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000800000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffdffff, 0x0000800000000000, 8, 3f, x1, 528,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xaaaaaaaaaaaaaaaa; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffbffff, 0xaaaaaaaaaaaaaaaa, 8, 3f, x1, 536,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000010000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffff7ffff, 0x0000000010000000, 6, 1b, x1, 544,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0000000200000000; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffefffff, 0x0000000200000000, 32, 3f, x1, 552,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x000000000000000e; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffdfffff, 0x000000000000000e, 4, 1b, x1, 560,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xfffffffffbffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffbfffff, 0xfffffffffbffffff, 32, 3f, x1, 568,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000000002000000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffff7fffff, 0x0000000002000000, 1366, 1b, x1, 576,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xffffffffffffffdf; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffbffffff, 0xffffffffffffffdf, 256, 3f, x1, 584,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0400000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffff7ffffff, 0x0400000000000000, 1024, 3f, x1, 592,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000040000000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffbfffffff, 0x0000040000000000, 2, 3f, x1, 600,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x8000000000000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffff7fffffff, 0x8000000000000000, 4, 3f, x1, 608,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xbfffffffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffeffffffff, 0xbfffffffffffffff, 1366, 1b, x1, 616,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0100000000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffdffffffff, 0x0100000000000000, 8, 1b, x1, 624,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xfffffffffffffffe; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffbffffffff, 0xfffffffffffffffe, 16, 3f, x1, 632,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0200000000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffff7ffffffff, 0x0200000000000000, 8, 1b, x1, 640,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xfffffffffdffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffefffffffff, 0xfffffffffdffffff, 6, 1b, x1, 648,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xfffbffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffdfffffffff, 0xfffbffffffffffff, 6, 3f, x1, 656,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000400000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffbfffffffff, 0x0000000400000000, 4, 1b, x1, 664,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0000000000000020; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffff7fffffffff, 0x0000000000000020, 10, 1b, x1, 672,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000000013; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffeffffffffff, 0x0000000000000013, 0, 3f, x1, 680,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0100000000000000; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffdffffffffff, 0x0100000000000000, 256, 3f, x1, 688,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfffffffeffffffff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffbffffffffff, 0xfffffffeffffffff, 16, 3f, x1, 696,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xfffffffffffffdff; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffff7ffffffffff, 0xfffffffffffffdff, 64, 3f, x1, 704,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0xfffffffeffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffefffffffffff, 0xfffffffeffffffff, 8, 1b, x1, 712,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0000000000400000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffdfffffffffff, 0x0000000000400000, 1366, 1b, x1, 720,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x0000020000000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffbfffffffffff, 0x0000020000000000, 4, 1b, x1, 728,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000000000020000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffff7fffffffffff, 0x0000000000020000, 2, 1b, x1, 736,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000000000000000; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffeffffffffffff, 0x0000000000000000, 512, 3f, x1, 744,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xbfffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffdffffffffffff, 0xbfffffffffffffff, 2, 1b, x1, 752,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000001000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffbffffffffffff, 0x0000001000000000, 1024, 1b, x1, 760,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0xffffffefffffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfff7ffffffffffff, 0xffffffefffffffff, 32, 3f, x1, 768,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0000000040000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffefffffffffffff, 0x0000000040000000, 4, 3f, x1, 776,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0000002000000000; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffdfffffffffffff, 0x0000002000000000, 64, 3f, x1, 784,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xfdffffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffbfffffffffffff, 0xfdffffffffffffff, 32, 3f, x1, 792,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xffffffffffffff7f; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xff7fffffffffffff, 0xffffffffffffff7f, 64, 3f, x1, 800,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x000000000000000d; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfeffffffffffffff, 0x000000000000000d, 128, 3f, x1, 808,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000000000000011; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfdffffffffffffff, 0x0000000000000011, 1024, 1b, x1, 816,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000040000000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfbffffffffffffff, 0x0000040000000000, 4, 1b, x1, 824,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xfffffeffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xf7ffffffffffffff, 0xfffffeffffffffff, 1024, 3f, x1, 832,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0000020000000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xefffffffffffffff, 0x0000020000000000, 2, 3f, x1, 840,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xffffffffbfffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xdfffffffffffffff, 0xffffffffbfffffff, 6, 3f, x1, 848,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x2000000000000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xbfffffffffffffff, 0x2000000000000000, 0, 3f, x1, 856,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0000000000000040; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x7fffffffffffffff, 0x0000000000000040, 6, 3f, x1, 864,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0400000000000000; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x5555555555555555, 0x0400000000000000, 16, 3f, x1, 872,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfffffffffffff7ff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfffffffffffff7ff, 6, 1b, x1, 880,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000000000000001; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffffd, 0x0000000000000001, 128, 3f, x1, 888,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000005; op2val:0x0000000000000002; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000005, 0x0000000000000002, 2, 1b, x1, 896,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000000000000004; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffbff, 0x0000000000000004, 0, 1b, x1, 904,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0x0000000000000008; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000020, 0x0000000000000008, 6, 1b, x1, 912,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0000000000000010; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0001000000000000, 0x0000000000000010, 64, 3f, x1, 920,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0x0000000000000200; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000800, 0x0000000000000200, 6, 3f, x1, 928,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000000000001000; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffbffffffffffff, 0x0000000000001000, 16, 3f, x1, 936,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x0000000000004000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000800000000, 0x0000000000004000, 1024, 3f, x1, 944,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000000000008000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffbfffff, 0x0000000000008000, 0, 1b, x1, 952,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0x0000000000010000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000100, 0x0000000000010000, 6, 3f, x1, 960,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0x0000000000040000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000002000000, 0x0000000000040000, 0, 1b, x1, 968,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0x0000000000080000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000200000, 0x0000000000080000, 6, 1b, x1, 976,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0x0000000000100000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000080, 0x0000000000100000, 6, 1b, x1, 984,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0000000000200000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000800000000000, 0x0000000000200000, 6, 3f, x1, 992,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000001000000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffdff, 0x0000000001000000, 1366, 1b, x1, 1000,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x0000000004000000; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000010000000000, 0x0000000004000000, 32, 3f, x1, 1008,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0x0000000800000000; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000008000000, 0x0000000800000000, 512, 3f, x1, 1016,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0x0000008000000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000003, 0x0000008000000000, 4, 1b, x1, 1024,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0000010000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffefffff, 0x0000010000000000, 1024, 1b, x1, 1032,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000080000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffefffffffffff, 0x0000080000000000, 8, 3f, x1, 1040,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0x0000400000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000007, 0x0000400000000000, 1024, 1b, x1, 1048,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0001000000000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffefffffffff, 0x0001000000000000, 0, 3f, x1, 1056,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0008000000000000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0008000000000000, 0x0008000000000000, 1366, 1b, x1, 1064,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0080000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffff7ffff, 0x0080000000000000, 1024, 3f, x1, 1072,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0x0040000000000000; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0040000000000000, 0x0040000000000000, 64, 3f, x1, 1080,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xfffffffffffffffd; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000008000, 0xfffffffffffffffd, 4, 3f, x1, 1088,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000200; op2val:0xfffffffffffffffb; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000200, 0xfffffffffffffffb, 1366, 1b, x1, 1096,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0xffffffffffffffbf; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000100000, 0xffffffffffffffbf, 6, 1b, x1, 1104,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfffffffffffffeff; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffbffffffffff, 0xfffffffffffffeff, 64, 3f, x1, 1112,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfffffffffffffbff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffeffffffff, 0xfffffffffffffbff, 16, 3f, x1, 1120,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xffffffffffffefff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000006, 0xffffffffffffefff, 8, 1b, x1, 1128,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0xffffffffffffbfff; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0008000000000000, 0xffffffffffffbfff, 1366, 1b, x1, 1136,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0xffffffffffff7fff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000003, 0xffffffffffff7fff, 1024, 3f, x1, 1144,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xfffffffffffeffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000100000000, 0xfffffffffffeffff, 6, 3f, x1, 1152,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0xfffffffffffbffff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffffff, 0xfffffffffffbffff, 16, 3f, x1, 1160,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xffffffffffefffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffbfffffffffff, 0xffffffffffefffff, 32, 3f, x1, 1168,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000e; op2val:0xffffffffffdfffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x000000000000000e, 0xffffffffffdfffff, 8, 1b, x1, 1176,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xffffffffffbfffff; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0020000000000000, 0xffffffffffbfffff, 10, 1b, x1, 1184,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000a; op2val:0xffffffffff7fffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x000000000000000a, 0xffffffffff7fffff, 0, 1b, x1, 1192,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xffffffffefffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffdfffff, 0xffffffffefffffff, 8, 1b, x1, 1200,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xffffffffdfffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffdffffffff, 0xffffffffdfffffff, 0, 1b, x1, 1208,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xffffffff7fffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffffdf, 0xffffffff7fffffff, 6, 3f, x1, 1216,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xfffffffbffffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffff7ff, 0xfffffffbffffffff, 256, 3f, x1, 1224,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xfffffff7ffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffdff, 0xfffffff7ffffffff, 0, 1b, x1, 1232,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xffffffdfffffffff; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffff7fffffffffff, 0xffffffdfffffffff, 512, 3f, x1, 1240,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xffffffbfffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000800000000, 0xffffffbfffffffff, 1024, 1b, x1, 1248,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xffffff7fffffffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffbffffffffff, 0xffffff7fffffffff, 4, 3f, x1, 1256,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000002; op2val:0xfffffdffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000002, 0xfffffdffffffffff, 0, 1b, x1, 1264,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xffffdfffffffffff; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000008000, 0xffffdfffffffffff, 64, 3f, x1, 1272,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xffffbfffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0001000000000000, 0xffffbfffffffffff, 8, 1b, x1, 1280,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xffff7fffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffff7fffffff, 0xffff7fffffffffff, 2, 3f, x1, 1288,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0xfffdffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000007, 0xfffdffffffffffff, 1024, 3f, x1, 1296,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0010000000000000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffbfffffffffffff, 0x0010000000000000, 10, 1b, x1, 1304,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xffbfffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0800000000000000, 0xffbfffffffffffff, 32, 3f, x1, 1312,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0xffffffffffffffef; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffefffffff, 0xffffffffffffffef, 1024, 1b, x1, 1320,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0xffffffffffffdfff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000008, 0xffffffffffffdfff, 2, 3f, x1, 1328,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0xfffffffffff7ffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000100000, 0xfffffffffff7ffff, 0, 1b, x1, 1336,0)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x3_1:
    .fill 24*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 168*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
