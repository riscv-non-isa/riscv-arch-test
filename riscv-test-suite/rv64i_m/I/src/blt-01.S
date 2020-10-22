
#This assembly file tests the blt instruction of the RISC-V I extension for the blt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",blt)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 == rs2, rs1==x28, rs2==x28, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 144115188075855872, rs2_val == 6148914691236517205
# opcode: blt, op1:x28; op2:x28; op1val:0x0200000000000000; op2val:0x5555555555555555; immval:16; align:0
TEST_BRANCH_OP(blt, x5, x28, x28, 0x0200000000000000, 0x5555555555555555, 16, 3f, x2, 0,0)

# rs1 != rs2, rs1==x29, rs2==x12, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -2199023255553, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0
# opcode: blt, op1:x29; op2:x12; op1val:0x0200000000000000; op2val:0xfffffdffffffffff; immval:256; align:0
TEST_BRANCH_OP(blt, x5, x29, x12, 0x0200000000000000, 0xfffffdffffffffff, 256, 3f, x2, 8,0)

# rs1==x10, rs2==x31, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val == -2049
# opcode: blt, op1:x10; op2:x31; op1val:0xfffffffffffff7ff; op2val:0xfffffffffffffffc; immval:64; align:0
TEST_BRANCH_OP(blt, x5, x10, x31, 0xfffffffffffff7ff, 0xfffffffffffffffc, 64, 3f, x2, 16,0)

# rs1==x25, rs2==x18, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == 4611686018427387904, rs1_val == -35184372088833
# opcode: blt, op1:x25; op2:x18; op1val:0xffffdfffffffffff; op2val:0x4000000000000000; immval:1024; align:0
TEST_BRANCH_OP(blt, x5, x25, x18, 0xffffdfffffffffff, 0x4000000000000000, 1024, 1b, x2, 24,0)

# rs1==x26, rs2==x30, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == -9007199254740993, rs1_val == -9007199254740993
# opcode: blt, op1:x26; op2:x30; op1val:0xffdfffffffffffff; op2val:0xffdfffffffffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x5, x26, x30, 0xffdfffffffffffff, 0xffdfffffffffffff, 4, 3f, x2, 32,0)

# rs1==x23, rs2==x16, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == 4398046511104, rs2_val == 4398046511104
# opcode: blt, op1:x23; op2:x16; op1val:0x0000040000000000; op2val:0x0000040000000000; immval:8; align:0
TEST_BRANCH_OP(blt, x5, x23, x16, 0x0000040000000000, 0x0000040000000000, 8, 1b, x2, 40,0)

# rs1==x15, rs2==x8, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == 1152921504606846976, rs2_val == 576460752303423488
# opcode: blt, op1:x15; op2:x8; op1val:0x1000000000000000; op2val:0x0800000000000000; immval:0; align:0
TEST_BRANCH_OP(blt, x5, x15, x8, 0x1000000000000000, 0x0800000000000000, 0, 1b, x2, 48,0)

# rs1==x24, rs2==x14, rs1_val == 1, rs2_val == -33554433
# opcode: blt, op1:x24; op2:x14; op1val:0x0000000000000001; op2val:0xfffffffffdffffff; immval:32; align:0
TEST_BRANCH_OP(blt, x5, x24, x14, 0x0000000000000001, 0xfffffffffdffffff, 32, 3f, x2, 56,0)

# rs1==x8, rs2==x19, rs1_val == 2, rs2_val == -513
# opcode: blt, op1:x8; op2:x19; op1val:0x0000000000000002; op2val:0xfffffffffffffdff; immval:6; align:0
TEST_BRANCH_OP(blt, x5, x8, x19, 0x0000000000000002, 0xfffffffffffffdff, 6, 3f, x2, 64,0)

# rs1==x3, rs2==x6, rs1_val == 4, rs2_val == 131072
# opcode: blt, op1:x3; op2:x6; op1val:0x0000000000000004; op2val:0x0000000000020000; immval:8; align:0
TEST_BRANCH_OP(blt, x5, x3, x6, 0x0000000000000004, 0x0000000000020000, 8, 1b, x2, 72,0)

# rs1==x9, rs2==x1, rs1_val == 8, rs2_val == -262145
# opcode: blt, op1:x9; op2:x1; op1val:0x0000000000000008; op2val:0xfffffffffffbffff; immval:0; align:0
TEST_BRANCH_OP(blt, x5, x9, x1, 0x0000000000000008, 0xfffffffffffbffff, 0, 1b, x2, 80,0)

# rs1==x31, rs2==x11, rs1_val == 16, rs2_val == -8589934593
# opcode: blt, op1:x31; op2:x11; op1val:0x0000000000000010; op2val:0xfffffffdffffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x5, x31, x11, 0x0000000000000010, 0xfffffffdffffffff, 4, 1b, x2, 88,0)

# rs1==x6, rs2==x20, rs1_val == 32, rs2_val == 32768
# opcode: blt, op1:x6; op2:x20; op1val:0x0000000000000020; op2val:0x0000000000008000; immval:128; align:0
TEST_BRANCH_OP(blt, x5, x6, x20, 0x0000000000000020, 0x0000000000008000, 128, 3f, x2, 96,0)

# rs1==x1, rs2==x22, rs1_val == 64, rs2_val == 16
# opcode: blt, op1:x1; op2:x22; op1val:0x0000000000000040; op2val:0x0000000000000010; immval:8; align:0
TEST_BRANCH_OP(blt, x5, x1, x22, 0x0000000000000040, 0x0000000000000010, 8, 1b, x2, 104,0)

# rs1==x21, rs2==x0, rs1_val == 128, rs2_val == -34359738369
# opcode: blt, op1:x21; op2:x0; op1val:0x0000000000000080; op2val:0xfffffff7ffffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x5, x21, x0, 0x0000000000000080, 0xfffffff7ffffffff, 64, 3f, x2, 112,0)

# rs1==x18, rs2==x25, rs1_val == 256, rs2_val == 562949953421312
# opcode: blt, op1:x18; op2:x25; op1val:0x0000000000000100; op2val:0x0002000000000000; immval:6; align:0
TEST_BRANCH_OP(blt, x5, x18, x25, 0x0000000000000100, 0x0002000000000000, 6, 1b, x2, 120,0)

# rs1==x17, rs2==x24, rs1_val == 512, rs2_val == -72057594037927937
# opcode: blt, op1:x17; op2:x24; op1val:0x0000000000000200; op2val:0xfeffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x5, x17, x24, 0x0000000000000200, 0xfeffffffffffffff, 1024, 1b, x2, 128,0)

# rs1==x4, rs2==x27, rs1_val == 1024, rs2_val == 536870912
# opcode: blt, op1:x4; op2:x27; op1val:0x0000000000000400; op2val:0x0000000020000000; immval:0; align:0
TEST_BRANCH_OP(blt, x5, x4, x27, 0x0000000000000400, 0x0000000020000000, 0, 1b, x2, 136,0)

# rs1==x27, rs2==x21, rs1_val == 2048, rs2_val == -5
# opcode: blt, op1:x27; op2:x21; op1val:0x0000000000000800; op2val:0xfffffffffffffffb; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x27, x21, 0x0000000000000800, 0xfffffffffffffffb, 6, 3f, x2, 144,0)

# rs1==x30, rs2==x7, rs1_val == 4096, rs2_val == 2305843009213693952
# opcode: blt, op1:x30; op2:x7; op1val:0x0000000000001000; op2val:0x2000000000000000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x30, x7, 0x0000000000001000, 0x2000000000000000, 4, 1b, x2, 152,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x16, rs2==x10, rs1_val == 8192, 
# opcode: blt, op1:x16; op2:x10; op1val:0x0000000000002000; op2val:0xc000000000000000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x16, x10, 0x0000000000002000, 0xc000000000000000, 4, 3f, x1, 0,0)

# rs1==x12, rs2==x4, rs1_val == 16384, rs2_val == -281474976710657
# opcode: blt, op1:x12; op2:x4; op1val:0x0000000000004000; op2val:0xfffeffffffffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x12, x4, 0x0000000000004000, 0xfffeffffffffffff, 0, 3f, x1, 8,0)

# rs1==x0, rs2==x5, rs1_val == 32768, rs2_val == -2147483649
# opcode: blt, op1:x0; op2:x5; op1val:0x0000000000008000; op2val:0xffffffff7fffffff; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x0, x5, 0x0000000000008000, 0xffffffff7fffffff, 256, 3f, x1, 16,0)

# rs1==x20, rs2==x26, rs1_val == 65536, rs2_val == -32769
# opcode: blt, op1:x20; op2:x26; op1val:0x0000000000010000; op2val:0xffffffffffff7fff; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x20, x26, 0x0000000000010000, 0xffffffffffff7fff, 1024, 1b, x1, 24,0)

# rs1==x5, rs2==x13, rs1_val == 131072, 
# opcode: blt, op1:x5; op2:x13; op1val:0x0000000000020000; op2val:0x0002000000000000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x5, x13, 0x0000000000020000, 0x0002000000000000, 4, 1b, x1, 32,0)

# rs1==x19, rs2==x17, rs1_val == 262144, rs2_val == -1099511627777
# opcode: blt, op1:x19; op2:x17; op1val:0x0000000000040000; op2val:0xfffffeffffffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x19, x17, 0x0000000000040000, 0xfffffeffffffffff, 4, 3f, x1, 40,0)

# rs1==x7, rs2==x2, rs1_val == 524288, rs2_val == 1152921504606846976
# opcode: blt, op1:x7; op2:x2; op1val:0x0000000000080000; op2val:0x1000000000000000; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x7, x2, 0x0000000000080000, 0x1000000000000000, 2, 3f, x1, 48,0)

# rs1==x11, rs2==x9, rs1_val == 1048576, rs2_val == -17179869185
# opcode: blt, op1:x11; op2:x9; op1val:0x0000000000100000; op2val:0xfffffffbffffffff; immval:1366; align:0
TEST_BRANCH_OP(blt, x6, x11, x9, 0x0000000000100000, 0xfffffffbffffffff, 1366, 1b, x1, 56,0)

# rs1==x2, rs2==x29, rs1_val == 2097152, rs2_val == -8796093022209
# opcode: blt, op1:x2; op2:x29; op1val:0x0000000000200000; op2val:0xfffff7ffffffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x2, x29, 0x0000000000200000, 0xfffff7ffffffffff, 64, 3f, x1, 64,0)

# rs1==x13, rs2==x3, rs1_val == 4194304, rs2_val == 281474976710656
# opcode: blt, op1:x13; op2:x3; op1val:0x0000000000400000; op2val:0x0001000000000000; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x13, x3, 0x0000000000400000, 0x0001000000000000, 0, 3f, x1, 72,0)

# rs1==x14, rs2==x15, rs1_val == 8388608, 
# opcode: blt, op1:x14; op2:x15; op1val:0x0000000000800000; op2val:0x0000000000020000; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x14, x15, 0x0000000000800000, 0x0000000000020000, 1024, 3f, x1, 80,0)

# rs1==x22, rs2==x23, rs1_val == 16777216, rs2_val == 2097152
# opcode: blt, op1:x22; op2:x23; op1val:0x0000000001000000; op2val:0x0000000000200000; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x22, x23, 0x0000000001000000, 0x0000000000200000, 1024, 3f, x1, 88,0)

# rs1_val == 33554432, rs2_val == -6148914691236517206
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0xaaaaaaaaaaaaaaaa; immval:512; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000002000000, 0xaaaaaaaaaaaaaaaa, 512, 3f, x1, 96,0)

# rs1_val == 67108864, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0x1000000000000000; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000004000000, 0x1000000000000000, 256, 3f, x1, 104,0)

# rs1_val == 134217728, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xfffffffffffbffff; immval:1366; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000008000000, 0xfffffffffffbffff, 1366, 1b, x1, 112,0)

# rs1_val == 268435456, rs2_val == -1025
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfffffffffffffbff; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000010000000, 0xfffffffffffffbff, 8, 1b, x1, 120,0)

# rs1_val == 536870912, rs2_val == 274877906944
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000004000000000; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000020000000, 0x0000004000000000, 64, 3f, x1, 128,0)

# rs1_val == 1073741824, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000040000000000; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000040000000, 0x0000040000000000, 10, 1b, x1, 136,0)

# rs1_val == 2147483648, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xfffffdffffffffff; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000080000000, 0xfffffdffffffffff, 8, 3f, x1, 144,0)

# rs1_val == 4294967296, rs2_val == -33
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xffffffffffffffdf; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000100000000, 0xffffffffffffffdf, 64, 3f, x1, 152,0)

# rs1_val == 8589934592, rs2_val == -4097
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffffffffffffefff; immval:512; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000200000000, 0xffffffffffffefff, 512, 3f, x1, 160,0)

# rs1_val == 17179869184, rs2_val == -8193
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xffffffffffffdfff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000400000000, 0xffffffffffffdfff, 2, 1b, x1, 168,0)

# rs1_val == 34359738368, rs2_val == -274877906945
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xffffffbfffffffff; immval:1366; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000800000000, 0xffffffbfffffffff, 1366, 1b, x1, 176,0)

# rs1_val == 68719476736, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xfffff7ffffffffff; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000001000000000, 0xfffff7ffffffffff, 8, 3f, x1, 184,0)

# rs1_val == 137438953472, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0001000000000000; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000002000000000, 0x0001000000000000, 0, 3f, x1, 192,0)

# rs1_val == 274877906944, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xffffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000004000000000, 0xffffffffffffffff, 1024, 1b, x1, 200,0)

# rs1_val == 549755813888, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x2000000000000000; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000008000000000, 0x2000000000000000, 6, 1b, x1, 208,0)

# rs1_val == 1099511627776, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xfffffffffffffbff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000010000000000, 0xfffffffffffffbff, 2, 3f, x1, 216,0)

# rs1_val == 2199023255552, rs2_val == 17179869184
# opcode: blt, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0000000400000000; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000020000000000, 0x0000000400000000, 6, 3f, x1, 224,0)

# rs1_val == 8796093022208, rs2_val == -9223372036854775808
# opcode: blt, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0x8000000000000000; immval:1366; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000080000000000, 0x8000000000000000, 1366, 1b, x1, 232,0)

# rs1_val == 17592186044416, rs2_val == -67108865
# opcode: blt, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xfffffffffbffffff; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000100000000000, 0xfffffffffbffffff, 10, 1b, x1, 240,0)

# rs1_val == 35184372088832, rs2_val == 524288
# opcode: blt, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0x0000000000080000; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000200000000000, 0x0000000000080000, 64, 3f, x1, 248,0)

# rs1_val == 70368744177664, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfffffffffffffff8; immval:32; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000400000000000, 0xfffffffffffffff8, 32, 3f, x1, 256,0)

# rs1_val == 140737488355328, rs2_val == -140737488355329
# opcode: blt, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xffff7fffffffffff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000800000000000, 0xffff7fffffffffff, 2, 1b, x1, 264,0)

# rs1_val == 281474976710656, rs2_val == -65
# opcode: blt, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xffffffffffffffbf; immval:1366; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0001000000000000, 0xffffffffffffffbf, 1366, 1b, x1, 272,0)

# rs1_val == 562949953421312, rs2_val == 4194304
# opcode: blt, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000000000400000; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0002000000000000, 0x0000000000400000, 8, 3f, x1, 280,0)

# rs1_val == 1125899906842624, rs2_val == 137438953472
# opcode: blt, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0x0000002000000000; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0004000000000000, 0x0000002000000000, 6, 1b, x1, 288,0)

# rs1_val == 2251799813685248, rs2_val == 262144
# opcode: blt, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000000040000; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0008000000000000, 0x0000000000040000, 6, 3f, x1, 296,0)

# rs1_val == 4503599627370496, rs2_val == -2251799813685249
# opcode: blt, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfff7ffffffffffff; immval:16; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0010000000000000, 0xfff7ffffffffffff, 16, 3f, x1, 304,0)

# rs1_val == 9007199254740992, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000040000000000; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0020000000000000, 0x0000040000000000, 8, 1b, x1, 312,0)

# rs1_val == 18014398509481984, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffffbfffffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0040000000000000, 0xffffffbfffffffff, 4, 3f, x1, 320,0)

# rs1_val == 36028797018963968, rs2_val == 2251799813685248
# opcode: blt, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0008000000000000; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0080000000000000, 0x0008000000000000, 6, 3f, x1, 328,0)

# rs1_val == 72057594037927936, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000000009; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0100000000000000, 0x0000000000000009, 256, 3f, x1, 336,0)

# rs1_val == 288230376151711744, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xfffffffffffbffff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0400000000000000, 0xfffffffffffbffff, 2, 3f, x1, 344,0)

# rs1_val == 576460752303423488, rs2_val == -17592186044417
# opcode: blt, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xffffefffffffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0800000000000000, 0xffffefffffffffff, 64, 3f, x1, 352,0)

# rs1_val == 2305843009213693952, 
# opcode: blt, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xfffffffffffffffa; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x2000000000000000, 0xfffffffffffffffa, 0, 3f, x1, 360,0)

# rs1_val == 4611686018427387904, rs2_val == 2048
# opcode: blt, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0000000000000800; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x4000000000000000, 0x0000000000000800, 2, 1b, x1, 368,0)

# rs1_val == -9223372036854775808, rs2_val == 17592186044416
# opcode: blt, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0000100000000000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x8000000000000000, 0x0000100000000000, 4, 3f, x1, 376,0)

# rs1_val == -2, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0000000020000000; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffffe, 0x0000000020000000, 256, 3f, x1, 384,0)

# rs1_val == -3, rs2_val == -2049
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0xfffffffffffff7ff; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffffd, 0xfffffffffffff7ff, 6, 1b, x1, 392,0)

# rs1_val == -5, rs2_val == -129
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xffffffffffffff7f; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffffb, 0xffffffffffffff7f, 10, 1b, x1, 400,0)

# rs1_val == -9, rs2_val == -536870913
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xffffffffdfffffff; immval:32; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffff7, 0xffffffffdfffffff, 32, 3f, x1, 408,0)

# rs1_val == -17, rs2_val == -70368744177665
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xffffbfffffffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffffffef, 0xffffbfffffffffff, 4, 1b, x1, 416,0)

# rs1_val == -33, rs2_val == 4503599627370496
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0010000000000000; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffffffdf, 0x0010000000000000, 8, 3f, x1, 424,0)

# rs1_val == -65, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0xfffffffbffffffff; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffffffbf, 0xfffffffbffffffff, 6, 3f, x1, 432,0)

# rs1_val == -129, rs2_val == -549755813889
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xffffff7fffffffff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffffff7f, 0xffffff7fffffffff, 2, 1b, x1, 440,0)

# rs1_val == -257, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xfeffffffffffffff; immval:32; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffeff, 0xfeffffffffffffff, 32, 3f, x1, 448,0)

# rs1_val == -513, rs2_val == 268435456
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000010000000; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffdff, 0x0000000010000000, 2, 1b, x1, 456,0)

# rs1_val == -1025, rs2_val == 8192
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000000000002000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffbff, 0x0000000000002000, 4, 1b, x1, 464,0)

# rs2_val == -4503599627370497, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xffefffffffffffff; immval:32; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffeff, 0xffefffffffffffff, 32, 3f, x1, 472,0)

# rs2_val == -18014398509481985, rs1_val == -131073
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xffbfffffffffffff; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffdffff, 0xffbfffffffffffff, 10, 1b, x1, 480,0)

# rs2_val == -36028797018963969, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xff7fffffffffffff; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000001000000000, 0xff7fffffffffffff, 6, 3f, x1, 488,0)

# rs2_val == -144115188075855873, rs1_val == -1152921504606846977
# opcode: blt, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xfdffffffffffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xefffffffffffffff, 0xfdffffffffffffff, 64, 3f, x1, 496,0)

# rs2_val == -288230376151711745, 
# opcode: blt, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xfbffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x2000000000000000, 0xfbffffffffffffff, 0, 3f, x1, 504,0)

# rs2_val == -576460752303423489, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xf7ffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0200000000000000, 0xf7ffffffffffffff, 8, 3f, x1, 512,0)

# rs2_val == -1152921504606846977, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0xefffffffffffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000000040, 0xefffffffffffffff, 64, 3f, x1, 520,0)

# rs2_val == -2305843009213693953, rs1_val == -6148914691236517206
# opcode: blt, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xdfffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xdfffffffffffffff, 0, 1b, x1, 528,0)

# rs2_val == -4611686018427387905, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xbfffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0002000000000000, 0xbfffffffffffffff, 6, 3f, x1, 536,0)

# rs2_val == 9223372036854775807, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0x7fffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000020000, 0x7fffffffffffffff, 2, 1b, x1, 544,0)

# rs1_val == -4097, rs2_val == -524289
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xfffffffffff7ffff; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffffefff, 0xfffffffffff7ffff, 0, 1b, x1, 552,0)

# rs1_val == -8193, rs2_val == 8796093022208
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0000080000000000; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffffdfff, 0x0000080000000000, 6, 1b, x1, 560,0)

# rs1_val == -16385, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xfffffdffffffffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffffbfff, 0xfffffdffffffffff, 1024, 1b, x1, 568,0)

# rs1_val == -32769, rs2_val == 8388608
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000800000; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffff7fff, 0x0000000000800000, 256, 3f, x1, 576,0)

# rs1_val == -65537, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xffffefffffffffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffeffff, 0xffffefffffffffff, 1024, 3f, x1, 584,0)

# rs1_val == -262145, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0000000010000000; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffbffff, 0x0000000010000000, 1024, 1b, x1, 592,0)

# rs1_val == -524289, rs2_val == 8589934592
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000200000000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffff7ffff, 0x0000000200000000, 4, 3f, x1, 600,0)

# rs1_val == -1048577, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x8000000000000000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffefffff, 0x8000000000000000, 4, 3f, x1, 608,0)

# rs1_val == -2097153, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xfffffffffffffdff; immval:1366; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffdfffff, 0xfffffffffffffdff, 1366, 1b, x1, 616,0)

# rs1_val == -4194305, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000000000400000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffbfffff, 0x0000000000400000, 4, 1b, x1, 624,0)

# rs1_val == -8388609, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000000000020000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffff7fffff, 0x0000000000020000, 4, 1b, x1, 632,0)

# rs1_val == -16777217, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0000000000800000; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffeffffff, 0x0000000000800000, 2, 1b, x1, 640,0)

# rs1_val == -33554433, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xfbffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffdffffff, 0xfbffffffffffffff, 4, 1b, x1, 648,0)

# rs1_val == -67108865, rs2_val == 1048576
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0000000000100000; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffbffffff, 0x0000000000100000, 2, 1b, x1, 656,0)

# rs1_val == -134217729, rs2_val == 1073741824
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0000000040000000; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffff7ffffff, 0x0000000040000000, 64, 3f, x1, 664,0)

# rs1_val == -268435457, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0xfffffffffffffff9; immval:128; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffefffffff, 0xfffffffffffffff9, 128, 3f, x1, 672,0)

# rs1_val == -536870913, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0000000000000010; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffdfffffff, 0x0000000000000010, 6, 3f, x1, 680,0)

# rs1_val == -1073741825, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000000200000000; immval:1366; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffbfffffff, 0x0000000200000000, 1366, 1b, x1, 688,0)

# rs1_val == -2147483649, rs2_val == -1048577
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xffffffffffefffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffff7fffffff, 0xffffffffffefffff, 1024, 1b, x1, 696,0)

# rs1_val == -4294967297, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xffffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffeffffffff, 0xffffffffffffffff, 2, 1b, x1, 704,0)

# rs1_val == -8589934593, rs2_val == 64
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0000000000000040; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffdffffffff, 0x0000000000000040, 4, 3f, x1, 712,0)

# rs1_val == -17179869185, rs2_val == 34359738368
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000000800000000; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffbffffffff, 0x0000000800000000, 10, 1b, x1, 720,0)

# rs1_val == -34359738369, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000000000800; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffff7ffffffff, 0x0000000000000800, 1024, 1b, x1, 728,0)

# rs1_val == -68719476737, rs2_val == 549755813888
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0000008000000000; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffefffffffff, 0x0000008000000000, 64, 3f, x1, 736,0)

# rs1_val == -137438953473, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0000000000100000; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffdfffffffff, 0x0000000000100000, 64, 3f, x1, 744,0)

# rs1_val == -274877906945, rs2_val == 32
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000000000020; immval:16; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffbfffffffff, 0x0000000000000020, 16, 3f, x1, 752,0)

# rs1_val == -549755813889, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xffffefffffffffff; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffff7fffffffff, 0xffffefffffffffff, 10, 1b, x1, 760,0)

# rs1_val == -1099511627777, rs2_val == 1024
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000000400; immval:16; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffeffffffffff, 0x0000000000000400, 16, 3f, x1, 768,0)

# rs1_val == -2199023255553, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x7fffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffdffffffffff, 0x7fffffffffffffff, 4, 3f, x1, 776,0)

# rs1_val == -4398046511105, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfff7ffffffffffff; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffbffffffffff, 0xfff7ffffffffffff, 10, 1b, x1, 784,0)

# rs1_val == -8796093022209, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffff7ffffffffff, 0xaaaaaaaaaaaaaaaa, 4, 3f, x1, 792,0)

# rs1_val == -17592186044417, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x2000000000000000; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffefffffffffff, 0x2000000000000000, 256, 3f, x1, 800,0)

# rs1_val == -70368744177665, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xfffffffffff7ffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffbfffffffffff, 0xfffffffffff7ffff, 1024, 3f, x1, 808,0)

# rs1_val == -140737488355329, rs2_val == 33554432
# opcode: blt, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000000002000000; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffff7fffffffffff, 0x0000000002000000, 2, 1b, x1, 816,0)

# rs1_val == -281474976710657, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xffffffffffffff7f; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffeffffffffffff, 0xffffffffffffff7f, 4, 1b, x1, 824,0)

# rs1_val == -562949953421313, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0000000000000003; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffdffffffffffff, 0x0000000000000003, 2, 3f, x1, 832,0)

# rs1_val == -18014398509481985, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x5555555555555555; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffbfffffffffffff, 0x5555555555555555, 64, 3f, x1, 840,0)

# rs1_val == -36028797018963969, 
# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xffffffbfffffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xff7fffffffffffff, 0xffffffbfffffffff, 64, 3f, x1, 848,0)

# rs1_val == -72057594037927937, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0xffbfffffffffffff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfeffffffffffffff, 0xffbfffffffffffff, 2, 1b, x1, 856,0)

# rs1_val == -144115188075855873, rs2_val == 4
# opcode: blt, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000000000000004; immval:512; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfdffffffffffffff, 0x0000000000000004, 512, 3f, x1, 864,0)

# rs1_val == -288230376151711745, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0xfffffffffffffbff; immval:128; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfbffffffffffffff, 0xfffffffffffffbff, 128, 3f, x1, 872,0)

# rs1_val == -576460752303423489, rs2_val == -68719476737
# opcode: blt, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xffffffefffffffff; immval:512; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xf7ffffffffffffff, 0xffffffefffffffff, 512, 3f, x1, 880,0)

# rs1_val == -2305843009213693953, 
# opcode: blt, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000000000000020; immval:1366; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xdfffffffffffffff, 0x0000000000000020, 1366, 1b, x1, 888,0)

# rs1_val == -4611686018427387905, rs2_val == 35184372088832
# opcode: blt, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0000200000000000; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xbfffffffffffffff, 0x0000200000000000, 2, 3f, x1, 896,0)

# rs1_val == 9223372036854775807, 
# opcode: blt, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x8000000000000000; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x7fffffffffffffff, 0x8000000000000000, 2, 3f, x1, 904,0)

# rs1_val == 6148914691236517205, 
# opcode: blt, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0xfffffeffffffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x5555555555555555, 0xfffffeffffffffff, 0, 3f, x1, 912,0)

# rs2_val == 1, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000000000001; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffffffffdf, 0x0000000000000001, 256, 3f, x1, 920,0)

# rs2_val == 2, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffffc; op2val:0x0000000000000002; immval:1366; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffffc, 0x0000000000000002, 1366, 1b, x1, 928,0)

# rs2_val == 8, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0x0000000000000008; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000000003, 0x0000000000000008, 64, 3f, x1, 936,0)

# rs2_val == 128, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000800000; op2val:0x0000000000000080; immval:16; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000800000, 0x0000000000000080, 16, 3f, x1, 944,0)

# rs2_val == 256, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0x0000000000000100; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000000800, 0x0000000000000100, 10, 1b, x1, 952,0)

# rs2_val == 512, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0x0000000000000200; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000080000000000, 0x0000000000000200, 1024, 3f, x1, 960,0)

# rs2_val == 4096, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000001000; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0100000000000000, 0x0000000000001000, 2, 1b, x1, 968,0)

# rs2_val == 16384, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0x0000000000004000; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000001000, 0x0000000000004000, 256, 3f, x1, 976,0)

# rs2_val == 65536, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000000000010000; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0002000000000000, 0x0000000000010000, 1024, 1b, x1, 984,0)

# rs2_val == 16777216, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000001000000; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000004000000000, 0x0000000001000000, 10, 1b, x1, 992,0)

# rs2_val == 67108864, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000000004000000; immval:512; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0002000000000000, 0x0000000004000000, 512, 3f, x1, 1000,0)

# rs2_val == 134217728, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000000008000000; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffdffff, 0x0000000008000000, 0, 1b, x1, 1008,0)

# rs2_val == 2147483648, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0x0000000080000000; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000001000, 0x0000000080000000, 1024, 3f, x1, 1016,0)

# rs2_val == 4294967296, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000002000; op2val:0x0000000100000000; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000002000, 0x0000000100000000, 0, 1b, x1, 1024,0)

# rs2_val == 68719476736, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0x0000001000000000; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000001000000, 0x0000001000000000, 8, 3f, x1, 1032,0)

# rs2_val == 1099511627776, 
# opcode: blt, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000010000000000; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x5555555555555555, 0x0000010000000000, 8, 1b, x1, 1040,0)

# rs2_val == 2199023255552, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0000020000000000; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffdfffffffff, 0x0000020000000000, 6, 1b, x1, 1048,0)

# rs2_val == 70368744177664, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000400000000000; immval:128; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffeff, 0x0000400000000000, 128, 3f, x1, 1056,0)

# rs2_val == 140737488355328, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000800000000000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0002000000000000, 0x0000800000000000, 4, 1b, x1, 1064,0)

# rs2_val == 9007199254740992, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0020000000000000; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfbffffffffffffff, 0x0020000000000000, 1024, 1b, x1, 1072,0)

# rs2_val == 18014398509481984, 
# opcode: blt, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0040000000000000; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xbfffffffffffffff, 0x0040000000000000, 1024, 3f, x1, 1080,0)

# rs2_val == 36028797018963968, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffff6; op2val:0x0080000000000000; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffff6, 0x0080000000000000, 64, 3f, x1, 1088,0)

# rs2_val == 72057594037927936, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffff6; op2val:0x0100000000000000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffff6, 0x0100000000000000, 4, 3f, x1, 1096,0)

# rs2_val == 144115188075855872, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0200000000000000; immval:128; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0080000000000000, 0x0200000000000000, 128, 3f, x1, 1104,0)

# rs2_val == 288230376151711744, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0400000000000000; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffff7fffff, 0x0400000000000000, 2, 3f, x1, 1112,0)

# rs2_val == -2, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0xfffffffffffffffe; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffffd, 0xfffffffffffffffe, 0, 3f, x1, 1120,0)

# rs2_val == -3, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xfffffffffffffffd; immval:10; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000080000000000, 0xfffffffffffffffd, 10, 1b, x1, 1128,0)

# rs2_val == -9, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xfffffffffffffff7; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000100000000, 0xfffffffffffffff7, 2, 1b, x1, 1136,0)

# rs2_val == -17, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xffffffffffffffef; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000000006, 0xffffffffffffffef, 0, 3f, x1, 1144,0)

# rs2_val == -257, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffff6; op2val:0xfffffffffffffeff; immval:8; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffff6, 0xfffffffffffffeff, 8, 1b, x1, 1152,0)

# rs2_val == -16385, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0xffffffffffffbfff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000040000000, 0xffffffffffffbfff, 2, 3f, x1, 1160,0)

# rs2_val == -65537, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xfffffffffffeffff; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffeffff, 0xfffffffffffeffff, 256, 3f, x1, 1168,0)

# rs2_val == -131073, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfffffffffffdffff; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0010000000000000, 0xfffffffffffdffff, 0, 3f, x1, 1176,0)

# rs2_val == -2097153, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xffffffffffdfffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffdff, 0xffffffffffdfffff, 1024, 3f, x1, 1184,0)

# rs2_val == -562949953421313, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0xfffdffffffffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000001000, 0xfffdffffffffffff, 64, 3f, x1, 1192,0)

# rs2_val == -4194305, rs1_val == -1125899906842625
# opcode: blt, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xffffffffffbfffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffbffffffffffff, 0xffffffffffbfffff, 1024, 3f, x1, 1200,0)

# rs2_val == -8388609, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffffffffff7fffff; immval:6; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffdffffff, 0xffffffffff7fffff, 6, 3f, x1, 1208,0)

# rs2_val == -16777217, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0xfffffffffeffffff; immval:16; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000002000000, 0xfffffffffeffffff, 16, 3f, x1, 1216,0)

# rs2_val == -134217729, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xfffffffff7ffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffffffffffffeff, 0xfffffffff7ffffff, 0, 3f, x1, 1224,0)

# rs2_val == -268435457, 
# opcode: blt, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xffffffffefffffff; immval:16; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x4000000000000000, 0xffffffffefffffff, 16, 3f, x1, 1232,0)

# rs2_val == -1073741825, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xffffffffbfffffff; immval:2; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffbfffffffffffff, 0xffffffffbfffffff, 2, 3f, x1, 1240,0)

# rs2_val == -4294967297, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfffffffeffffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000010000000, 0xfffffffeffffffff, 64, 3f, x1, 1248,0)

# rs2_val == -137438953473, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xffffffdfffffffff; immval:128; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffffffffff7fffff, 0xffffffdfffffffff, 128, 3f, x1, 1256,0)

# rs2_val == -4398046511105, 
# opcode: blt, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xfffffbffffffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x4000000000000000, 0xfffffbffffffffff, 0, 3f, x1, 1264,0)

# rs2_val == -35184372088833, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0xffffdfffffffffff; immval:32; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000000100, 0xffffdfffffffffff, 32, 3f, x1, 1272,0)

# rs2_val == 1125899906842624, 
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0x0004000000000000; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000000080, 0x0004000000000000, 64, 3f, x1, 1280,0)

# rs1_val == -2251799813685249, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000001000000; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfff7ffffffffffff, 0x0000000001000000, 4, 3f, x1, 1288,0)

# rs1_val == -4503599627370497, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffffffffff7ffff; immval:4; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xffefffffffffffff, 0xfffffffffff7ffff, 4, 3f, x1, 1296,0)

# rs2_val == -1125899906842625, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffbffffffffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0xfffdffffffffffff, 0xfffbffffffffffff, 0, 1b, x1, 1304,0)

# rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 144115188075855872, rs2_val == 6148914691236517205
# opcode: blt, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x5555555555555555; immval:16; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0200000000000000, 0x5555555555555555, 16, 3f, x1, 1312,0)

# rs1_val == 128, rs2_val == -34359738369
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0xfffffff7ffffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000000080, 0xfffffff7ffffffff, 64, 3f, x1, 1320,0)

# rs1_val == 32768, rs2_val == -2147483649
# opcode: blt, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xffffffff7fffffff; immval:256; align:0
TEST_BRANCH_OP(blt, x6, x10, x11, 0x0000000000008000, 0xffffffff7fffffff, 256, 3f, x1, 1328,0)
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
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 167*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
