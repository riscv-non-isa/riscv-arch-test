
#This assembly file tests the bgeu instruction of the RISC-V I extension for the bgeu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bgeu)

RVTEST_SIGBASE( x18,signature_x18_1)

# rs1 != rs2, rs1==x14, rs2==x12, rs1_val > 0 and rs2_val > 0, rs1_val == 9223372036854775807, rs2_val == 18446744073709551607, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val < 0 
# opcode: bgeu, op1:x14; op2:x12; op1val:0x7fffffffffffffff; op2val:0xfffffffffffffff7; immval:8; align:0
TEST_BRANCH_OP(bgeu, x29, x14, x12, 0x7fffffffffffffff, 0xfffffffffffffff7, 8, 1b, x18, 0,0)

# rs1 == rs2, rs1==x9, rs2==x9, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, 
# opcode: bgeu, op1:x9; op2:x9; op1val:0x000000000000000c; op2val:0x000000000000000c; immval:4; align:0
TEST_BRANCH_OP(bgeu, x29, x9, x9, 0x000000000000000c, 0x000000000000000c, 4, 3f, x18, 8,0)

# rs1==x25, rs2==x5, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val < 0, rs1_val == 18446744073709551607
# opcode: bgeu, op1:x25; op2:x5; op1val:0xfffffffffffffff7; op2val:0xfffffffffffffff7; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x29, x25, x5, 0xfffffffffffffff7, 0xfffffffffffffff7, 1024, 1b, x18, 16,0)

# rs1==x6, rs2==x13, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val > 0 , rs2_val == 18446744073709551583, rs1_val == 18446744073709551614
# opcode: bgeu, op1:x6; op2:x13; op1val:0xfffffffffffffffe; op2val:0xffffffffffffffdf; immval:4; align:0
TEST_BRANCH_OP(bgeu, x29, x6, x13, 0xfffffffffffffffe, 0xffffffffffffffdf, 4, 3f, x18, 24,0)

# rs1==x28, rs2==x15, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val < 0 , rs2_val == 33554432, rs1_val == 536870912
# opcode: bgeu, op1:x28; op2:x15; op1val:0x0000000020000000; op2val:0x0000000002000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x29, x28, x15, 0x0000000020000000, 0x0000000002000000, 1024, 1b, x18, 32,0)

# rs1==x5, rs2==x1, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val > 0 , rs2_val == 18446744073709550591
# opcode: bgeu, op1:x5; op2:x1; op1val:0x0000000000000011; op2val:0xfffffffffffffbff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x29, x5, x1, 0x0000000000000011, 0xfffffffffffffbff, 512, 3f, x18, 40,0)

# rs1==x2, rs2==x20, rs1_val == 1, 
# opcode: bgeu, op1:x2; op2:x20; op1val:0x0000000000000001; op2val:0x0000000000000012; immval:4; align:0
TEST_BRANCH_OP(bgeu, x29, x2, x20, 0x0000000000000001, 0x0000000000000012, 4, 1b, x18, 48,0)

# rs1==x12, rs2==x14, rs1_val == 2, rs2_val == 1099511627776
# opcode: bgeu, op1:x12; op2:x14; op1val:0x0000000000000002; op2val:0x0000010000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x29, x12, x14, 0x0000000000000002, 0x0000010000000000, 8, 1b, x18, 56,0)

# rs1==x22, rs2==x4, rs1_val == 4, rs2_val == 72057594037927936
# opcode: bgeu, op1:x22; op2:x4; op1val:0x0000000000000004; op2val:0x0100000000000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x29, x22, x4, 0x0000000000000004, 0x0100000000000000, 1024, 1b, x18, 64,0)

# rs1==x16, rs2==x7, rs1_val == 8, rs2_val == 137438953472
# opcode: bgeu, op1:x16; op2:x7; op1val:0x0000000000000008; op2val:0x0000002000000000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x29, x16, x7, 0x0000000000000008, 0x0000002000000000, 128, 3f, x18, 72,0)

# rs1==x31, rs2==x21, rs1_val == 16, rs2_val == 4611686018427387904
# opcode: bgeu, op1:x31; op2:x21; op1val:0x0000000000000010; op2val:0x4000000000000000; immval:512; align:0
TEST_BRANCH_OP(bgeu, x29, x31, x21, 0x0000000000000010, 0x4000000000000000, 512, 3f, x18, 80,0)

# rs1==x19, rs2==x8, rs1_val == 32, 
# opcode: bgeu, op1:x19; op2:x8; op1val:0x0000000000000020; op2val:0x000000000000000a; immval:10; align:0
TEST_BRANCH_OP(bgeu, x29, x19, x8, 0x0000000000000020, 0x000000000000000a, 10, 1b, x18, 88,0)

# rs1==x7, rs2==x0, rs1_val == 64, rs2_val == 18158513697557839871
# opcode: bgeu, op1:x7; op2:x0; op1val:0x0000000000000040; op2val:0xfbffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x29, x7, x0, 0x0000000000000040, 0xfbffffffffffffff, 0, 1b, x18, 96,0)

# rs1==x21, rs2==x17, rs1_val == 128, rs2_val == 18446744073708503039
# opcode: bgeu, op1:x21; op2:x17; op1val:0x0000000000000080; op2val:0xffffffffffefffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x29, x21, x17, 0x0000000000000080, 0xffffffffffefffff, 4, 1b, x18, 104,0)

# rs1==x27, rs2==x26, rs1_val == 256, 
# opcode: bgeu, op1:x27; op2:x26; op1val:0x0000000000000100; op2val:0xffffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x29, x27, x26, 0x0000000000000100, 0xffffffffffffffff, 2, 3f, x18, 112,0)

# rs1==x10, rs2==x23, rs1_val == 512, rs2_val == 131072
# opcode: bgeu, op1:x10; op2:x23; op1val:0x0000000000000200; op2val:0x0000000000020000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x29, x10, x23, 0x0000000000000200, 0x0000000000020000, 4, 1b, x18, 120,0)

# rs1==x3, rs2==x2, rs1_val == 1024, 
# opcode: bgeu, op1:x3; op2:x2; op1val:0x0000000000000400; op2val:0x0000000000000006; immval:6; align:0
TEST_BRANCH_OP(bgeu, x29, x3, x2, 0x0000000000000400, 0x0000000000000006, 6, 1b, x18, 128,0)

# rs1==x23, rs2==x27, rs1_val == 2048, rs2_val == 8796093022208
# opcode: bgeu, op1:x23; op2:x27; op1val:0x0000000000000800; op2val:0x0000080000000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x29, x23, x27, 0x0000000000000800, 0x0000080000000000, 1024, 1b, x18, 136,0)

# rs1==x1, rs2==x25, rs1_val == 4096, rs2_val == 18302628885633695743
# opcode: bgeu, op1:x1; op2:x25; op1val:0x0000000000001000; op2val:0xfdffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x29, x1, x25, 0x0000000000001000, 0xfdffffffffffffff, 8, 1b, x18, 144,0)

# rs1==x24, rs2==x11, rs1_val == 8192, rs2_val == 18446181123756130303
# opcode: bgeu, op1:x24; op2:x11; op1val:0x0000000000002000; op2val:0xfffdffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x29, x24, x11, 0x0000000000002000, 0xfffdffffffffffff, 8, 3f, x18, 152,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x17, rs2==x16, rs1_val == 16384, rs2_val == 2097152
# opcode: bgeu, op1:x17; op2:x16; op1val:0x0000000000004000; op2val:0x0000000000200000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x17, x16, 0x0000000000004000, 0x0000000000200000, 32, 3f, x1, 0,0)

# rs1==x30, rs2==x31, rs1_val == 32768, 
# opcode: bgeu, op1:x30; op2:x31; op1val:0x0000000000008000; op2val:0x000000000000000c; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x30, x31, 0x0000000000008000, 0x000000000000000c, 0, 1b, x1, 8,0)

# rs1==x15, rs2==x30, rs1_val == 65536, rs2_val == 8
# opcode: bgeu, op1:x15; op2:x30; op1val:0x0000000000010000; op2val:0x0000000000000008; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x15, x30, 0x0000000000010000, 0x0000000000000008, 4, 3f, x1, 16,0)

# rs1==x18, rs2==x29, rs1_val == 131072, rs2_val == 1024
# opcode: bgeu, op1:x18; op2:x29; op1val:0x0000000000020000; op2val:0x0000000000000400; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x18, x29, 0x0000000000020000, 0x0000000000000400, 8, 1b, x1, 24,0)

# rs1==x8, rs2==x28, rs1_val == 262144, rs2_val == 18446603336221196287
# opcode: bgeu, op1:x8; op2:x28; op1val:0x0000000000040000; op2val:0xffff7fffffffffff; immval:256; align:0
TEST_BRANCH_OP(bgeu, x2, x8, x28, 0x0000000000040000, 0xffff7fffffffffff, 256, 3f, x1, 32,0)

# rs1==x29, rs2==x10, rs1_val == 524288, rs2_val == 262144
# opcode: bgeu, op1:x29; op2:x10; op1val:0x0000000000080000; op2val:0x0000000000040000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x2, x29, x10, 0x0000000000080000, 0x0000000000040000, 256, 3f, x1, 40,0)

# rs1==x4, rs2==x19, rs1_val == 1048576, 
# opcode: bgeu, op1:x4; op2:x19; op1val:0x0000000000100000; op2val:0x0000000000040000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x4, x19, 0x0000000000100000, 0x0000000000040000, 6, 1b, x1, 48,0)

# rs1==x20, rs2==x6, rs1_val == 2097152, rs2_val == 2147483648
# opcode: bgeu, op1:x20; op2:x6; op1val:0x0000000000200000; op2val:0x0000000080000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x20, x6, 0x0000000000200000, 0x0000000080000000, 0, 3f, x1, 56,0)

# rs1==x13, rs2==x24, rs1_val == 4194304, rs2_val == 16777216
# opcode: bgeu, op1:x13; op2:x24; op1val:0x0000000000400000; op2val:0x0000000001000000; immval:512; align:0
TEST_BRANCH_OP(bgeu, x2, x13, x24, 0x0000000000400000, 0x0000000001000000, 512, 3f, x1, 64,0)

# rs1==x11, rs2==x3, rs1_val == 8388608, 
# opcode: bgeu, op1:x11; op2:x3; op1val:0x0000000000800000; op2val:0xffffffffffffffdf; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x11, x3, 0x0000000000800000, 0xffffffffffffffdf, 1024, 1b, x1, 72,0)

# rs1==x0, rs2==x18, rs1_val == 16777216, rs2_val == 1152921504606846976
# opcode: bgeu, op1:x0; op2:x18; op1val:0x0000000001000000; op2val:0x1000000000000000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x2, x0, x18, 0x0000000001000000, 0x1000000000000000, 1366, 1b, x1, 80,0)

# rs1==x26, rs2==x22, rs1_val == 33554432, 
# opcode: bgeu, op1:x26; op2:x22; op1val:0x0000000002000000; op2val:0x0000000000000006; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x26, x22, 0x0000000002000000, 0x0000000000000006, 1024, 3f, x1, 88,0)

# rs1_val == 67108864, rs2_val == 18446708889337462783
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0xffffdfffffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000004000000, 0xffffdfffffffffff, 0, 3f, x1, 96,0)

# rs1_val == 134217728, rs2_val == 9007199254740992
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0x0020000000000000; immval:16; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000008000000, 0x0020000000000000, 16, 3f, x1, 104,0)

# rs1_val == 268435456, rs2_val == 4294967296
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000100000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000010000000, 0x0000000100000000, 2, 3f, x1, 112,0)

# rs1_val == 1073741824, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x000000000000000c; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000040000000, 0x000000000000000c, 0, 3f, x1, 120,0)

# rs1_val == 2147483648, rs2_val == 512
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000000000000200; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000080000000, 0x0000000000000200, 8, 3f, x1, 128,0)

# rs1_val == 4294967296, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000000000020000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000100000000, 0x0000000000020000, 6, 3f, x1, 136,0)

# rs1_val == 8589934592, rs2_val == 18446744073642442751
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xfffffffffbffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000200000000, 0xfffffffffbffffff, 10, 1b, x1, 144,0)

# rs1_val == 17179869184, rs2_val == 18446739675663040511
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xfffffbffffffffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000400000000, 0xfffffbffffffffff, 64, 3f, x1, 152,0)

# rs1_val == 34359738368, rs2_val == 18374686479671623679
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xfeffffffffffffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000800000000, 0xfeffffffffffffff, 64, 3f, x1, 160,0)

# rs1_val == 68719476736, rs2_val == 288230376151711744
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0400000000000000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000001000000000, 0x0400000000000000, 64, 3f, x1, 168,0)

# rs1_val == 137438953472, rs2_val == 17179869184
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000400000000; immval:16; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000002000000000, 0x0000000400000000, 16, 3f, x1, 176,0)

# rs1_val == 274877906944, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x4000000000000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000004000000000, 0x4000000000000000, 2, 3f, x1, 184,0)

# rs1_val == 549755813888, rs2_val == 18446744073709486079
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xfffffffffffeffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000008000000000, 0xfffffffffffeffff, 1024, 3f, x1, 192,0)

# rs1_val == 1099511627776, rs2_val == 18446744073709420543
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xfffffffffffdffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000010000000000, 0xfffffffffffdffff, 4, 3f, x1, 200,0)

# rs1_val == 2199023255552, rs2_val == 18444492273895866367
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xfff7ffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000020000000000, 0xfff7ffffffffffff, 2, 3f, x1, 208,0)

# rs1_val == 4398046511104, rs2_val == 268435456
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000010000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000040000000000, 0x0000000010000000, 0, 3f, x1, 216,0)

# rs1_val == 8796093022208, rs2_val == 128
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0x0000000000000080; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000080000000000, 0x0000000000000080, 1024, 3f, x1, 224,0)

# rs1_val == 17592186044416, rs2_val == 32
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000000000000020; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000100000000000, 0x0000000000000020, 2, 1b, x1, 232,0)

# rs1_val == 35184372088832, rs2_val == 18428729675200069631
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xffbfffffffffffff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000200000000000, 0xffbfffffffffffff, 32, 3f, x1, 240,0)

# rs1_val == 70368744177664, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000000000008; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000400000000000, 0x0000000000000008, 0, 3f, x1, 248,0)

# rs1_val == 140737488355328, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0000000000000080; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000800000000000, 0x0000000000000080, 32, 3f, x1, 256,0)

# rs1_val == 281474976710656, rs2_val == 18446744073709551614
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xfffffffffffffffe; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0001000000000000, 0xfffffffffffffffe, 6, 3f, x1, 264,0)

# rs1_val == 562949953421312, rs2_val == 18446744073692774399
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xfffffffffeffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0002000000000000, 0xfffffffffeffffff, 10, 1b, x1, 272,0)

# rs1_val == 1125899906842624, rs2_val == 6148914691236517205
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0x5555555555555555; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0004000000000000, 0x5555555555555555, 6, 3f, x1, 280,0)

# rs1_val == 2251799813685248, rs2_val == 35184372088832
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000200000000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0008000000000000, 0x0000200000000000, 2, 3f, x1, 288,0)

# rs1_val == 4503599627370496, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0000200000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0010000000000000, 0x0000200000000000, 8, 3f, x1, 296,0)

# rs1_val == 9007199254740992, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x1000000000000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0020000000000000, 0x1000000000000000, 1024, 1b, x1, 304,0)

# rs1_val == 18014398509481984, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffffffffffffdf; immval:512; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0040000000000000, 0xffffffffffffffdf, 512, 3f, x1, 312,0)

# rs1_val == 36028797018963968, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xfdffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0080000000000000, 0xfdffffffffffffff, 128, 3f, x1, 320,0)

# rs1_val == 72057594037927936, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000000020; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0100000000000000, 0x0000000000000020, 1024, 3f, x1, 328,0)

# rs1_val == 144115188075855872, rs2_val == 36028797018963968
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0080000000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0200000000000000, 0x0080000000000000, 8, 3f, x1, 336,0)

# rs1_val == 288230376151711744, rs2_val == 9223372036854775808
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x8000000000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0400000000000000, 0x8000000000000000, 8, 3f, x1, 344,0)

# rs1_val == 576460752303423488, rs2_val == 12297829382473034410
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xaaaaaaaaaaaaaaaa; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0800000000000000, 0xaaaaaaaaaaaaaaaa, 0, 1b, x1, 352,0)

# rs1_val == 1152921504606846976, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x5555555555555555; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x1000000000000000, 0x5555555555555555, 128, 3f, x1, 360,0)

# rs1_val == 2305843009213693952, rs2_val == 18446462598732840959
# opcode: bgeu, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xfffeffffffffffff; immval:256; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x2000000000000000, 0xfffeffffffffffff, 256, 3f, x1, 368,0)

# rs1_val == 4611686018427387904, rs2_val == 18446744073701163007
# opcode: bgeu, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xffffffffff7fffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x4000000000000000, 0xffffffffff7fffff, 4, 3f, x1, 376,0)

# rs1_val == 9223372036854775808, rs2_val == 18446744073709549567
# opcode: bgeu, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xfffffffffffff7ff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x8000000000000000, 0xfffffffffffff7ff, 8, 1b, x1, 384,0)

# rs1_val == 18446744073709551613, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000000000000008; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffffffd, 0x0000000000000008, 6, 3f, x1, 392,0)

# rs1_val == 18446744073709551611, rs2_val == 134217728
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000000008000000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffffffb, 0x0000000008000000, 256, 3f, x1, 400,0)

# rs1_val == 18446744073709551599, rs2_val == 18446744073575333887
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xfffffffff7ffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffffffef, 0xfffffffff7ffffff, 8, 3f, x1, 408,0)

# rs1_val == 18446744073709551583, rs2_val == 17870283321406128127
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xf7ffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffffffdf, 0xf7ffffffffffffff, 8, 3f, x1, 416,0)

# rs1_val == 18446744073709551551, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000002000000000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffffffbf, 0x0000002000000000, 64, 3f, x1, 424,0)

# rs1_val == 18446744073709551487, rs2_val == 1073741824
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0x0000000040000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffffff7f, 0x0000000040000000, 0, 1b, x1, 432,0)

# rs1_val == 18446744073709551359, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000000000000007; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffffeff, 0x0000000000000007, 6, 3f, x1, 440,0)

# rs1_val == 18446744073709551103, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000010000000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffffdff, 0x0000000010000000, 32, 3f, x1, 448,0)

# rs1_val == 18446744073709550591, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000000000000009; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffffbff, 0x0000000000000009, 1024, 1b, x1, 456,0)

# rs1_val == 18446744073709549567, rs2_val == 281474976710656
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0001000000000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffff7ff, 0x0001000000000000, 4, 3f, x1, 464,0)

# rs1_val == 18446744073709547519, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xfbffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffffefff, 0xfbffffffffffffff, 4, 1b, x1, 472,0)

# rs1_val == 18446744073709543423, rs2_val == 18410715276690587647
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xff7fffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffffdfff, 0xff7fffffffffffff, 1024, 3f, x1, 480,0)

# rs1_val == 18446744073709535231, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xfffffbffffffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffffbfff, 0xfffffbffffffffff, 10, 1b, x1, 488,0)

# rs2_val == 17293822569102704639, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xefffffffffffffff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000008000, 0xefffffffffffffff, 32, 3f, x1, 496,0)

# rs2_val == 16140901064495857663, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xdfffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffffeff, 0xdfffffffffffffff, 1024, 3f, x1, 504,0)

# rs2_val == 13835058055282163711, rs1_val == 18446744073707454463
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xbfffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffdfffff, 0xbfffffffffffffff, 0, 1b, x1, 512,0)

# rs2_val == 9223372036854775807, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000b; op2val:0x7fffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x000000000000000b, 0x7fffffffffffffff, 128, 3f, x1, 520,0)

# rs1_val == 18446744073709518847, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xff7fffffffffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffff7fff, 0xff7fffffffffffff, 10, 1b, x1, 528,0)

# rs1_val == 18446744073709486079, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xfffdffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffeffff, 0xfffdffffffffffff, 8, 1b, x1, 536,0)

# rs1_val == 18446744073709420543, rs2_val == 18446742974197923839
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffffeffffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffdffff, 0xfffffeffffffffff, 0, 3f, x1, 544,0)

# rs1_val == 18446744073709289471, rs2_val == 18014398509481984
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0040000000000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffbffff, 0x0040000000000000, 0, 1b, x1, 552,0)

# rs1_val == 18446744073709027327, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000080000000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffff7ffff, 0x0000000080000000, 10, 1b, x1, 560,0)

# rs1_val == 18446744073708503039, rs2_val == 16
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0000000000000010; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffefffff, 0x0000000000000010, 1366, 1b, x1, 568,0)

# rs1_val == 18446744073705357311, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000000000000010; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffbfffff, 0x0000000000000010, 6, 3f, x1, 576,0)

# rs1_val == 18446744073701163007, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000000000000012; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffff7fffff, 0x0000000000000012, 32, 3f, x1, 584,0)

# rs1_val == 18446744073692774399, rs2_val == 1125899906842624
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0004000000000000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffeffffff, 0x0004000000000000, 10, 1b, x1, 592,0)

# rs1_val == 18446744073675997183, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xfffffffffffffffe; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffdffffff, 0xfffffffffffffffe, 2, 1b, x1, 600,0)

# rs1_val == 18446744073642442751, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffbffffff, 0xaaaaaaaaaaaaaaaa, 1024, 3f, x1, 608,0)

# rs1_val == 18446744073575333887, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0400000000000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffff7ffffff, 0x0400000000000000, 2, 1b, x1, 616,0)

# rs1_val == 18446744073441116159, rs2_val == 8388608
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000000000800000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffefffffff, 0x0000000000800000, 6, 1b, x1, 624,0)

# rs1_val == 18446744073172680703, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xfffffffff7ffffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffdfffffff, 0xfffffffff7ffffff, 64, 3f, x1, 632,0)

# rs1_val == 18446744072635809791, rs2_val == 274877906944
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000004000000000; immval:16; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffbfffffff, 0x0000004000000000, 16, 3f, x1, 640,0)

# rs1_val == 18446744071562067967, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0000000000000009; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffff7fffffff, 0x0000000000000009, 2, 1b, x1, 648,0)

# rs1_val == 18446744069414584319, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xffbfffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffeffffffff, 0xffbfffffffffffff, 1024, 3f, x1, 656,0)

# rs1_val == 18446744065119617023, rs2_val == 18446743798831644671
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xffffffbfffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffdffffffff, 0xffffffbfffffffff, 8, 3f, x1, 664,0)

# rs1_val == 18446744056529682431, rs2_val == 576460752303423488
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0800000000000000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffbffffffff, 0x0800000000000000, 256, 3f, x1, 672,0)

# rs1_val == 18446744039349813247, rs2_val == 18445618173802708991
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xfffbffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffff7ffffffff, 0xfffbffffffffffff, 8, 3f, x1, 680,0)

# rs1_val == 18446744004990074879, rs2_val == 2
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0000000000000002; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffefffffffff, 0x0000000000000002, 6, 3f, x1, 688,0)

# rs1_val == 18446743936270598143, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0000000000200000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffdfffffffff, 0x0000000000200000, 6, 3f, x1, 696,0)

# rs1_val == 18446743798831644671, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x1000000000000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffbfffffffff, 0x1000000000000000, 0, 3f, x1, 704,0)

# rs1_val == 18446743523953737727, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0100000000000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffff7fffffffff, 0x0100000000000000, 0, 3f, x1, 712,0)

# rs1_val == 18446742974197923839, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000000009; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffeffffffffff, 0x0000000000000009, 1024, 3f, x1, 720,0)

# rs1_val == 18446741874686296063, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x5555555555555555; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffdffffffffff, 0x5555555555555555, 6, 1b, x1, 728,0)

# rs1_val == 18446739675663040511, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfbffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffbffffffffff, 0xfbffffffffffffff, 4, 3f, x1, 736,0)

# rs1_val == 18446735277616529407, rs2_val == 16384
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000000004000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffff7ffffffffff, 0x0000000000004000, 256, 3f, x1, 744,0)

# rs1_val == 18446726481523507199, rs2_val == 18446744073709551551
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0xffffffffffffffbf; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffefffffffffff, 0xffffffffffffffbf, 2, 1b, x1, 752,0)

# rs1_val == 18446708889337462783, rs2_val == 18446726481523507199
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xffffefffffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffdfffffffffff, 0xffffefffffffffff, 6, 1b, x1, 760,0)

# rs1_val == 18446673704965373951, rs2_val == 34359738368
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x0000000800000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffbfffffffffff, 0x0000000800000000, 8, 3f, x1, 768,0)

# rs1_val == 18446603336221196287, rs2_val == 18446744065119617023
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xfffffffdffffffff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffff7fffffffffff, 0xfffffffdffffffff, 32, 3f, x1, 776,0)

# rs1_val == 18446462598732840959, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0040000000000000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffeffffffffffff, 0x0040000000000000, 1366, 1b, x1, 784,0)

# rs1_val == 18446181123756130303, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffffffffffdffff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffdffffffffffff, 0xfffffffffffdffff, 1366, 1b, x1, 792,0)

# rs1_val == 18445618173802708991, rs2_val == 549755813888
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000008000000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffbffffffffffff, 0x0000008000000000, 0, 1b, x1, 800,0)

# rs1_val == 18444492273895866367, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x7fffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfff7ffffffffffff, 0x7fffffffffffffff, 4, 1b, x1, 808,0)

# rs1_val == 18442240474082181119, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffffeffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffefffffffffffff, 0xfffffeffffffffff, 4, 3f, x1, 816,0)

# rs1_val == 18437736874454810623, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0xfffffffff7ffffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffdfffffffffffff, 0xfffffffff7ffffff, 64, 3f, x1, 824,0)

# rs1_val == 18428729675200069631, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000000040000000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffbfffffffffffff, 0x0000000040000000, 128, 3f, x1, 832,0)

# rs1_val == 18410715276690587647, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xffffefffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xff7fffffffffffff, 0xffffefffffffffff, 8, 1b, x1, 840,0)

# rs1_val == 18374686479671623679, rs2_val == 18446744071562067967
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0xffffffff7fffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfeffffffffffffff, 0xffffffff7fffffff, 4, 1b, x1, 848,0)

# rs1_val == 18302628885633695743, rs2_val == 18446744073707454463
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xffffffffffdfffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfdffffffffffffff, 0xffffffffffdfffff, 0, 1b, x1, 856,0)

# rs1_val == 18158513697557839871, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0800000000000000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfbffffffffffffff, 0x0800000000000000, 32, 3f, x1, 864,0)

# rs1_val == 17870283321406128127, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xefffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xf7ffffffffffffff, 0xefffffffffffffff, 8, 1b, x1, 872,0)

# rs1_val == 17293822569102704639, rs2_val == 1
# opcode: bgeu, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0000000000000001; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xefffffffffffffff, 0x0000000000000001, 0, 1b, x1, 880,0)

# rs1_val == 16140901064495857663, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0004000000000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xdfffffffffffffff, 0x0004000000000000, 1024, 3f, x1, 888,0)

# rs1_val == 13835058055282163711, rs2_val == 18446744073705357311
# opcode: bgeu, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xffffffffffbfffff; immval:16; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xbfffffffffffffff, 0xffffffffffbfffff, 16, 3f, x1, 896,0)

# rs1_val == 6148914691236517205, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000000000000009; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x5555555555555555, 0x0000000000000009, 4, 1b, x1, 904,0)

# rs1_val == 12297829382473034410, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xff7fffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xff7fffffffffffff, 1024, 1b, x1, 912,0)

# rs2_val == 4, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000000000000004; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0200000000000000, 0x0000000000000004, 6, 3f, x1, 920,0)

# rs2_val == 64, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000000000040; immval:64; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffbfffffffff, 0x0000000000000040, 64, 3f, x1, 928,0)

# rs2_val == 256, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0x0000000000000100; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000200000000000, 0x0000000000000100, 10, 1b, x1, 936,0)

# rs2_val == 2048, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0x0000000000000800; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000008000, 0x0000000000000800, 128, 3f, x1, 944,0)

# rs2_val == 4096, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000001; op2val:0x0000000000001000; immval:512; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000001, 0x0000000000001000, 512, 3f, x1, 952,0)

# rs2_val == 8192, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0000000000002000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffdffffffffff, 0x0000000000002000, 128, 3f, x1, 960,0)

# rs2_val == 32768, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0x0000000000008000; immval:512; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffffffff, 0x0000000000008000, 512, 3f, x1, 968,0)

# rs2_val == 65536, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0x0000000000010000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000003, 0x0000000000010000, 4, 3f, x1, 976,0)

# rs2_val == 524288, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0000000000080000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffdffffffffff, 0x0000000000080000, 1024, 3f, x1, 984,0)

# rs2_val == 1048576, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0000000000100000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x8000000000000000, 0x0000000000100000, 6, 1b, x1, 992,0)

# rs2_val == 4194304, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000000000400000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000001000000000, 0x0000000000400000, 10, 1b, x1, 1000,0)

# rs2_val == 67108864, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000000004000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0002000000000000, 0x0000000004000000, 2, 3f, x1, 1008,0)

# rs2_val == 536870912, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0000000020000000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x2000000000000000, 0x0000000020000000, 128, 3f, x1, 1016,0)

# rs2_val == 8589934592, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000000200000000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffbfffffffffffff, 0x0000000200000000, 128, 3f, x1, 1024,0)

# rs2_val == 68719476736, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000002; op2val:0x0000001000000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000002, 0x0000001000000000, 1024, 3f, x1, 1032,0)

# rs2_val == 2199023255552, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0000020000000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x4000000000000000, 0x0000020000000000, 4, 1b, x1, 1040,0)

# rs2_val == 4398046511104, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000040000000000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000400000000000, 0x0000040000000000, 128, 3f, x1, 1048,0)

# rs2_val == 17592186044416, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000c; op2val:0x0000100000000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x000000000000000c, 0x0000100000000000, 4, 1b, x1, 1056,0)

# rs2_val == 70368744177664, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0000400000000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffdfffff, 0x0000400000000000, 2, 1b, x1, 1064,0)

# rs2_val == 140737488355328, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000005; op2val:0x0000800000000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000005, 0x0000800000000000, 1024, 3f, x1, 1072,0)

# rs2_val == 562949953421312, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000080000; op2val:0x0002000000000000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000080000, 0x0002000000000000, 128, 3f, x1, 1080,0)

# rs2_val == 144115188075855872, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0200000000000000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffffffffbf, 0x0200000000000000, 10, 1b, x1, 1088,0)

# rs2_val == 2305843009213693952, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0x2000000000000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000008000, 0x2000000000000000, 2, 1b, x1, 1096,0)

# rs2_val == 18446744073709551613, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xfffffffffffffffd; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0200000000000000, 0xfffffffffffffffd, 32, 3f, x1, 1104,0)

# rs2_val == 18446744073709551611, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfffffffffffffffb; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffeffffffff, 0xfffffffffffffffb, 1024, 1b, x1, 1112,0)

# rs2_val == 18446744073709551599, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xffffffffffffffef; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000006, 0xffffffffffffffef, 0, 3f, x1, 1120,0)

# rs2_val == 18446744073709551487, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xffffffffffffff7f; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffff7ffffffff, 0xffffffffffffff7f, 8, 3f, x1, 1128,0)

# rs2_val == 18446744073709551359, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffffffffffffeff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffdffffffffffff, 0xfffffffffffffeff, 32, 3f, x1, 1136,0)

# rs2_val == 18446744073709551103, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xfffffffffffffdff; immval:16; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x4000000000000000, 0xfffffffffffffdff, 16, 3f, x1, 1144,0)

# rs2_val == 18446744073709547519, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xffffffffffffefff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffff7ffffff, 0xffffffffffffefff, 4, 3f, x1, 1152,0)

# rs2_val == 4503599627370496, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0x0010000000000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000800, 0x0010000000000000, 0, 1b, x1, 1160,0)

# rs2_val == 18446744073709543423, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000009; op2val:0xffffffffffffdfff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000009, 0xffffffffffffdfff, 128, 3f, x1, 1168,0)

# rs2_val == 18446744073709535231, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0xffffffffffffbfff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000080, 0xffffffffffffbfff, 8, 3f, x1, 1176,0)

# rs2_val == 18446744073709518847, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0xffffffffffff7fff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffefffffffffff, 0xffffffffffff7fff, 0, 1b, x1, 1184,0)

# rs2_val == 18446744073709289471, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0xfffffffffffbffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000020, 0xfffffffffffbffff, 1024, 1b, x1, 1192,0)

# rs2_val == 18446744073709027327, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xfffffffffff7ffff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffffff7, 0xfffffffffff7ffff, 512, 3f, x1, 1200,0)

# rs2_val == 18446744073675997183, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0xfffffffffdffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000008, 0xfffffffffdffffff, 1024, 3f, x1, 1208,0)

# rs2_val == 18446744073441116159, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0xffffffffefffffff; immval:16; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000040000000, 0xffffffffefffffff, 16, 3f, x1, 1216,0)

# rs2_val == 18446744073172680703, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xffffffffdfffffff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000400000000, 0xffffffffdfffffff, 1366, 1b, x1, 1224,0)

# rs2_val == 18446744072635809791, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xffffffffbfffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000400000000, 0xffffffffbfffffff, 8, 3f, x1, 1232,0)

# rs2_val == 18446744069414584319, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000002; op2val:0xfffffffeffffffff; immval:16; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000002, 0xfffffffeffffffff, 16, 3f, x1, 1240,0)

# rs2_val == 18446744056529682431, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfffffffbffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0010000000000000, 0xfffffffbffffffff, 0, 3f, x1, 1248,0)

# rs2_val == 18446744039349813247, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xfffffff7ffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffffdfffffff, 0xfffffff7ffffffff, 6, 3f, x1, 1256,0)

# rs2_val == 18446744004990074879, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xffffffefffffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xffffffefffffffff, 2, 1b, x1, 1264,0)

# rs2_val == 18446743936270598143, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xffffffdfffffffff; immval:16; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfdffffffffffffff, 0xffffffdfffffffff, 16, 3f, x1, 1272,0)

# rs2_val == 18446743523953737727, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0xffffff7fffffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000100000, 0xffffff7fffffffff, 10, 1b, x1, 1280,0)

# rs2_val == 18446741874686296063, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0xfffffdffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000001000, 0xfffffdffffffffff, 1024, 1b, x1, 1288,0)

# rs2_val == 18446735277616529407, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xfffff7ffffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xfffffffffffff7ff, 0xfffff7ffffffffff, 6, 3f, x1, 1296,0)

# rs2_val == 2251799813685248, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000009; op2val:0x0008000000000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000009, 0x0008000000000000, 4, 1b, x1, 1304,0)

# rs2_val == 18442240474082181119, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xffefffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0xffffffdfffffffff, 0xffefffffffffffff, 6, 1b, x1, 1312,0)

# rs2_val == 18437736874454810623, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0xffdfffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000007, 0xffdfffffffffffff, 1024, 3f, x1, 1320,0)

# rs2_val == 18446673704965373951, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0xffffbfffffffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000007, 0xffffbfffffffffff, 2, 3f, x1, 1328,0)

# rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000c; op2val:0x000000000000000c; immval:4; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x000000000000000c, 0x000000000000000c, 4, 3f, x1, 1336,0)

# rs1_val == 64, rs2_val == 18158513697557839871
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0xfbffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000000000040, 0xfbffffffffffffff, 0, 1b, x1, 1344,0)

# rs1_val == 16777216, rs2_val == 1152921504606846976
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0x1000000000000000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x2, x10, x11, 0x0000000001000000, 0x1000000000000000, 1366, 1b, x1, 1352,0)
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

signature_x18_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x18_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 170*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
