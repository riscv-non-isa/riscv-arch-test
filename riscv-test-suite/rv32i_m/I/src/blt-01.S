
#This assembly file tests the blt instruction of the RISC-V I extension for the blt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",blt)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rs2, rs1==x1, rs2==x16, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0
# opcode: blt, op1:x1; op2:x16; op1val:0x00000006; op2val:0x3fffffff; immval:512; align:0
TEST_BRANCH_OP(blt, x8, x1, x16, 0x00000006, 0x3fffffff, 512, 3f, x7, 0,0)

# rs1 == rs2, rs1==x15, rs2==x15, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -129, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0
# opcode: blt, op1:x15; op2:x15; op1val:0x00000009; op2val:0xffffff7f; immval:0; align:0
TEST_BRANCH_OP(blt, x8, x15, x15, 0x00000009, 0xffffff7f, 0, 1b, x7, 4,0)

# rs1==x17, rs2==x29, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -1025, rs1_val == -4097
# opcode: blt, op1:x17; op2:x29; op1val:0xffffefff; op2val:0xfffffbff; immval:128; align:0
TEST_BRANCH_OP(blt, x8, x17, x29, 0xffffefff, 0xfffffbff, 128, 3f, x7, 8,0)

# rs1==x24, rs2==x14, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs2_val == 1073741824, rs1_val == -8193
# opcode: blt, op1:x24; op2:x14; op1val:0xffffdfff; op2val:0x40000000; immval:0; align:0
TEST_BRANCH_OP(blt, x8, x24, x14, 0xffffdfff, 0x40000000, 0, 3f, x7, 12,0)

# rs1==x23, rs2==x25, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == -524289, rs2_val == -524289
# opcode: blt, op1:x23; op2:x25; op1val:0xfff7ffff; op2val:0xfff7ffff; immval:32; align:0
TEST_BRANCH_OP(blt, x8, x23, x25, 0xfff7ffff, 0xfff7ffff, 32, 3f, x7, 16,0)

# rs1==x27, rs2==x23, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == 32768, rs2_val == 32768
# opcode: blt, op1:x27; op2:x23; op1val:0x00008000; op2val:0x00008000; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x27, x23, 0x00008000, 0x00008000, 4, 1b, x7, 20,0)

# rs1==x31, rs2==x9, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 1431655765
# opcode: blt, op1:x31; op2:x9; op1val:0x55555555; op2val:0x40000000; immval:16; align:0
TEST_BRANCH_OP(blt, x8, x31, x9, 0x55555555, 0x40000000, 16, 3f, x7, 24,0)

# rs1==x3, rs2==x10, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == -262145, rs2_val == -2049
# opcode: blt, op1:x3; op2:x10; op1val:0xfffbffff; op2val:0xfffff7ff; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x3, x10, 0xfffbffff, 0xfffff7ff, 8, 1b, x7, 28,0)

# rs1==x29, rs2==x19, rs1_val == 1, rs2_val == -268435457
# opcode: blt, op1:x29; op2:x19; op1val:0x00000001; op2val:0xefffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x29, x19, 0x00000001, 0xefffffff, 4, 1b, x7, 32,0)

# rs1==x20, rs2==x12, rs1_val == 2, 
# opcode: blt, op1:x20; op2:x12; op1val:0x00000002; op2val:0x3fffffff; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x20, x12, 0x00000002, 0x3fffffff, 6, 3f, x7, 36,0)

# rs1==x6, rs2==x2, rs1_val == 4, rs2_val == 16777216
# opcode: blt, op1:x6; op2:x2; op1val:0x00000004; op2val:0x01000000; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x6, x2, 0x00000004, 0x01000000, 6, 3f, x7, 40,0)

# rs1==x21, rs2==x30, rs1_val == 8, rs2_val == 1048576
# opcode: blt, op1:x21; op2:x30; op1val:0x00000008; op2val:0x00100000; immval:2; align:0
TEST_BRANCH_OP(blt, x8, x21, x30, 0x00000008, 0x00100000, 2, 1b, x7, 44,0)

# rs1==x26, rs2==x28, rs1_val == 16, 
# opcode: blt, op1:x26; op2:x28; op1val:0x00000010; op2val:0xfffffffc; immval:128; align:0
TEST_BRANCH_OP(blt, x8, x26, x28, 0x00000010, 0xfffffffc, 128, 3f, x7, 48,0)

# rs1==x22, rs2==x5, rs1_val == 32, rs2_val == -65537
# opcode: blt, op1:x22; op2:x5; op1val:0x00000020; op2val:0xfffeffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x22, x5, 0x00000020, 0xfffeffff, 1024, 1b, x7, 52,0)

# rs1==x14, rs2==x21, rs1_val == 64, rs2_val == -16385
# opcode: blt, op1:x14; op2:x21; op1val:0x00000040; op2val:0xffffbfff; immval:512; align:0
TEST_BRANCH_OP(blt, x8, x14, x21, 0x00000040, 0xffffbfff, 512, 3f, x7, 56,0)

# rs1==x9, rs2==x6, rs1_val == 128, rs2_val == -1073741825
# opcode: blt, op1:x9; op2:x6; op1val:0x00000080; op2val:0xbfffffff; immval:32; align:0
TEST_BRANCH_OP(blt, x8, x9, x6, 0x00000080, 0xbfffffff, 32, 3f, x7, 60,0)

# rs1==x25, rs2==x27, rs1_val == 256, rs2_val == -2
# opcode: blt, op1:x25; op2:x27; op1val:0x00000100; op2val:0xfffffffe; immval:256; align:0
TEST_BRANCH_OP(blt, x8, x25, x27, 0x00000100, 0xfffffffe, 256, 3f, x7, 64,0)

# rs1==x28, rs2==x13, rs1_val == 512, rs2_val == 268435456
# opcode: blt, op1:x28; op2:x13; op1val:0x00000200; op2val:0x10000000; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x28, x13, 0x00000200, 0x10000000, 4, 1b, x7, 68,0)

# rs1==x0, rs2==x4, rs1_val == 1024, 
# opcode: blt, op1:x0; op2:x4; op1val:0x00000400; op2val:0xc0000000; immval:2; align:0
TEST_BRANCH_OP(blt, x8, x0, x4, 0x00000400, 0xc0000000, 2, 3f, x7, 72,0)

# rs1==x11, rs2==x24, rs1_val == 2048, 
# opcode: blt, op1:x11; op2:x24; op1val:0x00000800; op2val:0xfffffffe; immval:1024; align:0
TEST_BRANCH_OP(blt, x9, x11, x24, 0x00000800, 0xfffffffe, 1024, 1b, x7, 76,0)
RVTEST_SIGBASE( x6,signature_x6_0)

# rs1==x19, rs2==x11, rs1_val == 4096, rs2_val == 8192
# opcode: blt, op1:x19; op2:x11; op1val:0x00001000; op2val:0x00002000; immval:1366; align:0
TEST_BRANCH_OP(blt, x9, x19, x11, 0x00001000, 0x00002000, 1366, 1b, x6, 0,0)

# rs1==x5, rs2==x8, rs1_val == 8192, rs2_val == 134217728
# opcode: blt, op1:x5; op2:x8; op1val:0x00002000; op2val:0x08000000; immval:512; align:0
TEST_BRANCH_OP(blt, x9, x5, x8, 0x00002000, 0x08000000, 512, 3f, x6, 4,0)

# rs1==x16, rs2==x0, rs1_val == 16384, rs2_val == -33554433
# opcode: blt, op1:x16; op2:x0; op1val:0x00004000; op2val:0xfdffffff; immval:2; align:0
TEST_BRANCH_OP(blt, x9, x16, x0, 0x00004000, 0xfdffffff, 2, 3f, x6, 8,0)

# rs1==x2, rs2==x17, rs1_val == 65536, 
# opcode: blt, op1:x2; op2:x17; op1val:0x00010000; op2val:0x08000000; immval:1024; align:0
TEST_BRANCH_OP(blt, x9, x2, x17, 0x00010000, 0x08000000, 1024, 3f, x6, 12,0)

# rs1==x12, rs2==x22, rs1_val == 131072, 
# opcode: blt, op1:x12; op2:x22; op1val:0x00020000; op2val:0x01000000; immval:6; align:0
TEST_BRANCH_OP(blt, x9, x12, x22, 0x00020000, 0x01000000, 6, 1b, x6, 16,0)

# rs1==x7, rs2==x31, rs1_val == 262144, rs2_val == 131072
# opcode: blt, op1:x7; op2:x31; op1val:0x00040000; op2val:0x00020000; immval:4; align:0
TEST_BRANCH_OP(blt, x9, x7, x31, 0x00040000, 0x00020000, 4, 3f, x6, 20,0)

# rs1==x4, rs2==x26, rs1_val == 524288, 
# opcode: blt, op1:x4; op2:x26; op1val:0x00080000; op2val:0xfffffffa; immval:0; align:0
TEST_BRANCH_OP(blt, x9, x4, x26, 0x00080000, 0xfffffffa, 0, 3f, x6, 24,0)

# rs1==x18, rs2==x3, rs1_val == 1048576, rs2_val == -131073
# opcode: blt, op1:x18; op2:x3; op1val:0x00100000; op2val:0xfffdffff; immval:16; align:0
TEST_BRANCH_OP(blt, x9, x18, x3, 0x00100000, 0xfffdffff, 16, 3f, x6, 28,0)

# rs1==x30, rs2==x20, rs1_val == 2097152, 
# opcode: blt, op1:x30; op2:x20; op1val:0x00200000; op2val:0xffffffff; immval:2; align:0
TEST_BRANCH_OP(blt, x9, x30, x20, 0x00200000, 0xffffffff, 2, 1b, x6, 32,0)

# rs1==x10, rs2==x7, rs1_val == 4194304, rs2_val == 4096
# opcode: blt, op1:x10; op2:x7; op1val:0x00400000; op2val:0x00001000; immval:16; align:0
TEST_BRANCH_OP(blt, x9, x10, x7, 0x00400000, 0x00001000, 16, 3f, x6, 36,0)

# rs1==x13, rs2==x1, rs1_val == 8388608, 
# opcode: blt, op1:x13; op2:x1; op1val:0x00800000; op2val:0x00100000; immval:6; align:0
TEST_BRANCH_OP(blt, x9, x13, x1, 0x00800000, 0x00100000, 6, 3f, x6, 40,0)

# rs1==x8, rs2==x18, rs1_val == 16777216, rs2_val == -67108865
# opcode: blt, op1:x8; op2:x18; op1val:0x01000000; op2val:0xfbffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x9, x8, x18, 0x01000000, 0xfbffffff, 64, 3f, x6, 44,0)

# rs1_val == 33554432, 
# opcode: blt, op1:x10; op2:x11; op1val:0x02000000; op2val:0xfffff7ff; immval:8; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x02000000, 0xfffff7ff, 8, 1b, x6, 48,0)

# rs1_val == 67108864, 
# opcode: blt, op1:x10; op2:x11; op1val:0x04000000; op2val:0xfffdffff; immval:32; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x04000000, 0xfffdffff, 32, 3f, x6, 52,0)

# rs1_val == 134217728, rs2_val == 536870912
# opcode: blt, op1:x10; op2:x11; op1val:0x08000000; op2val:0x20000000; immval:32; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x08000000, 0x20000000, 32, 3f, x6, 56,0)

# rs1_val == 268435456, 
# opcode: blt, op1:x10; op2:x11; op1val:0x10000000; op2val:0xfffffffa; immval:1366; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x10000000, 0xfffffffa, 1366, 1b, x6, 60,0)

# rs1_val == 536870912, rs2_val == 67108864
# opcode: blt, op1:x10; op2:x11; op1val:0x20000000; op2val:0x04000000; immval:128; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x20000000, 0x04000000, 128, 3f, x6, 64,0)

# rs1_val == 1073741824, 
# opcode: blt, op1:x10; op2:x11; op1val:0x40000000; op2val:0xc0000000; immval:4; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x40000000, 0xc0000000, 4, 3f, x6, 68,0)

# rs1_val == -2147483648, 
# opcode: blt, op1:x10; op2:x11; op1val:0x80000000; op2val:0xfff7ffff; immval:8; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x80000000, 0xfff7ffff, 8, 1b, x6, 72,0)

# rs1_val == -2, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xfffffffa; immval:8; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffffe, 0xfffffffa, 8, 3f, x6, 76,0)

# rs1_val == -3, rs2_val == -262145
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xfffbffff; immval:512; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffffd, 0xfffbffff, 512, 3f, x6, 80,0)

# rs1_val == -5, rs2_val == -32769
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xffff7fff; immval:16; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffffb, 0xffff7fff, 16, 3f, x6, 84,0)

# rs1_val == -9, rs2_val == 1024
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00000400; immval:10; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffff7, 0x00000400, 10, 1b, x6, 88,0)

# rs1_val == -17, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffef; op2val:0x08000000; immval:4; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffffffef, 0x08000000, 4, 1b, x6, 92,0)

# rs1_val == -33, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x00000009; immval:1024; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffffffdf, 0x00000009, 1024, 1b, x6, 96,0)

# rs2_val == -1048577, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00010000; op2val:0xffefffff; immval:4; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00010000, 0xffefffff, 4, 1b, x6, 100,0)

# rs2_val == -2097153, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xffdfffff; immval:8; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffffb, 0xffdfffff, 8, 1b, x6, 104,0)

# rs2_val == -4194305, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xffbfffff; immval:16; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffffffef, 0xffbfffff, 16, 3f, x6, 108,0)

# rs2_val == -8388609, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000010; op2val:0xff7fffff; immval:6; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00000010, 0xff7fffff, 6, 3f, x6, 112,0)

# rs2_val == -16777217, 
# opcode: blt, op1:x10; op2:x11; op1val:0x20000000; op2val:0xfeffffff; immval:8; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x20000000, 0xfeffffff, 8, 1b, x6, 116,0)

# rs2_val == -134217729, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000400; op2val:0xf7ffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00000400, 0xf7ffffff, 0, 1b, x6, 120,0)

# rs2_val == -536870913, 
# opcode: blt, op1:x10; op2:x11; op1val:0x20000000; op2val:0xdfffffff; immval:10; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x20000000, 0xdfffffff, 10, 1b, x6, 124,0)

# rs2_val == 2147483647, 
# opcode: blt, op1:x10; op2:x11; op1val:0x08000000; op2val:0x7fffffff; immval:256; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x08000000, 0x7fffffff, 256, 3f, x6, 128,0)

# rs2_val == 1431655765, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000001; op2val:0x55555555; immval:1366; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00000001, 0x55555555, 1366, 1b, x6, 132,0)

# rs2_val == -1431655766, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00020000; op2val:0xaaaaaaaa; immval:1024; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00020000, 0xaaaaaaaa, 1024, 1b, x6, 136,0)

# rs1_val == -65, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x00000003; immval:4; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffffffbf, 0x00000003, 4, 3f, x6, 140,0)

# rs1_val == -129, rs2_val == 64
# opcode: blt, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x00000040; immval:1024; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffffff7f, 0x00000040, 1024, 1b, x6, 144,0)

# rs1_val == -257, rs2_val == 33554432
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x02000000; immval:64; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffeff, 0x02000000, 64, 3f, x6, 148,0)

# rs1_val == -513, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xffdfffff; immval:32; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffdff, 0xffdfffff, 32, 3f, x6, 152,0)

# rs1_val == -1025, rs2_val == -4097
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xffffefff; immval:1024; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffbff, 0xffffefff, 1024, 3f, x6, 156,0)

# rs1_val == -2049, rs2_val == -257
# opcode: blt, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xfffffeff; immval:4; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffff7ff, 0xfffffeff, 4, 3f, x6, 160,0)

# rs1_val == -16385, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0xfffffffc; immval:6; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffffbfff, 0xfffffffc, 6, 3f, x6, 164,0)

# rs1_val == -32769, rs2_val == 524288
# opcode: blt, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0x00080000; immval:4; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffff7fff, 0x00080000, 4, 1b, x6, 168,0)

# rs1_val == -65537, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0xffefffff; immval:256; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffeffff, 0xffefffff, 256, 3f, x6, 172,0)

# rs1_val == -131073, rs2_val == 32
# opcode: blt, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x00000020; immval:256; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffdffff, 0x00000020, 256, 3f, x6, 176,0)

# rs1_val == -1048577, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00100000; immval:512; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffefffff, 0x00100000, 512, 3f, x6, 180,0)

# rs1_val == -2097153, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0xffff7fff; immval:512; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffdfffff, 0xffff7fff, 512, 3f, x6, 184,0)

# rs1_val == -4194305, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00000009; immval:8; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffbfffff, 0x00000009, 8, 3f, x6, 188,0)

# rs1_val == -8388609, rs2_val == 65536
# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0x00010000; immval:128; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xff7fffff, 0x00010000, 128, 3f, x6, 192,0)

# rs1_val == -16777217, rs2_val == 8388608
# opcode: blt, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x00800000; immval:2; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfeffffff, 0x00800000, 2, 3f, x6, 196,0)

# rs1_val == -33554433, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x20000000; immval:1024; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfdffffff, 0x20000000, 1024, 1b, x6, 200,0)

# rs1_val == -67108865, rs2_val == 1
# opcode: blt, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x00000001; immval:8; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfbffffff, 0x00000001, 8, 1b, x6, 204,0)

# rs1_val == -134217729, 
# opcode: blt, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x00800000; immval:1366; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xf7ffffff, 0x00800000, 1366, 1b, x6, 208,0)

# rs1_val == -268435457, 
# opcode: blt, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x10000000; immval:8; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xefffffff, 0x10000000, 8, 3f, x6, 212,0)

# rs1_val == -536870913, rs2_val == 256
# opcode: blt, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00000100; immval:6; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xdfffffff, 0x00000100, 6, 3f, x6, 216,0)

# rs1_val == -1073741825, 
# opcode: blt, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xffffbfff; immval:10; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xbfffffff, 0xffffbfff, 10, 1b, x6, 220,0)

# rs1_val == 2147483647, 
# opcode: blt, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0xffff7fff; immval:32; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x7fffffff, 0xffff7fff, 32, 3f, x6, 224,0)

# rs1_val == -1431655766, rs2_val == 8
# opcode: blt, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0x00000008; immval:6; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xaaaaaaaa, 0x00000008, 6, 1b, x6, 228,0)

# rs2_val == 2, 
# opcode: blt, op1:x10; op2:x11; op1val:0x02000000; op2val:0x00000002; immval:4; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x02000000, 0x00000002, 4, 3f, x6, 232,0)

# rs2_val == 4, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x00000004; immval:64; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffffd, 0x00000004, 64, 3f, x6, 236,0)

# rs2_val == 16, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000020; op2val:0x00000010; immval:256; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00000020, 0x00000010, 256, 3f, x6, 240,0)

# rs2_val == 128, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00080000; op2val:0x00000080; immval:256; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00080000, 0x00000080, 256, 3f, x6, 244,0)

# rs2_val == 2097152, 
# opcode: blt, op1:x10; op2:x11; op1val:0x02000000; op2val:0x00200000; immval:0; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x02000000, 0x00200000, 0, 1b, x6, 248,0)

# rs2_val == 4194304, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00400000; immval:128; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffffdfff, 0x00400000, 128, 3f, x6, 252,0)

# rs2_val == -2147483648, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x80000000; immval:128; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffefffff, 0x80000000, 128, 3f, x6, 256,0)

# rs2_val == -3, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffefffff; op2val:0xfffffffd; immval:10; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffefffff, 0xfffffffd, 10, 1b, x6, 260,0)

# rs2_val == -5, 
# opcode: blt, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xfffffffb; immval:64; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xefffffff, 0xfffffffb, 64, 3f, x6, 264,0)

# rs2_val == -9, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xfffffff7; immval:1366; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffffffef, 0xfffffff7, 1366, 1b, x6, 268,0)

# rs2_val == -17, 
# opcode: blt, op1:x10; op2:x11; op1val:0x40000000; op2val:0xffffffef; immval:10; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x40000000, 0xffffffef, 10, 1b, x6, 272,0)

# rs2_val == -33, 
# opcode: blt, op1:x10; op2:x11; op1val:0x10000000; op2val:0xffffffdf; immval:4; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x10000000, 0xffffffdf, 4, 1b, x6, 276,0)

# rs2_val == -65, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xffffffbf; immval:1366; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffffb, 0xffffffbf, 1366, 1b, x6, 280,0)

# rs2_val == 512, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00000200; immval:128; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xffffdfff, 0x00000200, 128, 3f, x6, 284,0)

# rs2_val == -513, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000008; op2val:0xfffffdff; immval:10; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00000008, 0xfffffdff, 10, 1b, x6, 288,0)

# rs2_val == -8193, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000400; op2val:0xffffdfff; immval:8; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00000400, 0xffffdfff, 8, 1b, x6, 292,0)

# rs2_val == 16384, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00004000; immval:10; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xfffffff7, 0x00004000, 10, 1b, x6, 296,0)

# rs2_val == 262144, 
# opcode: blt, op1:x10; op2:x11; op1val:0xc0000000; op2val:0x00040000; immval:2; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0xc0000000, 0x00040000, 2, 1b, x6, 300,0)

# rs2_val == 2048, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00004000; op2val:0x00000800; immval:1366; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00004000, 0x00000800, 1366, 1b, x6, 304,0)

# rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -129, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0
# opcode: blt, op1:x10; op2:x11; op1val:0x00000009; op2val:0xffffff7f; immval:0; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00000009, 0xffffff7f, 0, 1b, x6, 308,0)

# rs1_val == 1024, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000400; op2val:0xc0000000; immval:2; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00000400, 0xc0000000, 2, 3f, x6, 312,0)

# rs1_val == 16384, rs2_val == -33554433
# opcode: blt, op1:x10; op2:x11; op1val:0x00004000; op2val:0xfdffffff; immval:2; align:0
TEST_BRANCH_OP(blt, x9, x10, x11, 0x00004000, 0xfdffffff, 2, 3f, x6, 316,0)
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
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x6_0:
    .fill 80*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
