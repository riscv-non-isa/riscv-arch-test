
#This assembly file tests the beq instruction of the RISC-V I extension for the beq covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",beq)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 != rs2, rs1==x25, rs2==x26, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs2_val == 4096, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == 32
# opcode: beq, op1:x25; op2:x26; op1val:0x0000000000000020; op2val:0x0000000000001000; immval:0; align:0
TEST_BRANCH_OP(beq, x7, x25, x26, 0x0000000000000020, 0x0000000000001000, 0, 1b, x3, 0,0)

# rs1 == rs2, rs1==x9, rs2==x9, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val == 16384, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == -134217729
# opcode: beq, op1:x9; op2:x9; op1val:0x0000000000004000; op2val:0xfffffffff7ffffff; immval:128; align:0
TEST_BRANCH_OP(beq, x7, x9, x9, 0x0000000000004000, 0xfffffffff7ffffff, 128, 3f, x3, 8,0)

# rs1==x19, rs2==x18, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -32769
# opcode: beq, op1:x19; op2:x18; op1val:0xfffffffffffffffc; op2val:0xffffffffffff7fff; immval:4; align:0
TEST_BRANCH_OP(beq, x7, x19, x18, 0xfffffffffffffffc, 0xffffffffffff7fff, 4, 3f, x3, 16,0)

# rs1==x30, rs2==x24, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == 4, rs1_val == -33
# opcode: beq, op1:x30; op2:x24; op1val:0xffffffffffffffdf; op2val:0x0000000000000004; immval:512; align:0
TEST_BRANCH_OP(beq, x7, x30, x24, 0xffffffffffffffdf, 0x0000000000000004, 512, 3f, x3, 24,0)

# rs1==x10, rs2==x28, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 144115188075855872, rs2_val == 144115188075855872
# opcode: beq, op1:x10; op2:x28; op1val:0x0200000000000000; op2val:0x0200000000000000; immval:4; align:0
TEST_BRANCH_OP(beq, x7, x10, x28, 0x0200000000000000, 0x0200000000000000, 4, 3f, x3, 32,0)

# rs1==x29, rs2==x30, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == 549755813888, rs2_val == 549755813888
# opcode: beq, op1:x29; op2:x30; op1val:0x0000008000000000; op2val:0x0000008000000000; immval:0; align:0
TEST_BRANCH_OP(beq, x7, x29, x30, 0x0000008000000000, 0x0000008000000000, 0, 1b, x3, 40,0)

# rs1==x27, rs2==x14, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == -3, rs1_val == 16
# opcode: beq, op1:x27; op2:x14; op1val:0x0000000000000010; op2val:0xfffffffffffffffd; immval:4; align:0
TEST_BRANCH_OP(beq, x7, x27, x14, 0x0000000000000010, 0xfffffffffffffffd, 4, 1b, x3, 48,0)

# rs1==x18, rs2==x21, rs1_val == 1, rs2_val == 16
# opcode: beq, op1:x18; op2:x21; op1val:0x0000000000000001; op2val:0x0000000000000010; immval:32; align:0
TEST_BRANCH_OP(beq, x7, x18, x21, 0x0000000000000001, 0x0000000000000010, 32, 3f, x3, 56,0)

# rs1==x1, rs2==x0, rs1_val == 2, rs2_val == -140737488355329
# opcode: beq, op1:x1; op2:x0; op1val:0x0000000000000002; op2val:0xffff7fffffffffff; immval:16; align:0
TEST_BRANCH_OP(beq, x7, x1, x0, 0x0000000000000002, 0xffff7fffffffffff, 16, 3f, x3, 64,0)

# rs1==x13, rs2==x12, rs1_val == 4, rs2_val == -262145
# opcode: beq, op1:x13; op2:x12; op1val:0x0000000000000004; op2val:0xfffffffffffbffff; immval:256; align:0
TEST_BRANCH_OP(beq, x7, x13, x12, 0x0000000000000004, 0xfffffffffffbffff, 256, 3f, x3, 72,0)

# rs1==x11, rs2==x8, rs1_val == 8, 
# opcode: beq, op1:x11; op2:x8; op1val:0x0000000000000008; op2val:0xfffffffff7ffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x7, x11, x8, 0x0000000000000008, 0xfffffffff7ffffff, 8, 1b, x3, 80,0)

# rs1==x23, rs2==x15, rs1_val == 64, rs2_val == -549755813889
# opcode: beq, op1:x23; op2:x15; op1val:0x0000000000000040; op2val:0xffffff7fffffffff; immval:6; align:0
TEST_BRANCH_OP(beq, x7, x23, x15, 0x0000000000000040, 0xffffff7fffffffff, 6, 3f, x3, 88,0)

# rs1==x24, rs2==x20, rs1_val == 128, rs2_val == 34359738368
# opcode: beq, op1:x24; op2:x20; op1val:0x0000000000000080; op2val:0x0000000800000000; immval:0; align:0
TEST_BRANCH_OP(beq, x7, x24, x20, 0x0000000000000080, 0x0000000800000000, 0, 3f, x3, 96,0)

# rs1==x8, rs2==x2, rs1_val == 256, rs2_val == 2251799813685248
# opcode: beq, op1:x8; op2:x2; op1val:0x0000000000000100; op2val:0x0008000000000000; immval:4; align:0
TEST_BRANCH_OP(beq, x7, x8, x2, 0x0000000000000100, 0x0008000000000000, 4, 1b, x3, 104,0)

# rs1==x4, rs2==x6, rs1_val == 512, rs2_val == 131072
# opcode: beq, op1:x4; op2:x6; op1val:0x0000000000000200; op2val:0x0000000000020000; immval:256; align:0
TEST_BRANCH_OP(beq, x7, x4, x6, 0x0000000000000200, 0x0000000000020000, 256, 3f, x3, 112,0)

# rs1==x26, rs2==x11, rs1_val == 1024, 
# opcode: beq, op1:x26; op2:x11; op1val:0x0000000000000400; op2val:0x0000000000000007; immval:0; align:0
TEST_BRANCH_OP(beq, x7, x26, x11, 0x0000000000000400, 0x0000000000000007, 0, 1b, x3, 120,0)

# rs1==x28, rs2==x13, rs1_val == 2048, rs2_val == -70368744177665
# opcode: beq, op1:x28; op2:x13; op1val:0x0000000000000800; op2val:0xffffbfffffffffff; immval:128; align:0
TEST_BRANCH_OP(beq, x7, x28, x13, 0x0000000000000800, 0xffffbfffffffffff, 128, 3f, x3, 128,0)

# rs1==x0, rs2==x17, rs1_val == 4096, rs2_val == 576460752303423488
# opcode: beq, op1:x0; op2:x17; op1val:0x0000000000001000; op2val:0x0800000000000000; immval:256; align:0
TEST_BRANCH_OP(beq, x7, x0, x17, 0x0000000000001000, 0x0800000000000000, 256, 3f, x3, 136,0)

# rs1==x20, rs2==x25, rs1_val == 8192, rs2_val == -137438953473
# opcode: beq, op1:x20; op2:x25; op1val:0x0000000000002000; op2val:0xffffffdfffffffff; immval:16; align:0
TEST_BRANCH_OP(beq, x7, x20, x25, 0x0000000000002000, 0xffffffdfffffffff, 16, 3f, x3, 144,0)

# rs1==x21, rs2==x23, rs1_val == 32768, rs2_val == -274877906945
# opcode: beq, op1:x21; op2:x23; op1val:0x0000000000008000; op2val:0xffffffbfffffffff; immval:32; align:0
TEST_BRANCH_OP(beq, x7, x21, x23, 0x0000000000008000, 0xffffffbfffffffff, 32, 3f, x3, 152,0)

# rs1==x17, rs2==x10, rs1_val == 65536, rs2_val == -67108865
# opcode: beq, op1:x17; op2:x10; op1val:0x0000000000010000; op2val:0xfffffffffbffffff; immval:1024; align:0
TEST_BRANCH_OP(beq, x7, x17, x10, 0x0000000000010000, 0xfffffffffbffffff, 1024, 1b, x3, 160,0)

# rs1==x12, rs2==x19, rs1_val == 131072, 
# opcode: beq, op1:x12; op2:x19; op1val:0x0000000000020000; op2val:0xffffff7fffffffff; immval:1366; align:0
TEST_BRANCH_OP(beq, x7, x12, x19, 0x0000000000020000, 0xffffff7fffffffff, 1366, 1b, x3, 168,0)

# rs1==x5, rs2==x31, rs1_val == 262144, rs2_val == -9223372036854775808
# opcode: beq, op1:x5; op2:x31; op1val:0x0000000000040000; op2val:0x8000000000000000; immval:2; align:0
TEST_BRANCH_OP(beq, x7, x5, x31, 0x0000000000040000, 0x8000000000000000, 2, 1b, x3, 176,0)

# rs1==x31, rs2==x7, rs1_val == 524288, rs2_val == -524289
# opcode: beq, op1:x31; op2:x7; op1val:0x0000000000080000; op2val:0xfffffffffff7ffff; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x31, x7, 0x0000000000080000, 0xfffffffffff7ffff, 4, 1b, x3, 184,0)
RVTEST_SIGBASE( x8,signature_x8_0)

# rs1==x16, rs2==x29, rs1_val == 1048576, 
# opcode: beq, op1:x16; op2:x29; op1val:0x0000000000100000; op2val:0x0000000000001000; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x16, x29, 0x0000000000100000, 0x0000000000001000, 4, 3f, x8, 0,0)

# rs1==x6, rs2==x27, rs1_val == 2097152, rs2_val == 536870912
# opcode: beq, op1:x6; op2:x27; op1val:0x0000000000200000; op2val:0x0000000020000000; immval:64; align:0
TEST_BRANCH_OP(beq, x9, x6, x27, 0x0000000000200000, 0x0000000020000000, 64, 3f, x8, 8,0)

# rs1==x22, rs2==x1, rs1_val == 4194304, rs2_val == 6148914691236517205
# opcode: beq, op1:x22; op2:x1; op1val:0x0000000000400000; op2val:0x5555555555555555; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x22, x1, 0x0000000000400000, 0x5555555555555555, 1024, 1b, x8, 16,0)

# rs1==x15, rs2==x22, rs1_val == 8388608, rs2_val == 4194304
# opcode: beq, op1:x15; op2:x22; op1val:0x0000000000800000; op2val:0x0000000000400000; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x15, x22, 0x0000000000800000, 0x0000000000400000, 6, 1b, x8, 24,0)

# rs1==x2, rs2==x16, rs1_val == 16777216, 
# opcode: beq, op1:x2; op2:x16; op1val:0x0000000001000000; op2val:0xffffffbfffffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x2, x16, 0x0000000001000000, 0xffffffbfffffffff, 8, 1b, x8, 32,0)

# rs1==x14, rs2==x5, rs1_val == 33554432, rs2_val == 1099511627776
# opcode: beq, op1:x14; op2:x5; op1val:0x0000000002000000; op2val:0x0000010000000000; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x14, x5, 0x0000000002000000, 0x0000010000000000, 6, 3f, x8, 40,0)

# rs1==x7, rs2==x3, rs1_val == 67108864, rs2_val == 16384
# opcode: beq, op1:x7; op2:x3; op1val:0x0000000004000000; op2val:0x0000000000004000; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x7, x3, 0x0000000004000000, 0x0000000000004000, 256, 3f, x8, 48,0)

# rs1==x3, rs2==x4, rs1_val == 134217728, rs2_val == 268435456
# opcode: beq, op1:x3; op2:x4; op1val:0x0000000008000000; op2val:0x0000000010000000; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x3, x4, 0x0000000008000000, 0x0000000010000000, 6, 3f, x8, 56,0)

# rs1_val == 268435456, rs2_val == -17179869185
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfffffffbffffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000010000000, 0xfffffffbffffffff, 8, 3f, x8, 64,0)

# rs1_val == 536870912, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000000000000006; immval:64; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000020000000, 0x0000000000000006, 64, 3f, x8, 72,0)

# rs1_val == 1073741824, rs2_val == 1125899906842624
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0004000000000000; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000040000000, 0x0004000000000000, 256, 3f, x8, 80,0)

# rs1_val == 2147483648, rs2_val == -8193
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xffffffffffffdfff; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000080000000, 0xffffffffffffdfff, 6, 3f, x8, 88,0)

# rs1_val == 4294967296, rs2_val == -2305843009213693953
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xdfffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000100000000, 0xdfffffffffffffff, 2, 3f, x8, 96,0)

# rs1_val == 8589934592, rs2_val == -6148914691236517206
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xaaaaaaaaaaaaaaaa; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000200000000, 0xaaaaaaaaaaaaaaaa, 256, 3f, x8, 104,0)

# rs1_val == 17179869184, rs2_val == 72057594037927936
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0100000000000000; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000400000000, 0x0100000000000000, 8, 1b, x8, 112,0)

# rs1_val == 34359738368, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xfffffffffbffffff; immval:512; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000800000000, 0xfffffffffbffffff, 512, 3f, x8, 120,0)

# rs1_val == 68719476736, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000000020000000; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000001000000000, 0x0000000020000000, 1024, 1b, x8, 128,0)

# rs1_val == 137438953472, rs2_val == 65536
# opcode: beq, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000010000; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000002000000000, 0x0000000000010000, 8, 1b, x8, 136,0)

# rs1_val == 274877906944, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000000000006; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000004000000000, 0x0000000000000006, 16, 3f, x8, 144,0)

# rs1_val == 1099511627776, rs2_val == 2
# opcode: beq, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x0000000000000002; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000010000000000, 0x0000000000000002, 0, 1b, x8, 152,0)

# rs1_val == 2199023255552, rs2_val == -2049
# opcode: beq, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xfffffffffffff7ff; immval:128; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000020000000000, 0xfffffffffffff7ff, 128, 3f, x8, 160,0)

# rs1_val == 4398046511104, rs2_val == -1152921504606846977
# opcode: beq, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xefffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000040000000000, 0xefffffffffffffff, 128, 3f, x8, 168,0)

# rs1_val == 8796093022208, rs2_val == -536870913
# opcode: beq, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xffffffffdfffffff; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000080000000000, 0xffffffffdfffffff, 16, 3f, x8, 176,0)

# rs1_val == 17592186044416, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xffffffffffff7fff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000100000000000, 0xffffffffffff7fff, 8, 3f, x8, 184,0)

# rs1_val == 35184372088832, rs2_val == 8
# opcode: beq, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0x0000000000000008; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000200000000000, 0x0000000000000008, 8, 1b, x8, 192,0)

# rs1_val == 70368744177664, rs2_val == 8192
# opcode: beq, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000000002000; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000400000000000, 0x0000000000002000, 16, 3f, x8, 200,0)

# rs1_val == 140737488355328, rs2_val == 1073741824
# opcode: beq, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0000000040000000; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000800000000000, 0x0000000040000000, 0, 1b, x8, 208,0)

# rs1_val == 281474976710656, rs2_val == -9
# opcode: beq, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xfffffffffffffff7; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0001000000000000, 0xfffffffffffffff7, 0, 3f, x8, 216,0)

# rs1_val == 562949953421312, rs2_val == -65537
# opcode: beq, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xfffffffffffeffff; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0002000000000000, 0xfffffffffffeffff, 16, 3f, x8, 224,0)

# rs1_val == 1125899906842624, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffffffffffffc; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0004000000000000, 0xfffffffffffffffc, 8, 3f, x8, 232,0)

# rs1_val == 2251799813685248, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000000000000; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0008000000000000, 0x0000000000000000, 0, 3f, x8, 240,0)

# rs1_val == 4503599627370496, rs2_val == 562949953421312
# opcode: beq, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0002000000000000; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0010000000000000, 0x0002000000000000, 6, 1b, x8, 248,0)

# rs1_val == 9007199254740992, rs2_val == -257
# opcode: beq, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xfffffffffffffeff; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0020000000000000, 0xfffffffffffffeff, 1024, 1b, x8, 256,0)

# rs1_val == 18014398509481984, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffffffffff7fff; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0040000000000000, 0xffffffffffff7fff, 16, 3f, x8, 264,0)

# rs1_val == 36028797018963968, rs2_val == 8589934592
# opcode: beq, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000000200000000; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0080000000000000, 0x0000000200000000, 2, 3f, x8, 272,0)

# rs1_val == 72057594037927936, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000004000; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0100000000000000, 0x0000000000004000, 16, 3f, x8, 280,0)

# rs1_val == 288230376151711744, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xffffbfffffffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0400000000000000, 0xffffbfffffffffff, 8, 1b, x8, 288,0)

# rs1_val == 576460752303423488, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000800000000; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0800000000000000, 0x0000000800000000, 4, 1b, x8, 296,0)

# rs1_val == 1152921504606846976, 
# opcode: beq, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xfffffffffffffffa; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x1000000000000000, 0xfffffffffffffffa, 4, 1b, x8, 304,0)

# rs1_val == 2305843009213693952, 
# opcode: beq, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xffff7fffffffffff; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x2000000000000000, 0xffff7fffffffffff, 1024, 1b, x8, 312,0)

# rs1_val == 4611686018427387904, 
# opcode: beq, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0000000040000000; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x4000000000000000, 0x0000000040000000, 4, 1b, x8, 320,0)

# rs1_val == -9223372036854775808, 
# opcode: beq, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xfffffffffffffeff; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x8000000000000000, 0xfffffffffffffeff, 4, 1b, x8, 328,0)

# rs1_val == -2, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0002000000000000; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffffe, 0x0002000000000000, 8, 1b, x8, 336,0)

# rs1_val == -3, rs2_val == -5
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0xfffffffffffffffb; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffffd, 0xfffffffffffffffb, 0, 3f, x8, 344,0)

# rs1_val == -5, rs2_val == 288230376151711744
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0400000000000000; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffffb, 0x0400000000000000, 4, 3f, x8, 352,0)

# rs1_val == -9, rs2_val == 32768
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000008000; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffff7, 0x0000000000008000, 6, 1b, x8, 360,0)

# rs1_val == -17, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xfffffffbffffffff; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffffffef, 0xfffffffbffffffff, 0, 3f, x8, 368,0)

# rs1_val == -65, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000000000007; immval:64; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffffffbf, 0x0000000000000007, 64, 3f, x8, 376,0)

# rs1_val == -129, rs2_val == -65
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xffffffffffffffbf; immval:10; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffffff7f, 0xffffffffffffffbf, 10, 1b, x8, 384,0)

# rs1_val == -257, rs2_val == -2251799813685249
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xfff7ffffffffffff; immval:10; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffeff, 0xfff7ffffffffffff, 10, 1b, x8, 392,0)

# rs1_val == -513, rs2_val == -72057594037927937
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xfeffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffdff, 0xfeffffffffffffff, 2, 1b, x8, 400,0)

# rs1_val == -1025, rs2_val == -9007199254740993
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0xffdfffffffffffff; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffbff, 0xffdfffffffffffff, 2, 3f, x8, 408,0)

# rs1_val == -2049, rs2_val == 2097152
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000000000200000; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffff7ff, 0x0000000000200000, 6, 1b, x8, 416,0)

# rs1_val == -4097, rs2_val == 36028797018963968
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0080000000000000; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffffefff, 0x0080000000000000, 256, 3f, x8, 424,0)

# rs1_val == -8193, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xfeffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffffdfff, 0xfeffffffffffffff, 8, 1b, x8, 432,0)

# rs2_val == -4503599627370497, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xffefffffffffffff; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0400000000000000, 0xffefffffffffffff, 2, 3f, x8, 440,0)

# rs2_val == -18014398509481985, rs1_val == -549755813889
# opcode: beq, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xffbfffffffffffff; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffff7fffffffff, 0xffbfffffffffffff, 0, 3f, x8, 448,0)

# rs2_val == -36028797018963969, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xff7fffffffffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000200000000000, 0xff7fffffffffffff, 8, 3f, x8, 456,0)

# rs2_val == -144115188075855873, rs1_val == -36028797018963969
# opcode: beq, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xfdffffffffffffff; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xff7fffffffffffff, 0xfdffffffffffffff, 256, 3f, x8, 464,0)

# rs2_val == -288230376151711745, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xfbffffffffffffff; immval:1366; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffff7, 0xfbffffffffffffff, 1366, 1b, x8, 472,0)

# rs2_val == -576460752303423489, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xf7ffffffffffffff; immval:512; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000400000000000, 0xf7ffffffffffffff, 512, 3f, x8, 480,0)

# rs2_val == -4611686018427387905, rs1_val == -8589934593
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xbfffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffdffffffff, 0xbfffffffffffffff, 6, 1b, x8, 488,0)

# rs2_val == 9223372036854775807, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x7fffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000001000000000, 0x7fffffffffffffff, 8, 1b, x8, 496,0)

# rs1_val == -16385, rs2_val == -2147483649
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xffffffff7fffffff; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffffbfff, 0xffffffff7fffffff, 16, 3f, x8, 504,0)

# rs1_val == -32769, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xfffffffffff7ffff; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffff7fff, 0xfffffffffff7ffff, 1024, 3f, x8, 512,0)

# rs1_val == -65537, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xfdffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffeffff, 0xfdffffffffffffff, 8, 1b, x8, 520,0)

# rs1_val == -131073, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffffffffffffff6; immval:128; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffdffff, 0xfffffffffffffff6, 128, 3f, x8, 528,0)

# rs1_val == -262145, rs2_val == -4398046511105
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xfffffbffffffffff; immval:64; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffbffff, 0xfffffbffffffffff, 64, 3f, x8, 536,0)

# rs1_val == -524289, rs2_val == 1
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000000000001; immval:1366; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffff7ffff, 0x0000000000000001, 1366, 1b, x8, 544,0)

# rs1_val == -1048577, rs2_val == 17592186044416
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0000100000000000; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffefffff, 0x0000100000000000, 16, 3f, x8, 552,0)

# rs1_val == -2097153, rs2_val == 512
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0000000000000200; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffdfffff, 0x0000000000000200, 1024, 3f, x8, 560,0)

# rs1_val == -4194305, rs2_val == -35184372088833
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xffffdfffffffffff; immval:512; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffbfffff, 0xffffdfffffffffff, 512, 3f, x8, 568,0)

# rs1_val == -8388609, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000010000000000; immval:10; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffff7fffff, 0x0000010000000000, 10, 1b, x8, 576,0)

# rs1_val == -16777217, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xff7fffffffffffff; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffeffffff, 0xff7fffffffffffff, 256, 3f, x8, 584,0)

# rs1_val == -33554433, rs2_val == 140737488355328
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0x0000800000000000; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffdffffff, 0x0000800000000000, 0, 1b, x8, 592,0)

# rs1_val == -67108865, rs2_val == -8388609
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xffffffffff7fffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffbffffff, 0xffffffffff7fffff, 8, 1b, x8, 600,0)

# rs1_val == -134217729, rs2_val == -513
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xfffffffffffffdff; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffff7ffffff, 0xfffffffffffffdff, 6, 3f, x8, 608,0)

# rs1_val == -268435457, rs2_val == 1048576
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000000000100000; immval:512; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffefffffff, 0x0000000000100000, 512, 3f, x8, 616,0)

# rs1_val == -536870913, rs2_val == -1073741825
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xffffffffbfffffff; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffdfffffff, 0xffffffffbfffffff, 0, 1b, x8, 624,0)

# rs1_val == -1073741825, rs2_val == -33
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0xffffffffffffffdf; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffbfffffff, 0xffffffffffffffdf, 16, 3f, x8, 632,0)

# rs1_val == -2147483649, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0000000800000000; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffff7fffffff, 0x0000000800000000, 256, 3f, x8, 640,0)

# rs1_val == -4294967297, rs2_val == -16385
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xffffffffffffbfff; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffeffffffff, 0xffffffffffffbfff, 0, 3f, x8, 648,0)

# rs1_val == -17179869185, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000000000000200; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffbffffffff, 0x0000000000000200, 2, 3f, x8, 656,0)

# rs1_val == -34359738369, rs2_val == 134217728
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000008000000; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffff7ffffffff, 0x0000000008000000, 1024, 3f, x8, 664,0)

# rs1_val == -68719476737, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0080000000000000; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffefffffffff, 0x0080000000000000, 256, 3f, x8, 672,0)

# rs1_val == -137438953473, rs2_val == 4503599627370496
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0010000000000000; immval:1366; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffdfffffffff, 0x0010000000000000, 1366, 1b, x8, 680,0)

# rs1_val == -274877906945, rs2_val == 16777216
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000001000000; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffbfffffffff, 0x0000000001000000, 8, 1b, x8, 688,0)

# rs1_val == -1099511627777, rs2_val == -1125899906842625
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xfffbffffffffffff; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffeffffffffff, 0xfffbffffffffffff, 6, 1b, x8, 696,0)

# rs1_val == -2199023255553, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xdfffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffdffffffffff, 0xdfffffffffffffff, 0, 3f, x8, 704,0)

# rs1_val == -4398046511105, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xffffffffffff7fff; immval:10; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffbffffffffff, 0xffffffffffff7fff, 10, 1b, x8, 712,0)

# rs1_val == -8796093022209, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xffbfffffffffffff; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffff7ffffffffff, 0xffbfffffffffffff, 6, 1b, x8, 720,0)

# rs1_val == -17592186044417, rs2_val == -2
# opcode: beq, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0xfffffffffffffffe; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffefffffffffff, 0xfffffffffffffffe, 4, 3f, x8, 728,0)

# rs1_val == -35184372088833, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xfffffffffffffff6; immval:10; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffdfffffffffff, 0xfffffffffffffff6, 10, 1b, x8, 736,0)

# rs1_val == -70368744177665, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xffffffffffffbfff; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffbfffffffffff, 0xffffffffffffbfff, 16, 3f, x8, 744,0)

# rs1_val == -140737488355329, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xffefffffffffffff; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffff7fffffffffff, 0xffefffffffffffff, 2, 3f, x8, 752,0)

# rs1_val == -281474976710657, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffeffffffffffff, 0xaaaaaaaaaaaaaaaa, 2, 1b, x8, 760,0)

# rs1_val == -562949953421313, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xffdfffffffffffff; immval:32; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffdffffffffffff, 0xffdfffffffffffff, 32, 3f, x8, 768,0)

# rs1_val == -1125899906842625, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000000000001000; immval:10; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffbffffffffffff, 0x0000000000001000, 10, 1b, x8, 776,0)

# rs1_val == -18014398509481985, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0080000000000000; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffbfffffffffffff, 0x0080000000000000, 6, 1b, x8, 784,0)

# rs1_val == -72057594037927937, rs2_val == -1099511627777
# opcode: beq, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0xfffffeffffffffff; immval:512; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfeffffffffffffff, 0xfffffeffffffffff, 512, 3f, x8, 792,0)

# rs1_val == -144115188075855873, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xfffffffffffffff9; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfdffffffffffffff, 0xfffffffffffffff9, 4, 1b, x8, 800,0)

# rs1_val == -288230376151711745, rs2_val == 8388608
# opcode: beq, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000000800000; immval:32; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfbffffffffffffff, 0x0000000000800000, 32, 3f, x8, 808,0)

# rs1_val == -576460752303423489, rs2_val == 4294967296
# opcode: beq, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000000100000000; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xf7ffffffffffffff, 0x0000000100000000, 4, 1b, x8, 816,0)

# rs1_val == -1152921504606846977, 
# opcode: beq, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xfffffffffbffffff; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xefffffffffffffff, 0xfffffffffbffffff, 2, 1b, x8, 824,0)

# rs1_val == -2305843009213693953, rs2_val == 8796093022208
# opcode: beq, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000080000000000; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xdfffffffffffffff, 0x0000080000000000, 0, 1b, x8, 832,0)

# rs1_val == -4611686018427387905, 
# opcode: beq, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x5555555555555555; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xbfffffffffffffff, 0x5555555555555555, 8, 1b, x8, 840,0)

# rs1_val == 9223372036854775807, 
# opcode: beq, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0004000000000000; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x7fffffffffffffff, 0x0004000000000000, 6, 1b, x8, 848,0)

# rs1_val == 6148914691236517205, 
# opcode: beq, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000000001000000; immval:128; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x5555555555555555, 0x0000000001000000, 128, 3f, x8, 856,0)

# rs1_val == -6148914691236517206, 
# opcode: beq, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfeffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfeffffffffffffff, 4, 1b, x8, 864,0)

# rs2_val == 32, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0000000000000020; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0001000000000000, 0x0000000000000020, 4, 3f, x8, 872,0)

# rs2_val == 64, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0x0000000000000040; immval:32; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffffffff, 0x0000000000000040, 32, 3f, x8, 880,0)

# rs2_val == 128, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000000080; immval:64; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0100000000000000, 0x0000000000000080, 64, 3f, x8, 888,0)

# rs2_val == 256, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0000000000000100; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffdffffffffffff, 0x0000000000000100, 0, 3f, x8, 896,0)

# rs2_val == 1024, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000000000400; immval:10; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffdff, 0x0000000000000400, 10, 1b, x8, 904,0)

# rs2_val == 2048, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000000000000800; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffdffff, 0x0000000000000800, 256, 3f, x8, 912,0)

# rs2_val == 262144, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0x0000000000040000; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000001000000, 0x0000000000040000, 2, 3f, x8, 920,0)

# rs2_val == 524288, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0x0000000000080000; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000001000, 0x0000000000080000, 2, 3f, x8, 928,0)

# rs2_val == 33554432, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000400; op2val:0x0000000002000000; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000000400, 0x0000000002000000, 0, 3f, x8, 936,0)

# rs2_val == 67108864, rs1_val == -2251799813685249
# opcode: beq, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000004000000; immval:128; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfff7ffffffffffff, 0x0000000004000000, 128, 3f, x8, 944,0)

# rs2_val == 2147483648, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000000080000000; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffffffef, 0x0000000080000000, 1024, 3f, x8, 952,0)

# rs2_val == 17179869184, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000400000000; immval:10; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0008000000000000, 0x0000000400000000, 10, 1b, x8, 960,0)

# rs2_val == 68719476736, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0x0000001000000000; immval:64; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000000007, 0x0000001000000000, 64, 3f, x8, 968,0)

# rs2_val == 137438953472, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000002000000000; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffff7ffffffff, 0x0000002000000000, 4, 3f, x8, 976,0)

# rs2_val == 274877906944, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000004000000000; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffffffffbfff, 0x0000004000000000, 1024, 1b, x8, 984,0)

# rs2_val == 2199023255552, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000020000000000; immval:128; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000001000000000, 0x0000020000000000, 128, 3f, x8, 992,0)

# rs2_val == 9007199254740992, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000800000; op2val:0x0020000000000000; immval:128; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000800000, 0x0020000000000000, 128, 3f, x8, 1000,0)

# rs2_val == 18014398509481984, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0x0040000000000000; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000010000, 0x0040000000000000, 6, 1b, x8, 1008,0)

# rs2_val == 1152921504606846976, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x1000000000000000; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0002000000000000, 0x1000000000000000, 0, 1b, x8, 1016,0)

# rs2_val == 2305843009213693952, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x2000000000000000; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfff7ffffffffffff, 0x2000000000000000, 8, 3f, x8, 1024,0)

# rs2_val == 4611686018427387904, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0x4000000000000000; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000000007, 0x4000000000000000, 2, 1b, x8, 1032,0)

# rs2_val == -17, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0xffffffffffffffef; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000000008, 0xffffffffffffffef, 16, 3f, x8, 1040,0)

# rs2_val == -129, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xffffffffffffff7f; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffffe, 0xffffffffffffff7f, 16, 3f, x8, 1048,0)

# rs2_val == -1025, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xfffffffffffffbff; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffbfffffffffffff, 0xfffffffffffffbff, 6, 1b, x8, 1056,0)

# rs2_val == -4097, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xffffffffffffefff; immval:10; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffff7fffffffffff, 0xffffffffffffefff, 10, 1b, x8, 1064,0)

# rs2_val == -131073, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xfffffffffffdffff; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffeffffff, 0xfffffffffffdffff, 2, 3f, x8, 1072,0)

# rs2_val == -1048577, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xffffffffffefffff; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffffffefffffffff, 0xffffffffffefffff, 6, 3f, x8, 1080,0)

# rs2_val == -2097153, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffffffffffdfffff; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffdffffff, 0xffffffffffdfffff, 16, 3f, x8, 1088,0)

# rs2_val == -4194305, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0xffffffffffbfffff; immval:128; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000010000, 0xffffffffffbfffff, 128, 3f, x8, 1096,0)

# rs2_val == -16777217, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfffffffffeffffff; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0010000000000000, 0xfffffffffeffffff, 2, 3f, x8, 1104,0)

# rs2_val == -33554433, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000001; op2val:0xfffffffffdffffff; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000000001, 0xfffffffffdffffff, 1024, 3f, x8, 1112,0)

# rs2_val == -268435457, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xffffffffefffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000800000000, 0xffffffffefffffff, 8, 3f, x8, 1120,0)

# rs2_val == -4294967297, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xfffffffeffffffff; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0800000000000000, 0xfffffffeffffffff, 1024, 1b, x8, 1128,0)

# rs2_val == -8589934593, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfffffffffffffff9; op2val:0xfffffffdffffffff; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfffffffffffffff9, 0xfffffffdffffffff, 8, 1b, x8, 1136,0)

# rs2_val == -34359738369, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0xfffffff7ffffffff; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0100000000000000, 0xfffffff7ffffffff, 1024, 3f, x8, 1144,0)

# rs2_val == -68719476737, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xffffffefffffffff; immval:6; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000040000000000, 0xffffffefffffffff, 6, 1b, x8, 1152,0)

# rs2_val == -281474976710657, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfffeffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000800000000000, 0xfffeffffffffffff, 1024, 3f, x8, 1160,0)

# rs2_val == -2199023255553, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xfffffdffffffffff; immval:4; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000008000, 0xfffffdffffffffff, 4, 1b, x8, 1168,0)

# rs2_val == 4398046511104, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000040000000000; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000100000000000, 0x0000040000000000, 256, 3f, x8, 1176,0)

# rs2_val == -8796093022209, rs1_val == -9007199254740993
# opcode: beq, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0xfffff7ffffffffff; immval:1024; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffdfffffffffffff, 0xfffff7ffffffffff, 1024, 1b, x8, 1184,0)

# rs2_val == -17592186044417, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xffffefffffffffff; immval:2; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000010000000000, 0xffffefffffffffff, 2, 1b, x8, 1192,0)

# rs2_val == 35184372088832, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000001; op2val:0x0000200000000000; immval:512; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000000001, 0x0000200000000000, 512, 3f, x8, 1200,0)

# rs2_val == 70368744177664, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0x0000400000000000; immval:8; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0040000000000000, 0x0000400000000000, 8, 1b, x8, 1208,0)

# rs2_val == 281474976710656, 
# opcode: beq, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0001000000000000; immval:0; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xfff7ffffffffffff, 0x0001000000000000, 0, 3f, x8, 1216,0)

# rs2_val == -562949953421313, 
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfffdffffffffffff; immval:1366; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000010000000, 0xfffdffffffffffff, 1366, 1b, x8, 1224,0)

# rs1_val == -4503599627370497, 
# opcode: beq, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0000040000000000; immval:1366; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0xffefffffffffffff, 0x0000040000000000, 1366, 1b, x8, 1232,0)

# rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val == 16384, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == -134217729
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0xfffffffff7ffffff; immval:128; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000004000, 0xfffffffff7ffffff, 128, 3f, x8, 1240,0)

# rs1_val == 2, rs2_val == -140737488355329
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000000002; op2val:0xffff7fffffffffff; immval:16; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000000002, 0xffff7fffffffffff, 16, 3f, x8, 1248,0)

# rs1_val == 4096, rs2_val == 576460752303423488
# opcode: beq, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0x0800000000000000; immval:256; align:0
TEST_BRANCH_OP(beq, x9, x10, x11, 0x0000000000001000, 0x0800000000000000, 256, 3f, x8, 1256,0)
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
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x8_0:
    .fill 158*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
