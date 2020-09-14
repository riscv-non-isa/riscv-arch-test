
#This assembly file tests the bgeu instruction of the RISC-V I extension for the bgeu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bgeu)

la x3,signature_x3_1

# opcode: bgeu, op1:x5; op2:x18; op1val:0x0000000000000010; op2val:0x0000000020000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x19, x5, x18, 0x0000000000000010, 0x0000000020000000, 4, 1b, x3, 0,0)

# opcode: bgeu, op1:x30; op2:x30; op1val:0xfff7ffffffffffff; op2val:0xfff7ffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x19, x30, x30, 0xfff7ffffffffffff, 0xfff7ffffffffffff, 16, 3f, x3, 8,0)

# opcode: bgeu, op1:x23; op2:x10; op1val:0x0400000000000000; op2val:0x0400000000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x19, x23, x10, 0x0400000000000000, 0x0400000000000000, 6, 1b, x3, 16,0)

# opcode: bgeu, op1:x13; op2:x1; op1val:0xfffffbffffffffff; op2val:0xfffbffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x19, x13, x1, 0xfffffbffffffffff, 0xfffbffffffffffff, 16, 3f, x3, 24,0)

# opcode: bgeu, op1:x28; op2:x5; op1val:0x0000000000000040; op2val:0x0000000000000009; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x19, x28, x5, 0x0000000000000040, 0x0000000000000009, 0, 1b, x3, 32,0)

# opcode: bgeu, op1:x25; op2:x4; op1val:0xdfffffffffffffff; op2val:0xfffffff7ffffffff; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x19, x25, x4, 0xdfffffffffffffff, 0xfffffff7ffffffff, 512, 3f, x3, 40,0)

# opcode: bgeu, op1:x24; op2:x2; op1val:0x0000000000000001; op2val:0x0000000004000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x19, x24, x2, 0x0000000000000001, 0x0000000004000000, 1024, 1b, x3, 48,0)

# opcode: bgeu, op1:x17; op2:x11; op1val:0x0000000000000002; op2val:0xfffffffffffffdff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x19, x17, x11, 0x0000000000000002, 0xfffffffffffffdff, 256, 3f, x3, 56,0)

# opcode: bgeu, op1:x14; op2:x8; op1val:0x0000000000000004; op2val:0x0000400000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x19, x14, x8, 0x0000000000000004, 0x0000400000000000, 1024, 3f, x3, 64,0)

# opcode: bgeu, op1:x15; op2:x24; op1val:0x0000000000000008; op2val:0xffffff7fffffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x19, x15, x24, 0x0000000000000008, 0xffffff7fffffffff, 256, 3f, x3, 72,0)

# opcode: bgeu, op1:x6; op2:x26; op1val:0x0000000000000020; op2val:0x0000000000010000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x19, x6, x26, 0x0000000000000020, 0x0000000000010000, 6, 3f, x3, 80,0)

# opcode: bgeu, op1:x26; op2:x15; op1val:0x0000000000000080; op2val:0xffffffffffffffef; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x19, x26, x15, 0x0000000000000080, 0xffffffffffffffef, 8, 1b, x3, 88,0)

# opcode: bgeu, op1:x0; op2:x28; op1val:0x0000000000000100; op2val:0xfffffffffff7ffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x19, x0, x28, 0x0000000000000100, 0xfffffffffff7ffff, 256, 3f, x3, 96,0)

# opcode: bgeu, op1:x12; op2:x14; op1val:0x0000000000000200; op2val:0x0080000000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x19, x12, x14, 0x0000000000000200, 0x0080000000000000, 8, 1b, x3, 104,0)

# opcode: bgeu, op1:x31; op2:x29; op1val:0x0000000000000400; op2val:0xffffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x19, x31, x29, 0x0000000000000400, 0xffffffffffffffff, 8, 1b, x3, 112,0)

# opcode: bgeu, op1:x10; op2:x9; op1val:0x0000000000000800; op2val:0x0000100000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x19, x10, x9, 0x0000000000000800, 0x0000100000000000, 1024, 1b, x3, 120,0)

# opcode: bgeu, op1:x11; op2:x27; op1val:0x0000000000001000; op2val:0x0000000000000013; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x19, x11, x27, 0x0000000000001000, 0x0000000000000013, 1024, 1b, x3, 128,0)

# opcode: bgeu, op1:x8; op2:x17; op1val:0x0000000000002000; op2val:0xffdfffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x19, x8, x17, 0x0000000000002000, 0xffdfffffffffffff, 4, 1b, x3, 136,0)

# opcode: bgeu, op1:x16; op2:x23; op1val:0x0000000000004000; op2val:0x7fffffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x19, x16, x23, 0x0000000000004000, 0x7fffffffffffffff, 0, 1b, x3, 144,0)

# opcode: bgeu, op1:x4; op2:x21; op1val:0x0000000000008000; op2val:0x0010000000000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x19, x4, x21, 0x0000000000008000, 0x0010000000000000, 0, 1b, x3, 152,0)

# opcode: bgeu, op1:x7; op2:x0; op1val:0x0000000000010000; op2val:0x0000000000200000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x19, x7, x0, 0x0000000000010000, 0x0000000000200000, 8, 3f, x3, 160,0)

# opcode: bgeu, op1:x21; op2:x16; op1val:0x0000000000020000; op2val:0x000000000000000e; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x5, x21, x16, 0x0000000000020000, 0x000000000000000e, 64, 3f, x3, 168,0)

# opcode: bgeu, op1:x19; op2:x20; op1val:0x0000000000040000; op2val:0x0000000000000004; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x19, x20, 0x0000000000040000, 0x0000000000000004, 32, 3f, x3, 176,0)
la x4,signature_x4_0

# opcode: bgeu, op1:x18; op2:x19; op1val:0x0000000000080000; op2val:0x000000000000000b; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x5, x18, x19, 0x0000000000080000, 0x000000000000000b, 10, 1b, x4, 0,0)

# opcode: bgeu, op1:x27; op2:x22; op1val:0x0000000000100000; op2val:0xfffffbffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x27, x22, 0x0000000000100000, 0xfffffbffffffffff, 0, 3f, x4, 8,0)

# opcode: bgeu, op1:x22; op2:x12; op1val:0x0000000000200000; op2val:0x000000000000000d; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x22, x12, 0x0000000000200000, 0x000000000000000d, 2, 1b, x4, 16,0)

# opcode: bgeu, op1:x9; op2:x25; op1val:0x0000000000400000; op2val:0x0000000020000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x9, x25, 0x0000000000400000, 0x0000000020000000, 1024, 1b, x4, 24,0)

# opcode: bgeu, op1:x1; op2:x31; op1val:0x0000000000800000; op2val:0x0800000000000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x1, x31, 0x0000000000800000, 0x0800000000000000, 0, 1b, x4, 32,0)

# opcode: bgeu, op1:x2; op2:x13; op1val:0x0000000001000000; op2val:0xfffdffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x2, x13, 0x0000000001000000, 0xfffdffffffffffff, 0, 1b, x4, 40,0)

# opcode: bgeu, op1:x29; op2:x7; op1val:0x0000000002000000; op2val:0xfffffffffffffffb; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x29, x7, 0x0000000002000000, 0xfffffffffffffffb, 32, 3f, x4, 48,0)

# opcode: bgeu, op1:x20; op2:x3; op1val:0x0000000004000000; op2val:0x4000000000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x20, x3, 0x0000000004000000, 0x4000000000000000, 8, 3f, x4, 56,0)

# opcode: bgeu, op1:x3; op2:x6; op1val:0x0000000008000000; op2val:0x0010000000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x3, x6, 0x0000000008000000, 0x0010000000000000, 8, 3f, x4, 64,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfffffffff7ffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000010000000, 0xfffffffff7ffffff, 256, 3f, x4, 72,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0xffffffffbfffffff; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000020000000, 0xffffffffbfffffff, 512, 3f, x4, 80,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0xdfffffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000040000000, 0xdfffffffffffffff, 32, 3f, x4, 88,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000020000000000; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000080000000, 0x0000020000000000, 512, 3f, x4, 96,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000004000000000; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000100000000, 0x0000004000000000, 256, 3f, x4, 104,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffffffbfffffffff; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000200000000, 0xffffffbfffffffff, 64, 3f, x4, 112,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0000000000000013; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000400000000, 0x0000000000000013, 2, 3f, x4, 120,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x0000010000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000800000000, 0x0000010000000000, 1024, 3f, x4, 128,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000000000004000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000001000000000, 0x0000000000004000, 8, 1b, x4, 136,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000000400; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000002000000000, 0x0000000000000400, 8, 1b, x4, 144,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x1000000000000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000004000000000, 0x1000000000000000, 4, 3f, x4, 152,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x000000000000000b; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000008000000000, 0x000000000000000b, 8, 3f, x4, 160,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x0000000020000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000010000000000, 0x0000000020000000, 4, 1b, x4, 168,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0000000000000080; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000020000000000, 0x0000000000000080, 6, 3f, x4, 176,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000008000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000040000000000, 0x0000000008000000, 0, 1b, x4, 184,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xfbffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000080000000000, 0xfbffffffffffffff, 1024, 1b, x4, 192,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000000000000011; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000100000000000, 0x0000000000000011, 8, 3f, x4, 200,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0x0000000000040000; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000200000000000, 0x0000000000040000, 16, 3f, x4, 208,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xffffefffffffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000400000000000, 0xffffefffffffffff, 256, 3f, x4, 216,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0000000000000800; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000800000000000, 0x0000000000000800, 4, 3f, x4, 224,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xf7ffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0001000000000000, 0xf7ffffffffffffff, 2, 1b, x4, 232,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xaaaaaaaaaaaaaaaa; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0002000000000000, 0xaaaaaaaaaaaaaaaa, 2, 3f, x4, 240,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0x7fffffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0004000000000000, 0x7fffffffffffffff, 32, 3f, x4, 248,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000200000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0008000000000000, 0x0000000200000000, 8, 1b, x4, 256,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfffffffffffdffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0010000000000000, 0xfffffffffffdffff, 8, 3f, x4, 264,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000000400000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0020000000000000, 0x0000000400000000, 2, 1b, x4, 272,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xfffffffeffffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0040000000000000, 0xfffffffeffffffff, 2, 3f, x4, 280,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000000002000000; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0080000000000000, 0x0000000002000000, 512, 3f, x4, 288,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0xfffff7ffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0100000000000000, 0xfffff7ffffffffff, 128, 3f, x4, 296,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xffffffffffffffdf; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0200000000000000, 0xffffffffffffffdf, 1366, 1b, x4, 304,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xfff7ffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0800000000000000, 0xfff7ffffffffffff, 4, 3f, x4, 312,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x4000000000000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x1000000000000000, 0x4000000000000000, 4, 1b, x4, 320,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0000000000000003; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x2000000000000000, 0x0000000000000003, 128, 3f, x4, 328,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0000000000000200; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x4000000000000000, 0x0000000000000200, 1366, 1b, x4, 336,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xffefffffffffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x8000000000000000, 0xffefffffffffffff, 256, 3f, x4, 344,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xf7ffffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffffe, 0xf7ffffffffffffff, 6, 3f, x4, 352,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000000000000008; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffffd, 0x0000000000000008, 6, 1b, x4, 360,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000008000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffffb, 0x0000008000000000, 1024, 1b, x4, 368,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000080000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffff7, 0x0000080000000000, 1024, 3f, x4, 376,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x8000000000000000; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffffef, 0x8000000000000000, 512, 3f, x4, 384,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000040000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffffdf, 0x0000000040000000, 4, 1b, x4, 392,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000001000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffffbf, 0x0000001000000000, 6, 1b, x4, 400,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0x7fffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffff7f, 0x7fffffffffffffff, 1024, 3f, x4, 408,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000001000000000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffeff, 0x0000001000000000, 10, 1b, x4, 416,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xff7fffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffbffffffffffff, 0xff7fffffffffffff, 2, 1b, x4, 424,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0xfeffffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffffff, 0xfeffffffffffffff, 6, 1b, x4, 432,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0xfdffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x5555555555555555, 0xfdffffffffffffff, 2, 1b, x4, 440,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xefffffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xff7fffffffffffff, 0xefffffffffffffff, 0, 1b, x4, 448,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xbfffffffffffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xbfffffffffffffff, 0xbfffffffffffffff, 256, 3f, x4, 456,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x5555555555555555; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0002000000000000, 0x5555555555555555, 32, 3f, x4, 464,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000000800000; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffdff, 0x0000000000800000, 256, 3f, x4, 472,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0400000000000000; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffbff, 0x0400000000000000, 128, 3f, x4, 480,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000000400000000; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffff7ff, 0x0000000400000000, 64, 3f, x4, 488,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xfff7ffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffefff, 0xfff7ffffffffffff, 8, 1b, x4, 496,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0000200000000000; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffdfff, 0x0000200000000000, 128, 3f, x4, 504,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xfffff7ffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffbfff, 0xfffff7ffffffffff, 8, 3f, x4, 512,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0010000000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffff7fff, 0x0010000000000000, 8, 1b, x4, 520,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xffffffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffeffff, 0xffffffffffffffff, 128, 3f, x4, 528,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffffffffeffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffdffff, 0xfffffffffeffffff, 32, 3f, x4, 536,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xffffffffdfffffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffbffff, 0xffffffffdfffffff, 4, 1b, x4, 544,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0080000000000000; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffff7ffff, 0x0080000000000000, 512, 3f, x4, 552,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x000000000000000e; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffefffff, 0x000000000000000e, 1024, 3f, x4, 560,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xffff7fffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffdfffff, 0xffff7fffffffffff, 1366, 1b, x4, 568,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000000000020000; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffbfffff, 0x0000000000020000, 64, 3f, x4, 576,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000200000000000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffff7fffff, 0x0000200000000000, 4, 1b, x4, 584,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xffffffffdfffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffeffffff, 0xffffffffdfffffff, 0, 3f, x4, 592,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xfffffeffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffdffffff, 0xfffffeffffffffff, 1024, 3f, x4, 600,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0000008000000000; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffbffffff, 0x0000008000000000, 16, 3f, x4, 608,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xdfffffffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffff7ffffff, 0xdfffffffffffffff, 10, 1b, x4, 616,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0xffffffffffffdfff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffefffffff, 0xffffffffffffdfff, 256, 3f, x4, 624,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0000000000000020; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffdfffffff, 0x0000000000000020, 8, 3f, x4, 632,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000400000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffbfffffff, 0x0000400000000000, 6, 1b, x4, 640,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0000400000000000; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffff7fffffff, 0x0000400000000000, 1366, 1b, x4, 648,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xffffefffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffeffffffff, 0xffffefffffffffff, 0, 3f, x4, 656,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0020000000000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffdffffffff, 0x0020000000000000, 0, 1b, x4, 664,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x5555555555555555; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffbffffffff, 0x5555555555555555, 32, 3f, x4, 672,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xff7fffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffff7ffffffff, 0xff7fffffffffffff, 128, 3f, x4, 680,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0040000000000000; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffefffffffff, 0x0040000000000000, 32, 3f, x4, 688,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xfffffffffffffffd; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffdfffffffff, 0xfffffffffffffffd, 8, 1b, x4, 696,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000000000006; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffbfffffffff, 0x0000000000000006, 2, 1b, x4, 704,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0000000000000012; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffff7fffffffff, 0x0000000000000012, 512, 3f, x4, 712,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000040000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffeffffffffff, 0x0000000000040000, 0, 3f, x4, 720,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xfffffffffdffffff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffdffffffffff, 0xfffffffffdffffff, 6, 3f, x4, 728,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xfffffffffff7ffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffff7ffffffffff, 0xfffffffffff7ffff, 4, 1b, x4, 736,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0xff7fffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffefffffffffff, 0xff7fffffffffffff, 128, 3f, x4, 744,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0000000008000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffdfffffffffff, 0x0000000008000000, 2, 3f, x4, 752,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xf7ffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffbfffffffffff, 0xf7ffffffffffffff, 8, 1b, x4, 760,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xffffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffff7fffffffffff, 0xffffffffffffffff, 4, 3f, x4, 768,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000000000000005; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffeffffffffffff, 0x0000000000000005, 8, 1b, x4, 776,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffdffffffffffff, 0xaaaaaaaaaaaaaaaa, 6, 3f, x4, 784,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0000000000000800; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffefffffffffffff, 0x0000000000000800, 256, 3f, x4, 792,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000000000080000; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfdffffffffffffff, 0x0000000000080000, 256, 3f, x4, 800,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0xfffffffffffff7ff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfbffffffffffffff, 0xfffffffffffff7ff, 4, 1b, x4, 808,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000000000800000; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xf7ffffffffffffff, 0x0000000000800000, 512, 3f, x4, 816,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xfffdffffffffffff; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xefffffffffffffff, 0xfffdffffffffffff, 64, 3f, x4, 824,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0xffbfffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000004000000, 0xffbfffffffffffff, 0, 3f, x4, 832,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x000000000000000a; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x7fffffffffffffff, 0x000000000000000a, 2, 1b, x4, 840,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xffffdfffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xffffdfffffffffff, 0, 1b, x4, 848,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000000000001; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffbffffffffff, 0x0000000000000001, 10, 1b, x4, 856,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000000000000002; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffefffffff, 0x0000000000000002, 512, 3f, x4, 864,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000000010; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0100000000000000, 0x0000000000000010, 10, 1b, x4, 872,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000000000040; immval:1366; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000004000000000, 0x0000000000000040, 1366, 1b, x4, 880,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000400; op2val:0x0000000000000100; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000000400, 0x0000000000000100, 6, 1b, x4, 888,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000000000001000; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000080000000, 0x0000000000001000, 32, 3f, x4, 896,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0000000000002000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffffe, 0x0000000000002000, 8, 1b, x4, 904,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0x0000000000008000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000000008, 0x0000000000008000, 0, 1b, x4, 912,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0x0000000000100000; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000000800, 0x0000000000100000, 32, 3f, x4, 920,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0000000000400000; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffdfffff, 0x0000000000400000, 4, 3f, x4, 928,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0000000001000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffdfffffffffff, 0x0000000001000000, 0, 3f, x4, 936,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000080000; op2val:0x0000000010000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000080000, 0x0000000010000000, 2, 1b, x4, 944,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000000080000000; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffffef, 0x0000000080000000, 64, 3f, x4, 952,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000100000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000040000000000, 0x0000000100000000, 2, 1b, x4, 960,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0x0000000800000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffffff, 0x0000000800000000, 6, 1b, x4, 968,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000002000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffffef, 0x0000002000000000, 6, 1b, x4, 976,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000040000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffbfffffff, 0x0000040000000000, 6, 1b, x4, 984,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000800000000000; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffffbf, 0x0000800000000000, 2, 1b, x4, 992,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0001000000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffefffffff, 0x0001000000000000, 6, 3f, x4, 1000,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0x0002000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000000040, 0x0002000000000000, 1024, 1b, x4, 1008,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0004000000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000800000000000, 0x0004000000000000, 8, 1b, x4, 1016,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0x0008000000000000; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000000080, 0x0008000000000000, 6, 3f, x4, 1024,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0100000000000000; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffff7fff, 0x0100000000000000, 10, 1b, x4, 1032,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0200000000000000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffffef, 0x0200000000000000, 8, 3f, x4, 1040,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000005; op2val:0x2000000000000000; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000000005, 0x2000000000000000, 512, 3f, x4, 1048,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000001; op2val:0xfffffffffffffffe; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000000001, 0xfffffffffffffffe, 0, 3f, x4, 1056,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfffffffffffffff7; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000800000000000, 0xfffffffffffffff7, 0, 3f, x4, 1064,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0xffffffffffffffbf; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000000020, 0xffffffffffffffbf, 8, 3f, x4, 1072,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xffffffffffffff7f; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffdff, 0xffffffffffffff7f, 32, 3f, x4, 1080,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xfffffffffffffeff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffdfffffffff, 0xfffffffffffffeff, 4, 3f, x4, 1088,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xfffffffffffffbff; immval:128; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000100000000, 0xfffffffffffffbff, 128, 3f, x4, 1096,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xffffffffffffefff; immval:2; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffeffffffff, 0xffffffffffffefff, 2, 3f, x4, 1104,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xffffffffffffbfff; immval:6; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffbfffff, 0xffffffffffffbfff, 6, 3f, x4, 1112,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xffffffffffff7fff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffeffffffffff, 0xffffffffffff7fff, 4, 3f, x4, 1120,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfffffffffffeffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffbffffffffff, 0xfffffffffffeffff, 256, 3f, x4, 1128,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xfffffffffffbffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0200000000000000, 0xfffffffffffbffff, 0, 1b, x4, 1136,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xffffffffffefffff; immval:512; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffdffffffff, 0xffffffffffefffff, 512, 3f, x4, 1144,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0xffffffffffdfffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfff7ffffffffffff, 0xffffffffffdfffff, 4, 3f, x4, 1152,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xffffffffff7fffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffbffffff, 0xffffffffff7fffff, 0, 1b, x4, 1160,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000a; op2val:0xffffffffffbfffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x000000000000000a, 0xffffffffffbfffff, 4, 3f, x4, 1168,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xfffffffffbffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000400000000, 0xfffffffffbffffff, 256, 3f, x4, 1176,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xffffffffefffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffdfffffff, 0xffffffffefffffff, 0, 3f, x4, 1184,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0xffffffff7fffffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffbff, 0xffffffff7fffffff, 256, 3f, x4, 1192,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xfffffffdffffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0020000000000000, 0xfffffffdffffffff, 32, 3f, x4, 1200,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000040000; op2val:0xfffffffbffffffff; immval:10; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000040000, 0xfffffffbffffffff, 10, 1b, x4, 1208,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0xffffffefffffffff; immval:32; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffffffbff, 0xffffffefffffffff, 32, 3f, x4, 1216,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xfffffdffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffffffbffffff, 0xfffffdffffffffff, 8, 3f, x4, 1224,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xffffbfffffffffff; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffefff, 0xffffbfffffffffff, 64, 3f, x4, 1232,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xfffeffffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffffffffffffefff, 0xfffeffffffffffff, 0, 3f, x4, 1240,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0008000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffdfffffffffffff, 0x0008000000000000, 1024, 3f, x4, 1248,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000000040000000; immval:0; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xffbfffffffffffff, 0x0000000040000000, 0, 3f, x4, 1256,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xffffffdfffffffff; immval:4; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfffffff7ffffffff, 0xffffffdfffffffff, 4, 3f, x4, 1264,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0xfdffffffffffffff; immval:64; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfeffffffffffffff, 0xfdffffffffffffff, 64, 3f, x4, 1272,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0xfff7ffffffffffff; immval:16; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0xfff7ffffffffffff, 0xfff7ffffffffffff, 16, 3f, x4, 1280,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0xfffffffffff7ffff; immval:256; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000000100, 0xfffffffffff7ffff, 256, 3f, x4, 1288,0)

# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0x0000000000200000; immval:8; align: 0
TEST_BRANCH_OP(bgeu, x5, x10, x11, 0x0000000000010000, 0x0000000000200000, 8, 3f, x4, 1296,0)
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
    .fill 23*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 163*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
