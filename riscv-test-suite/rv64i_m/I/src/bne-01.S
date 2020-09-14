
#This assembly file tests the bne instruction of the RISC-V I extension for the bne covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bne)

la x2,signature_x2_1

# opcode: bne, op1:x14; op2:x5; op1val:0x0000000000080000; op2val:0x0000000000200000; immval:128; align: 0
TEST_BRANCH_OP(bne, x7, x14, x5, 0x0000000000080000, 0x0000000000200000, 128, 3f, x2, 0,0)

# opcode: bne, op1:x31; op2:x31; op1val:0x0000000000000007; op2val:0xfffffffeffffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x7, x31, x31, 0x0000000000000007, 0xfffffffeffffffff, 4, 1b, x2, 8,0)

# opcode: bne, op1:x20; op2:x22; op1val:0xfffffffffbffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:16; align: 0
TEST_BRANCH_OP(bne, x7, x20, x22, 0xfffffffffbffffff, 0xaaaaaaaaaaaaaaaa, 16, 3f, x2, 16,0)

# opcode: bne, op1:x17; op2:x23; op1val:0xfffffffffffffff6; op2val:0x0001000000000000; immval:64; align: 0
TEST_BRANCH_OP(bne, x7, x17, x23, 0xfffffffffffffff6, 0x0001000000000000, 64, 3f, x2, 24,0)

# opcode: bne, op1:x11; op2:x6; op1val:0xffffffffffffff7f; op2val:0xffffffffffffff7f; immval:512; align: 0
TEST_BRANCH_OP(bne, x7, x11, x6, 0xffffffffffffff7f, 0xffffffffffffff7f, 512, 3f, x2, 32,0)

# opcode: bne, op1:x12; op2:x11; op1val:0x0000000000000001; op2val:0x0000000000000001; immval:4; align: 0
TEST_BRANCH_OP(bne, x7, x12, x11, 0x0000000000000001, 0x0000000000000001, 4, 1b, x2, 40,0)

# opcode: bne, op1:x23; op2:x20; op1val:0x0000000000000002; op2val:0x0000000020000000; immval:8; align: 0
TEST_BRANCH_OP(bne, x7, x23, x20, 0x0000000000000002, 0x0000000020000000, 8, 1b, x2, 48,0)

# opcode: bne, op1:x24; op2:x10; op1val:0x0000000000000004; op2val:0xffff7fffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x7, x24, x10, 0x0000000000000004, 0xffff7fffffffffff, 0, 1b, x2, 56,0)

# opcode: bne, op1:x13; op2:x14; op1val:0x0000000000000008; op2val:0xfffffffffffff7ff; immval:0; align: 0
TEST_BRANCH_OP(bne, x7, x13, x14, 0x0000000000000008, 0xfffffffffffff7ff, 0, 1b, x2, 64,0)

# opcode: bne, op1:x27; op2:x13; op1val:0x0000000000000010; op2val:0x0000000000100000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x7, x27, x13, 0x0000000000000010, 0x0000000000100000, 1024, 1b, x2, 72,0)

# opcode: bne, op1:x21; op2:x4; op1val:0x0000000000000020; op2val:0xfffffffffffffffa; immval:16; align: 0
TEST_BRANCH_OP(bne, x7, x21, x4, 0x0000000000000020, 0xfffffffffffffffa, 16, 3f, x2, 80,0)

# opcode: bne, op1:x5; op2:x12; op1val:0x0000000000000040; op2val:0x0004000000000000; immval:8; align: 0
TEST_BRANCH_OP(bne, x7, x5, x12, 0x0000000000000040, 0x0004000000000000, 8, 3f, x2, 88,0)

# opcode: bne, op1:x30; op2:x8; op1val:0x0000000000000080; op2val:0x0000040000000000; immval:0; align: 0
TEST_BRANCH_OP(bne, x7, x30, x8, 0x0000000000000080, 0x0000040000000000, 0, 3f, x2, 96,0)

# opcode: bne, op1:x0; op2:x15; op1val:0x0000000000000100; op2val:0x0000000000002000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x7, x0, x15, 0x0000000000000100, 0x0000000000002000, 1024, 1b, x2, 104,0)

# opcode: bne, op1:x25; op2:x29; op1val:0x0000000000000200; op2val:0xffffdfffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bne, x7, x25, x29, 0x0000000000000200, 0xffffdfffffffffff, 10, 1b, x2, 112,0)

# opcode: bne, op1:x1; op2:x18; op1val:0x0000000000000400; op2val:0xfffffffffffffffe; immval:1366; align: 0
TEST_BRANCH_OP(bne, x7, x1, x18, 0x0000000000000400, 0xfffffffffffffffe, 1366, 1b, x2, 120,0)

# opcode: bne, op1:x19; op2:x17; op1val:0x0000000000000800; op2val:0x0400000000000000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x7, x19, x17, 0x0000000000000800, 0x0400000000000000, 1024, 3f, x2, 128,0)

# opcode: bne, op1:x6; op2:x28; op1val:0x0000000000001000; op2val:0xfff7ffffffffffff; immval:512; align: 0
TEST_BRANCH_OP(bne, x7, x6, x28, 0x0000000000001000, 0xfff7ffffffffffff, 512, 3f, x2, 136,0)

# opcode: bne, op1:x8; op2:x0; op1val:0x0000000000002000; op2val:0xfffffffffffff7ff; immval:512; align: 0
TEST_BRANCH_OP(bne, x7, x8, x0, 0x0000000000002000, 0xfffffffffffff7ff, 512, 3f, x2, 144,0)

# opcode: bne, op1:x3; op2:x16; op1val:0x0000000000004000; op2val:0xffffffffffffdfff; immval:2; align: 0
TEST_BRANCH_OP(bne, x7, x3, x16, 0x0000000000004000, 0xffffffffffffdfff, 2, 3f, x2, 152,0)

# opcode: bne, op1:x26; op2:x30; op1val:0x0000000000008000; op2val:0x0000000004000000; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x26, x30, 0x0000000000008000, 0x0000000004000000, 512, 3f, x2, 160,0)
la x5,signature_x5_0

# opcode: bne, op1:x22; op2:x27; op1val:0x0000000000010000; op2val:0xdfffffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x22, x27, 0x0000000000010000, 0xdfffffffffffffff, 6, 1b, x5, 0,0)

# opcode: bne, op1:x29; op2:x26; op1val:0x0000000000020000; op2val:0x0000400000000000; immval:10; align: 0
TEST_BRANCH_OP(bne, x6, x29, x26, 0x0000000000020000, 0x0000400000000000, 10, 1b, x5, 8,0)

# opcode: bne, op1:x7; op2:x1; op1val:0x0000000000040000; op2val:0x0000000000008000; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x7, x1, 0x0000000000040000, 0x0000000000008000, 2, 1b, x5, 16,0)

# opcode: bne, op1:x15; op2:x21; op1val:0x0000000000100000; op2val:0x0000000000080000; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x15, x21, 0x0000000000100000, 0x0000000000080000, 4, 1b, x5, 24,0)

# opcode: bne, op1:x9; op2:x7; op1val:0x0000000000200000; op2val:0x0000000040000000; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x9, x7, 0x0000000000200000, 0x0000000040000000, 512, 3f, x5, 32,0)

# opcode: bne, op1:x18; op2:x3; op1val:0x0000000000400000; op2val:0xff7fffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x18, x3, 0x0000000000400000, 0xff7fffffffffffff, 1024, 1b, x5, 40,0)

# opcode: bne, op1:x28; op2:x9; op1val:0x0000000000800000; op2val:0x0000000000000800; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x28, x9, 0x0000000000800000, 0x0000000000000800, 128, 3f, x5, 48,0)

# opcode: bne, op1:x16; op2:x25; op1val:0x0000000001000000; op2val:0x0000000200000000; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x16, x25, 0x0000000001000000, 0x0000000200000000, 256, 3f, x5, 56,0)

# opcode: bne, op1:x10; op2:x2; op1val:0x0000000002000000; op2val:0x0000000000000100; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x2, 0x0000000002000000, 0x0000000000000100, 2, 1b, x5, 64,0)

# opcode: bne, op1:x2; op2:x19; op1val:0x0000000004000000; op2val:0x0000000200000000; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x2, x19, 0x0000000004000000, 0x0000000200000000, 512, 3f, x5, 72,0)

# opcode: bne, op1:x4; op2:x24; op1val:0x0000000008000000; op2val:0xf7ffffffffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bne, x6, x4, x24, 0x0000000008000000, 0xf7ffffffffffffff, 1366, 1b, x5, 80,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000000040000; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000010000000, 0x0000000000040000, 6, 3f, x5, 88,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000000080000000; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000020000000, 0x0000000080000000, 6, 1b, x5, 96,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000000000000; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000040000000, 0x0000000000000000, 6, 3f, x5, 104,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xf7ffffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000080000000, 0xf7ffffffffffffff, 1024, 3f, x5, 112,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0100000000000000; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000100000000, 0x0100000000000000, 512, 3f, x5, 120,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffffffffffffefff; immval:32; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000200000000, 0xffffffffffffefff, 32, 3f, x5, 128,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0000008000000000; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000400000000, 0x0000008000000000, 6, 1b, x5, 136,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xdfffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000800000000, 0xdfffffffffffffff, 8, 3f, x5, 144,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xfffffffffffbffff; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000001000000000, 0xfffffffffffbffff, 2, 1b, x5, 152,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000008000; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000002000000000, 0x0000000000008000, 0, 3f, x5, 160,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0080000000000000; immval:10; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000004000000000, 0x0080000000000000, 10, 1b, x5, 168,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x0000008000000000; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000008000000000, 0x0000008000000000, 0, 1b, x5, 176,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x0000000400000000; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000010000000000, 0x0000000400000000, 256, 3f, x5, 184,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xffffffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000020000000000, 0xffffffffffffffff, 2, 3f, x5, 192,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000000000009; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000040000000000, 0x0000000000000009, 4, 1b, x5, 200,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0x0000000000000003; immval:10; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000080000000000, 0x0000000000000003, 10, 1b, x5, 208,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xfffffffffdffffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000100000000000, 0xfffffffffdffffff, 0, 1b, x5, 216,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0x0008000000000000; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000200000000000, 0x0008000000000000, 128, 3f, x5, 224,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfffffdffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000400000000000, 0xfffffdffffffffff, 8, 3f, x5, 232,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xffffffffffffff7f; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000800000000000, 0xffffffffffffff7f, 1024, 3f, x5, 240,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xfbffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0001000000000000, 0xfbffffffffffffff, 8, 3f, x5, 248,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xffffffdfffffffff; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0002000000000000, 0xffffffdfffffffff, 128, 3f, x5, 256,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0x0000800000000000; immval:64; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0004000000000000, 0x0000800000000000, 64, 3f, x5, 264,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0800000000000000; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0008000000000000, 0x0800000000000000, 128, 3f, x5, 272,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x4000000000000000; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0010000000000000, 0x4000000000000000, 2, 1b, x5, 280,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xffefffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0020000000000000, 0xffefffffffffffff, 1024, 3f, x5, 288,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffffffffffefff; immval:10; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0040000000000000, 0xffffffffffffefff, 10, 1b, x5, 296,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xfffff7ffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0080000000000000, 0xfffff7ffffffffff, 0, 1b, x5, 304,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0002000000000000; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0100000000000000, 0x0002000000000000, 4, 3f, x5, 312,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xffffffffbfffffff; immval:1366; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0200000000000000, 0xffffffffbfffffff, 1366, 1b, x5, 320,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x0000000000020000; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0400000000000000, 0x0000000000020000, 512, 3f, x5, 328,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000000000006; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0800000000000000, 0x0000000000000006, 8, 3f, x5, 336,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x0000000000008000; immval:64; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x1000000000000000, 0x0000000000008000, 64, 3f, x5, 344,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xffffffdfffffffff; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x2000000000000000, 0xffffffdfffffffff, 2, 3f, x5, 352,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x8000000000000000; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x4000000000000000, 0x8000000000000000, 512, 3f, x5, 360,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xc000000000000000; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x8000000000000000, 0xc000000000000000, 4, 1b, x5, 368,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0000000000080000; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffffe, 0x0000000000080000, 0, 1b, x5, 376,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0xffffffffffefffff; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffffd, 0xffffffffffefffff, 8, 1b, x5, 384,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0010000000000000; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffffb, 0x0010000000000000, 256, 3f, x5, 392,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xffffdfffffffffff; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffff7, 0xffffdfffffffffff, 512, 3f, x5, 400,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xf7ffffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffffffef, 0xf7ffffffffffffff, 128, 3f, x5, 408,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xfffffffffffffdff; immval:32; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffffffdf, 0xfffffffffffffdff, 32, 3f, x5, 416,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000000000040; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffffffbf, 0x0000000000000040, 8, 3f, x5, 424,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000200000000000; immval:16; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffeff, 0x0000200000000000, 16, 3f, x5, 432,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0080000000000000; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffdff, 0x0080000000000000, 512, 3f, x5, 440,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000000000000080; immval:10; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffbff, 0x0000000000000080, 10, 1b, x5, 448,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000200000000000; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffff7ff, 0x0000200000000000, 8, 1b, x5, 456,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xffdfffffffffffff; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffffff7f, 0xffdfffffffffffff, 256, 3f, x5, 464,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xffbfffffffffffff; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000010000000, 0xffbfffffffffffff, 128, 3f, x5, 472,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffa; op2val:0xfeffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffffa, 0xfeffffffffffffff, 4, 1b, x5, 480,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfdffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000800000000000, 0xfdffffffffffffff, 4, 3f, x5, 488,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xefffffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffbffffffffff, 0xefffffffffffffff, 6, 3f, x5, 496,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xbfffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffbffffff, 0xbfffffffffffffff, 4, 1b, x5, 504,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000001; op2val:0x7fffffffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000000001, 0x7fffffffffffffff, 4, 3f, x5, 512,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0x5555555555555555; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffeffffffff, 0x5555555555555555, 1024, 1b, x5, 520,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000000020000; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffffefff, 0x0000000000020000, 4, 3f, x5, 528,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xffffffefffffffff; immval:1366; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffffdfff, 0xffffffefffffffff, 1366, 1b, x5, 536,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xfffffeffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffffbfff, 0xfffffeffffffffff, 0, 3f, x5, 544,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xfffffffffdffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffff7fff, 0xfffffffffdffffff, 4, 1b, x5, 552,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0000010000000000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffeffff, 0x0000010000000000, 1024, 1b, x5, 560,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffffffffffffffa; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffdffff, 0xfffffffffffffffa, 256, 3f, x5, 568,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0002000000000000; immval:16; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffbffff, 0x0002000000000000, 16, 3f, x5, 576,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0xffffffffffffffbf; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffff7ffff, 0xffffffffffffffbf, 2, 3f, x5, 584,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0000000010000000; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffefffff, 0x0000000010000000, 8, 1b, x5, 592,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xfffffffeffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffdfffff, 0xfffffffeffffffff, 1024, 1b, x5, 600,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000000000000006; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffbfffff, 0x0000000000000006, 8, 3f, x5, 608,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xffdfffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffff7fffff, 0xffdfffffffffffff, 1024, 3f, x5, 616,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0000000000008000; immval:10; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffeffffff, 0x0000000000008000, 10, 1b, x5, 624,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0x0000000000100000; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffdffffff, 0x0000000000100000, 6, 1b, x5, 632,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xfffffffffffffbff; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffff7ffffff, 0xfffffffffffffbff, 0, 3f, x5, 640,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0xfffffffffffffffc; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffefffffff, 0xfffffffffffffffc, 1024, 3f, x5, 648,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xfffbffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffdfffffff, 0xfffbffffffffffff, 1024, 1b, x5, 656,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000004000000000; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffbfffffff, 0x0000004000000000, 0, 1b, x5, 664,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0000040000000000; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffff7fffffff, 0x0000040000000000, 6, 1b, x5, 672,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0000000000000100; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffdffffffff, 0x0000000000000100, 4, 3f, x5, 680,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xfffffffffffffffb; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffbffffffff, 0xfffffffffffffffb, 8, 3f, x5, 688,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000000100000; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffff7ffffffff, 0x0000000000100000, 0, 3f, x5, 696,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0100000000000000; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffefffffffff, 0x0100000000000000, 6, 3f, x5, 704,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xffffffffffffffdf; immval:16; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffdfffffffff, 0xffffffffffffffdf, 16, 3f, x5, 712,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000008000000; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffbfffffffff, 0x0000000008000000, 512, 3f, x5, 720,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0000000010000000; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffff7fffffffff, 0x0000000010000000, 0, 1b, x5, 728,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000000010; immval:32; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffeffffffffff, 0x0000000000000010, 32, 3f, x5, 736,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xfbffffffffffffff; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffdffffffffff, 0xfbffffffffffffff, 256, 3f, x5, 744,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xfffffffffbffffff; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffff7ffffffffff, 0xfffffffffbffffff, 6, 3f, x5, 752,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000000000000400; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffefffffffffff, 0x0000000000000400, 256, 3f, x5, 760,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0004000000000000; immval:32; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffdfffffffffff, 0x0004000000000000, 32, 3f, x5, 768,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xbfffffffffffffff; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffbfffffffffff, 0xbfffffffffffffff, 8, 3f, x5, 776,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffff7fffffffffff, 0xaaaaaaaaaaaaaaaa, 0, 3f, x5, 784,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xff7fffffffffffff; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffeffffffffffff, 0xff7fffffffffffff, 256, 3f, x5, 792,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0000040000000000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffdffffffffffff, 0x0000040000000000, 1024, 1b, x5, 800,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xfffffffffdffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffbffffffffffff, 0xfffffffffdffffff, 4, 1b, x5, 808,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000000000020; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfff7ffffffffffff, 0x0000000000000020, 2, 1b, x5, 816,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xffffffffffbfffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffefffffffffffff, 0xffffffffffbfffff, 4, 1b, x5, 824,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xfffffffffffff7ff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffbfffffffffffff, 0xfffffffffffff7ff, 1024, 1b, x5, 832,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xbfffffffffffffff; immval:10; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xff7fffffffffffff, 0xbfffffffffffffff, 10, 1b, x5, 840,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0xffffffbfffffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfeffffffffffffff, 0xffffffbfffffffff, 4, 3f, x5, 848,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x7fffffffffffffff; immval:32; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfdffffffffffffff, 0x7fffffffffffffff, 32, 3f, x5, 856,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000000008000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfbffffffffffffff, 0x0000000000008000, 1024, 1b, x5, 864,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000000200000000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xf7ffffffffffffff, 0x0000000200000000, 1024, 3f, x5, 872,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xffffffffffdfffff; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xefffffffffffffff, 0xffffffffffdfffff, 256, 3f, x5, 880,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xfffffffffffffffa; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xdfffffffffffffff, 0xfffffffffffffffa, 512, 3f, x5, 888,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0000000000000009; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xbfffffffffffffff, 0x0000000000000009, 256, 3f, x5, 896,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0000000000000100; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x7fffffffffffffff, 0x0000000000000100, 1024, 1b, x5, 904,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000000000001000; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x5555555555555555, 0x0000000000001000, 4, 1b, x5, 912,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfff7ffffffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfff7ffffffffffff, 1024, 3f, x5, 920,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0000000000000002; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffeffff, 0x0000000000000002, 8, 1b, x5, 928,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0x0000000000000004; immval:1366; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000001000, 0x0000000000000004, 1366, 1b, x5, 936,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000000000008; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffffffdf, 0x0000000000000008, 256, 3f, x5, 944,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0000000000000200; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffdfffffffffffff, 0x0000000000000200, 4, 3f, x5, 952,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000000004000; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000040000000, 0x0000000000004000, 2, 3f, x5, 960,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0x0000000000010000; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000004000, 0x0000000000010000, 8, 1b, x5, 968,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0000000000400000; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffbffff, 0x0000000000400000, 6, 1b, x5, 976,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000200; op2val:0x0000000000800000; immval:64; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000000200, 0x0000000000800000, 64, 3f, x5, 984,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0000000001000000; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffdffffffff, 0x0000000001000000, 128, 3f, x5, 992,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000010; op2val:0x0000000002000000; immval:64; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000000010, 0x0000000002000000, 64, 3f, x5, 1000,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000400000; op2val:0x0000000100000000; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000400000, 0x0000000100000000, 4, 1b, x5, 1008,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0x0000000800000000; immval:10; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000010000, 0x0000000800000000, 10, 1b, x5, 1016,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0000001000000000; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0010000000000000, 0x0000001000000000, 128, 3f, x5, 1024,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0x0000002000000000; immval:16; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000000006, 0x0000002000000000, 16, 3f, x5, 1032,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0x0000020000000000; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xff7fffffffffffff, 0x0000020000000000, 6, 1b, x5, 1040,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0x0020000000000000; immval:1366; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000010000, 0x0020000000000000, 1366, 1b, x5, 1048,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x0040000000000000; immval:64; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000008000000000, 0x0040000000000000, 64, 3f, x5, 1056,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0x0200000000000000; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000000003, 0x0200000000000000, 128, 3f, x5, 1064,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x1000000000000000; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffff7fffffffff, 0x1000000000000000, 4, 3f, x5, 1072,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x2000000000000000; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffeffffff, 0x2000000000000000, 8, 3f, x5, 1080,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xfffffffffffffffd; immval:10; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000001000000000, 0xfffffffffffffffd, 10, 1b, x5, 1088,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xfffffffffffffff7; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffeffffff, 0xfffffffffffffff7, 8, 1b, x5, 1096,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xffffffffffffffef; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000010000000, 0xffffffffffffffef, 0, 1b, x5, 1104,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xfffffffffffffeff; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffffb, 0xfffffffffffffeff, 6, 3f, x5, 1112,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xffffffffffffbfff; immval:16; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000200000, 0xffffffffffffbfff, 16, 3f, x5, 1120,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000010; op2val:0xffffffffffff7fff; immval:32; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000000010, 0xffffffffffff7fff, 32, 3f, x5, 1128,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfffffffffffeffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000800000000000, 0xfffffffffffeffff, 0, 1b, x5, 1136,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xfffffffffffdffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffff7ff, 0xfffffffffffdffff, 1024, 1b, x5, 1144,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffc; op2val:0x0000100000000000; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffffc, 0x0000100000000000, 2, 1b, x5, 1152,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffffffffff7ffff; immval:8; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffdffff, 0xfffffffffff7ffff, 8, 3f, x5, 1160,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xffffffffff7fffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffeffffffffff, 0xffffffffff7fffff, 1024, 3f, x5, 1168,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xfffffffffeffffff; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffff7, 0xfffffffffeffffff, 256, 3f, x5, 1176,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xfffffffff7ffffff; immval:128; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000200000000, 0xfffffffff7ffffff, 128, 3f, x5, 1184,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xffffffffefffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0002000000000000, 0xffffffffefffffff, 1024, 1b, x5, 1192,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xffffffffdfffffff; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xffffffffffffbfff, 0xffffffffdfffffff, 6, 1b, x5, 1200,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000200; op2val:0xffffffff7fffffff; immval:64; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000000200, 0xffffffff7fffffff, 64, 3f, x5, 1208,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0xfffffffdffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x5555555555555555, 0xfffffffdffffffff, 1024, 1b, x5, 1216,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xfffffffbffffffff; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffbffffff, 0xfffffffbffffffff, 1024, 1b, x5, 1224,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xfffffff7ffffffff; immval:256; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000008000, 0xfffffff7ffffffff, 256, 3f, x5, 1232,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xffffff7fffffffff; immval:64; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffbffffff, 0xffffff7fffffffff, 64, 3f, x5, 1240,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xfffffbffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xefffffffffffffff, 0xfffffbffffffffff, 2, 3f, x5, 1248,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000080000000000; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000100000000, 0x0000080000000000, 0, 3f, x5, 1256,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffa; op2val:0xffffefffffffffff; immval:0; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffffffffffffffa, 0xffffefffffffffff, 0, 1b, x5, 1264,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xffffbfffffffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000200000, 0xffffbfffffffffff, 4, 3f, x5, 1272,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0xfffeffffffffffff; immval:6; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfff7ffffffffffff, 0xfffeffffffffffff, 6, 1b, x5, 1280,0)

# opcode: bne, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffdffffffffffff; immval:2; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0xfffdffffffffffff, 0xfffdffffffffffff, 2, 3f, x5, 1288,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0xfffffffeffffffff; immval:4; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000000007, 0xfffffffeffffffff, 4, 1b, x5, 1296,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0x0000000000002000; immval:1024; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000000100, 0x0000000000002000, 1024, 1b, x5, 1304,0)

# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000002000; op2val:0xfffffffffffff7ff; immval:512; align: 0
TEST_BRANCH_OP(bne, x6, x10, x11, 0x0000000000002000, 0xfffffffffffff7ff, 512, 3f, x5, 1312,0)
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
    .fill 21*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 165*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
