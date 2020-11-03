
#This assembly file tests the bne instruction of the RISC-V I extension for the bne covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bne)

RVTEST_SIGBASE( x11,signature_x11_1)

# rs1 != rs2, rs1==x6, rs2==x14, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == 536870912, rs1_val == 1048576
# opcode: bne, op1:x6; op2:x14; op1val:0x0000000000100000; op2val:0x0000000020000000; immval:0; align:0
TEST_BRANCH_OP(bne, x10, x6, x14, 0x0000000000100000, 0x0000000020000000, 0, 1b, x11, 0,0)

# rs1 == rs2, rs1==x9, rs2==x9, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -2097153, rs1_val == 8796093022208, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0
# opcode: bne, op1:x9; op2:x9; op1val:0x0000080000000000; op2val:0xffffffffffdfffff; immval:128; align:0
TEST_BRANCH_OP(bne, x10, x9, x9, 0x0000080000000000, 0xffffffffffdfffff, 128, 3f, x11, 8,0)

# rs1==x8, rs2==x15, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -129, rs1_val == -262145
# opcode: bne, op1:x8; op2:x15; op1val:0xfffffffffffbffff; op2val:0xffffffffffffff7f; immval:8; align:0
TEST_BRANCH_OP(bne, x10, x8, x15, 0xfffffffffffbffff, 0xffffffffffffff7f, 8, 1b, x11, 16,0)

# rs1==x14, rs2==x6, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val == -16385, rs2_val == 128
# opcode: bne, op1:x14; op2:x6; op1val:0xffffffffffffbfff; op2val:0x0000000000000080; immval:1024; align:0
TEST_BRANCH_OP(bne, x10, x14, x6, 0xffffffffffffbfff, 0x0000000000000080, 1024, 1b, x11, 24,0)

# rs1==x7, rs2==x18, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 4611686018427387904, rs2_val == 4611686018427387904
# opcode: bne, op1:x7; op2:x18; op1val:0x4000000000000000; op2val:0x4000000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x10, x7, x18, 0x4000000000000000, 0x4000000000000000, 1024, 3f, x11, 32,0)

# rs1==x4, rs2==x26, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == -16385
# opcode: bne, op1:x4; op2:x26; op1val:0xffffffffffffbfff; op2val:0xffffffffffffbfff; immval:4; align:0
TEST_BRANCH_OP(bne, x10, x4, x26, 0xffffffffffffbfff, 0xffffffffffffbfff, 4, 1b, x11, 40,0)

# rs1==x21, rs2==x17, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == -1099511627777, rs1_val == -8193
# opcode: bne, op1:x21; op2:x17; op1val:0xffffffffffffdfff; op2val:0xfffffeffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x10, x21, x17, 0xffffffffffffdfff, 0xfffffeffffffffff, 1024, 1b, x11, 48,0)

# rs1==x25, rs2==x16, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == 1125899906842624
# opcode: bne, op1:x25; op2:x16; op1val:0x0000000000000003; op2val:0x0004000000000000; immval:512; align:0
TEST_BRANCH_OP(bne, x10, x25, x16, 0x0000000000000003, 0x0004000000000000, 512, 3f, x11, 56,0)

# rs1==x15, rs2==x4, rs1_val == 1, rs2_val == 2199023255552
# opcode: bne, op1:x15; op2:x4; op1val:0x0000000000000001; op2val:0x0000020000000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x10, x15, x4, 0x0000000000000001, 0x0000020000000000, 1366, 1b, x11, 64,0)

# rs1==x27, rs2==x3, rs1_val == 2, 
# opcode: bne, op1:x27; op2:x3; op1val:0x0000000000000002; op2val:0x0000000000000005; immval:0; align:0
TEST_BRANCH_OP(bne, x10, x27, x3, 0x0000000000000002, 0x0000000000000005, 0, 3f, x11, 72,0)

# rs1==x1, rs2==x31, rs1_val == 4, rs2_val == 4096
# opcode: bne, op1:x1; op2:x31; op1val:0x0000000000000004; op2val:0x0000000000001000; immval:6; align:0
TEST_BRANCH_OP(bne, x10, x1, x31, 0x0000000000000004, 0x0000000000001000, 6, 3f, x11, 80,0)

# rs1==x28, rs2==x29, rs1_val == 8, 
# opcode: bne, op1:x28; op2:x29; op1val:0x0000000000000008; op2val:0x0000000000000006; immval:128; align:0
TEST_BRANCH_OP(bne, x10, x28, x29, 0x0000000000000008, 0x0000000000000006, 128, 3f, x11, 88,0)

# rs1==x24, rs2==x2, rs1_val == 16, rs2_val == 67108864
# opcode: bne, op1:x24; op2:x2; op1val:0x0000000000000010; op2val:0x0000000004000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x10, x24, x2, 0x0000000000000010, 0x0000000004000000, 1366, 1b, x11, 96,0)

# rs1==x17, rs2==x0, rs1_val == 32, rs2_val == 512
# opcode: bne, op1:x17; op2:x0; op1val:0x0000000000000020; op2val:0x0000000000000200; immval:256; align:0
TEST_BRANCH_OP(bne, x10, x17, x0, 0x0000000000000020, 0x0000000000000200, 256, 3f, x11, 104,0)

# rs1==x0, rs2==x21, rs1_val == 64, rs2_val == -72057594037927937
# opcode: bne, op1:x0; op2:x21; op1val:0x0000000000000040; op2val:0xfeffffffffffffff; immval:32; align:0
TEST_BRANCH_OP(bne, x10, x0, x21, 0x0000000000000040, 0xfeffffffffffffff, 32, 3f, x11, 112,0)

# rs1==x19, rs2==x5, rs1_val == 128, rs2_val == -16777217
# opcode: bne, op1:x19; op2:x5; op1val:0x0000000000000080; op2val:0xfffffffffeffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x10, x19, x5, 0x0000000000000080, 0xfffffffffeffffff, 2, 1b, x11, 120,0)

# rs1==x26, rs2==x22, rs1_val == 256, rs2_val == 4
# opcode: bne, op1:x26; op2:x22; op1val:0x0000000000000100; op2val:0x0000000000000004; immval:32; align:0
TEST_BRANCH_OP(bne, x10, x26, x22, 0x0000000000000100, 0x0000000000000004, 32, 3f, x11, 128,0)

# rs1==x30, rs2==x19, rs1_val == 512, rs2_val == 4194304
# opcode: bne, op1:x30; op2:x19; op1val:0x0000000000000200; op2val:0x0000000000400000; immval:6; align:0
TEST_BRANCH_OP(bne, x10, x30, x19, 0x0000000000000200, 0x0000000000400000, 6, 1b, x11, 136,0)

# rs1==x5, rs2==x13, rs1_val == 1024, 
# opcode: bne, op1:x5; op2:x13; op1val:0x0000000000000400; op2val:0xfffffffffffffffa; immval:256; align:0
TEST_BRANCH_OP(bne, x10, x5, x13, 0x0000000000000400, 0xfffffffffffffffa, 256, 3f, x11, 144,0)

# rs1==x3, rs2==x25, rs1_val == 2048, rs2_val == -513
# opcode: bne, op1:x3; op2:x25; op1val:0x0000000000000800; op2val:0xfffffffffffffdff; immval:128; align:0
TEST_BRANCH_OP(bne, x10, x3, x25, 0x0000000000000800, 0xfffffffffffffdff, 128, 3f, x11, 152,0)

# rs1==x18, rs2==x27, rs1_val == 4096, rs2_val == 288230376151711744
# opcode: bne, op1:x18; op2:x27; op1val:0x0000000000001000; op2val:0x0400000000000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x10, x18, x27, 0x0000000000001000, 0x0400000000000000, 1366, 1b, x11, 160,0)

# rs1==x20, rs2==x28, rs1_val == 8192, rs2_val == -3
# opcode: bne, op1:x20; op2:x28; op1val:0x0000000000002000; op2val:0xfffffffffffffffd; immval:64; align:0
TEST_BRANCH_OP(bne, x10, x20, x28, 0x0000000000002000, 0xfffffffffffffffd, 64, 3f, x11, 168,0)

# rs1==x16, rs2==x20, rs1_val == 16384, rs2_val == -33
# opcode: bne, op1:x16; op2:x20; op1val:0x0000000000004000; op2val:0xffffffffffffffdf; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x16, x20, 0x0000000000004000, 0xffffffffffffffdf, 2, 3f, x11, 176,0)

# rs1==x13, rs2==x8, rs1_val == 32768, rs2_val == -257
# opcode: bne, op1:x13; op2:x8; op1val:0x0000000000008000; op2val:0xfffffffffffffeff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x13, x8, 0x0000000000008000, 0xfffffffffffffeff, 1024, 3f, x11, 184,0)

# rs1==x10, rs2==x12, rs1_val == 65536, rs2_val == -144115188075855873
# opcode: bne, op1:x10; op2:x12; op1val:0x0000000000010000; op2val:0xfdffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x12, 0x0000000000010000, 0xfdffffffffffffff, 2, 3f, x11, 192,0)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x31, rs2==x30, rs1_val == 131072, rs2_val == 8
# opcode: bne, op1:x31; op2:x30; op1val:0x0000000000020000; op2val:0x0000000000000008; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x31, x30, 0x0000000000020000, 0x0000000000000008, 8, 3f, x4, 0,0)

# rs1==x23, rs2==x7, rs1_val == 262144, rs2_val == -1073741825
# opcode: bne, op1:x23; op2:x7; op1val:0x0000000000040000; op2val:0xffffffffbfffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x23, x7, 0x0000000000040000, 0xffffffffbfffffff, 0, 1b, x4, 8,0)

# rs1==x12, rs2==x24, rs1_val == 524288, rs2_val == 262144
# opcode: bne, op1:x12; op2:x24; op1val:0x0000000000080000; op2val:0x0000000000040000; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x12, x24, 0x0000000000080000, 0x0000000000040000, 512, 3f, x4, 16,0)

# rs1==x2, rs2==x10, rs1_val == 2097152, rs2_val == -8589934593
# opcode: bne, op1:x2; op2:x10; op1val:0x0000000000200000; op2val:0xfffffffdffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x2, x10, 0x0000000000200000, 0xfffffffdffffffff, 2, 1b, x4, 24,0)

# rs1==x29, rs2==x1, rs1_val == 4194304, 
# opcode: bne, op1:x29; op2:x1; op1val:0x0000000000400000; op2val:0x0004000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x29, x1, 0x0000000000400000, 0x0004000000000000, 1024, 1b, x4, 32,0)

# rs1==x22, rs2==x23, rs1_val == 8388608, 
# opcode: bne, op1:x22; op2:x23; op1val:0x0000000000800000; op2val:0x0000000000000004; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x22, x23, 0x0000000000800000, 0x0000000000000004, 4, 3f, x4, 40,0)

# rs1==x11, rs1_val == 16777216, rs2_val == -4398046511105
# opcode: bne, op1:x11; op2:x3; op1val:0x0000000001000000; op2val:0xfffffbffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x11, x3, 0x0000000001000000, 0xfffffbffffffffff, 0, 3f, x4, 48,0)

# rs2==x11, rs1_val == 33554432, rs2_val == 2097152
# opcode: bne, op1:x18; op2:x11; op1val:0x0000000002000000; op2val:0x0000000000200000; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x18, x11, 0x0000000002000000, 0x0000000000200000, 1366, 1b, x4, 56,0)

# rs1_val == 67108864, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0xfffffeffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000004000000, 0xfffffeffffffffff, 0, 1b, x4, 64,0)

# rs1_val == 134217728, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xffffffffffdfffff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000008000000, 0xffffffffffdfffff, 64, 3f, x4, 72,0)

# rs1_val == 268435456, rs2_val == -9
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0xfffffffffffffff7; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000010000000, 0xfffffffffffffff7, 4, 1b, x4, 80,0)

# rs1_val == 536870912, rs2_val == 562949953421312
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0002000000000000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000020000000, 0x0002000000000000, 8, 1b, x4, 88,0)

# rs1_val == 1073741824, rs2_val == 4503599627370496
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0010000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000040000000, 0x0010000000000000, 1024, 3f, x4, 96,0)

# rs1_val == 2147483648, rs2_val == 524288
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000000000080000; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000080000000, 0x0000000000080000, 16, 3f, x4, 104,0)

# rs1_val == 4294967296, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000000000000200; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000100000000, 0x0000000000000200, 32, 3f, x4, 112,0)

# rs1_val == 8589934592, rs2_val == 16
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0000000000000010; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000200000000, 0x0000000000000010, 1024, 1b, x4, 120,0)

# rs1_val == 17179869184, rs2_val == 72057594037927936
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0100000000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000400000000, 0x0100000000000000, 0, 3f, x4, 128,0)

# rs1_val == 34359738368, rs2_val == -549755813889
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xffffff7fffffffff; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000800000000, 0xffffff7fffffffff, 128, 3f, x4, 136,0)

# rs1_val == 68719476736, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000000000000007; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000001000000000, 0x0000000000000007, 16, 3f, x4, 144,0)

# rs1_val == 137438953472, rs2_val == 1152921504606846976
# opcode: bne, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x1000000000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000002000000000, 0x1000000000000000, 4, 1b, x4, 152,0)

# rs1_val == 274877906944, rs2_val == -524289
# opcode: bne, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xfffffffffff7ffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000004000000000, 0xfffffffffff7ffff, 2, 1b, x4, 160,0)

# rs1_val == 549755813888, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x1000000000000000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000008000000000, 0x1000000000000000, 8, 1b, x4, 168,0)

# rs1_val == 1099511627776, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xfffffffffffffff9; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000010000000000, 0xfffffffffffffff9, 2, 3f, x4, 176,0)

# rs1_val == 2199023255552, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xfffffffffffffff7; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000020000000000, 0xfffffffffffffff7, 8, 1b, x4, 184,0)

# rs1_val == 4398046511104, rs2_val == -34359738369
# opcode: bne, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xfffffff7ffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000040000000000, 0xfffffff7ffffffff, 0, 1b, x4, 192,0)

# rs1_val == 17592186044416, rs2_val == -4503599627370497
# opcode: bne, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xffefffffffffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000100000000000, 0xffefffffffffffff, 1366, 1b, x4, 200,0)

# rs1_val == 35184372088832, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xfffffffffffffff9; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000200000000000, 0xfffffffffffffff9, 64, 3f, x4, 208,0)

# rs1_val == 70368744177664, rs2_val == -17592186044417
# opcode: bne, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xffffefffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000400000000000, 0xffffefffffffffff, 8, 1b, x4, 216,0)

# rs1_val == 140737488355328, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfffffffffffffff6; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000800000000000, 0xfffffffffffffff6, 0, 1b, x4, 224,0)

# rs1_val == 281474976710656, rs2_val == -4097
# opcode: bne, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xffffffffffffefff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0001000000000000, 0xffffffffffffefff, 1024, 3f, x4, 232,0)

# rs1_val == 562949953421312, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0100000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0002000000000000, 0x0100000000000000, 1024, 1b, x4, 240,0)

# rs1_val == 1125899906842624, rs2_val == -131073
# opcode: bne, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffffffffdffff; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0004000000000000, 0xfffffffffffdffff, 256, 3f, x4, 248,0)

# rs1_val == 2251799813685248, rs2_val == 274877906944
# opcode: bne, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000004000000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0008000000000000, 0x0000004000000000, 6, 1b, x4, 256,0)

# rs1_val == 4503599627370496, rs2_val == -562949953421313
# opcode: bne, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfffdffffffffffff; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0010000000000000, 0xfffdffffffffffff, 10, 1b, x4, 264,0)

# rs1_val == 9007199254740992, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xffffff7fffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0020000000000000, 0xffffff7fffffffff, 0, 3f, x4, 272,0)

# rs1_val == 18014398509481984, rs2_val == -33554433
# opcode: bne, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xfffffffffdffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0040000000000000, 0xfffffffffdffffff, 0, 3f, x4, 280,0)

# rs1_val == 36028797018963968, rs2_val == 8796093022208
# opcode: bne, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000080000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0080000000000000, 0x0000080000000000, 0, 1b, x4, 288,0)

# rs1_val == 72057594037927936, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000040000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0100000000000000, 0x0000000000040000, 8, 3f, x4, 296,0)

# rs1_val == 144115188075855872, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xfffffffffffffff8; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0200000000000000, 0xfffffffffffffff8, 2, 3f, x4, 304,0)

# rs1_val == 288230376151711744, rs2_val == -5
# opcode: bne, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xfffffffffffffffb; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0400000000000000, 0xfffffffffffffffb, 256, 3f, x4, 312,0)

# rs1_val == 576460752303423488, rs2_val == 2147483648
# opcode: bne, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000080000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0800000000000000, 0x0000000080000000, 6, 3f, x4, 320,0)

# rs1_val == 1152921504606846976, rs2_val == -137438953473
# opcode: bne, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xffffffdfffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x1000000000000000, 0xffffffdfffffffff, 0, 1b, x4, 328,0)

# rs1_val == 2305843009213693952, 
# opcode: bne, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x1000000000000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x2000000000000000, 0x1000000000000000, 2, 1b, x4, 336,0)

# rs1_val == -9223372036854775808, 
# opcode: bne, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xfffffffffffffff8; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x8000000000000000, 0xfffffffffffffff8, 2, 3f, x4, 344,0)

# rs1_val == -2, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xfeffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffe, 0xfeffffffffffffff, 128, 3f, x4, 352,0)

# rs1_val == -3, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0xfffffffffffffeff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffd, 0xfffffffffffffeff, 1024, 3f, x4, 360,0)

# rs1_val == -5, rs2_val == 1073741824
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000000040000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffb, 0x0000000040000000, 1024, 3f, x4, 368,0)

# rs1_val == -9, rs2_val == 1024
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000000400; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffff7, 0x0000000000000400, 4, 1b, x4, 376,0)

# rs1_val == -17, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xfdffffffffffffff; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffef, 0xfdffffffffffffff, 10, 1b, x4, 384,0)

# rs1_val == -33, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xfffffffffffffffd; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffdf, 0xfffffffffffffffd, 1024, 1b, x4, 392,0)

# rs1_val == -65, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000000000400; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffbf, 0x0000000000000400, 0, 3f, x4, 400,0)

# rs1_val == -129, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xfffffffffffffff8; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffff7f, 0xfffffffffffffff8, 10, 1b, x4, 408,0)

# rs1_val == -257, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x4000000000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffeff, 0x4000000000000000, 0, 1b, x4, 416,0)

# rs1_val == -513, rs2_val == 140737488355328
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000800000000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffdff, 0x0000800000000000, 2, 1b, x4, 424,0)

# rs1_val == -1025, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0010000000000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffbff, 0x0010000000000000, 6, 1b, x4, 432,0)

# rs1_val == -2049, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000000000000007; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffff7ff, 0x0000000000000007, 1024, 1b, x4, 440,0)

# rs1_val == -4097, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xffffffffffffefff; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffefff, 0xffffffffffffefff, 10, 1b, x4, 448,0)

# rs1_val == -32769, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000200000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffff7fff, 0x0000000000200000, 4, 1b, x4, 456,0)

# rs2_val == -9007199254740993, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0xffdfffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffff, 0xffdfffffffffffff, 2, 3f, x4, 464,0)

# rs2_val == -18014398509481985, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0xffbfffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0100000000000000, 0xffbfffffffffffff, 0, 1b, x4, 472,0)

# rs2_val == -36028797018963969, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0xff7fffffffffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000020000, 0xff7fffffffffffff, 1366, 1b, x4, 480,0)

# rs2_val == -288230376151711745, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xfbffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0800000000000000, 0xfbffffffffffffff, 2, 1b, x4, 488,0)

# rs2_val == -576460752303423489, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0xf7ffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffbff, 0xf7ffffffffffffff, 0, 3f, x4, 496,0)

# rs2_val == -1152921504606846977, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xefffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000100000000000, 0xefffffffffffffff, 1024, 3f, x4, 504,0)

# rs2_val == -2305843009213693953, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xdfffffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000400000000000, 0xdfffffffffffffff, 512, 3f, x4, 512,0)

# rs2_val == -4611686018427387905, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffa; op2val:0xbfffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffa, 0xbfffffffffffffff, 2, 3f, x4, 520,0)

# rs2_val == 9223372036854775807, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x7fffffffffffffff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000020000000000, 0x7fffffffffffffff, 64, 3f, x4, 528,0)

# rs2_val == 6148914691236517205, rs1_val == -1152921504606846977
# opcode: bne, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x5555555555555555; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xefffffffffffffff, 0x5555555555555555, 2, 3f, x4, 536,0)

# rs2_val == -6148914691236517206, rs1_val == -8589934593
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffdffffffff, 0xaaaaaaaaaaaaaaaa, 10, 1b, x4, 544,0)

# rs1_val == -65537, rs2_val == 134217728
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0000000008000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffeffff, 0x0000000008000000, 2, 1b, x4, 552,0)

# rs1_val == -131073, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffffffffff7ffff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffdffff, 0xfffffffffff7ffff, 6, 3f, x4, 560,0)

# rs1_val == -524289, rs2_val == 16777216
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000001000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffff7ffff, 0x0000000001000000, 0, 3f, x4, 568,0)

# rs1_val == -1048577, rs2_val == -4194305
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0xffffffffffbfffff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffefffff, 0xffffffffffbfffff, 6, 3f, x4, 576,0)

# rs1_val == -2097153, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0010000000000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffdfffff, 0x0010000000000000, 6, 3f, x4, 584,0)

# rs1_val == -4194305, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xfffffffffffffffc; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffbfffff, 0xfffffffffffffffc, 1024, 3f, x4, 592,0)

# rs1_val == -8388609, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xfffffeffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffff7fffff, 0xfffffeffffffffff, 0, 3f, x4, 600,0)

# rs1_val == -16777217, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xbfffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffeffffff, 0xbfffffffffffffff, 128, 3f, x4, 608,0)

# rs1_val == -33554433, rs2_val == -32769
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffffffffffff7fff; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffdffffff, 0xffffffffffff7fff, 256, 3f, x4, 616,0)

# rs1_val == -67108865, rs2_val == -140737488355329
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xffff7fffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffbffffff, 0xffff7fffffffffff, 2, 1b, x4, 624,0)

# rs1_val == -134217729, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xc000000000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffff7ffffff, 0xc000000000000000, 4, 3f, x4, 632,0)

# rs1_val == -268435457, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000000020000000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffefffffff, 0x0000000020000000, 8, 1b, x4, 640,0)

# rs1_val == -536870913, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0000000000080000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffdfffffff, 0x0000000000080000, 1024, 3f, x4, 648,0)

# rs1_val == -1073741825, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000000000200000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffbfffffff, 0x0000000000200000, 2, 1b, x4, 656,0)

# rs1_val == -2147483649, rs2_val == 2251799813685248
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0008000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffff7fffffff, 0x0008000000000000, 1024, 3f, x4, 664,0)

# rs1_val == -4294967297, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfdffffffffffffff; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffeffffffff, 0xfdffffffffffffff, 32, 3f, x4, 672,0)

# rs1_val == -17179869185, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xfffffffffffffdff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffbffffffff, 0xfffffffffffffdff, 6, 3f, x4, 680,0)

# rs1_val == -34359738369, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xffbfffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffff7ffffffff, 0xffbfffffffffffff, 0, 1b, x4, 688,0)

# rs1_val == -68719476737, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0000000000000000; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffefffffffff, 0x0000000000000000, 512, 3f, x4, 696,0)

# rs1_val == -137438953473, rs2_val == -1048577
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xffffffffffefffff; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffdfffffffff, 0xffffffffffefffff, 128, 3f, x4, 704,0)

# rs1_val == -274877906945, rs2_val == -2147483649
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xffffffff7fffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffbfffffffff, 0xffffffff7fffffff, 0, 1b, x4, 712,0)

# rs1_val == -549755813889, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0000000000000200; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffff7fffffffff, 0x0000000000000200, 256, 3f, x4, 720,0)

# rs1_val == -1099511627777, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000004000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffeffffffffff, 0x0000000004000000, 6, 1b, x4, 728,0)

# rs1_val == -2199023255553, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xffffffffffff7fff; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffdffffffffff, 0xffffffffffff7fff, 4, 3f, x4, 736,0)

# rs1_val == -4398046511105, rs2_val == 137438953472
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000002000000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffbffffffffff, 0x0000002000000000, 2, 3f, x4, 744,0)

# rs1_val == -8796093022209, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xffffffffffefffff; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffff7ffffffffff, 0xffffffffffefffff, 4, 3f, x4, 752,0)

# rs1_val == -17592186044417, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0xffffefffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffefffffffffff, 0xffffefffffffffff, 8, 1b, x4, 760,0)

# rs1_val == -35184372088833, rs2_val == -65537
# opcode: bne, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xfffffffffffeffff; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffdfffffffffff, 0xfffffffffffeffff, 4, 1b, x4, 768,0)

# rs1_val == -70368744177665, rs2_val == 18014398509481984
# opcode: bne, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x0040000000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffbfffffffffff, 0x0040000000000000, 4, 3f, x4, 776,0)

# rs1_val == -140737488355329, rs2_val == -536870913
# opcode: bne, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xffffffffdfffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffff7fffffffffff, 0xffffffffdfffffff, 1366, 1b, x4, 784,0)

# rs1_val == -281474976710657, rs2_val == -281474976710657
# opcode: bne, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xfffeffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffeffffffffffff, 0xfffeffffffffffff, 1024, 1b, x4, 792,0)

# rs1_val == -562949953421313, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffffffffffffffc; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffdffffffffffff, 0xfffffffffffffffc, 128, 3f, x4, 800,0)

# rs1_val == -1125899906842625, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xfffffffdffffffff; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffbffffffffffff, 0xfffffffdffffffff, 4, 1b, x4, 808,0)

# rs1_val == -2251799813685249, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000080000000; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfff7ffffffffffff, 0x0000000080000000, 16, 3f, x4, 816,0)

# rs1_val == -4503599627370497, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x4000000000000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffefffffffffffff, 0x4000000000000000, 6, 1b, x4, 824,0)

# rs1_val == -9007199254740993, rs2_val == 8388608
# opcode: bne, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0000000000800000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffdfffffffffffff, 0x0000000000800000, 8, 3f, x4, 832,0)

# rs1_val == -18014398509481985, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000000040000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffbfffffffffffff, 0x0000000040000000, 2, 1b, x4, 840,0)

# rs1_val == -36028797018963969, rs2_val == -68719476737
# opcode: bne, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xffffffefffffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xff7fffffffffffff, 0xffffffefffffffff, 1366, 1b, x4, 848,0)

# rs1_val == -72057594037927937, rs2_val == 64
# opcode: bne, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x0000000000000040; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfeffffffffffffff, 0x0000000000000040, 8, 3f, x4, 856,0)

# rs1_val == -144115188075855873, rs2_val == 4398046511104
# opcode: bne, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000040000000000; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfdffffffffffffff, 0x0000040000000000, 128, 3f, x4, 864,0)

# rs1_val == -288230376151711745, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000008000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfbffffffffffffff, 0x0000000008000000, 0, 3f, x4, 872,0)

# rs1_val == -576460752303423489, 
# opcode: bne, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000020000000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xf7ffffffffffffff, 0x0000020000000000, 1366, 1b, x4, 880,0)

# rs1_val == -2305843009213693953, 
# opcode: bne, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000000000200000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xdfffffffffffffff, 0x0000000000200000, 0, 3f, x4, 888,0)

# rs1_val == -4611686018427387905, 
# opcode: bne, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0000000001000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xbfffffffffffffff, 0x0000000001000000, 6, 3f, x4, 896,0)

# rs1_val == 9223372036854775807, 
# opcode: bne, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0010000000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x7fffffffffffffff, 0x0010000000000000, 4, 3f, x4, 904,0)

# rs1_val == 6148914691236517205, 
# opcode: bne, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000000000000005; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x5555555555555555, 0x0000000000000005, 8, 3f, x4, 912,0)

# rs1_val == -6148914691236517206, rs2_val == 32
# opcode: bne, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x0000000000000020; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xaaaaaaaaaaaaaaaa, 0x0000000000000020, 10, 1b, x4, 920,0)

# rs2_val == 1, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000000000000001; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffff7fffffffffff, 0x0000000000000001, 10, 1b, x4, 928,0)

# rs2_val == 2, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000000000002; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffff7ffffffff, 0x0000000000000002, 256, 3f, x4, 936,0)

# rs2_val == 256, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000040000; op2val:0x0000000000000100; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000040000, 0x0000000000000100, 16, 3f, x4, 944,0)

# rs2_val == 2048, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000000000800; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000400000000000, 0x0000000000000800, 256, 3f, x4, 952,0)

# rs2_val == 8192, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000000000002000; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffbfff, 0x0000000000002000, 10, 1b, x4, 960,0)

# rs2_val == 16384, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000000000004000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffd, 0x0000000000004000, 6, 3f, x4, 968,0)

# rs2_val == 32768, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000000000008000; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffff7fffff, 0x0000000000008000, 128, 3f, x4, 976,0)

# rs2_val == 65536, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0x0000000000010000; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffff, 0x0000000000010000, 256, 3f, x4, 984,0)

# rs2_val == 131072, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffff9; op2val:0x0000000000020000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffff9, 0x0000000000020000, 1024, 1b, x4, 992,0)

# rs2_val == 1048576, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000000100000; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000004000000000, 0x0000000000100000, 16, 3f, x4, 1000,0)

# rs2_val == 33554432, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000002000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000010000000, 0x0000000002000000, 1024, 3f, x4, 1008,0)

# rs2_val == 268435456, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000000010000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000001000000000, 0x0000000010000000, 1024, 3f, x4, 1016,0)

# rs2_val == 4294967296, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000000100000000; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffefffffffffff, 0x0000000100000000, 64, 3f, x4, 1024,0)

# rs2_val == 8589934592, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0x0000000200000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000020000, 0x0000000200000000, 2, 3f, x4, 1032,0)

# rs2_val == 17179869184, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000400000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffff7ffffffffff, 0x0000000400000000, 2, 1b, x4, 1040,0)

# rs2_val == 34359738368, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000800000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffff7ffffffff, 0x0000000800000000, 1366, 1b, x4, 1048,0)

# rs2_val == 68719476736, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000001000000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffd, 0x0000001000000000, 1366, 1b, x4, 1056,0)

# rs2_val == 549755813888, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0x0000008000000000; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000007, 0x0000008000000000, 32, 3f, x4, 1064,0)

# rs2_val == 9007199254740992, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffa; op2val:0x0020000000000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffa, 0x0020000000000000, 2, 3f, x4, 1072,0)

# rs2_val == 36028797018963968, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0080000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffefffffffffff, 0x0080000000000000, 1024, 3f, x4, 1080,0)

# rs2_val == 144115188075855872, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0x0200000000000000; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffbffffff, 0x0200000000000000, 64, 3f, x4, 1088,0)

# rs2_val == 576460752303423488, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0x0800000000000000; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000800, 0x0800000000000000, 16, 3f, x4, 1096,0)

# rs2_val == 2305843009213693952, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000001; op2val:0x2000000000000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000001, 0x2000000000000000, 6, 1b, x4, 1104,0)

# rs2_val == -9223372036854775808, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0x8000000000000000; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000020, 0x8000000000000000, 10, 1b, x4, 1112,0)

# rs2_val == -2, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000000; op2val:0xfffffffffffffffe; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 6, 3f, x4, 1120,0)

# rs2_val == -17, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0xffffffffffffffef; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000100, 0xffffffffffffffef, 8, 1b, x4, 1128,0)

# rs2_val == -65, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0xffffffffffffffbf; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000002000000, 0xffffffffffffffbf, 6, 3f, x4, 1136,0)

# rs2_val == -1025, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xfffffffffffffbff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffff7ffffff, 0xfffffffffffffbff, 512, 3f, x4, 1144,0)

# rs2_val == -2049, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfffffffffffff7ff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffbffffffffff, 0xfffffffffffff7ff, 1024, 3f, x4, 1152,0)

# rs2_val == -8193, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xffffffffffffdfff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffff7ffffffff, 0xffffffffffffdfff, 1024, 1b, x4, 1160,0)

# rs2_val == -262145, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xfffffffffffbffff; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffff7fffffff, 0xfffffffffffbffff, 16, 3f, x4, 1168,0)

# rs2_val == -8388609, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0xffffffffff7fffff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0008000000000000, 0xffffffffff7fffff, 64, 3f, x4, 1176,0)

# rs2_val == -35184372088833, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffc; op2val:0xffffdfffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffc, 0xffffdfffffffffff, 2, 1b, x4, 1184,0)

# rs2_val == -67108865, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0xfffffffffbffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000020, 0xfffffffffbffffff, 2, 3f, x4, 1192,0)

# rs2_val == -134217729, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xfffffffff7ffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffef, 0xfffffffff7ffffff, 2, 3f, x4, 1200,0)

# rs2_val == -268435457, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0xffffffffefffffff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffff, 0xffffffffefffffff, 64, 3f, x4, 1208,0)

# rs2_val == -70368744177665, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0xffffbfffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000008, 0xffffbfffffffffff, 8, 1b, x4, 1216,0)

# rs2_val == -4294967297, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0xfffffffeffffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000010000, 0xfffffffeffffffff, 1366, 1b, x4, 1224,0)

# rs2_val == -17179869185, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0xfffffffbffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000040, 0xfffffffbffffffff, 6, 1b, x4, 1232,0)

# rs2_val == -274877906945, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffffbfffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0040000000000000, 0xffffffbfffffffff, 8, 3f, x4, 1240,0)

# rs2_val == 1099511627776, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0x0000010000000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000080, 0x0000010000000000, 6, 1b, x4, 1248,0)

# rs2_val == -2199023255553, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xfffffdffffffffff; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000008000000, 0xfffffdffffffffff, 4, 1b, x4, 1256,0)

# rs2_val == -8796093022209, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xfffff7ffffffffff; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000008000, 0xfffff7ffffffffff, 10, 1b, x4, 1264,0)

# rs2_val == 17592186044416, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0000100000000000; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffdfff, 0x0000100000000000, 64, 3f, x4, 1272,0)

# rs2_val == 35184372088832, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0000200000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffdfffff, 0x0000200000000000, 0, 3f, x4, 1280,0)

# rs2_val == 70368744177664, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000400000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffbffffffff, 0x0000400000000000, 1024, 3f, x4, 1288,0)

# rs2_val == 281474976710656, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0001000000000000; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffff7ff, 0x0001000000000000, 512, 3f, x4, 1296,0)

# rs2_val == -1125899906842625, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xfffbffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffff7fffffffffff, 0xfffbffffffffffff, 0, 1b, x4, 1304,0)

# rs2_val == -2251799813685249, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xfff7ffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffeff, 0xfff7ffffffffffff, 8, 1b, x4, 1312,0)

# rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -2097153, rs1_val == 8796093022208, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0
# opcode: bne, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xffffffffffdfffff; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000080000000000, 0xffffffffffdfffff, 128, 3f, x4, 1320,0)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x11_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x11_1:
    .fill 25*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 166*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
