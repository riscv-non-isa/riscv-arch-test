
#This assembly file tests the bne instruction of the RISC-V I extension for the bne covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bne)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 == rs2, rs1==x11, rs2==x11, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs2_val == 65536, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 137438953472
# opcode: bne, op1:x11; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000010000; immval:8; align:0
TEST_BRANCH_OP(bne, x3, x11, x11, 0x0000002000000000, 0x0000000000010000, 8, 3f, x7, 0,0)

# rs1 != rs2, rs1==x1, rs2==x8, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val == 4, rs2_val == -513
# opcode: bne, op1:x1; op2:x8; op1val:0x0000000000000004; op2val:0xfffffffffffffdff; immval:16; align:0
TEST_BRANCH_OP(bne, x3, x1, x8, 0x0000000000000004, 0xfffffffffffffdff, 16, 3f, x7, 8,0)

# rs1==x26, rs2==x31, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val == -2305843009213693953
# opcode: bne, op1:x26; op2:x31; op1val:0xdfffffffffffffff; op2val:0xc000000000000000; immval:16; align:0
TEST_BRANCH_OP(bne, x3, x26, x31, 0xdfffffffffffffff, 0xc000000000000000, 16, 3f, x7, 16,0)

# rs1==x24, rs2==x9, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == -513, rs2_val == 512
# opcode: bne, op1:x24; op2:x9; op1val:0xfffffffffffffdff; op2val:0x0000000000000200; immval:128; align:0
TEST_BRANCH_OP(bne, x3, x24, x9, 0xfffffffffffffdff, 0x0000000000000200, 128, 3f, x7, 24,0)

# rs1==x29, rs2==x30, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == 4503599627370496, rs1_val == 4503599627370496
# opcode: bne, op1:x29; op2:x30; op1val:0x0010000000000000; op2val:0x0010000000000000; immval:64; align:0
TEST_BRANCH_OP(bne, x3, x29, x30, 0x0010000000000000, 0x0010000000000000, 64, 3f, x7, 32,0)

# rs1==x14, rs2==x16, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == -2097153, rs1_val == -2097153
# opcode: bne, op1:x14; op2:x16; op1val:0xffffffffffdfffff; op2val:0xffffffffffdfffff; immval:8; align:0
TEST_BRANCH_OP(bne, x3, x14, x16, 0xffffffffffdfffff, 0xffffffffffdfffff, 8, 1b, x7, 40,0)

# rs1==x5, rs2==x22, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == 64, rs1_val == 134217728
# opcode: bne, op1:x5; op2:x22; op1val:0x0000000008000000; op2val:0x0000000000000040; immval:4; align:0
TEST_BRANCH_OP(bne, x3, x5, x22, 0x0000000008000000, 0x0000000000000040, 4, 1b, x7, 48,0)

# rs1==x18, rs2==x20, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == -536870913
# opcode: bne, op1:x18; op2:x20; op1val:0xffffffffdfffffff; op2val:0xffffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x3, x18, x20, 0xffffffffdfffffff, 0xffffffffffffffff, 1024, 1b, x7, 56,0)

# rs1==x4, rs2==x5, rs1_val == 1, 
# opcode: bne, op1:x4; op2:x5; op1val:0x0000000000000001; op2val:0x0000000000000009; immval:256; align:0
TEST_BRANCH_OP(bne, x3, x4, x5, 0x0000000000000001, 0x0000000000000009, 256, 3f, x7, 64,0)

# rs1==x19, rs2==x2, rs1_val == 2, rs2_val == -262145
# opcode: bne, op1:x19; op2:x2; op1val:0x0000000000000002; op2val:0xfffffffffffbffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x3, x19, x2, 0x0000000000000002, 0xfffffffffffbffff, 1024, 3f, x7, 72,0)

# rs1==x16, rs2==x19, rs1_val == 8, rs2_val == 32
# opcode: bne, op1:x16; op2:x19; op1val:0x0000000000000008; op2val:0x0000000000000020; immval:256; align:0
TEST_BRANCH_OP(bne, x3, x16, x19, 0x0000000000000008, 0x0000000000000020, 256, 3f, x7, 80,0)

# rs1==x21, rs2==x27, rs1_val == 16, rs2_val == 128
# opcode: bne, op1:x21; op2:x27; op1val:0x0000000000000010; op2val:0x0000000000000080; immval:6; align:0
TEST_BRANCH_OP(bne, x3, x21, x27, 0x0000000000000010, 0x0000000000000080, 6, 1b, x7, 88,0)

# rs1==x31, rs2==x29, rs1_val == 32, rs2_val == -562949953421313
# opcode: bne, op1:x31; op2:x29; op1val:0x0000000000000020; op2val:0xfffdffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x3, x31, x29, 0x0000000000000020, 0xfffdffffffffffff, 6, 1b, x7, 96,0)

# rs1==x23, rs2==x4, rs1_val == 64, rs2_val == -6148914691236517206
# opcode: bne, op1:x23; op2:x4; op1val:0x0000000000000040; op2val:0xaaaaaaaaaaaaaaaa; immval:512; align:0
TEST_BRANCH_OP(bne, x3, x23, x4, 0x0000000000000040, 0xaaaaaaaaaaaaaaaa, 512, 3f, x7, 104,0)

# rs1==x30, rs2==x21, rs1_val == 128, rs2_val == 2097152
# opcode: bne, op1:x30; op2:x21; op1val:0x0000000000000080; op2val:0x0000000000200000; immval:64; align:0
TEST_BRANCH_OP(bne, x3, x30, x21, 0x0000000000000080, 0x0000000000200000, 64, 3f, x7, 112,0)

# rs1==x9, rs2==x14, rs1_val == 256, rs2_val == -68719476737
# opcode: bne, op1:x9; op2:x14; op1val:0x0000000000000100; op2val:0xffffffefffffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x3, x9, x14, 0x0000000000000100, 0xffffffefffffffff, 256, 3f, x7, 120,0)

# rs1==x15, rs2==x28, rs1_val == 512, rs2_val == 549755813888
# opcode: bne, op1:x15; op2:x28; op1val:0x0000000000000200; op2val:0x0000008000000000; immval:128; align:0
TEST_BRANCH_OP(bne, x3, x15, x28, 0x0000000000000200, 0x0000008000000000, 128, 3f, x7, 128,0)

# rs1==x0, rs2==x6, rs1_val == 1024, rs2_val == -4097
# opcode: bne, op1:x0; op2:x6; op1val:0x0000000000000400; op2val:0xffffffffffffefff; immval:4; align:0
TEST_BRANCH_OP(bne, x3, x0, x6, 0x0000000000000400, 0xffffffffffffefff, 4, 3f, x7, 136,0)

# rs1==x12, rs2==x15, rs1_val == 2048, rs2_val == -17179869185
# opcode: bne, op1:x12; op2:x15; op1val:0x0000000000000800; op2val:0xfffffffbffffffff; immval:64; align:0
TEST_BRANCH_OP(bne, x3, x12, x15, 0x0000000000000800, 0xfffffffbffffffff, 64, 3f, x7, 144,0)

# rs1==x28, rs2==x1, rs1_val == 4096, 
# opcode: bne, op1:x28; op2:x1; op1val:0x0000000000001000; op2val:0x0000000000000080; immval:8; align:0
TEST_BRANCH_OP(bne, x3, x28, x1, 0x0000000000001000, 0x0000000000000080, 8, 1b, x7, 152,0)

# rs1==x10, rs2==x0, rs1_val == 8192, 
# opcode: bne, op1:x10; op2:x0; op1val:0x0000000000002000; op2val:0xfffffffffffffdff; immval:0; align:0
TEST_BRANCH_OP(bne, x3, x10, x0, 0x0000000000002000, 0xfffffffffffffdff, 0, 3f, x7, 160,0)

# rs1==x6, rs2==x25, rs1_val == 16384, rs2_val == -4503599627370497
# opcode: bne, op1:x6; op2:x25; op1val:0x0000000000004000; op2val:0xffefffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x3, x6, x25, 0x0000000000004000, 0xffefffffffffffff, 6, 3f, x7, 168,0)

# rs1==x22, rs2==x23, rs1_val == 32768, rs2_val == -33554433
# opcode: bne, op1:x22; op2:x23; op1val:0x0000000000008000; op2val:0xfffffffffdffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x22, x23, 0x0000000000008000, 0xfffffffffdffffff, 1024, 3f, x7, 176,0)

# rs1==x3, rs2==x13, rs1_val == 65536, rs2_val == 4194304
# opcode: bne, op1:x3; op2:x13; op1val:0x0000000000010000; op2val:0x0000000000400000; immval:2; align:0
TEST_BRANCH_OP(bne, x4, x3, x13, 0x0000000000010000, 0x0000000000400000, 2, 3f, x7, 184,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x20, rs2==x7, rs1_val == 131072, 
# opcode: bne, op1:x20; op2:x7; op1val:0x0000000000020000; op2val:0x0010000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x20, x7, 0x0000000000020000, 0x0010000000000000, 1024, 1b, x1, 0,0)

# rs1==x13, rs2==x18, rs1_val == 262144, 
# opcode: bne, op1:x13; op2:x18; op1val:0x0000000000040000; op2val:0x0000000000000020; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x13, x18, 0x0000000000040000, 0x0000000000000020, 6, 1b, x1, 8,0)

# rs1==x2, rs2==x24, rs1_val == 524288, rs2_val == -2049
# opcode: bne, op1:x2; op2:x24; op1val:0x0000000000080000; op2val:0xfffffffffffff7ff; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x2, x24, 0x0000000000080000, 0xfffffffffffff7ff, 4, 3f, x1, 16,0)

# rs1==x25, rs2==x10, rs1_val == 1048576, 
# opcode: bne, op1:x25; op2:x10; op1val:0x0000000000100000; op2val:0x0000000000200000; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x25, x10, 0x0000000000100000, 0x0000000000200000, 10, 1b, x1, 24,0)

# rs1==x8, rs2==x26, rs1_val == 2097152, rs2_val == 18014398509481984
# opcode: bne, op1:x8; op2:x26; op1val:0x0000000000200000; op2val:0x0040000000000000; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x8, x26, 0x0000000000200000, 0x0040000000000000, 6, 1b, x1, 32,0)

# rs1==x17, rs2==x3, rs1_val == 4194304, rs2_val == -281474976710657
# opcode: bne, op1:x17; op2:x3; op1val:0x0000000000400000; op2val:0xfffeffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x17, x3, 0x0000000000400000, 0xfffeffffffffffff, 0, 1b, x1, 40,0)

# rs1==x27, rs2==x17, rs1_val == 8388608, 
# opcode: bne, op1:x27; op2:x17; op1val:0x0000000000800000; op2val:0xfffffffffffff7ff; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x27, x17, 0x0000000000800000, 0xfffffffffffff7ff, 512, 3f, x1, 48,0)

# rs1==x7, rs2==x12, rs1_val == 16777216, rs2_val == 134217728
# opcode: bne, op1:x7; op2:x12; op1val:0x0000000001000000; op2val:0x0000000008000000; immval:2; align:0
TEST_BRANCH_OP(bne, x4, x7, x12, 0x0000000001000000, 0x0000000008000000, 2, 3f, x1, 56,0)

# rs1_val == 33554432, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0x0000000000000080; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000002000000, 0x0000000000000080, 10, 1b, x1, 64,0)

# rs1_val == 67108864, rs2_val == -2199023255553
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0xfffffdffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000004000000, 0xfffffdffffffffff, 8, 1b, x1, 72,0)

# rs1_val == 268435456, rs2_val == 2147483648
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000080000000; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000010000000, 0x0000000080000000, 6, 1b, x1, 80,0)

# rs1_val == 536870912, rs2_val == 4398046511104
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000040000000000; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000020000000, 0x0000040000000000, 6, 1b, x1, 88,0)

# rs1_val == 1073741824, rs2_val == -33
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0xffffffffffffffdf; immval:16; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000040000000, 0xffffffffffffffdf, 16, 3f, x1, 96,0)

# rs1_val == 2147483648, rs2_val == 8796093022208
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000080000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000080000000, 0x0000080000000000, 4, 1b, x1, 104,0)

# rs1_val == 4294967296, rs2_val == -129
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0xffffffffffffff7f; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000100000000, 0xffffffffffffff7f, 4, 3f, x1, 112,0)

# rs1_val == 8589934592, rs2_val == -137438953473
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffffffdfffffffff; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000200000000, 0xffffffdfffffffff, 32, 3f, x1, 120,0)

# rs1_val == 17179869184, rs2_val == -2305843009213693953
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xdfffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000400000000, 0xdfffffffffffffff, 6, 3f, x1, 128,0)

# rs1_val == 34359738368, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x0000000000010000; immval:128; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000800000000, 0x0000000000010000, 128, 3f, x1, 136,0)

# rs1_val == 68719476736, rs2_val == -1025
# opcode: bne, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xfffffffffffffbff; immval:128; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000001000000000, 0xfffffffffffffbff, 128, 3f, x1, 144,0)

# rs1_val == 274877906944, rs2_val == -576460752303423489
# opcode: bne, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xf7ffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000004000000000, 0xf7ffffffffffffff, 128, 3f, x1, 152,0)

# rs1_val == 549755813888, rs2_val == 576460752303423488
# opcode: bne, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x0800000000000000; immval:2; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000008000000000, 0x0800000000000000, 2, 3f, x1, 160,0)

# rs1_val == 1099511627776, rs2_val == -34359738369
# opcode: bne, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xfffffff7ffffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000010000000000, 0xfffffff7ffffffff, 256, 3f, x1, 168,0)

# rs1_val == 2199023255552, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xffefffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000020000000000, 0xffefffffffffffff, 0, 3f, x1, 176,0)

# rs1_val == 4398046511104, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000000000000; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000040000000000, 0x0000000000000000, 256, 3f, x1, 184,0)

# rs1_val == 8796093022208, rs2_val == -65
# opcode: bne, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xffffffffffffffbf; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000080000000000, 0xffffffffffffffbf, 512, 3f, x1, 192,0)

# rs1_val == 17592186044416, rs2_val == 2199023255552
# opcode: bne, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000020000000000; immval:128; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000100000000000, 0x0000020000000000, 128, 3f, x1, 200,0)

# rs1_val == 35184372088832, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xfffffffffffbffff; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000200000000000, 0xfffffffffffbffff, 256, 3f, x1, 208,0)

# rs1_val == 70368744177664, rs2_val == 2
# opcode: bne, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000000000002; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000400000000000, 0x0000000000000002, 10, 1b, x1, 216,0)

# rs1_val == 140737488355328, rs2_val == 281474976710656
# opcode: bne, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0001000000000000; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000800000000000, 0x0001000000000000, 10, 1b, x1, 224,0)

# rs1_val == 281474976710656, rs2_val == -16385
# opcode: bne, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xffffffffffffbfff; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0001000000000000, 0xffffffffffffbfff, 32, 3f, x1, 232,0)

# rs1_val == 562949953421312, rs2_val == 6148914691236517205
# opcode: bne, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x5555555555555555; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0002000000000000, 0x5555555555555555, 512, 3f, x1, 240,0)

# rs1_val == 1125899906842624, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xdfffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0004000000000000, 0xdfffffffffffffff, 1024, 1b, x1, 248,0)

# rs1_val == 2251799813685248, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0010000000000000; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0008000000000000, 0x0010000000000000, 8, 1b, x1, 256,0)

# rs1_val == 9007199254740992, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xffffffffffdfffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0020000000000000, 0xffffffffffdfffff, 1024, 3f, x1, 264,0)

# rs1_val == 18014398509481984, rs2_val == 140737488355328
# opcode: bne, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0x0000800000000000; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0040000000000000, 0x0000800000000000, 8, 1b, x1, 272,0)

# rs1_val == 36028797018963968, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xffffffffffffefff; immval:128; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0080000000000000, 0xffffffffffffefff, 128, 3f, x1, 280,0)

# rs1_val == 72057594037927936, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000080000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0100000000000000, 0x0000080000000000, 4, 1b, x1, 288,0)

# rs1_val == 144115188075855872, rs2_val == -70368744177665
# opcode: bne, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xffffbfffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0200000000000000, 0xffffbfffffffffff, 0, 3f, x1, 296,0)

# rs1_val == 288230376151711744, rs2_val == 4096
# opcode: bne, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x0000000000001000; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0400000000000000, 0x0000000000001000, 10, 1b, x1, 304,0)

# rs1_val == 576460752303423488, rs2_val == 268435456
# opcode: bne, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000010000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0800000000000000, 0x0000000010000000, 1024, 1b, x1, 312,0)

# rs1_val == 1152921504606846976, rs2_val == 33554432
# opcode: bne, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x0000000002000000; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x1000000000000000, 0x0000000002000000, 32, 3f, x1, 320,0)

# rs1_val == 2305843009213693952, rs2_val == 8192
# opcode: bne, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0x0000000000002000; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x2000000000000000, 0x0000000000002000, 32, 3f, x1, 328,0)

# rs1_val == 4611686018427387904, 
# opcode: bne, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xf7ffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x4000000000000000, 0xf7ffffffffffffff, 0, 1b, x1, 336,0)

# rs1_val == -9223372036854775808, rs2_val == 67108864
# opcode: bne, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0000000004000000; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x8000000000000000, 0x0000000004000000, 64, 3f, x1, 344,0)

# rs1_val == -2, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xfffffff7ffffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffffffe, 0xfffffff7ffffffff, 1366, 1b, x1, 352,0)

# rs1_val == -3, rs2_val == 256
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000000000000100; immval:16; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffffffd, 0x0000000000000100, 16, 3f, x1, 360,0)

# rs1_val == -5, rs2_val == -4611686018427387905
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xbfffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffffffb, 0xbfffffffffffffff, 6, 1b, x1, 368,0)

# rs1_val == -9, rs2_val == -9
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xfffffffffffffff7; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffffff7, 0xfffffffffffffff7, 4, 3f, x1, 376,0)

# rs1_val == -17, rs2_val == -274877906945
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xffffffbfffffffff; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffffffef, 0xffffffbfffffffff, 64, 3f, x1, 384,0)

# rs1_val == -33, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000080000000; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffffffdf, 0x0000000080000000, 8, 3f, x1, 392,0)

# rs1_val == -65, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0xfffffff7ffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffffffbf, 0xfffffff7ffffffff, 8, 3f, x1, 400,0)

# rs1_val == -129, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0x0000000000000200; immval:2; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffffff7f, 0x0000000000000200, 2, 1b, x1, 408,0)

# rs1_val == -257, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x5555555555555555; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffffeff, 0x5555555555555555, 1366, 1b, x1, 416,0)

# rs1_val == -1025, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000000000000040; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffffbff, 0x0000000000000040, 256, 3f, x1, 424,0)

# rs1_val == -2049, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0040000000000000; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffff7ff, 0x0040000000000000, 512, 3f, x1, 432,0)

# rs1_val == -4097, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000000400000; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffffefff, 0x0000000000400000, 256, 3f, x1, 440,0)

# rs1_val == -8193, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0000000000000200; immval:2; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffffdfff, 0x0000000000000200, 2, 3f, x1, 448,0)

# rs2_val == -9007199254740993, rs1_val == -70368744177665
# opcode: bne, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xffdfffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffbfffffffffff, 0xffdfffffffffffff, 128, 3f, x1, 456,0)

# rs2_val == -18014398509481985, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000200; op2val:0xffbfffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000200, 0xffbfffffffffffff, 8, 1b, x1, 464,0)

# rs2_val == -36028797018963969, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xff7fffffffffffff; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0800000000000000, 0xff7fffffffffffff, 64, 3f, x1, 472,0)

# rs2_val == -72057594037927937, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xfeffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0800000000000000, 0xfeffffffffffffff, 6, 1b, x1, 480,0)

# rs2_val == -144115188075855873, rs1_val == -67108865
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xfdffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffbffffff, 0xfdffffffffffffff, 8, 1b, x1, 488,0)

# rs2_val == -288230376151711745, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xfbffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000040000000000, 0xfbffffffffffffff, 6, 1b, x1, 496,0)

# rs2_val == -1152921504606846977, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xefffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000400000000, 0xefffffffffffffff, 0, 1b, x1, 504,0)

# rs2_val == 9223372036854775807, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000004; op2val:0x7fffffffffffffff; immval:16; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000004, 0x7fffffffffffffff, 16, 3f, x1, 512,0)

# rs1_val == -16385, rs2_val == -536870913
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xffffffffdfffffff; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffffbfff, 0xffffffffdfffffff, 64, 3f, x1, 520,0)

# rs1_val == -32769, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xfffffffffffffff8; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffff7fff, 0xfffffffffffffff8, 1366, 1b, x1, 528,0)

# rs1_val == -65537, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xffffffffffffffbf; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffeffff, 0xffffffffffffffbf, 4, 1b, x1, 536,0)

# rs1_val == -131073, rs2_val == -2147483649
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xffffffff7fffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffdffff, 0xffffffff7fffffff, 512, 3f, x1, 544,0)

# rs1_val == -262145, rs2_val == 1
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0000000000000001; immval:16; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffbffff, 0x0000000000000001, 16, 3f, x1, 552,0)

# rs1_val == -524289, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0xfffeffffffffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffff7ffff, 0xfffeffffffffffff, 256, 3f, x1, 560,0)

# rs1_val == -1048577, rs2_val == 562949953421312
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0002000000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffefffff, 0x0002000000000000, 4, 3f, x1, 568,0)

# rs1_val == -4194305, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xffffbfffffffffff; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffbfffff, 0xffffbfffffffffff, 4, 3f, x1, 576,0)

# rs1_val == -8388609, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xbfffffffffffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffff7fffff, 0xbfffffffffffffff, 1366, 1b, x1, 584,0)

# rs1_val == -16777217, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0040000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffeffffff, 0x0040000000000000, 1024, 3f, x1, 592,0)

# rs1_val == -33554433, rs2_val == -8589934593
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xfffffffdffffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffdffffff, 0xfffffffdffffffff, 1366, 1b, x1, 600,0)

# rs1_val == -134217729, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0000000000000040; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffff7ffffff, 0x0000000000000040, 1024, 1b, x1, 608,0)

# rs1_val == -268435457, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0xff7fffffffffffff; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffefffffff, 0xff7fffffffffffff, 32, 3f, x1, 616,0)

# rs1_val == -1073741825, rs2_val == -1048577
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0xffffffffffefffff; immval:16; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffbfffffff, 0xffffffffffefffff, 16, 3f, x1, 624,0)

# rs1_val == -2147483649, rs2_val == -3
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xfffffffffffffffd; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffff7fffffff, 0xfffffffffffffffd, 1024, 3f, x1, 632,0)

# rs1_val == -4294967297, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfffffffffffffff8; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffeffffffff, 0xfffffffffffffff8, 1366, 1b, x1, 640,0)

# rs1_val == -8589934593, rs2_val == -1073741825
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xffffffffbfffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffdffffffff, 0xffffffffbfffffff, 2, 3f, x1, 648,0)

# rs1_val == -17179869185, rs2_val == 17592186044416
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000100000000000; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffbffffffff, 0x0000100000000000, 64, 3f, x1, 656,0)

# rs1_val == -34359738369, rs2_val == -32769
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xffffffffffff7fff; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffff7ffffffff, 0xffffffffffff7fff, 256, 3f, x1, 664,0)

# rs1_val == -68719476737, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0000000000000200; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffefffffffff, 0x0000000000000200, 6, 1b, x1, 672,0)

# rs1_val == -137438953473, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xffffffbfffffffff; immval:16; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffdfffffffff, 0xffffffbfffffffff, 16, 3f, x1, 680,0)

# rs1_val == -274877906945, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xfdffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffbfffffffff, 0xfdffffffffffffff, 4, 1b, x1, 688,0)

# rs1_val == -549755813889, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0x0000000000000005; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffff7fffffffff, 0x0000000000000005, 4, 3f, x1, 696,0)

# rs1_val == -1099511627777, rs2_val == 262144
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000040000; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffeffffffffff, 0x0000000000040000, 4, 3f, x1, 704,0)

# rs1_val == -2199023255553, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xdfffffffffffffff; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffdffffffffff, 0xdfffffffffffffff, 32, 3f, x1, 712,0)

# rs1_val == -4398046511105, rs2_val == -2251799813685249
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfff7ffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffbffffffffff, 0xfff7ffffffffffff, 8, 3f, x1, 720,0)

# rs1_val == -8796093022209, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xffffffffffdfffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffff7ffffffffff, 0xffffffffffdfffff, 1024, 1b, x1, 728,0)

# rs1_val == -17592186044417, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000000000010000; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffefffffffffff, 0x0000000000010000, 512, 3f, x1, 736,0)

# rs1_val == -35184372088833, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0001000000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffdfffffffffff, 0x0001000000000000, 0, 1b, x1, 744,0)

# rs1_val == -140737488355329, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xfdffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffff7fffffffffff, 0xfdffffffffffffff, 4, 3f, x1, 752,0)

# rs1_val == -281474976710657, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0001000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffeffffffffffff, 0x0001000000000000, 1024, 1b, x1, 760,0)

# rs1_val == -562949953421313, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffdffffffffffff, 0xaaaaaaaaaaaaaaaa, 0, 1b, x1, 768,0)

# rs1_val == -1125899906842625, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xdfffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffbffffffffffff, 0xdfffffffffffffff, 2, 1b, x1, 776,0)

# rs1_val == -2251799813685249, rs2_val == -131073
# opcode: bne, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0xfffffffffffdffff; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfff7ffffffffffff, 0xfffffffffffdffff, 256, 3f, x1, 784,0)

# rs1_val == -4503599627370497, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0800000000000000; immval:16; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffefffffffffffff, 0x0800000000000000, 16, 3f, x1, 792,0)

# rs1_val == -9007199254740993, rs2_val == 4611686018427387904
# opcode: bne, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x4000000000000000; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffdfffffffffffff, 0x4000000000000000, 32, 3f, x1, 800,0)

# rs1_val == -18014398509481985, rs2_val == -67108865
# opcode: bne, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xfffffffffbffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffbfffffffffffff, 0xfffffffffbffffff, 2, 3f, x1, 808,0)

# rs1_val == -36028797018963969, 
# opcode: bne, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xffefffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xff7fffffffffffff, 0xffefffffffffffff, 1024, 3f, x1, 816,0)

# rs1_val == -72057594037927937, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x0000000000040000; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfeffffffffffffff, 0x0000000000040000, 256, 3f, x1, 824,0)

# rs1_val == -144115188075855873, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xfffffffffdffffff; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfdffffffffffffff, 0xfffffffffdffffff, 4, 1b, x1, 832,0)

# rs1_val == -288230376151711745, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000000010000; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfbffffffffffffff, 0x0000000000010000, 8, 3f, x1, 840,0)

# rs1_val == -576460752303423489, 
# opcode: bne, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xfffffffffdffffff; immval:16; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xf7ffffffffffffff, 0xfffffffffdffffff, 16, 3f, x1, 848,0)

# rs1_val == -1152921504606846977, 
# opcode: bne, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0002000000000000; immval:128; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xefffffffffffffff, 0x0002000000000000, 128, 3f, x1, 856,0)

# rs1_val == -4611686018427387905, rs2_val == 288230376151711744
# opcode: bne, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0400000000000000; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xbfffffffffffffff, 0x0400000000000000, 512, 3f, x1, 864,0)

# rs1_val == 9223372036854775807, rs2_val == -8388609
# opcode: bne, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xffffffffff7fffff; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x7fffffffffffffff, 0xffffffffff7fffff, 512, 3f, x1, 872,0)

# rs1_val == 6148914691236517205, 
# opcode: bne, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000100000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x5555555555555555, 0x0000100000000000, 0, 1b, x1, 880,0)

# rs1_val == -6148914691236517206, 
# opcode: bne, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfffffffffffbffff; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfffffffffffbffff, 4, 3f, x1, 888,0)

# rs2_val == 4, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0000000000000004; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffefffffffffffff, 0x0000000000000004, 32, 3f, x1, 896,0)

# rs2_val == 8, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000000000008; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffffffffbf, 0x0000000000000008, 0, 3f, x1, 904,0)

# rs2_val == 16, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x0000000000000010; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000010000000000, 0x0000000000000010, 8, 3f, x1, 912,0)

# rs2_val == 1024, 
# opcode: bne, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000000000000400; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x5555555555555555, 0x0000000000000400, 64, 3f, x1, 920,0)

# rs2_val == 2048, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0000000000000800; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000020000000000, 0x0000000000000800, 4, 1b, x1, 928,0)

# rs2_val == 16384, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000000000004000; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffff7ff, 0x0000000000004000, 8, 3f, x1, 936,0)

# rs2_val == 32768, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000040000; op2val:0x0000000000008000; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000040000, 0x0000000000008000, 8, 1b, x1, 944,0)

# rs2_val == 131072, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000000020000; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffff7ffffffff, 0x0000000000020000, 1024, 3f, x1, 952,0)

# rs2_val == 524288, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0x0000000000080000; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000004000, 0x0000000000080000, 1366, 1b, x1, 960,0)

# rs2_val == 1048576, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000005; op2val:0x0000000000100000; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000005, 0x0000000000100000, 512, 3f, x1, 968,0)

# rs2_val == 8388608, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000000800000; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffff7ffffffff, 0x0000000000800000, 10, 1b, x1, 976,0)

# rs2_val == 16777216, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0000000001000000; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffdffffffffffff, 0x0000000001000000, 4, 1b, x1, 984,0)

# rs2_val == 536870912, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0000000020000000; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000400000000, 0x0000000020000000, 32, 3f, x1, 992,0)

# rs2_val == 1073741824, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000000040000000; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0020000000000000, 0x0000000040000000, 64, 3f, x1, 1000,0)

# rs2_val == 4294967296, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0000000100000000; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000400000000, 0x0000000100000000, 64, 3f, x1, 1008,0)

# rs2_val == 8589934592, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000200000000; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffbffffffffff, 0x0000000200000000, 0, 1b, x1, 1016,0)

# rs2_val == 17179869184, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x0000000400000000; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000010000000000, 0x0000000400000000, 10, 1b, x1, 1024,0)

# rs2_val == 34359738368, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffc; op2val:0x0000000800000000; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffffffc, 0x0000000800000000, 64, 3f, x1, 1032,0)

# rs2_val == 68719476736, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000001000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0200000000000000, 0x0000001000000000, 1024, 1b, x1, 1040,0)

# rs2_val == 137438953472, 
# opcode: bne, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0000002000000000; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x7fffffffffffffff, 0x0000002000000000, 512, 3f, x1, 1048,0)

# rs2_val == 274877906944, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0x0000004000000000; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000003, 0x0000004000000000, 256, 3f, x1, 1056,0)

# rs2_val == 1099511627776, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000009; op2val:0x0000010000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000009, 0x0000010000000000, 1024, 1b, x1, 1064,0)

# rs2_val == 9007199254740992, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0020000000000000; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffbfffffff, 0x0020000000000000, 10, 1b, x1, 1072,0)

# rs2_val == 36028797018963968, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0080000000000000; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffefffffff, 0x0080000000000000, 32, 3f, x1, 1080,0)

# rs2_val == 72057594037927936, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0100000000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffbffffffffffff, 0x0100000000000000, 0, 3f, x1, 1088,0)

# rs2_val == 144115188075855872, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0200000000000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000200000000, 0x0200000000000000, 1366, 1b, x1, 1096,0)

# rs2_val == 1152921504606846976, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x1000000000000000; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffdffff, 0x1000000000000000, 256, 3f, x1, 1104,0)

# rs2_val == 2305843009213693952, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x2000000000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffeffffffffff, 0x2000000000000000, 4, 3f, x1, 1112,0)

# rs2_val == -9223372036854775808, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x8000000000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000100000000000, 0x8000000000000000, 0, 1b, x1, 1120,0)

# rs2_val == -2, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffff9; op2val:0xfffffffffffffffe; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffffff9, 0xfffffffffffffffe, 64, 3f, x1, 1128,0)

# rs2_val == -5, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xfffffffffffffffb; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000080000000000, 0xfffffffffffffffb, 8, 1b, x1, 1136,0)

# rs2_val == -17, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0xffffffffffffffef; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000100000, 0xffffffffffffffef, 10, 1b, x1, 1144,0)

# rs2_val == -257, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xfffffffffffffeff; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000040000000000, 0xfffffffffffffeff, 4, 3f, x1, 1152,0)

# rs2_val == -8193, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xffffffffffffdfff; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffffdffff, 0xffffffffffffdfff, 1366, 1b, x1, 1160,0)

# rs2_val == -1125899906842625, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000400000; op2val:0xfffbffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000400000, 0xfffbffffffffffff, 1024, 1b, x1, 1168,0)

# rs2_val == -65537, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xfffffffffffeffff; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffffffeffffff, 0xfffffffffffeffff, 64, 3f, x1, 1176,0)

# rs2_val == -524289, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xfffffffffff7ffff; immval:10; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000080000000, 0xfffffffffff7ffff, 10, 1b, x1, 1184,0)

# rs2_val == -4194305, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xffffffffffbfffff; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0002000000000000, 0xffffffffffbfffff, 256, 3f, x1, 1192,0)

# rs2_val == -16777217, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xfffffffffeffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000006, 0xfffffffffeffffff, 512, 3f, x1, 1200,0)

# rs2_val == 35184372088832, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000200000000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffff7fffff, 0x0000200000000000, 1366, 1b, x1, 1208,0)

# rs2_val == -134217729, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffffffff7ffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffdffffffffffff, 0xfffffffff7ffffff, 1024, 1b, x1, 1216,0)

# rs2_val == -268435457, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xffffffffefffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffdfffffffff, 0xffffffffefffffff, 1024, 3f, x1, 1224,0)

# rs2_val == -4294967297, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfffffffeffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000400000000000, 0xfffffffeffffffff, 6, 3f, x1, 1232,0)

# rs2_val == -549755813889, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xffffff7fffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000020000000000, 0xffffff7fffffffff, 6, 1b, x1, 1240,0)

# rs2_val == -1099511627777, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0xfffffeffffffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000800, 0xfffffeffffffffff, 512, 3f, x1, 1248,0)

# rs2_val == -4398046511105, 
# opcode: bne, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xfffffbffffffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xbfffffffffffffff, 0xfffffbffffffffff, 512, 3f, x1, 1256,0)

# rs2_val == -8796093022209, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000001; op2val:0xfffff7ffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000001, 0xfffff7ffffffffff, 6, 3f, x1, 1264,0)

# rs2_val == -17592186044417, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0xffffefffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000001000000, 0xffffefffffffffff, 6, 3f, x1, 1272,0)

# rs2_val == -35184372088833, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0xffffdfffffffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xffffffffbfffffff, 0xffffdfffffffffff, 256, 3f, x1, 1280,0)

# rs2_val == 70368744177664, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000400000000000; immval:256; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000040000000000, 0x0000400000000000, 256, 3f, x1, 1288,0)

# rs2_val == -140737488355329, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000002; op2val:0xffff7fffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000002, 0xffff7fffffffffff, 1024, 3f, x1, 1296,0)

# rs2_val == 1125899906842624, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0x0004000000000000; immval:128; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000004000, 0x0004000000000000, 128, 3f, x1, 1304,0)

# rs2_val == 2251799813685248, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0008000000000000; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0xfffffdffffffffff, 0x0008000000000000, 8, 1b, x1, 1312,0)

# rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs2_val == 65536, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 137438953472
# opcode: bne, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000010000; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000002000000000, 0x0000000000010000, 8, 3f, x1, 1320,0)

# rs1_val == 1024, rs2_val == -4097
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000400; op2val:0xffffffffffffefff; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000000400, 0xffffffffffffefff, 4, 3f, x1, 1328,0)

# rs1_val == 8192, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000002000; op2val:0xfffffffffffffdff; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x10, x11, 0x0000000000002000, 0xfffffffffffffdff, 0, 3f, x1, 1336,0)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 168*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
