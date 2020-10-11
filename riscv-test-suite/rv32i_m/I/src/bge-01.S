
#This assembly file tests the bge instruction of the RISC-V I extension for the bge covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bge)

la x5,signature_x5_1

# rs1 != rs2, rs1==x1, rs2==x15, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs2_val == 268435456, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 268435456
# opcode: bge, op1:x1; op2:x15; op1val:0x10000000; op2val:0x10000000; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x1, x15, 0x10000000, 0x10000000, 16, 3f, x5, 0,0)

# rs1 == rs2, rs1==x12, rs2==x12, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -5
# opcode: bge, op1:x12; op2:x12; op1val:0x00000007; op2val:0xfffffffb; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x12, x12, 0x00000007, 0xfffffffb, 0, 3f, x5, 4,0)

# rs1==x17, rs2==x18, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == -8388609, rs2_val == -1048577
# opcode: bge, op1:x17; op2:x18; op1val:0xff7fffff; op2val:0xffefffff; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x17, x18, 0xff7fffff, 0xffefffff, 8, 3f, x5, 8,0)

# rs1==x20, rs2==x2, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs2_val == 64, rs1_val == -67108865
# opcode: bge, op1:x20; op2:x2; op1val:0xfbffffff; op2val:0x00000040; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x20, x2, 0xfbffffff, 0x00000040, 512, 3f, x5, 12,0)

# rs1==x18, rs2==x14, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, 
# opcode: bge, op1:x18; op2:x14; op1val:0xfffffff9; op2val:0xfffffff9; immval:8; align:0
TEST_BRANCH_OP(bge, x6, x18, x14, 0xfffffff9, 0xfffffff9, 8, 1b, x5, 16,0)

# rs1==x7, rs2==x16, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 256, rs2_val == 8
# opcode: bge, op1:x7; op2:x16; op1val:0x00000100; op2val:0x00000008; immval:512; align:0
TEST_BRANCH_OP(bge, x6, x7, x16, 0x00000100, 0x00000008, 512, 3f, x5, 20,0)

# rs1==x11, rs2==x7, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0, 
# opcode: bge, op1:x11; op2:x7; op1val:0xffffffff; op2val:0xfffffffa; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x11, x7, 0xffffffff, 0xfffffffa, 1024, 1b, x5, 24,0)

# rs1==x19, rs2==x25, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, 
# opcode: bge, op1:x19; op2:x25; op1val:0xfffffffc; op2val:0x00000007; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x19, x25, 0xfffffffc, 0x00000007, 4, 1b, x5, 28,0)

# rs1==x13, rs2==x26, rs1_val == 1, rs2_val == 524288
# opcode: bge, op1:x13; op2:x26; op1val:0x00000001; op2val:0x00080000; immval:0; align:0
TEST_BRANCH_OP(bge, x6, x13, x26, 0x00000001, 0x00080000, 0, 3f, x5, 32,0)

# rs1==x14, rs2==x3, rs1_val == 2, rs2_val == 4194304
# opcode: bge, op1:x14; op2:x3; op1val:0x00000002; op2val:0x00400000; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x14, x3, 0x00000002, 0x00400000, 4, 1b, x5, 36,0)

# rs1==x30, rs2==x29, rs1_val == 4, rs2_val == -67108865
# opcode: bge, op1:x30; op2:x29; op1val:0x00000004; op2val:0xfbffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x30, x29, 0x00000004, 0xfbffffff, 4, 3f, x5, 40,0)

# rs1==x8, rs2==x24, rs1_val == 8, rs2_val == -17
# opcode: bge, op1:x8; op2:x24; op1val:0x00000008; op2val:0xffffffef; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x8, x24, 0x00000008, 0xffffffef, 16, 3f, x5, 44,0)

# rs1==x28, rs2==x23, rs1_val == 16, rs2_val == 2048
# opcode: bge, op1:x28; op2:x23; op1val:0x00000010; op2val:0x00000800; immval:32; align:0
TEST_BRANCH_OP(bge, x6, x28, x23, 0x00000010, 0x00000800, 32, 3f, x5, 48,0)

# rs1==x27, rs2==x30, rs1_val == 32, rs2_val == -65
# opcode: bge, op1:x27; op2:x30; op1val:0x00000020; op2val:0xffffffbf; immval:4; align:0
TEST_BRANCH_OP(bge, x6, x27, x30, 0x00000020, 0xffffffbf, 4, 1b, x5, 52,0)

# rs1==x15, rs2==x28, rs1_val == 64, rs2_val == -262145
# opcode: bge, op1:x15; op2:x28; op1val:0x00000040; op2val:0xfffbffff; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x15, x28, 0x00000040, 0xfffbffff, 16, 3f, x5, 56,0)

# rs1==x21, rs2==x19, rs1_val == 128, rs2_val == 8388608
# opcode: bge, op1:x21; op2:x19; op1val:0x00000080; op2val:0x00800000; immval:256; align:0
TEST_BRANCH_OP(bge, x6, x21, x19, 0x00000080, 0x00800000, 256, 3f, x5, 60,0)

# rs1==x25, rs2==x21, rs1_val == 512, rs2_val == -33
# opcode: bge, op1:x25; op2:x21; op1val:0x00000200; op2val:0xffffffdf; immval:6; align:0
TEST_BRANCH_OP(bge, x6, x25, x21, 0x00000200, 0xffffffdf, 6, 1b, x5, 64,0)

# rs1==x26, rs2==x20, rs1_val == 1024, rs2_val == 128
# opcode: bge, op1:x26; op2:x20; op1val:0x00000400; op2val:0x00000080; immval:1366; align:0
TEST_BRANCH_OP(bge, x6, x26, x20, 0x00000400, 0x00000080, 1366, 1b, x5, 68,0)

# rs1==x31, rs2==x4, rs1_val == 2048, rs2_val == 2147483647
# opcode: bge, op1:x31; op2:x4; op1val:0x00000800; op2val:0x7fffffff; immval:16; align:0
TEST_BRANCH_OP(bge, x6, x31, x4, 0x00000800, 0x7fffffff, 16, 3f, x5, 72,0)

# rs1==x10, rs2==x9, rs1_val == 4096, 
# opcode: bge, op1:x10; op2:x9; op1val:0x00001000; op2val:0x00000040; immval:1024; align:0
TEST_BRANCH_OP(bge, x6, x10, x9, 0x00001000, 0x00000040, 1024, 3f, x5, 76,0)
la x7,signature_x7_0

# rs1==x16, rs2==x1, rs1_val == 8192, rs2_val == -1431655766
# opcode: bge, op1:x16; op2:x1; op1val:0x00002000; op2val:0xaaaaaaaa; immval:4; align:0
TEST_BRANCH_OP(bge, x12, x16, x1, 0x00002000, 0xaaaaaaaa, 4, 1b, x7, 0,0)

# rs1==x4, rs2==x27, rs1_val == 16384, 
# opcode: bge, op1:x4; op2:x27; op1val:0x00004000; op2val:0xaaaaaaaa; immval:4; align:0
TEST_BRANCH_OP(bge, x12, x4, x27, 0x00004000, 0xaaaaaaaa, 4, 3f, x7, 4,0)

# rs1==x29, rs2==x10, rs1_val == 32768, rs2_val == 131072
# opcode: bge, op1:x29; op2:x10; op1val:0x00008000; op2val:0x00020000; immval:16; align:0
TEST_BRANCH_OP(bge, x12, x29, x10, 0x00008000, 0x00020000, 16, 3f, x7, 8,0)

# rs1==x9, rs2==x13, rs1_val == 65536, rs2_val == -129
# opcode: bge, op1:x9; op2:x13; op1val:0x00010000; op2val:0xffffff7f; immval:32; align:0
TEST_BRANCH_OP(bge, x12, x9, x13, 0x00010000, 0xffffff7f, 32, 3f, x7, 12,0)

# rs1==x22, rs2==x11, rs1_val == 131072, 
# opcode: bge, op1:x22; op2:x11; op1val:0x00020000; op2val:0x00080000; immval:4; align:0
TEST_BRANCH_OP(bge, x12, x22, x11, 0x00020000, 0x00080000, 4, 1b, x7, 16,0)

# rs1==x24, rs2==x8, rs1_val == 262144, rs2_val == 262144
# opcode: bge, op1:x24; op2:x8; op1val:0x00040000; op2val:0x00040000; immval:4; align:0
TEST_BRANCH_OP(bge, x12, x24, x8, 0x00040000, 0x00040000, 4, 1b, x7, 20,0)

# rs1==x2, rs2==x31, rs1_val == 524288, 
# opcode: bge, op1:x2; op2:x31; op1val:0x00080000; op2val:0x00000040; immval:10; align:0
TEST_BRANCH_OP(bge, x12, x2, x31, 0x00080000, 0x00000040, 10, 1b, x7, 24,0)

# rs1==x6, rs2==x5, rs1_val == 1048576, rs2_val == 16777216
# opcode: bge, op1:x6; op2:x5; op1val:0x00100000; op2val:0x01000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x12, x6, x5, 0x00100000, 0x01000000, 1024, 3f, x7, 28,0)

# rs1==x3, rs2==x0, rs1_val == 2097152, rs2_val == 1048576
# opcode: bge, op1:x3; op2:x0; op1val:0x00200000; op2val:0x00100000; immval:10; align:0
TEST_BRANCH_OP(bge, x12, x3, x0, 0x00200000, 0x00100000, 10, 1b, x7, 32,0)

# rs1==x0, rs2==x6, rs1_val == 4194304, rs2_val == 16
# opcode: bge, op1:x0; op2:x6; op1val:0x00400000; op2val:0x00000010; immval:4; align:0
TEST_BRANCH_OP(bge, x12, x0, x6, 0x00400000, 0x00000010, 4, 3f, x7, 36,0)

# rs1==x23, rs2==x22, rs1_val == 8388608, rs2_val == 1431655765
# opcode: bge, op1:x23; op2:x22; op1val:0x00800000; op2val:0x55555555; immval:10; align:0
TEST_BRANCH_OP(bge, x12, x23, x22, 0x00800000, 0x55555555, 10, 1b, x7, 40,0)

# rs1==x5, rs2==x17, rs1_val == 16777216, rs2_val == -134217729
# opcode: bge, op1:x5; op2:x17; op1val:0x01000000; op2val:0xf7ffffff; immval:6; align:0
TEST_BRANCH_OP(bge, x12, x5, x17, 0x01000000, 0xf7ffffff, 6, 1b, x7, 44,0)

# rs1_val == 33554432, 
# opcode: bge, op1:x10; op2:x11; op1val:0x02000000; op2val:0x00000008; immval:16; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x02000000, 0x00000008, 16, 3f, x7, 48,0)

# rs1_val == 67108864, rs2_val == 134217728
# opcode: bge, op1:x10; op2:x11; op1val:0x04000000; op2val:0x08000000; immval:2; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x04000000, 0x08000000, 2, 1b, x7, 52,0)

# rs1_val == 134217728, 
# opcode: bge, op1:x10; op2:x11; op1val:0x08000000; op2val:0xffffffef; immval:128; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x08000000, 0xffffffef, 128, 3f, x7, 56,0)

# rs1_val == 536870912, 
# opcode: bge, op1:x10; op2:x11; op1val:0x20000000; op2val:0x01000000; immval:128; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x20000000, 0x01000000, 128, 3f, x7, 60,0)

# rs1_val == 1073741824, rs2_val == -536870913
# opcode: bge, op1:x10; op2:x11; op1val:0x40000000; op2val:0xdfffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x40000000, 0xdfffffff, 8, 3f, x7, 64,0)

# rs1_val == -2147483648, 
# opcode: bge, op1:x10; op2:x11; op1val:0x80000000; op2val:0x00800000; immval:1024; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x80000000, 0x00800000, 1024, 3f, x7, 68,0)

# rs1_val == -2, rs2_val == 4096
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00001000; immval:0; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffffffe, 0x00001000, 0, 1b, x7, 72,0)

# rs1_val == -3, rs2_val == 16384
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x00004000; immval:1366; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffffffd, 0x00004000, 1366, 1b, x7, 76,0)

# rs1_val == -5, rs2_val == 1024
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00000400; immval:1024; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffffffb, 0x00000400, 1024, 3f, x7, 80,0)

# rs1_val == -9, rs2_val == 512
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00000200; immval:256; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffffff7, 0x00000200, 256, 3f, x7, 84,0)

# rs1_val == -17, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffef; op2val:0x00000008; immval:1366; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffffffef, 0x00000008, 1366, 1b, x7, 88,0)

# rs2_val == -2097153, rs1_val == -536870913
# opcode: bge, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0xffdfffff; immval:6; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xdfffffff, 0xffdfffff, 6, 3f, x7, 92,0)

# rs2_val == -4194305, rs1_val == -513
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xffbfffff; immval:1366; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffffdff, 0xffbfffff, 1366, 1b, x7, 96,0)

# rs2_val == -8388609, 
# opcode: bge, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0xff7fffff; immval:16; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xdfffffff, 0xff7fffff, 16, 3f, x7, 100,0)

# rs2_val == -16777217, rs1_val == -134217729
# opcode: bge, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xfeffffff; immval:10; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xf7ffffff, 0xfeffffff, 10, 1b, x7, 104,0)

# rs2_val == -33554433, rs1_val == -131073
# opcode: bge, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0xfdffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffdffff, 0xfdffffff, 1024, 3f, x7, 108,0)

# rs2_val == -268435457, rs1_val == -268435457
# opcode: bge, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xefffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xefffffff, 0xefffffff, 1024, 1b, x7, 112,0)

# rs2_val == -1073741825, 
# opcode: bge, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xbfffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xefffffff, 0xbfffffff, 8, 3f, x7, 116,0)

# rs1_val == -33, rs2_val == -8193
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xffffdfff; immval:1024; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffffffdf, 0xffffdfff, 1024, 3f, x7, 120,0)

# rs1_val == -65, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xff7fffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffffffbf, 0xff7fffff, 1024, 3f, x7, 124,0)

# rs1_val == -129, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x00000200; immval:128; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffffff7f, 0x00000200, 128, 3f, x7, 128,0)

# rs1_val == -257, rs2_val == -257
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0xfffffeff; immval:512; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffffeff, 0xfffffeff, 512, 3f, x7, 132,0)

# rs1_val == -1025, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x00000080; immval:8; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffffbff, 0x00000080, 8, 1b, x7, 136,0)

# rs1_val == -2049, rs2_val == 67108864
# opcode: bge, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x04000000; immval:4; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffff7ff, 0x04000000, 4, 1b, x7, 140,0)

# rs1_val == -4097, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffefff; op2val:0x00000005; immval:6; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffffefff, 0x00000005, 6, 3f, x7, 144,0)

# rs1_val == -8193, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0xfffffeff; immval:256; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffffdfff, 0xfffffeff, 256, 3f, x7, 148,0)

# rs1_val == -16385, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00040000; immval:256; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffffbfff, 0x00040000, 256, 3f, x7, 152,0)

# rs1_val == -32769, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0x08000000; immval:0; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffff7fff, 0x08000000, 0, 1b, x7, 156,0)

# rs1_val == -65537, rs2_val == 256
# opcode: bge, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00000100; immval:10; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffeffff, 0x00000100, 10, 1b, x7, 160,0)

# rs1_val == -262145, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xff7fffff; immval:16; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffbffff, 0xff7fffff, 16, 3f, x7, 164,0)

# rs1_val == -524289, rs2_val == 8192
# opcode: bge, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00002000; immval:16; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfff7ffff, 0x00002000, 16, 3f, x7, 168,0)

# rs1_val == -1048577, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00000010; immval:128; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffefffff, 0x00000010, 128, 3f, x7, 172,0)

# rs1_val == -4194305, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0xffffffef; immval:2; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffbfffff, 0xffffffef, 2, 3f, x7, 176,0)

# rs1_val == -16777217, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xaaaaaaaa; immval:2; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfeffffff, 0xaaaaaaaa, 2, 3f, x7, 180,0)

# rs1_val == -33554433, rs2_val == 32768
# opcode: bge, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x00008000; immval:128; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfdffffff, 0x00008000, 128, 3f, x7, 184,0)

# rs1_val == -1073741825, rs2_val == -2049
# opcode: bge, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xfffff7ff; immval:256; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xbfffffff, 0xfffff7ff, 256, 3f, x7, 188,0)

# rs1_val == 2147483647, 
# opcode: bge, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x01000000; immval:512; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x7fffffff, 0x01000000, 512, 3f, x7, 192,0)

# rs1_val == 1431655765, 
# opcode: bge, op1:x10; op2:x11; op1val:0x55555555; op2val:0xffefffff; immval:6; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x55555555, 0xffefffff, 6, 1b, x7, 196,0)

# rs1_val == -1431655766, rs2_val == -65537
# opcode: bge, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xfffeffff; immval:512; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xaaaaaaaa, 0xfffeffff, 512, 3f, x7, 200,0)

# rs2_val == 1, 
# opcode: bge, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x00000001; immval:0; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xbfffffff, 0x00000001, 0, 3f, x7, 204,0)

# rs2_val == 2, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x00000002; immval:16; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfbffffff, 0x00000002, 16, 3f, x7, 208,0)

# rs2_val == 4, 
# opcode: bge, op1:x10; op2:x11; op1val:0x00000000; op2val:0x00000004; immval:16; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00000000, 0x00000004, 16, 3f, x7, 212,0)

# rs2_val == 32, 
# opcode: bge, op1:x10; op2:x11; op1val:0x00000002; op2val:0x00000020; immval:1024; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00000002, 0x00000020, 1024, 1b, x7, 216,0)

# rs2_val == 65536, 
# opcode: bge, op1:x10; op2:x11; op1val:0x10000000; op2val:0x00010000; immval:0; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x10000000, 0x00010000, 0, 1b, x7, 220,0)

# rs2_val == 2097152, 
# opcode: bge, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00200000; immval:2; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xdfffffff, 0x00200000, 2, 3f, x7, 224,0)

# rs2_val == 33554432, 
# opcode: bge, op1:x10; op2:x11; op1val:0x3fffffff; op2val:0x02000000; immval:16; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x3fffffff, 0x02000000, 16, 3f, x7, 228,0)

# rs2_val == 536870912, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffff; op2val:0x20000000; immval:0; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffffffff, 0x20000000, 0, 3f, x7, 232,0)

# rs2_val == 1073741824, 
# opcode: bge, op1:x10; op2:x11; op1val:0x00000002; op2val:0x40000000; immval:10; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00000002, 0x40000000, 10, 1b, x7, 236,0)

# rs2_val == -2147483648, 
# opcode: bge, op1:x10; op2:x11; op1val:0x00000003; op2val:0x80000000; immval:6; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00000003, 0x80000000, 6, 1b, x7, 240,0)

# rs2_val == -2, 
# opcode: bge, op1:x10; op2:x11; op1val:0x00001000; op2val:0xfffffffe; immval:10; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00001000, 0xfffffffe, 10, 1b, x7, 244,0)

# rs2_val == -3, 
# opcode: bge, op1:x10; op2:x11; op1val:0x02000000; op2val:0xfffffffd; immval:32; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x02000000, 0xfffffffd, 32, 3f, x7, 248,0)

# rs2_val == -9, 
# opcode: bge, op1:x10; op2:x11; op1val:0x20000000; op2val:0xfffffff7; immval:16; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x20000000, 0xfffffff7, 16, 3f, x7, 252,0)

# rs2_val == -513, 
# opcode: bge, op1:x10; op2:x11; op1val:0x00000007; op2val:0xfffffdff; immval:2; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00000007, 0xfffffdff, 2, 1b, x7, 256,0)

# rs1_val == -2097153, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00000003; immval:0; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffdfffff, 0x00000003, 0, 1b, x7, 260,0)

# rs2_val == -1025, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xfffffbff; immval:512; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xfffffffd, 0xfffffbff, 512, 3f, x7, 264,0)

# rs2_val == -4097, 
# opcode: bge, op1:x10; op2:x11; op1val:0x00000080; op2val:0xffffefff; immval:2; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00000080, 0xffffefff, 2, 1b, x7, 268,0)

# rs2_val == -16385, 
# opcode: bge, op1:x10; op2:x11; op1val:0x00000001; op2val:0xffffbfff; immval:0; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00000001, 0xffffbfff, 0, 1b, x7, 272,0)

# rs2_val == -32769, 
# opcode: bge, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0xffff7fff; immval:0; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x7fffffff, 0xffff7fff, 0, 1b, x7, 276,0)

# rs2_val == -131073, 
# opcode: bge, op1:x10; op2:x11; op1val:0xc0000000; op2val:0xfffdffff; immval:2; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xc0000000, 0xfffdffff, 2, 3f, x7, 280,0)

# rs2_val == -524289, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xfff7ffff; immval:128; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0xffffffdf, 0xfff7ffff, 128, 3f, x7, 284,0)

# rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -5
# opcode: bge, op1:x10; op2:x11; op1val:0x00000007; op2val:0xfffffffb; immval:0; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00000007, 0xfffffffb, 0, 3f, x7, 288,0)

# rs1_val == 2097152, rs2_val == 1048576
# opcode: bge, op1:x10; op2:x11; op1val:0x00200000; op2val:0x00100000; immval:10; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00200000, 0x00100000, 10, 1b, x7, 292,0)

# rs1_val == 4194304, rs2_val == 16
# opcode: bge, op1:x10; op2:x11; op1val:0x00400000; op2val:0x00000010; immval:4; align:0
TEST_BRANCH_OP(bge, x12, x10, x11, 0x00400000, 0x00000010, 4, 3f, x7, 296,0)
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
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x7_0:
    .fill 75*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
