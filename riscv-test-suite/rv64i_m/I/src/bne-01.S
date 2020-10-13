
#This assembly file tests the bne instruction of the RISC-V I extension for the bne covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bne)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 != rs2, rs1==x5, rs2==x18, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs2_val == 262144, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 35184372088832
# opcode: bne, op1:x5; op2:x18; op1val:0x0000200000000000; op2val:0x0000000000040000; immval:4; align:0
TEST_BRANCH_OP(bne, x1, x5, x18, 0x0000200000000000, 0x0000000000040000, 4, 3f, x2, 0,0)

# rs1 == rs2, rs1==x25, rs2==x25, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -72057594037927937, rs1_val == 2305843009213693952
# opcode: bne, op1:x25; op2:x25; op1val:0x2000000000000000; op2val:0xfeffffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x1, x25, x25, 0x2000000000000000, 0xfeffffffffffffff, 512, 3f, x2, 8,0)

# rs1==x24, rs2==x20, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == -33, rs1_val == -1025
# opcode: bne, op1:x24; op2:x20; op1val:0xfffffffffffffbff; op2val:0xffffffffffffffdf; immval:128; align:0
TEST_BRANCH_OP(bne, x1, x24, x20, 0xfffffffffffffbff, 0xffffffffffffffdf, 128, 3f, x2, 16,0)

# rs1==x10, rs2==x30, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs2_val == 274877906944, rs1_val == -6148914691236517206
# opcode: bne, op1:x10; op2:x30; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x0000004000000000; immval:16; align:0
TEST_BRANCH_OP(bne, x1, x10, x30, 0xaaaaaaaaaaaaaaaa, 0x0000004000000000, 16, 3f, x2, 24,0)

# rs1==x26, rs2==x3, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == -268435457, rs1_val == -268435457
# opcode: bne, op1:x26; op2:x3; op1val:0xffffffffefffffff; op2val:0xffffffffefffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x1, x26, x3, 0xffffffffefffffff, 0xffffffffefffffff, 8, 3f, x2, 32,0)

# rs1==x31, rs2==x26, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == 274877906944
# opcode: bne, op1:x31; op2:x26; op1val:0x0000004000000000; op2val:0x0000004000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x1, x31, x26, 0x0000004000000000, 0x0000004000000000, 1024, 1b, x2, 40,0)

# rs1==x20, rs2==x24, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == -68719476737, rs1_val == -34359738369
# opcode: bne, op1:x20; op2:x24; op1val:0xfffffff7ffffffff; op2val:0xffffffefffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x1, x20, x24, 0xfffffff7ffffffff, 0xffffffefffffffff, 1024, 1b, x2, 48,0)

# rs1==x27, rs2==x5, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == 2147483648, rs1_val == 134217728
# opcode: bne, op1:x27; op2:x5; op1val:0x0000000008000000; op2val:0x0000000080000000; immval:0; align:0
TEST_BRANCH_OP(bne, x1, x27, x5, 0x0000000008000000, 0x0000000080000000, 0, 1b, x2, 56,0)

# rs1==x28, rs2==x19, rs1_val == 1, rs2_val == 137438953472
# opcode: bne, op1:x28; op2:x19; op1val:0x0000000000000001; op2val:0x0000002000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x1, x28, x19, 0x0000000000000001, 0x0000002000000000, 4, 1b, x2, 64,0)

# rs1==x30, rs2==x21, rs1_val == 2, 
# opcode: bne, op1:x30; op2:x21; op1val:0x0000000000000002; op2val:0x0000000000000003; immval:64; align:0
TEST_BRANCH_OP(bne, x1, x30, x21, 0x0000000000000002, 0x0000000000000003, 64, 3f, x2, 72,0)

# rs1==x4, rs2==x8, rs1_val == 4, 
# opcode: bne, op1:x4; op2:x8; op1val:0x0000000000000004; op2val:0x0000000000000006; immval:4; align:0
TEST_BRANCH_OP(bne, x1, x4, x8, 0x0000000000000004, 0x0000000000000006, 4, 3f, x2, 80,0)

# rs1==x19, rs2==x28, rs1_val == 8, rs2_val == -536870913
# opcode: bne, op1:x19; op2:x28; op1val:0x0000000000000008; op2val:0xffffffffdfffffff; immval:128; align:0
TEST_BRANCH_OP(bne, x1, x19, x28, 0x0000000000000008, 0xffffffffdfffffff, 128, 3f, x2, 88,0)

# rs1==x9, rs2==x6, rs1_val == 16, rs2_val == -288230376151711745
# opcode: bne, op1:x9; op2:x6; op1val:0x0000000000000010; op2val:0xfbffffffffffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x1, x9, x6, 0x0000000000000010, 0xfbffffffffffffff, 256, 3f, x2, 96,0)

# rs1==x18, rs2==x14, rs1_val == 32, rs2_val == 4294967296
# opcode: bne, op1:x18; op2:x14; op1val:0x0000000000000020; op2val:0x0000000100000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x1, x18, x14, 0x0000000000000020, 0x0000000100000000, 1024, 1b, x2, 104,0)

# rs1==x17, rs2==x23, rs1_val == 64, 
# opcode: bne, op1:x17; op2:x23; op1val:0x0000000000000040; op2val:0xffffffefffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x1, x17, x23, 0x0000000000000040, 0xffffffefffffffff, 8, 3f, x2, 112,0)

# rs1==x23, rs2==x4, rs1_val == 128, rs2_val == -8589934593
# opcode: bne, op1:x23; op2:x4; op1val:0x0000000000000080; op2val:0xfffffffdffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x1, x23, x4, 0x0000000000000080, 0xfffffffdffffffff, 8, 1b, x2, 120,0)

# rs1==x16, rs2==x12, rs1_val == 256, rs2_val == -2049
# opcode: bne, op1:x16; op2:x12; op1val:0x0000000000000100; op2val:0xfffffffffffff7ff; immval:0; align:0
TEST_BRANCH_OP(bne, x1, x16, x12, 0x0000000000000100, 0xfffffffffffff7ff, 0, 1b, x2, 128,0)

# rs1==x29, rs2==x27, rs1_val == 512, 
# opcode: bne, op1:x29; op2:x27; op1val:0x0000000000000200; op2val:0xffffffefffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x1, x29, x27, 0x0000000000000200, 0xffffffefffffffff, 1024, 1b, x2, 136,0)

# rs1==x7, rs2==x0, rs1_val == 1024, rs2_val == 64
# opcode: bne, op1:x7; op2:x0; op1val:0x0000000000000400; op2val:0x0000000000000040; immval:6; align:0
TEST_BRANCH_OP(bne, x1, x7, x0, 0x0000000000000400, 0x0000000000000040, 6, 3f, x2, 144,0)

# rs1==x13, rs2==x11, rs1_val == 2048, 
# opcode: bne, op1:x13; op2:x11; op1val:0x0000000000000800; op2val:0xfeffffffffffffff; immval:16; align:0
TEST_BRANCH_OP(bne, x1, x13, x11, 0x0000000000000800, 0xfeffffffffffffff, 16, 3f, x2, 152,0)

# rs1==x14, rs2==x31, rs1_val == 4096, 
# opcode: bne, op1:x14; op2:x31; op1val:0x0000000000001000; op2val:0xffffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x14, x31, 0x0000000000001000, 0xffffffffffffffff, 2, 3f, x2, 160,0)

# rs1==x6, rs2==x13, rs1_val == 8192, rs2_val == -9
# opcode: bne, op1:x6; op2:x13; op1val:0x0000000000002000; op2val:0xfffffffffffffff7; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x6, x13, 0x0000000000002000, 0xfffffffffffffff7, 4, 3f, x2, 168,0)

# rs1==x15, rs2==x1, rs1_val == 16384, rs2_val == 4398046511104
# opcode: bne, op1:x15; op2:x1; op1val:0x0000000000004000; op2val:0x0000040000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x15, x1, 0x0000000000004000, 0x0000040000000000, 1024, 3f, x2, 176,0)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x2, rs2==x17, rs1_val == 32768, rs2_val == 17592186044416
# opcode: bne, op1:x2; op2:x17; op1val:0x0000000000008000; op2val:0x0000100000000000; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x2, x17, 0x0000000000008000, 0x0000100000000000, 256, 3f, x4, 0,0)

# rs1==x8, rs2==x15, rs1_val == 65536, rs2_val == 8589934592
# opcode: bne, op1:x8; op2:x15; op1val:0x0000000000010000; op2val:0x0000000200000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x8, x15, 0x0000000000010000, 0x0000000200000000, 1366, 1b, x4, 8,0)

# rs1==x11, rs2==x7, rs1_val == 131072, rs2_val == 8388608
# opcode: bne, op1:x11; op2:x7; op1val:0x0000000000020000; op2val:0x0000000000800000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x11, x7, 0x0000000000020000, 0x0000000000800000, 1024, 1b, x4, 16,0)

# rs1==x22, rs2==x29, rs1_val == 262144, 
# opcode: bne, op1:x22; op2:x29; op1val:0x0000000000040000; op2val:0xffffffefffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x22, x29, 0x0000000000040000, 0xffffffefffffffff, 1024, 3f, x4, 24,0)

# rs1==x12, rs2==x2, rs1_val == 524288, 
# opcode: bne, op1:x12; op2:x2; op1val:0x0000000000080000; op2val:0xfffffffffffff7ff; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x12, x2, 0x0000000000080000, 0xfffffffffffff7ff, 10, 1b, x4, 32,0)

# rs1==x21, rs2==x9, rs1_val == 1048576, rs2_val == -3
# opcode: bne, op1:x21; op2:x9; op1val:0x0000000000100000; op2val:0xfffffffffffffffd; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x21, x9, 0x0000000000100000, 0xfffffffffffffffd, 6, 3f, x4, 40,0)

# rs1==x0, rs2==x16, rs1_val == 2097152, 
# opcode: bne, op1:x0; op2:x16; op1val:0x0000000000200000; op2val:0xffffffffffffffdf; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x0, x16, 0x0000000000200000, 0xffffffffffffffdf, 16, 3f, x4, 48,0)

# rs1==x1, rs2==x10, rs1_val == 4194304, 
# opcode: bne, op1:x1; op2:x10; op1val:0x0000000000400000; op2val:0xfffffffffffffffa; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x1, x10, 0x0000000000400000, 0xfffffffffffffffa, 64, 3f, x4, 56,0)

# rs1==x3, rs2==x22, rs1_val == 8388608, rs2_val == 2305843009213693952
# opcode: bne, op1:x3; op2:x22; op1val:0x0000000000800000; op2val:0x2000000000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x3, x22, 0x0000000000800000, 0x2000000000000000, 4, 3f, x4, 64,0)

# rs1_val == 16777216, rs2_val == -144115188075855873
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0xfdffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000001000000, 0xfdffffffffffffff, 8, 1b, x4, 72,0)

# rs1_val == 33554432, rs2_val == -1099511627777
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0xfffffeffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000002000000, 0xfffffeffffffffff, 1024, 3f, x4, 80,0)

# rs1_val == 67108864, rs2_val == 256
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0x0000000000000100; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000004000000, 0x0000000000000100, 512, 3f, x4, 88,0)

# rs1_val == 268435456, rs2_val == 1125899906842624
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0004000000000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000010000000, 0x0004000000000000, 2, 1b, x4, 96,0)

# rs1_val == 536870912, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000000000000005; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000020000000, 0x0000000000000005, 1366, 1b, x4, 104,0)

# rs1_val == 1073741824, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0xfeffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000040000000, 0xfeffffffffffffff, 128, 3f, x4, 112,0)

# rs1_val == 2147483648, rs2_val == -34359738369
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xfffffff7ffffffff; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000080000000, 0xfffffff7ffffffff, 128, 3f, x4, 120,0)

# rs1_val == 4294967296, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000000000000005; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000100000000, 0x0000000000000005, 10, 1b, x4, 128,0)

# rs1_val == 8589934592, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xfffffffffffffff6; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000200000000, 0xfffffffffffffff6, 64, 3f, x4, 136,0)

# rs1_val == 17179869184, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xfffffff7ffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000400000000, 0xfffffff7ffffffff, 1024, 3f, x4, 144,0)

# rs1_val == 34359738368, rs2_val == 140737488355328
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x0000800000000000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000800000000, 0x0000800000000000, 8, 3f, x4, 152,0)

# rs1_val == 68719476736, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000000000000003; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000001000000000, 0x0000000000000003, 8, 3f, x4, 160,0)

# rs1_val == 137438953472, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000040000000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000002000000000, 0x0000040000000000, 6, 1b, x4, 168,0)

# rs1_val == 549755813888, rs2_val == -4194305
# opcode: bne, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xffffffffffbfffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000008000000000, 0xffffffffffbfffff, 0, 3f, x4, 176,0)

# rs1_val == 1099511627776, rs2_val == -4611686018427387905
# opcode: bne, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xbfffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000010000000000, 0xbfffffffffffffff, 8, 1b, x4, 184,0)

# rs1_val == 2199023255552, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xc000000000000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000020000000000, 0xc000000000000000, 1024, 3f, x4, 192,0)

# rs1_val == 4398046511104, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000080000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000040000000000, 0x0000000080000000, 6, 1b, x4, 200,0)

# rs1_val == 8796093022208, rs2_val == 4
# opcode: bne, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0x0000000000000004; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000080000000000, 0x0000000000000004, 1024, 3f, x4, 208,0)

# rs1_val == 17592186044416, rs2_val == -5
# opcode: bne, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xfffffffffffffffb; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000100000000000, 0xfffffffffffffffb, 128, 3f, x4, 216,0)

# rs1_val == 70368744177664, rs2_val == -65537
# opcode: bne, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfffffffffffeffff; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000400000000000, 0xfffffffffffeffff, 32, 3f, x4, 224,0)

# rs1_val == 140737488355328, rs2_val == 32768
# opcode: bne, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0000000000008000; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000800000000000, 0x0000000000008000, 10, 1b, x4, 232,0)

# rs1_val == 281474976710656, rs2_val == 4194304
# opcode: bne, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0000000000400000; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0001000000000000, 0x0000000000400000, 512, 3f, x4, 240,0)

# rs1_val == 562949953421312, rs2_val == 281474976710656
# opcode: bne, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0001000000000000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0002000000000000, 0x0001000000000000, 8, 1b, x4, 248,0)

# rs1_val == 1125899906842624, rs2_val == 17179869184
# opcode: bne, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0x0000000400000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0004000000000000, 0x0000000400000000, 6, 1b, x4, 256,0)

# rs1_val == 2251799813685248, rs2_val == -549755813889
# opcode: bne, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0xffffff7fffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0008000000000000, 0xffffff7fffffffff, 0, 3f, x4, 264,0)

# rs1_val == 4503599627370496, rs2_val == 4503599627370496
# opcode: bne, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0010000000000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0010000000000000, 0x0010000000000000, 2, 1b, x4, 272,0)

# rs1_val == 9007199254740992, rs2_val == -67108865
# opcode: bne, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xfffffffffbffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0020000000000000, 0xfffffffffbffffff, 1024, 3f, x4, 280,0)

# rs1_val == 18014398509481984, rs2_val == -17
# opcode: bne, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffffffffffffffef; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0040000000000000, 0xffffffffffffffef, 0, 1b, x4, 288,0)

# rs1_val == 36028797018963968, rs2_val == -1152921504606846977
# opcode: bne, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xefffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0080000000000000, 0xefffffffffffffff, 2, 3f, x4, 296,0)

# rs1_val == 72057594037927936, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000400000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0100000000000000, 0x0000000000400000, 0, 1b, x4, 304,0)

# rs1_val == 144115188075855872, rs2_val == -8388609
# opcode: bne, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xffffffffff7fffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0200000000000000, 0xffffffffff7fffff, 1024, 3f, x4, 312,0)

# rs1_val == 288230376151711744, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xfdffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0400000000000000, 0xfdffffffffffffff, 6, 1b, x4, 320,0)

# rs1_val == 576460752303423488, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xfffffffdffffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0800000000000000, 0xfffffffdffffffff, 512, 3f, x4, 328,0)

# rs1_val == 1152921504606846976, rs2_val == 4611686018427387904
# opcode: bne, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x4000000000000000; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x1000000000000000, 0x4000000000000000, 16, 3f, x4, 336,0)

# rs1_val == 4611686018427387904, rs2_val == 2097152
# opcode: bne, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0000000000200000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x4000000000000000, 0x0000000000200000, 2, 1b, x4, 344,0)

# rs1_val == -9223372036854775808, rs2_val == -262145
# opcode: bne, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xfffffffffffbffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x8000000000000000, 0xfffffffffffbffff, 8, 3f, x4, 352,0)

# rs1_val == -2, rs2_val == 268435456
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0000000010000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffe, 0x0000000010000000, 0, 1b, x4, 360,0)

# rs1_val == -3, rs2_val == -1073741825
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0xffffffffbfffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffd, 0xffffffffbfffffff, 1366, 1b, x4, 368,0)

# rs1_val == -5, rs2_val == -4398046511105
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xfffffbffffffffff; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffb, 0xfffffbffffffffff, 16, 3f, x4, 376,0)

# rs1_val == -9, rs2_val == 549755813888
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000008000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffff7, 0x0000008000000000, 0, 3f, x4, 384,0)

# rs1_val == -17, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000000000000040; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffef, 0x0000000000000040, 2, 1b, x4, 392,0)

# rs1_val == -33, rs2_val == -1025
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xfffffffffffffbff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffdf, 0xfffffffffffffbff, 64, 3f, x4, 400,0)

# rs1_val == -65, rs2_val == -35184372088833
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0xffffdfffffffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffbf, 0xffffdfffffffffff, 256, 3f, x4, 408,0)

# rs1_val == -129, rs2_val == 128
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0x0000000000000080; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffff7f, 0x0000000000000080, 6, 1b, x4, 416,0)

# rs1_val == -257, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000000000000040; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffeff, 0x0000000000000040, 2, 1b, x4, 424,0)

# rs1_val == -513, rs2_val == -131073
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xfffffffffffdffff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffdff, 0xfffffffffffdffff, 64, 3f, x4, 432,0)

# rs1_val == -2049, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xffffffffefffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffff7ff, 0xffffffffefffffff, 1024, 1b, x4, 440,0)

# rs1_val == -4097, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000010000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffefff, 0x0000000010000000, 1366, 1b, x4, 448,0)

# rs2_val == -4503599627370497, 
# opcode: bne, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xffefffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xffefffffffffffff, 1024, 1b, x4, 456,0)

# rs2_val == -9007199254740993, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0xffdfffffffffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000002000000, 0xffdfffffffffffff, 256, 3f, x4, 464,0)

# rs2_val == -18014398509481985, rs1_val == -2097153
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xffbfffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffdfffff, 0xffbfffffffffffff, 4, 3f, x4, 472,0)

# rs2_val == -36028797018963969, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xff7fffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0002000000000000, 0xff7fffffffffffff, 0, 3f, x4, 480,0)

# rs2_val == -576460752303423489, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xf7ffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0400000000000000, 0xf7ffffffffffffff, 1024, 1b, x4, 488,0)

# rs2_val == -2305843009213693953, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0xdfffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000007, 0xdfffffffffffffff, 2, 3f, x4, 496,0)

# rs2_val == 9223372036854775807, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x7fffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000800000000, 0x7fffffffffffffff, 0, 1b, x4, 504,0)

# rs2_val == 6148914691236517205, 
# opcode: bne, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x5555555555555555; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x4000000000000000, 0x5555555555555555, 2, 1b, x4, 512,0)

# rs2_val == -6148914691236517206, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xaaaaaaaaaaaaaaaa; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000080000000, 0xaaaaaaaaaaaaaaaa, 256, 3f, x4, 520,0)

# rs1_val == -8193, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0010000000000000; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffdfff, 0x0010000000000000, 512, 3f, x4, 528,0)

# rs1_val == -16385, rs2_val == 16
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000000000000010; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffbfff, 0x0000000000000010, 512, 3f, x4, 536,0)

# rs1_val == -32769, rs2_val == 4096
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000001000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffff7fff, 0x0000000000001000, 4, 3f, x4, 544,0)

# rs1_val == -65537, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0000000010000000; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffeffff, 0x0000000010000000, 256, 3f, x4, 552,0)

# rs1_val == -131073, rs2_val == 34359738368
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000000800000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffdffff, 0x0000000800000000, 6, 1b, x4, 560,0)

# rs1_val == -262145, rs2_val == -17179869185
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xfffffffbffffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffbffff, 0xfffffffbffffffff, 512, 3f, x4, 568,0)

# rs1_val == -524289, rs2_val == 35184372088832
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000200000000000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffff7ffff, 0x0000200000000000, 8, 1b, x4, 576,0)

# rs1_val == -1048577, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0xfffffffffffffffa; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffefffff, 0xfffffffffffffffa, 1024, 3f, x4, 584,0)

# rs1_val == -4194305, rs2_val == -524289
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xfffffffffff7ffff; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffbfffff, 0xfffffffffff7ffff, 256, 3f, x4, 592,0)

# rs1_val == -8388609, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xffffff7fffffffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffff7fffff, 0xffffff7fffffffff, 0, 3f, x4, 600,0)

# rs1_val == -16777217, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0000000010000000; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffeffffff, 0x0000000010000000, 10, 1b, x4, 608,0)

# rs1_val == -33554433, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xfffffffffffbffff; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffdffffff, 0xfffffffffffbffff, 0, 3f, x4, 616,0)

# rs1_val == -67108865, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xfffffffffffffffd; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffbffffff, 0xfffffffffffffffd, 256, 3f, x4, 624,0)

# rs1_val == -134217729, rs2_val == -16777217
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xfffffffffeffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffff7ffffff, 0xfffffffffeffffff, 1366, 1b, x4, 632,0)

# rs1_val == -536870913, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xc000000000000000; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffdfffffff, 0xc000000000000000, 512, 3f, x4, 640,0)

# rs1_val == -1073741825, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000000000000004; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffbfffffff, 0x0000000000000004, 256, 3f, x4, 648,0)

# rs1_val == -2147483649, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xfffffffffbffffff; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffff7fffffff, 0xfffffffffbffffff, 1366, 1b, x4, 656,0)

# rs1_val == -4294967297, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0x0000800000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffeffffffff, 0x0000800000000000, 4, 3f, x4, 664,0)

# rs1_val == -8589934593, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0000000000000100; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffdffffffff, 0x0000000000000100, 2, 1b, x4, 672,0)

# rs1_val == -17179869185, rs2_val == -2251799813685249
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xfff7ffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffbffffffff, 0xfff7ffffffffffff, 8, 3f, x4, 680,0)

# rs1_val == -68719476737, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xfbffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffefffffffff, 0xfbffffffffffffff, 6, 1b, x4, 688,0)

# rs1_val == -137438953473, rs2_val == -562949953421313
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xfffdffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffdfffffffff, 0xfffdffffffffffff, 2, 1b, x4, 696,0)

# rs1_val == -274877906945, rs2_val == 67108864
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000004000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffbfffffffff, 0x0000000004000000, 1024, 3f, x4, 704,0)

# rs1_val == -549755813889, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xfffffffffffffff8; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffff7fffffffff, 0xfffffffffffffff8, 16, 3f, x4, 712,0)

# rs1_val == -1099511627777, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xff7fffffffffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffeffffffffff, 0xff7fffffffffffff, 256, 3f, x4, 720,0)

# rs1_val == -2199023255553, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0000004000000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffdffffffffff, 0x0000004000000000, 2, 3f, x4, 728,0)

# rs1_val == -4398046511105, rs2_val == 2251799813685248
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0008000000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffbffffffffff, 0x0008000000000000, 0, 3f, x4, 736,0)

# rs1_val == -8796093022209, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xfffffffffbffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffff7ffffffffff, 0xfffffffffbffffff, 8, 1b, x4, 744,0)

# rs1_val == -17592186044417, rs2_val == -8193
# opcode: bne, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0xffffffffffffdfff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffefffffffffff, 0xffffffffffffdfff, 1024, 1b, x4, 752,0)

# rs1_val == -35184372088833, rs2_val == -2
# opcode: bne, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xfffffffffffffffe; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffdfffffffffff, 0xfffffffffffffffe, 4, 3f, x4, 760,0)

# rs1_val == -70368744177665, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xfffffffdffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffbfffffffffff, 0xfffffffdffffffff, 8, 3f, x4, 768,0)

# rs1_val == -140737488355329, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000000000400000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffff7fffffffffff, 0x0000000000400000, 8, 1b, x4, 776,0)

# rs1_val == -281474976710657, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xffffffefffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffeffffffffffff, 0xffffffefffffffff, 2, 3f, x4, 784,0)

# rs1_val == -562949953421313, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfff7ffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffdffffffffffff, 0xfff7ffffffffffff, 2, 3f, x4, 792,0)

# rs1_val == -1125899906842625, rs2_val == 8796093022208
# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000080000000000; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffbffffffffffff, 0x0000080000000000, 16, 3f, x4, 800,0)

# rs1_val == -2251799813685249, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000004000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfff7ffffffffffff, 0x0000000004000000, 4, 3f, x4, 808,0)

# rs1_val == -4503599627370497, rs2_val == -513
# opcode: bne, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffffffffffffdff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffefffffffffffff, 0xfffffffffffffdff, 512, 3f, x4, 816,0)

# rs1_val == -9007199254740993, rs2_val == 32
# opcode: bne, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0000000000000020; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffdfffffffffffff, 0x0000000000000020, 1366, 1b, x4, 824,0)

# rs1_val == -18014398509481985, rs2_val == 18014398509481984
# opcode: bne, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0040000000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffbfffffffffffff, 0x0040000000000000, 0, 1b, x4, 832,0)

# rs1_val == -36028797018963969, 
# opcode: bne, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xfffffffffffffff9; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xff7fffffffffffff, 0xfffffffffffffff9, 6, 3f, x4, 840,0)

# rs1_val == -72057594037927937, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x0000040000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfeffffffffffffff, 0x0000040000000000, 0, 3f, x4, 848,0)

# rs1_val == -144115188075855873, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xffffffffff7fffff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfdffffffffffffff, 0xffffffffff7fffff, 512, 3f, x4, 856,0)

# rs1_val == -288230376151711745, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000200000000; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfbffffffffffffff, 0x0000000200000000, 64, 3f, x4, 864,0)

# rs1_val == -576460752303423489, rs2_val == -1048577
# opcode: bne, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xffffffffffefffff; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xf7ffffffffffffff, 0xffffffffffefffff, 128, 3f, x4, 872,0)

# rs1_val == -1152921504606846977, 
# opcode: bne, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0000000000800000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xefffffffffffffff, 0x0000000000800000, 1024, 1b, x4, 880,0)

# rs1_val == -2305843009213693953, rs2_val == 16384
# opcode: bne, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000000000004000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xdfffffffffffffff, 0x0000000000004000, 8, 1b, x4, 888,0)

# rs1_val == -4611686018427387905, 
# opcode: bne, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xfffffffffffff7ff; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xbfffffffffffffff, 0xfffffffffffff7ff, 1024, 1b, x4, 896,0)

# rs1_val == 9223372036854775807, 
# opcode: bne, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xfffffffdffffffff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x7fffffffffffffff, 0xfffffffdffffffff, 64, 3f, x4, 904,0)

# rs1_val == 6148914691236517205, rs2_val == -257
# opcode: bne, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0xfffffffffffffeff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x5555555555555555, 0xfffffffffffffeff, 64, 3f, x4, 912,0)

# rs2_val == 1, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x0000000000000001; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000008000000000, 0x0000000000000001, 64, 3f, x4, 920,0)

# rs2_val == 2, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000000000002; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffefff, 0x0000000000000002, 1024, 1b, x4, 928,0)

# rs2_val == 8, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000000000000008; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0020000000000000, 0x0000000000000008, 64, 3f, x4, 936,0)

# rs2_val == 512, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0000000000000200; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000800000000000, 0x0000000000000200, 1024, 1b, x4, 944,0)

# rs2_val == 1024, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000000000000400; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffbffffffffffff, 0x0000000000000400, 16, 3f, x4, 952,0)

# rs2_val == 2048, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0x0000000000000800; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000001000000, 0x0000000000000800, 1366, 1b, x4, 960,0)

# rs2_val == 8192, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0x0000000000002000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000100000, 0x0000000000002000, 6, 3f, x4, 968,0)

# rs2_val == 65536, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0000000000010000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0001000000000000, 0x0000000000010000, 6, 1b, x4, 976,0)

# rs2_val == 131072, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x0000000000020000; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffbfffffffffff, 0x0000000000020000, 256, 3f, x4, 984,0)

# rs2_val == 524288, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0000000000080000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffdfff, 0x0000000000080000, 1024, 1b, x4, 992,0)

# rs2_val == 1048576, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000002000; op2val:0x0000000000100000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000002000, 0x0000000000100000, 2, 1b, x4, 1000,0)

# rs2_val == 16777216, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0x0000000001000000; immval:1024; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffff, 0x0000000001000000, 1024, 3f, x4, 1008,0)

# rs2_val == 33554432, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0x0000000002000000; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000008, 0x0000000002000000, 6, 1b, x4, 1016,0)

# rs2_val == 134217728, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000008000000; immval:1366; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffbf, 0x0000000008000000, 1366, 1b, x4, 1024,0)

# rs2_val == 536870912, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0000000020000000; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffdfffffffff, 0x0000000020000000, 512, 3f, x4, 1032,0)

# rs2_val == 1073741824, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000000040000000; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000080000000, 0x0000000040000000, 512, 3f, x4, 1040,0)

# rs2_val == 68719476736, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffff8; op2val:0x0000001000000000; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffff8, 0x0000001000000000, 32, 3f, x4, 1048,0)

# rs2_val == 9007199254740992, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000009; op2val:0x0020000000000000; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000009, 0x0020000000000000, 2, 3f, x4, 1056,0)

# rs2_val == 36028797018963968, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0x0080000000000000; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000100, 0x0080000000000000, 8, 1b, x4, 1064,0)

# rs2_val == 72057594037927936, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x0100000000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0400000000000000, 0x0100000000000000, 0, 1b, x4, 1072,0)

# rs2_val == 144115188075855872, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0200000000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000100000000, 0x0200000000000000, 0, 1b, x4, 1080,0)

# rs2_val == 288230376151711744, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x0400000000000000; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000800000000, 0x0400000000000000, 512, 3f, x4, 1088,0)

# rs2_val == 576460752303423488, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0800000000000000; immval:32; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffefffff, 0x0800000000000000, 32, 3f, x4, 1096,0)

# rs2_val == 1152921504606846976, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x1000000000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffffbf, 0x1000000000000000, 4, 3f, x4, 1104,0)

# rs2_val == -9223372036854775808, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x8000000000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffdfffffffff, 0x8000000000000000, 4, 3f, x4, 1112,0)

# rs2_val == -65, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xffffffffffffffbf; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000006, 0xffffffffffffffbf, 2, 1b, x4, 1120,0)

# rs2_val == -129, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0xffffffffffffff7f; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000007, 0xffffffffffffff7f, 6, 1b, x4, 1128,0)

# rs2_val == -4097, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xffffffffffffefff; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000006, 0xffffffffffffefff, 6, 1b, x4, 1136,0)

# rs2_val == -16385, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xffffffffffffbfff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffeffffff, 0xffffffffffffbfff, 512, 3f, x4, 1144,0)

# rs2_val == -32769, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xffffffffffff7fff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0800000000000000, 0xffffffffffff7fff, 8, 3f, x4, 1152,0)

# rs2_val == -2097153, 
# opcode: bne, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xffffffffffdfffff; immval:64; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xffffffffffffefff, 0xffffffffffdfffff, 64, 3f, x4, 1160,0)

# rs2_val == -33554433, 
# opcode: bne, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xfffffffffdffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x8000000000000000, 0xfffffffffdffffff, 512, 3f, x4, 1168,0)

# rs2_val == -134217729, 
# opcode: bne, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfffffffff7ffffff; immval:128; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfffffffff7ffffff, 128, 3f, x4, 1176,0)

# rs2_val == -70368744177665, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xffffbfffffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffbffff, 0xffffbfffffffffff, 2, 3f, x4, 1184,0)

# rs2_val == -2147483649, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xffffffff7fffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0004000000000000, 0xffffffff7fffffff, 8, 3f, x4, 1192,0)

# rs2_val == -4294967297, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xfffffffeffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000001000000000, 0xfffffffeffffffff, 8, 3f, x4, 1200,0)

# rs2_val == -137438953473, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xffffffdfffffffff; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0001000000000000, 0xffffffdfffffffff, 10, 1b, x4, 1208,0)

# rs2_val == -274877906945, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xffffffbfffffffff; immval:2; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000200000, 0xffffffbfffffffff, 2, 3f, x4, 1216,0)

# rs2_val == 1099511627776, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000010000000000; immval:0; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffeffffffffffff, 0x0000010000000000, 0, 3f, x4, 1224,0)

# rs2_val == 2199023255552, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000020000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfbffffffffffffff, 0x0000020000000000, 4, 3f, x4, 1232,0)

# rs2_val == -2199023255553, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000080000; op2val:0xfffffdffffffffff; immval:256; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000080000, 0xfffffdffffffffff, 256, 3f, x4, 1240,0)

# rs2_val == -8796093022209, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xfffff7ffffffffff; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffff7ffffffffff, 0xfffff7ffffffffff, 16, 3f, x4, 1248,0)

# rs2_val == -17592186044417, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0xffffefffffffffff; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfbffffffffffffff, 0xffffefffffffffff, 10, 1b, x4, 1256,0)

# rs2_val == 70368744177664, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0x0000400000000000; immval:4; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000001000, 0x0000400000000000, 4, 3f, x4, 1264,0)

# rs2_val == -140737488355329, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000002000000; op2val:0xffff7fffffffffff; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000002000000, 0xffff7fffffffffff, 10, 1b, x4, 1272,0)

# rs2_val == -281474976710657, 
# opcode: bne, op1:x10; op2:x11; op1val:0xfffffffffffffffa; op2val:0xfffeffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0xfffffffffffffffa, 0xfffeffffffffffff, 512, 3f, x4, 1280,0)

# rs2_val == 562949953421312, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000400; op2val:0x0002000000000000; immval:10; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000400, 0x0002000000000000, 10, 1b, x4, 1288,0)

# rs2_val == -1125899906842625, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xfffbffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0200000000000000, 0xfffbffffffffffff, 8, 3f, x4, 1296,0)

# rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -72057594037927937, rs1_val == 2305843009213693952
# opcode: bne, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xfeffffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x2000000000000000, 0xfeffffffffffffff, 512, 3f, x4, 1304,0)

# rs1_val == 1024, rs2_val == 64
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000000400; op2val:0x0000000000000040; immval:6; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000000400, 0x0000000000000040, 6, 3f, x4, 1312,0)

# rs1_val == 2097152, 
# opcode: bne, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xffffffffffffffdf; immval:16; align:0
TEST_BRANCH_OP(bne, x5, x10, x11, 0x0000000000200000, 0xffffffffffffffdf, 16, 3f, x4, 1320,0)
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
    .fill 23*(XLEN/32),4,0xdeadbeef


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
