
#This assembly file tests the bne instruction of the RISC-V I extension for the bne covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bne)

RVTEST_SIGBASE( x12,signature_x12_1)

# rs1 != rs2, rs1==x23, rs2==x26, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == 64, rs1_val == 2
# opcode: bne, op1:x23; op2:x26; op1val:0x00000002; op2val:0x00000040; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x23, x26, 0x00000002, 0x00000040, 32, 3f, x12, 0,0)

# rs1 == rs2, rs1==x0, rs2==x0, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -8193, rs1_val == 65536, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0
# opcode: bne, op1:x0; op2:x0; op1val:0x00010000; op2val:0xffffdfff; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x0, x0, 0x00010000, 0xffffdfff, 4, 3f, x12, 4,0)

# rs1==x22, rs2==x21, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -17, rs1_val == -3, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0
# opcode: bne, op1:x22; op2:x21; op1val:0xfffffffd; op2val:0xffffffef; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x22, x21, 0xfffffffd, 0xffffffef, 1024, 1b, x12, 8,0)

# rs1==x18, rs2==x30, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs2_val == 536870912, rs1_val == -8193
# opcode: bne, op1:x18; op2:x30; op1val:0xffffdfff; op2val:0x20000000; immval:512; align:0
TEST_BRANCH_OP(bne, x4, x18, x30, 0xffffdfff, 0x20000000, 512, 3f, x12, 12,0)

# rs1==x5, rs2==x17, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, 
# opcode: bne, op1:x5; op2:x17; op1val:0xffffdfff; op2val:0xffffdfff; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x5, x17, 0xffffdfff, 0xffffdfff, 64, 3f, x12, 16,0)

# rs1==x19, rs2==x1, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == 268435456, rs1_val == 268435456
# opcode: bne, op1:x19; op2:x1; op1val:0x10000000; op2val:0x10000000; immval:4; align:0
TEST_BRANCH_OP(bne, x4, x19, x1, 0x10000000, 0x10000000, 4, 1b, x12, 20,0)

# rs1==x30, rs2==x27, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == -32769, rs1_val == -1431655766
# opcode: bne, op1:x30; op2:x27; op1val:0xaaaaaaaa; op2val:0xffff7fff; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x30, x27, 0xaaaaaaaa, 0xffff7fff, 8, 1b, x12, 24,0)

# rs1==x20, rs2==x24, rs1_val == 1, rs2_val == 8192
# opcode: bne, op1:x20; op2:x24; op1val:0x00000001; op2val:0x00002000; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x20, x24, 0x00000001, 0x00002000, 0, 3f, x12, 28,0)

# rs1==x17, rs2==x3, rs1_val == 4, rs2_val == -65537
# opcode: bne, op1:x17; op2:x3; op1val:0x00000004; op2val:0xfffeffff; immval:64; align:0
TEST_BRANCH_OP(bne, x4, x17, x3, 0x00000004, 0xfffeffff, 64, 3f, x12, 32,0)

# rs1==x1, rs2==x11, rs1_val == 8, rs2_val == -131073
# opcode: bne, op1:x1; op2:x11; op1val:0x00000008; op2val:0xfffdffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x4, x1, x11, 0x00000008, 0xfffdffff, 1024, 3f, x12, 36,0)

# rs1==x15, rs2==x20, rs1_val == 16, 
# opcode: bne, op1:x15; op2:x20; op1val:0x00000010; op2val:0x10000000; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x15, x20, 0x00000010, 0x10000000, 0, 1b, x12, 40,0)

# rs1==x11, rs2==x19, rs1_val == 32, rs2_val == 2
# opcode: bne, op1:x11; op2:x19; op1val:0x00000020; op2val:0x00000002; immval:1366; align:0
TEST_BRANCH_OP(bne, x4, x11, x19, 0x00000020, 0x00000002, 1366, 1b, x12, 44,0)

# rs1==x16, rs2==x6, rs1_val == 64, rs2_val == -67108865
# opcode: bne, op1:x16; op2:x6; op1val:0x00000040; op2val:0xfbffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x16, x6, 0x00000040, 0xfbffffff, 6, 3f, x12, 48,0)

# rs1==x7, rs2==x29, rs1_val == 128, 
# opcode: bne, op1:x7; op2:x29; op1val:0x00000080; op2val:0x00000007; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x7, x29, 0x00000080, 0x00000007, 8, 3f, x12, 52,0)

# rs1==x13, rs2==x16, rs1_val == 256, rs2_val == 16777216
# opcode: bne, op1:x13; op2:x16; op1val:0x00000100; op2val:0x01000000; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x13, x16, 0x00000100, 0x01000000, 6, 3f, x12, 56,0)

# rs1==x6, rs2==x14, rs1_val == 512, rs2_val == 1073741824
# opcode: bne, op1:x6; op2:x14; op1val:0x00000200; op2val:0x40000000; immval:8; align:0
TEST_BRANCH_OP(bne, x4, x6, x14, 0x00000200, 0x40000000, 8, 3f, x12, 60,0)

# rs1==x26, rs2==x9, rs1_val == 1024, rs2_val == -8388609
# opcode: bne, op1:x26; op2:x9; op1val:0x00000400; op2val:0xff7fffff; immval:6; align:0
TEST_BRANCH_OP(bne, x4, x26, x9, 0x00000400, 0xff7fffff, 6, 1b, x12, 64,0)

# rs1==x31, rs2==x2, rs1_val == 2048, rs2_val == 1431655765
# opcode: bne, op1:x31; op2:x2; op1val:0x00000800; op2val:0x55555555; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x31, x2, 0x00000800, 0x55555555, 0, 3f, x12, 68,0)

# rs1==x29, rs2==x25, rs1_val == 4096, rs2_val == 8388608
# opcode: bne, op1:x29; op2:x25; op1val:0x00001000; op2val:0x00800000; immval:0; align:0
TEST_BRANCH_OP(bne, x4, x29, x25, 0x00001000, 0x00800000, 0, 3f, x12, 72,0)

# rs1==x8, rs2==x5, rs1_val == 8192, rs2_val == 33554432
# opcode: bne, op1:x8; op2:x5; op1val:0x00002000; op2val:0x02000000; immval:32; align:0
TEST_BRANCH_OP(bne, x4, x8, x5, 0x00002000, 0x02000000, 32, 3f, x12, 76,0)

# rs1==x10, rs2==x4, rs1_val == 16384, 
# opcode: bne, op1:x10; op2:x4; op1val:0x00004000; op2val:0x00000040; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x4, 0x00004000, 0x00000040, 1366, 1b, x12, 80,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x14, rs2==x8, rs1_val == 32768, 
# opcode: bne, op1:x14; op2:x8; op1val:0x00008000; op2val:0xfffffffa; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x14, x8, 0x00008000, 0xfffffffa, 32, 3f, x1, 0,0)

# rs1==x3, rs2==x12, rs1_val == 131072, rs2_val == -33
# opcode: bne, op1:x3; op2:x12; op1val:0x00020000; op2val:0xffffffdf; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x3, x12, 0x00020000, 0xffffffdf, 0, 1b, x1, 4,0)

# rs1==x12, rs2==x28, rs1_val == 262144, rs2_val == 128
# opcode: bne, op1:x12; op2:x28; op1val:0x00040000; op2val:0x00000080; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x12, x28, 0x00040000, 0x00000080, 1024, 1b, x1, 8,0)

# rs1==x9, rs2==x10, rs1_val == 524288, 
# opcode: bne, op1:x9; op2:x10; op1val:0x00080000; op2val:0xfffdffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x9, x10, 0x00080000, 0xfffdffff, 1366, 1b, x1, 12,0)

# rs1==x2, rs2==x7, rs1_val == 1048576, rs2_val == -16385
# opcode: bne, op1:x2; op2:x7; op1val:0x00100000; op2val:0xffffbfff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x2, x7, 0x00100000, 0xffffbfff, 2, 1b, x1, 16,0)

# rs1==x24, rs2==x15, rs1_val == 2097152, 
# opcode: bne, op1:x24; op2:x15; op1val:0x00200000; op2val:0xffffffef; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x24, x15, 0x00200000, 0xffffffef, 8, 1b, x1, 20,0)

# rs1==x21, rs2==x31, rs1_val == 4194304, rs2_val == -536870913
# opcode: bne, op1:x21; op2:x31; op1val:0x00400000; op2val:0xdfffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x21, x31, 0x00400000, 0xdfffffff, 1024, 1b, x1, 24,0)

# rs1==x27, rs2==x13, rs1_val == 8388608, rs2_val == -2097153
# opcode: bne, op1:x27; op2:x13; op1val:0x00800000; op2val:0xffdfffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x27, x13, 0x00800000, 0xffdfffff, 0, 1b, x1, 28,0)

# rs1==x4, rs2==x23, rs1_val == 16777216, rs2_val == 16
# opcode: bne, op1:x4; op2:x23; op1val:0x01000000; op2val:0x00000010; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x4, x23, 0x01000000, 0x00000010, 512, 3f, x1, 32,0)

# rs1==x28, rs2==x22, rs1_val == 33554432, 
# opcode: bne, op1:x28; op2:x22; op1val:0x02000000; op2val:0xfbffffff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x28, x22, 0x02000000, 0xfbffffff, 64, 3f, x1, 36,0)

# rs1==x25, rs2==x18, rs1_val == 67108864, 
# opcode: bne, op1:x25; op2:x18; op1val:0x04000000; op2val:0x01000000; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x25, x18, 0x04000000, 0x01000000, 64, 3f, x1, 40,0)

# rs1_val == 134217728, 
# opcode: bne, op1:x10; op2:x11; op1val:0x08000000; op2val:0xfffeffff; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x08000000, 0xfffeffff, 16, 3f, x1, 44,0)

# rs1_val == 536870912, 
# opcode: bne, op1:x10; op2:x11; op1val:0x20000000; op2val:0xffdfffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x20000000, 0xffdfffff, 1366, 1b, x1, 48,0)

# rs1_val == 1073741824, rs2_val == -2
# opcode: bne, op1:x10; op2:x11; op1val:0x40000000; op2val:0xfffffffe; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x40000000, 0xfffffffe, 0, 1b, x1, 52,0)

# rs1_val == -2147483648, rs2_val == 2147483647
# opcode: bne, op1:x10; op2:x11; op1val:0x80000000; op2val:0x7fffffff; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x80000000, 0x7fffffff, 32, 3f, x1, 56,0)

# rs1_val == -2, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffe, 0xffffffff, 1024, 3f, x1, 60,0)

# rs1_val == -5, rs2_val == 8
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00000008; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffb, 0x00000008, 8, 1b, x1, 64,0)

# rs1_val == -9, rs2_val == 1024
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00000400; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffff7, 0x00000400, 1024, 3f, x1, 68,0)

# rs1_val == -17, rs2_val == -2049
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xfffff7ff; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffef, 0xfffff7ff, 256, 3f, x1, 72,0)

# rs1_val == -33, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x00000040; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffdf, 0x00000040, 0, 3f, x1, 76,0)

# rs1_val == -65, rs2_val == 2097152
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x00200000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffbf, 0x00200000, 4, 3f, x1, 80,0)

# rs2_val == -1048577, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffc; op2val:0xffefffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffc, 0xffefffff, 1024, 3f, x1, 84,0)

# rs2_val == -4194305, rs1_val == -16385
# opcode: bne, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0xffbfffff; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffbfff, 0xffbfffff, 16, 3f, x1, 88,0)

# rs2_val == -16777217, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00000003; op2val:0xfeffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000003, 0xfeffffff, 2, 3f, x1, 92,0)

# rs2_val == -33554433, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xfdffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffef, 0xfdffffff, 512, 3f, x1, 96,0)

# rs2_val == -134217729, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xf7ffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffbf, 0xf7ffffff, 1024, 1b, x1, 100,0)

# rs2_val == -268435457, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00800000; op2val:0xefffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00800000, 0xefffffff, 1024, 3f, x1, 104,0)

# rs2_val == -1073741825, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00000000; op2val:0xbfffffff; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000000, 0xbfffffff, 4, 1b, x1, 108,0)

# rs2_val == -1431655766, rs1_val == -16777217
# opcode: bne, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xaaaaaaaa; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfeffffff, 0xaaaaaaaa, 0, 1b, x1, 112,0)

# rs1_val == -129, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x02000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffff7f, 0x02000000, 4, 1b, x1, 116,0)

# rs1_val == -257, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000002; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffeff, 0x00000002, 1366, 1b, x1, 120,0)

# rs1_val == -513, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00800000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffdff, 0x00800000, 0, 1b, x1, 124,0)

# rs1_val == -1025, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x00000007; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffbff, 0x00000007, 32, 3f, x1, 128,0)

# rs1_val == -2049, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x00000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffff7ff, 0x00000000, 2, 3f, x1, 132,0)

# rs1_val == -4097, rs2_val == 524288
# opcode: bne, op1:x10; op2:x11; op1val:0xffffefff; op2val:0x00080000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffefff, 0x00080000, 0, 1b, x1, 136,0)

# rs1_val == -32769, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0x00000080; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffff7fff, 0x00000080, 0, 3f, x1, 140,0)

# rs1_val == -65537, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0xff7fffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffeffff, 0xff7fffff, 2, 3f, x1, 144,0)

# rs1_val == -131073, rs2_val == 32
# opcode: bne, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x00000020; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffdffff, 0x00000020, 4, 3f, x1, 148,0)

# rs1_val == -262145, rs2_val == 32768
# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00008000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffbffff, 0x00008000, 0, 1b, x1, 152,0)

# rs1_val == -524289, rs2_val == 256
# opcode: bne, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00000100; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfff7ffff, 0x00000100, 64, 3f, x1, 156,0)

# rs1_val == -1048577, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00000007; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffefffff, 0x00000007, 6, 3f, x1, 160,0)

# rs1_val == -2097153, rs2_val == -1025
# opcode: bne, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0xfffffbff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffdfffff, 0xfffffbff, 2, 1b, x1, 164,0)

# rs1_val == -4194305, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00000008; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffbfffff, 0x00000008, 0, 3f, x1, 168,0)

# rs1_val == -8388609, 
# opcode: bne, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xffffdfff; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xff7fffff, 0xffffdfff, 10, 1b, x1, 172,0)

# rs1_val == -33554433, rs2_val == -5
# opcode: bne, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xfffffffb; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfdffffff, 0xfffffffb, 1024, 1b, x1, 176,0)

# rs1_val == -67108865, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xfffeffff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfbffffff, 0xfffeffff, 6, 1b, x1, 180,0)

# rs1_val == -134217729, 
# opcode: bne, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xfffeffff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xf7ffffff, 0xfffeffff, 6, 1b, x1, 184,0)

# rs1_val == -268435457, 
# opcode: bne, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xfffeffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xefffffff, 0xfffeffff, 1366, 1b, x1, 188,0)

# rs1_val == -536870913, rs2_val == 134217728
# opcode: bne, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x08000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xdfffffff, 0x08000000, 6, 3f, x1, 192,0)

# rs1_val == -1073741825, 
# opcode: bne, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x00000010; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xbfffffff, 0x00000010, 128, 3f, x1, 196,0)

# rs1_val == 2147483647, 
# opcode: bne, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00800000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x7fffffff, 0x00800000, 1024, 1b, x1, 200,0)

# rs1_val == 1431655765, 
# opcode: bne, op1:x10; op2:x11; op1val:0x55555555; op2val:0xfdffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x55555555, 0xfdffffff, 256, 3f, x1, 204,0)

# rs2_val == 1, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00000001; op2val:0x00000001; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000001, 0x00000001, 4, 3f, x1, 208,0)

# rs2_val == 4, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00000040; op2val:0x00000004; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000040, 0x00000004, 16, 3f, x1, 212,0)

# rs2_val == 512, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00040000; op2val:0x00000200; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00040000, 0x00000200, 64, 3f, x1, 216,0)

# rs2_val == 2048, 
# opcode: bne, op1:x10; op2:x11; op1val:0x55555555; op2val:0x00000800; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x55555555, 0x00000800, 128, 3f, x1, 220,0)

# rs2_val == 4096, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00001000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffbfff, 0x00001000, 8, 1b, x1, 224,0)

# rs2_val == 16384, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00004000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffe, 0x00004000, 4, 3f, x1, 228,0)

# rs2_val == 65536, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00100000; op2val:0x00010000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00100000, 0x00010000, 2, 1b, x1, 232,0)

# rs2_val == 1048576, 
# opcode: bne, op1:x10; op2:x11; op1val:0x02000000; op2val:0x00100000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x02000000, 0x00100000, 4, 1b, x1, 236,0)

# rs2_val == 4194304, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00000002; op2val:0x00400000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000002, 0x00400000, 4, 1b, x1, 240,0)

# rs2_val == 67108864, 
# opcode: bne, op1:x10; op2:x11; op1val:0x01000000; op2val:0x04000000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x01000000, 0x04000000, 8, 1b, x1, 244,0)

# rs2_val == -2147483648, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x80000000; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffbffff, 0x80000000, 10, 1b, x1, 248,0)

# rs2_val == -3, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xfffffffd; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfeffffff, 0xfffffffd, 0, 3f, x1, 252,0)

# rs2_val == -9, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xfffffff7; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffff7fff, 0xfffffff7, 256, 3f, x1, 256,0)

# rs2_val == -65, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xffffffbf; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfdffffff, 0xffffffbf, 16, 3f, x1, 260,0)

# rs2_val == -129, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0xffffff7f; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffdfff, 0xffffff7f, 32, 3f, x1, 264,0)

# rs2_val == -257, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00000200; op2val:0xfffffeff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000200, 0xfffffeff, 6, 3f, x1, 268,0)

# rs2_val == -513, 
# opcode: bne, op1:x10; op2:x11; op1val:0xc0000000; op2val:0xfffffdff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xc0000000, 0xfffffdff, 1024, 1b, x1, 272,0)

# rs2_val == -4097, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffefffff; op2val:0xffffefff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffefffff, 0xffffefff, 2, 3f, x1, 276,0)

# rs2_val == 262144, 
# opcode: bne, op1:x10; op2:x11; op1val:0x40000000; op2val:0x00040000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x40000000, 0x00040000, 8, 3f, x1, 280,0)

# rs2_val == 131072, 
# opcode: bne, op1:x10; op2:x11; op1val:0xc0000000; op2val:0x00020000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xc0000000, 0x00020000, 6, 3f, x1, 284,0)

# rs2_val == -262145, 
# opcode: bne, op1:x10; op2:x11; op1val:0x00000008; op2val:0xfffbffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00000008, 0xfffbffff, 1024, 1b, x1, 288,0)

# rs2_val == -524289, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xfff7ffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfbffffff, 0xfff7ffff, 8, 3f, x1, 292,0)

# rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -8193, rs1_val == 65536, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0
# opcode: bne, op1:x10; op2:x11; op1val:0x00010000; op2val:0xffffdfff; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x00010000, 0xffffdfff, 4, 3f, x1, 296,0)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x12_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
