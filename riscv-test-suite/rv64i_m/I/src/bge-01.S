
#This assembly file tests the bge instruction of the RISC-V I extension for the bge covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bge)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 == rs2, rs1==x13, rs2==x13, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 8388608, rs2_val == 536870912
# opcode: bge, op1:x13; op2:x13; op1val:0x0000000000800000; op2val:0x0000000020000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x5, x13, x13, 0x0000000000800000, 0x0000000020000000, 1024, 3f, x2, 0,0)

# rs1 != rs2, rs1==x8, rs2==x26, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -288230376151711745, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 8192
# opcode: bge, op1:x8; op2:x26; op1val:0x0000000000002000; op2val:0xfbffffffffffffff; immval:64; align:0
TEST_BRANCH_OP(bge, x5, x8, x26, 0x0000000000002000, 0xfbffffffffffffff, 64, 3f, x2, 8,0)

# rs1==x19, rs2==x3, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -72057594037927937, rs1_val == -33, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0
# opcode: bge, op1:x19; op2:x3; op1val:0xffffffffffffffdf; op2val:0xfeffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x5, x19, x3, 0xffffffffffffffdf, 0xfeffffffffffffff, 1024, 1b, x2, 16,0)

# rs1==x10, rs2==x6, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val == -131073, rs2_val == 34359738368
# opcode: bge, op1:x10; op2:x6; op1val:0xfffffffffffdffff; op2val:0x0000000800000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x5, x10, x6, 0xfffffffffffdffff, 0x0000000800000000, 1024, 3f, x2, 24,0)

# rs1==x31, rs2==x17, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, 
# opcode: bge, op1:x31; op2:x17; op1val:0x0000000000000006; op2val:0x0000000000000006; immval:1024; align:0
TEST_BRANCH_OP(bge, x5, x31, x17, 0x0000000000000006, 0x0000000000000006, 1024, 3f, x2, 32,0)

# rs1==x30, rs2==x19, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == -268435457, rs1_val == -268435457
# opcode: bge, op1:x30; op2:x19; op1val:0xffffffffefffffff; op2val:0xffffffffefffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x5, x30, x19, 0xffffffffefffffff, 0xffffffffefffffff, 4, 1b, x2, 40,0)

# rs1==x18, rs2==x16, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == 6148914691236517205, rs1_val == 8796093022208
# opcode: bge, op1:x18; op2:x16; op1val:0x0000080000000000; op2val:0x5555555555555555; immval:8; align:0
TEST_BRANCH_OP(bge, x5, x18, x16, 0x0000080000000000, 0x5555555555555555, 8, 1b, x2, 48,0)

# rs1==x1, rs2==x30, rs1_val == 1, rs2_val == -8193
# opcode: bge, op1:x1; op2:x30; op1val:0x0000000000000001; op2val:0xffffffffffffdfff; immval:0; align:0
TEST_BRANCH_OP(bge, x5, x1, x30, 0x0000000000000001, 0xffffffffffffdfff, 0, 3f, x2, 56,0)

# rs1==x3, rs2==x22, rs1_val == 2, rs2_val == 72057594037927936
# opcode: bge, op1:x3; op2:x22; op1val:0x0000000000000002; op2val:0x0100000000000000; immval:4; align:0
TEST_BRANCH_OP(bge, x5, x3, x22, 0x0000000000000002, 0x0100000000000000, 4, 1b, x2, 64,0)

# rs1==x6, rs2==x24, rs1_val == 4, rs2_val == -9
# opcode: bge, op1:x6; op2:x24; op1val:0x0000000000000004; op2val:0xfffffffffffffff7; immval:4; align:0
TEST_BRANCH_OP(bge, x5, x6, x24, 0x0000000000000004, 0xfffffffffffffff7, 4, 1b, x2, 72,0)

# rs1==x28, rs2==x4, rs1_val == 8, 
# opcode: bge, op1:x28; op2:x4; op1val:0x0000000000000008; op2val:0xfffffffffffffff9; immval:512; align:0
TEST_BRANCH_OP(bge, x5, x28, x4, 0x0000000000000008, 0xfffffffffffffff9, 512, 3f, x2, 80,0)

# rs1==x26, rs2==x12, rs1_val == 16, rs2_val == -16777217
# opcode: bge, op1:x26; op2:x12; op1val:0x0000000000000010; op2val:0xfffffffffeffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x5, x26, x12, 0x0000000000000010, 0xfffffffffeffffff, 4, 1b, x2, 88,0)

# rs1==x14, rs2==x21, rs1_val == 32, 
# opcode: bge, op1:x14; op2:x21; op1val:0x0000000000000020; op2val:0x0000000000000003; immval:1366; align:0
TEST_BRANCH_OP(bge, x5, x14, x21, 0x0000000000000020, 0x0000000000000003, 1366, 1b, x2, 96,0)

# rs1==x7, rs2==x25, rs1_val == 64, 
# opcode: bge, op1:x7; op2:x25; op1val:0x0000000000000040; op2val:0xfffffffffffffff6; immval:2; align:0
TEST_BRANCH_OP(bge, x5, x7, x25, 0x0000000000000040, 0xfffffffffffffff6, 2, 3f, x2, 104,0)

# rs1==x23, rs2==x9, rs1_val == 128, rs2_val == -2097153
# opcode: bge, op1:x23; op2:x9; op1val:0x0000000000000080; op2val:0xffffffffffdfffff; immval:1366; align:0
TEST_BRANCH_OP(bge, x5, x23, x9, 0x0000000000000080, 0xffffffffffdfffff, 1366, 1b, x2, 112,0)

# rs1==x22, rs2==x31, rs1_val == 256, rs2_val == 2305843009213693952
# opcode: bge, op1:x22; op2:x31; op1val:0x0000000000000100; op2val:0x2000000000000000; immval:256; align:0
TEST_BRANCH_OP(bge, x5, x22, x31, 0x0000000000000100, 0x2000000000000000, 256, 3f, x2, 120,0)

# rs1==x11, rs2==x0, rs1_val == 512, rs2_val == 9007199254740992
# opcode: bge, op1:x11; op2:x0; op1val:0x0000000000000200; op2val:0x0020000000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x5, x11, x0, 0x0000000000000200, 0x0020000000000000, 1024, 3f, x2, 128,0)

# rs1==x29, rs2==x15, rs1_val == 1024, rs2_val == 131072
# opcode: bge, op1:x29; op2:x15; op1val:0x0000000000000400; op2val:0x0000000000020000; immval:128; align:0
TEST_BRANCH_OP(bge, x5, x29, x15, 0x0000000000000400, 0x0000000000020000, 128, 3f, x2, 136,0)

# rs1==x0, rs2==x23, rs1_val == 2048, rs2_val == 134217728
# opcode: bge, op1:x0; op2:x23; op1val:0x0000000000000800; op2val:0x0000000008000000; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x0, x23, 0x0000000000000800, 0x0000000008000000, 4, 1b, x2, 144,0)

# rs1==x15, rs2==x29, rs1_val == 4096, 
# opcode: bge, op1:x15; op2:x29; op1val:0x0000000000001000; op2val:0x0000000020000000; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x15, x29, 0x0000000000001000, 0x0000000020000000, 2, 1b, x2, 152,0)

# rs1==x4, rs2==x14, rs1_val == 16384, rs2_val == -4097
# opcode: bge, op1:x4; op2:x14; op1val:0x0000000000004000; op2val:0xffffffffffffefff; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x4, x14, 0x0000000000004000, 0xffffffffffffefff, 8, 3f, x2, 160,0)

# rs1==x24, rs2==x27, rs1_val == 32768, rs2_val == 1048576
# opcode: bge, op1:x24; op2:x27; op1val:0x0000000000008000; op2val:0x0000000000100000; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x24, x27, 0x0000000000008000, 0x0000000000100000, 512, 3f, x2, 168,0)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x27, rs2==x8, rs1_val == 65536, rs2_val == -5
# opcode: bge, op1:x27; op2:x8; op1val:0x0000000000010000; op2val:0xfffffffffffffffb; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x27, x8, 0x0000000000010000, 0xfffffffffffffffb, 2, 3f, x3, 0,0)

# rs1==x20, rs2==x1, rs1_val == 131072, 
# opcode: bge, op1:x20; op2:x1; op1val:0x0000000000020000; op2val:0x0000000800000000; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x20, x1, 0x0000000000020000, 0x0000000800000000, 2, 3f, x3, 8,0)

# rs1==x9, rs2==x28, rs1_val == 262144, rs2_val == 2
# opcode: bge, op1:x9; op2:x28; op1val:0x0000000000040000; op2val:0x0000000000000002; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x9, x28, 0x0000000000040000, 0x0000000000000002, 1024, 1b, x3, 16,0)

# rs1==x12, rs2==x20, rs1_val == 524288, rs2_val == 549755813888
# opcode: bge, op1:x12; op2:x20; op1val:0x0000000000080000; op2val:0x0000008000000000; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x12, x20, 0x0000000000080000, 0x0000008000000000, 2, 1b, x3, 24,0)

# rs1==x2, rs2==x18, rs1_val == 1048576, rs2_val == -17
# opcode: bge, op1:x2; op2:x18; op1val:0x0000000000100000; op2val:0xffffffffffffffef; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x2, x18, 0x0000000000100000, 0xffffffffffffffef, 8, 1b, x3, 32,0)

# rs1==x25, rs2==x5, rs1_val == 2097152, 
# opcode: bge, op1:x25; op2:x5; op1val:0x0000000000200000; op2val:0x0000000000000000; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x25, x5, 0x0000000000200000, 0x0000000000000000, 8, 3f, x3, 40,0)

# rs1==x17, rs2==x2, rs1_val == 4194304, rs2_val == -2147483649
# opcode: bge, op1:x17; op2:x2; op1val:0x0000000000400000; op2val:0xffffffff7fffffff; immval:10; align:0
TEST_BRANCH_OP(bge, x6, x17, x2, 0x0000000000400000, 0xffffffff7fffffff, 10, 1b, x3, 48,0)

# rs1==x5, rs2==x7, rs1_val == 16777216, rs2_val == -274877906945
# opcode: bge, op1:x5; op2:x7; op1val:0x0000000001000000; op2val:0xffffffbfffffffff; immval:64; align:0
TEST_BRANCH_OP(bge, x6, x5, x7, 0x0000000001000000, 0xffffffbfffffffff, 64, 3f, x3, 56,0)

# rs1==x16, rs2==x10, rs1_val == 33554432, rs2_val == -9223372036854775808
# opcode: bge, op1:x16; op2:x10; op1val:0x0000000002000000; op2val:0x8000000000000000; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x16, x10, 0x0000000002000000, 0x8000000000000000, 1366, 1b, x3, 64,0)

# rs1==x21, rs2==x11, rs1_val == 67108864, 
# opcode: bge, op1:x21; op2:x11; op1val:0x0000000004000000; op2val:0x0100000000000000; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x21, x11, 0x0000000004000000, 0x0100000000000000, 2, 1b, x3, 72,0)

# rs1_val == 134217728, rs2_val == -32769
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xffffffffffff7fff; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000008000000, 0xffffffffffff7fff, 8, 3f, x3, 80,0)

# rs1_val == 268435456, rs2_val == -2251799813685249
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfff7ffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000010000000, 0xfff7ffffffffffff, 0, 1b, x3, 88,0)

# rs1_val == 536870912, rs2_val == 17179869184
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000000400000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000020000000, 0x0000000400000000, 1024, 1b, x3, 96,0)

# rs1_val == 1073741824, rs2_val == 2147483648
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000080000000; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000040000000, 0x0000000080000000, 0, 3f, x3, 104,0)

# rs1_val == 2147483648, rs2_val == 4294967296
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000000100000000; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000080000000, 0x0000000100000000, 16, 3f, x3, 112,0)

# rs1_val == 4294967296, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000000000000005; immval:64; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000100000000, 0x0000000000000005, 64, 3f, x3, 120,0)

# rs1_val == 8589934592, rs2_val == -1025
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xfffffffffffffbff; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000200000000, 0xfffffffffffffbff, 1366, 1b, x3, 128,0)

# rs1_val == 17179869184, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x2000000000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000400000000, 0x2000000000000000, 6, 1b, x3, 136,0)

# rs1_val == 34359738368, rs2_val == 16777216
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x0000000001000000; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000800000000, 0x0000000001000000, 0, 3f, x3, 144,0)

# rs1_val == 68719476736, rs2_val == -1048577
# opcode: bge, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xffffffffffefffff; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000001000000000, 0xffffffffffefffff, 4, 3f, x3, 152,0)

# rs1_val == 137438953472, rs2_val == -2
# opcode: bge, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xfffffffffffffffe; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000002000000000, 0xfffffffffffffffe, 4, 1b, x3, 160,0)

# rs1_val == 274877906944, rs2_val == -4294967297
# opcode: bge, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xfffffffeffffffff; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000004000000000, 0xfffffffeffffffff, 128, 3f, x3, 168,0)

# rs1_val == 549755813888, rs2_val == -262145
# opcode: bge, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xfffffffffffbffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000008000000000, 0xfffffffffffbffff, 1024, 3f, x3, 176,0)

# rs1_val == 1099511627776, rs2_val == -2305843009213693953
# opcode: bge, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xdfffffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000010000000000, 0xdfffffffffffffff, 512, 3f, x3, 184,0)

# rs1_val == 2199023255552, rs2_val == -4503599627370497
# opcode: bge, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xffefffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000020000000000, 0xffefffffffffffff, 128, 3f, x3, 192,0)

# rs1_val == 4398046511104, rs2_val == -9007199254740993
# opcode: bge, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xffdfffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000040000000000, 0xffdfffffffffffff, 8, 1b, x3, 200,0)

# rs1_val == 17592186044416, rs2_val == 274877906944
# opcode: bge, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000004000000000; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000100000000000, 0x0000004000000000, 0, 3f, x3, 208,0)

# rs1_val == 35184372088832, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0x0000000000000002; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000200000000000, 0x0000000000000002, 0, 3f, x3, 216,0)

# rs1_val == 70368744177664, rs2_val == 68719476736
# opcode: bge, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000001000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000400000000000, 0x0000001000000000, 1024, 3f, x3, 224,0)

# rs1_val == 140737488355328, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0000004000000000; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000800000000000, 0x0000004000000000, 1366, 1b, x3, 232,0)

# rs1_val == 281474976710656, rs2_val == -4398046511105
# opcode: bge, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xfffffbffffffffff; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0001000000000000, 0xfffffbffffffffff, 512, 3f, x3, 240,0)

# rs1_val == 562949953421312, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xffffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0002000000000000, 0xffffffffffffffff, 1024, 3f, x3, 248,0)

# rs1_val == 1125899906842624, rs2_val == -70368744177665
# opcode: bge, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xffffbfffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0004000000000000, 0xffffbfffffffffff, 1024, 1b, x3, 256,0)

# rs1_val == 2251799813685248, rs2_val == 524288
# opcode: bge, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000000080000; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0008000000000000, 0x0000000000080000, 512, 3f, x3, 264,0)

# rs1_val == 4503599627370496, rs2_val == 2251799813685248
# opcode: bge, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0008000000000000; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0010000000000000, 0x0008000000000000, 8, 1b, x3, 272,0)

# rs1_val == 9007199254740992, rs2_val == 288230376151711744
# opcode: bge, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0400000000000000; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0020000000000000, 0x0400000000000000, 4, 3f, x3, 280,0)

# rs1_val == 18014398509481984, rs2_val == -524289
# opcode: bge, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xfffffffffff7ffff; immval:32; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0040000000000000, 0xfffffffffff7ffff, 32, 3f, x3, 288,0)

# rs1_val == 36028797018963968, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000000001000000; immval:32; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0080000000000000, 0x0000000001000000, 32, 3f, x3, 296,0)

# rs1_val == 72057594037927936, rs2_val == 9223372036854775807
# opcode: bge, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x7fffffffffffffff; immval:10; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0100000000000000, 0x7fffffffffffffff, 10, 1b, x3, 304,0)

# rs1_val == 144115188075855872, rs2_val == -17592186044417
# opcode: bge, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xffffefffffffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0200000000000000, 0xffffefffffffffff, 4, 1b, x3, 312,0)

# rs1_val == 288230376151711744, rs2_val == 2097152
# opcode: bge, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x0000000000200000; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0400000000000000, 0x0000000000200000, 8, 3f, x3, 320,0)

# rs1_val == 576460752303423488, rs2_val == 36028797018963968
# opcode: bge, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0080000000000000; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0800000000000000, 0x0080000000000000, 0, 1b, x3, 328,0)

# rs1_val == 1152921504606846976, 
# opcode: bge, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xffffffff7fffffff; immval:10; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x1000000000000000, 0xffffffff7fffffff, 10, 1b, x3, 336,0)

# rs1_val == 2305843009213693952, rs2_val == -549755813889
# opcode: bge, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xffffff7fffffffff; immval:64; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x2000000000000000, 0xffffff7fffffffff, 64, 3f, x3, 344,0)

# rs1_val == 4611686018427387904, 
# opcode: bge, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0080000000000000; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x4000000000000000, 0x0080000000000000, 2, 3f, x3, 352,0)

# rs1_val == -9223372036854775808, rs2_val == 8796093022208
# opcode: bge, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0000080000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x8000000000000000, 0x0000080000000000, 1024, 1b, x3, 360,0)

# rs1_val == -2, rs2_val == 1152921504606846976
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x1000000000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffffe, 0x1000000000000000, 6, 3f, x3, 368,0)

# rs1_val == -3, rs2_val == -16385
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0xffffffffffffbfff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffffd, 0xffffffffffffbfff, 2, 3f, x3, 376,0)

# rs1_val == -5, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xfeffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffffb, 0xfeffffffffffffff, 128, 3f, x3, 384,0)

# rs1_val == -9, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xffffff7fffffffff; immval:32; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffff7, 0xffffff7fffffffff, 32, 3f, x3, 392,0)

# rs1_val == -17, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xffffbfffffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffffffef, 0xffffbfffffffffff, 2, 3f, x3, 400,0)

# rs1_val == -65, rs2_val == 70368744177664
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000400000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffffffbf, 0x0000400000000000, 1024, 1b, x3, 408,0)

# rs1_val == -129, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0x0000000000000006; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffffff7f, 0x0000000000000006, 1024, 3f, x3, 416,0)

# rs1_val == -257, rs2_val == -8796093022209
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xfffff7ffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffeff, 0xfffff7ffffffffff, 0, 3f, x3, 424,0)

# rs1_val == -513, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000000000009; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffdff, 0x0000000000000009, 1024, 3f, x3, 432,0)

# rs1_val == -1025, rs2_val == 35184372088832
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000200000000000; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffbff, 0x0000200000000000, 0, 3f, x3, 440,0)

# rs2_val == -18014398509481985, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xffbfffffffffffff; immval:32; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000800000000, 0xffbfffffffffffff, 32, 3f, x3, 448,0)

# rs2_val == -36028797018963969, rs1_val == -16385
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xff7fffffffffffff; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffffbfff, 0xff7fffffffffffff, 16, 3f, x3, 456,0)

# rs2_val == -144115188075855873, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffff8; op2val:0xfdffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffff8, 0xfdffffffffffffff, 2, 3f, x3, 464,0)

# rs2_val == -576460752303423489, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0xf7ffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0008000000000000, 0xf7ffffffffffffff, 4, 3f, x3, 472,0)

# rs2_val == -1152921504606846977, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xefffffffffffffff; immval:64; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000008000, 0xefffffffffffffff, 64, 3f, x3, 480,0)

# rs2_val == -4611686018427387905, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0xbfffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000001000000, 0xbfffffffffffffff, 128, 3f, x3, 488,0)

# rs2_val == -6148914691236517206, rs1_val == -536870913
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffdfffffff, 0xaaaaaaaaaaaaaaaa, 6, 3f, x3, 496,0)

# rs1_val == -2049, rs2_val == -137438953473
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xffffffdfffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffff7ff, 0xffffffdfffffffff, 2, 3f, x3, 504,0)

# rs1_val == -4097, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xfffffffffffbffff; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffffefff, 0xfffffffffffbffff, 128, 3f, x3, 512,0)

# rs1_val == -8193, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0000000020000000; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffffdfff, 0x0000000020000000, 128, 3f, x3, 520,0)

# rs1_val == -32769, rs2_val == 8
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000000008; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffff7fff, 0x0000000000000008, 0, 3f, x3, 528,0)

# rs1_val == -65537, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0000200000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffeffff, 0x0000200000000000, 6, 3f, x3, 536,0)

# rs1_val == -262145, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0000000000000000; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffbffff, 0x0000000000000000, 128, 3f, x3, 544,0)

# rs1_val == -524289, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000000000009; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffff7ffff, 0x0000000000000009, 2, 1b, x3, 552,0)

# rs1_val == -1048577, rs2_val == 144115188075855872
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0200000000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffefffff, 0x0200000000000000, 6, 3f, x3, 560,0)

# rs1_val == -2097153, rs2_val == 262144
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0000000000040000; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffdfffff, 0x0000000000040000, 512, 3f, x3, 568,0)

# rs1_val == -4194305, rs2_val == 1
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000000000000001; immval:256; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffbfffff, 0x0000000000000001, 256, 3f, x3, 576,0)

# rs1_val == -8388609, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xfffff7ffffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffff7fffff, 0xfffff7ffffffffff, 2, 3f, x3, 584,0)

# rs1_val == -16777217, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xfffffffffffffffe; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffeffffff, 0xfffffffffffffffe, 6, 1b, x3, 592,0)

# rs1_val == -33554433, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffffffffffff7fff; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffdffffff, 0xffffffffffff7fff, 8, 3f, x3, 600,0)

# rs1_val == -67108865, rs2_val == 1073741824
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0000000040000000; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffbffffff, 0x0000000040000000, 1366, 1b, x3, 608,0)

# rs1_val == -134217729, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xfffffffffffffbff; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffff7ffffff, 0xfffffffffffffbff, 0, 3f, x3, 616,0)

# rs1_val == -1073741825, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0200000000000000; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffbfffffff, 0x0200000000000000, 1366, 1b, x3, 624,0)

# rs1_val == -2147483649, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0200000000000000; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffff7fffffff, 0x0200000000000000, 4, 3f, x3, 632,0)

# rs1_val == -4294967297, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0x0000000000100000; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffeffffffff, 0x0000000000100000, 1366, 1b, x3, 640,0)

# rs1_val == -8589934593, rs2_val == -140737488355329
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xffff7fffffffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffdffffffff, 0xffff7fffffffffff, 8, 1b, x3, 648,0)

# rs1_val == -17179869185, rs2_val == 65536
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000000000010000; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffbffffffff, 0x0000000000010000, 128, 3f, x3, 656,0)

# rs1_val == -34359738369, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xfffffffffeffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffff7ffffffff, 0xfffffffffeffffff, 4, 1b, x3, 664,0)

# rs1_val == -68719476737, rs2_val == -1073741825
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xffffffffbfffffff; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffefffffffff, 0xffffffffbfffffff, 6, 3f, x3, 672,0)

# rs1_val == -137438953473, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xfffff7ffffffffff; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffdfffffffff, 0xfffff7ffffffffff, 1366, 1b, x3, 680,0)

# rs1_val == -274877906945, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xfff7ffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffbfffffffff, 0xfff7ffffffffffff, 2, 1b, x3, 688,0)

# rs1_val == -549755813889, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xfffffffffffffffc; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffff7fffffffff, 0xfffffffffffffffc, 0, 3f, x3, 696,0)

# rs1_val == -1099511627777, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000020000; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffeffffffffff, 0x0000000000020000, 512, 3f, x3, 704,0)

# rs1_val == -2199023255553, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0400000000000000; immval:32; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffdffffffffff, 0x0400000000000000, 32, 3f, x3, 712,0)

# rs1_val == -4398046511105, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000000000001; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffbffffffffff, 0x0000000000000001, 6, 1b, x3, 720,0)

# rs1_val == -8796093022209, rs2_val == 32768
# opcode: bge, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000000008000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffff7ffffffffff, 0x0000000000008000, 1024, 3f, x3, 728,0)

# rs1_val == -17592186044417, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000000000200000; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffefffffffffff, 0x0000000000200000, 512, 3f, x3, 736,0)

# rs1_val == -35184372088833, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xfff7ffffffffffff; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffdfffffffffff, 0xfff7ffffffffffff, 1366, 1b, x3, 744,0)

# rs1_val == -70368744177665, rs2_val == -536870913
# opcode: bge, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xffffffffdfffffff; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffbfffffffffff, 0xffffffffdfffffff, 128, 3f, x3, 752,0)

# rs1_val == -140737488355329, rs2_val == 33554432
# opcode: bge, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000000002000000; immval:32; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffff7fffffffffff, 0x0000000002000000, 32, 3f, x3, 760,0)

# rs1_val == -281474976710657, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000000000000007; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffeffffffffffff, 0x0000000000000007, 8, 3f, x3, 768,0)

# rs1_val == -562949953421313, rs2_val == -129
# opcode: bge, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xffffffffffffff7f; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffdffffffffffff, 0xffffffffffffff7f, 1024, 1b, x3, 776,0)

# rs1_val == -1125899906842625, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xfffffffffffffffa; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffbffffffffffff, 0xfffffffffffffffa, 8, 1b, x3, 784,0)

# rs1_val == -2251799813685249, rs2_val == 1125899906842624
# opcode: bge, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0004000000000000; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfff7ffffffffffff, 0x0004000000000000, 4, 1b, x3, 792,0)

# rs1_val == -4503599627370497, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffffffffffffff6; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffefffffffffffff, 0xfffffffffffffff6, 6, 1b, x3, 800,0)

# rs1_val == -9007199254740993, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0xfffffffffffffffa; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffdfffffffffffff, 0xfffffffffffffffa, 128, 3f, x3, 808,0)

# rs1_val == -18014398509481985, rs2_val == -2049
# opcode: bge, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xfffffffffffff7ff; immval:10; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffbfffffffffffff, 0xfffffffffffff7ff, 10, 1b, x3, 816,0)

# rs1_val == -36028797018963969, 
# opcode: bge, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xfffffffffffffffb; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xff7fffffffffffff, 0xfffffffffffffffb, 0, 1b, x3, 824,0)

# rs1_val == -72057594037927937, rs2_val == 140737488355328
# opcode: bge, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x0000800000000000; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfeffffffffffffff, 0x0000800000000000, 2, 1b, x3, 832,0)

# rs1_val == -144115188075855873, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfdffffffffffffff, 0xaaaaaaaaaaaaaaaa, 8, 1b, x3, 840,0)

# rs1_val == -288230376151711745, rs2_val == 4194304
# opcode: bge, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000000400000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfbffffffffffffff, 0x0000000000400000, 1024, 3f, x3, 848,0)

# rs1_val == -576460752303423489, rs2_val == 4398046511104
# opcode: bge, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000040000000000; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xf7ffffffffffffff, 0x0000040000000000, 0, 1b, x3, 856,0)

# rs1_val == -1152921504606846977, 
# opcode: bge, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xffffff7fffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xefffffffffffffff, 0xffffff7fffffffff, 0, 1b, x3, 864,0)

# rs1_val == -2305843009213693953, rs2_val == 4096
# opcode: bge, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000000000001000; immval:32; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xdfffffffffffffff, 0x0000000000001000, 32, 3f, x3, 872,0)

# rs1_val == -4611686018427387905, 
# opcode: bge, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0400000000000000; immval:64; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xbfffffffffffffff, 0x0400000000000000, 64, 3f, x3, 880,0)

# rs1_val == 9223372036854775807, rs2_val == -33554433
# opcode: bge, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xfffffffffdffffff; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x7fffffffffffffff, 0xfffffffffdffffff, 16, 3f, x3, 888,0)

# rs1_val == 6148914691236517205, rs2_val == 1099511627776
# opcode: bge, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000010000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x5555555555555555, 0x0000010000000000, 1024, 3f, x3, 896,0)

# rs1_val == -6148914691236517206, 
# opcode: bge, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xffffffbfffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xffffffbfffffffff, 2, 3f, x3, 904,0)

# rs2_val == 4, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0x0000000000000004; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000100000, 0x0000000000000004, 8, 1b, x3, 912,0)

# rs2_val == 16, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0000000000000010; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffefffffffffffff, 0x0000000000000010, 16, 3f, x3, 920,0)

# rs2_val == 32, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0x0000000000000020; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000020000, 0x0000000000000020, 2, 3f, x3, 928,0)

# rs2_val == 64, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000004; op2val:0x0000000000000040; immval:10; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000004, 0x0000000000000040, 10, 1b, x3, 936,0)

# rs2_val == 128, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffff8; op2val:0x0000000000000080; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffff8, 0x0000000000000080, 0, 3f, x3, 944,0)

# rs2_val == 256, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0000000000000100; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffff7ffffff, 0x0000000000000100, 1024, 3f, x3, 952,0)

# rs2_val == 512, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0x0000000000000200; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000020, 0x0000000000000200, 8, 1b, x3, 960,0)

# rs2_val == 1024, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0x0000000000000400; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000004000000, 0x0000000000000400, 2, 3f, x3, 968,0)

# rs2_val == 2048, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0x0000000000000800; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000800, 0x0000000000000800, 8, 3f, x3, 976,0)

# rs2_val == 8192, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000000000002000; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000001000000000, 0x0000000000002000, 6, 3f, x3, 984,0)

# rs2_val == 16384, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000000004000; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000004000000000, 0x0000000000004000, 4, 1b, x3, 992,0)

# rs2_val == 8388608, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000800000; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000002000000000, 0x0000000000800000, 4, 3f, x3, 1000,0)

# rs2_val == 67108864, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffa; op2val:0x0000000004000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffffa, 0x0000000004000000, 1024, 3f, x3, 1008,0)

# rs2_val == 268435456, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0x0000000010000000; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000080, 0x0000000010000000, 2, 3f, x3, 1016,0)

# rs2_val == 4503599627370496, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0x0010000000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000040, 0x0010000000000000, 6, 1b, x3, 1024,0)

# rs2_val == 18014398509481984, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffff6; op2val:0x0040000000000000; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffff6, 0x0040000000000000, 8, 1b, x3, 1032,0)

# rs2_val == 576460752303423488, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0800000000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffbffffff, 0x0800000000000000, 1024, 3f, x3, 1040,0)

# rs2_val == 4611686018427387904, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x4000000000000000; immval:128; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffdffffffffff, 0x4000000000000000, 128, 3f, x3, 1048,0)

# rs2_val == -3, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfffffffffffffffd; immval:256; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffbffffffffff, 0xfffffffffffffffd, 256, 3f, x3, 1056,0)

# rs2_val == -33, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000001; op2val:0xffffffffffffffdf; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000001, 0xffffffffffffffdf, 16, 3f, x3, 1064,0)

# rs2_val == -65, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xffffffffffffffbf; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000400000000, 0xffffffffffffffbf, 1024, 1b, x3, 1072,0)

# rs2_val == -257, 
# opcode: bge, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xfffffffffffffeff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x7fffffffffffffff, 0xfffffffffffffeff, 2, 1b, x3, 1080,0)

# rs2_val == -513, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0xfffffffffffffdff; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000001000000, 0xfffffffffffffdff, 0, 3f, x3, 1088,0)

# rs2_val == -65537, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfffffffffffeffff; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000400000000000, 0xfffffffffffeffff, 1366, 1b, x3, 1096,0)

# rs2_val == -131073, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xfffffffffffdffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffeffffffffffff, 0xfffffffffffdffff, 2, 1b, x3, 1104,0)

# rs2_val == -4194305, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0xffffffffffbfffff; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000002000000, 0xffffffffffbfffff, 4, 1b, x3, 1112,0)

# rs2_val == -562949953421313, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xfffdffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000040000000000, 0xfffdffffffffffff, 4, 3f, x3, 1120,0)

# rs2_val == -8388609, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0xffffffffff7fffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000100000, 0xffffffffff7fffff, 2, 3f, x3, 1128,0)

# rs2_val == -67108865, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffffffbffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0004000000000000, 0xfffffffffbffffff, 2, 1b, x3, 1136,0)

# rs2_val == -134217729, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xfffffffff7ffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffffff7f, 0xfffffffff7ffffff, 2, 1b, x3, 1144,0)

# rs2_val == 8589934592, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000200000000; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0008000000000000, 0x0000000200000000, 8, 3f, x3, 1152,0)

# rs2_val == -8589934593, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfffffffdffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffbffffffffff, 0xfffffffdffffffff, 2, 1b, x3, 1160,0)

# rs2_val == -17179869185, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffffffbffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffefffffffffffff, 0xfffffffbffffffff, 0, 3f, x3, 1168,0)

# rs2_val == -34359738369, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xfffffff7ffffffff; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffffdff, 0xfffffff7ffffffff, 6, 3f, x3, 1176,0)

# rs2_val == -68719476737, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xffffffefffffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffffffffffeffff, 0xffffffefffffffff, 4, 3f, x3, 1184,0)

# rs2_val == 137438953472, 
# opcode: bge, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0000002000000000; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xefffffffffffffff, 0x0000002000000000, 8, 1b, x3, 1192,0)

# rs2_val == -1099511627777, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0xfffffeffffffffff; immval:256; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000020000000, 0xfffffeffffffffff, 256, 3f, x3, 1200,0)

# rs2_val == 281474976710656, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0001000000000000; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xfffdffffffffffff, 0x0001000000000000, 512, 3f, x3, 1208,0)

# rs2_val == 2199023255552, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0x0000020000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000800, 0x0000020000000000, 6, 3f, x3, 1216,0)

# rs2_val == -2199023255553, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xfffffdffffffffff; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000100000000000, 0xfffffdffffffffff, 512, 3f, x3, 1224,0)

# rs2_val == 17592186044416, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000100000000000; immval:32; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0100000000000000, 0x0000100000000000, 32, 3f, x3, 1232,0)

# rs2_val == -35184372088833, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0xffffdfffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000040, 0xffffdfffffffffff, 1024, 1b, x3, 1240,0)

# rs2_val == -281474976710657, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xfffeffffffffffff; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0xffffffffffffbfff, 0xfffeffffffffffff, 1366, 1b, x3, 1248,0)

# rs2_val == 562949953421312, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0002000000000000; immval:2; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0200000000000000, 0x0002000000000000, 2, 1b, x3, 1256,0)

# rs2_val == -1125899906842625, 
# opcode: bge, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xfffbffffffffffff; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x8000000000000000, 0xfffbffffffffffff, 16, 3f, x3, 1264,0)

# rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 8388608, rs2_val == 536870912
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000800000; op2val:0x0000000020000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000800000, 0x0000000020000000, 1024, 3f, x3, 1272,0)

# rs1_val == 512, rs2_val == 9007199254740992
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000200; op2val:0x0020000000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000200, 0x0020000000000000, 1024, 3f, x3, 1280,0)

# rs1_val == 2048, rs2_val == 134217728
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0x0000000008000000; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x10, x11, 0x0000000000000800, 0x0000000008000000, 4, 1b, x3, 1288,0)
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
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 162*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
