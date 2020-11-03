
#This assembly file tests the c.addi instruction of the RISC-V C extension for the caddi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi)

RVTEST_SIGBASE( x2,signature_x2_1)

# rd==x12, rs1_val == (-2**(xlen-1)), imm_val == (2**(6-1)-1), rs1_val != imm_val, rs1_val < 0 and imm_val > 0, rs1_val == -9223372036854775808, imm_val == 31
# opcode:c.addi; op1:x12; dest:x12 op1val:0x8000000000000000; immval:31
TEST_CI_OP( c.addi, x12, 0x0000000000000000, 0x8000000000000000, 31, x2, 0, x15)

# rd==x24, rs1_val == 0, imm_val == -2
# opcode:c.addi; op1:x24; dest:x24 op1val:0x0000000000000000; immval:-2
TEST_CI_OP( c.addi, x24, 0x0000000000000000, 0x0000000000000000, -2, x2, 8, x15)

# rd==x21, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and imm_val > 0, rs1_val == 9223372036854775807
# opcode:c.addi; op1:x21; dest:x21 op1val:0x7fffffffffffffff; immval:7
TEST_CI_OP( c.addi, x21, 0x0000000000000000, 0x7fffffffffffffff, 7, x2, 16, x15)

# rd==x4, rs1_val == 1, rs1_val > 0 and imm_val < 0, imm_val == -22
# opcode:c.addi; op1:x4; dest:x4 op1val:0x0000000000000001; immval:-22
TEST_CI_OP( c.addi, x4, 0x0000000000000000, 0x0000000000000001, -22, x2, 24, x15)

# rd==x9, imm_val == (-2**(6-1)), rs1_val == 68719476736, imm_val == -32
# opcode:c.addi; op1:x9; dest:x9 op1val:0x0000001000000000; immval:-32
TEST_CI_OP( c.addi, x9, 0x0000000000000000, 0x0000001000000000, -32, x2, 32, x15)

# rd==x6, imm_val == 0, rs1_val == -2199023255553
# opcode:c.addi; op1:x6; dest:x6 op1val:0xfffffdffffffffff; immval:0
TEST_CI_OP( c.addi, x6, 0x0000000000000000, 0xfffffdffffffffff, 0, x2, 40, x15)

# rd==x18, imm_val == 1, rs1_val == -549755813889
# opcode:c.addi; op1:x18; dest:x18 op1val:0xffffff7fffffffff; immval:1
TEST_CI_OP( c.addi, x18, 0x0000000000000000, 0xffffff7fffffffff, 1, x2, 48, x15)

# rd==x3, rs1_val == imm_val, 
# opcode:c.addi; op1:x3; dest:x3 op1val:0x0000000000000009; immval:9
TEST_CI_OP( c.addi, x3, 0x0000000000000000, 0x0000000000000009, 9, x2, 56, x15)

# rd==x1, rs1_val < 0 and imm_val < 0, rs1_val == -1125899906842625
# opcode:c.addi; op1:x1; dest:x1 op1val:0xfffbffffffffffff; immval:-8
TEST_CI_OP( c.addi, x1, 0x0000000000000000, 0xfffbffffffffffff, -8, x2, 64, x15)

# rd==x8, rs1_val == 2, imm_val == 2
# opcode:c.addi; op1:x8; dest:x8 op1val:0x0000000000000002; immval:2
TEST_CI_OP( c.addi, x8, 0x0000000000000000, 0x0000000000000002, 2, x2, 72, x15)

# rd==x23, rs1_val == 4, 
# opcode:c.addi; op1:x23; dest:x23 op1val:0x0000000000000004; immval:-2
TEST_CI_OP( c.addi, x23, 0x0000000000000000, 0x0000000000000004, -2, x2, 80, x15)

# rd==x19, rs1_val == 8, 
# opcode:c.addi; op1:x19; dest:x19 op1val:0x0000000000000008; immval:9
TEST_CI_OP( c.addi, x19, 0x0000000000000000, 0x0000000000000008, 9, x2, 88, x15)

# rd==x11, rs1_val == 16, 
# opcode:c.addi; op1:x11; dest:x11 op1val:0x0000000000000010; immval:-6
TEST_CI_OP( c.addi, x11, 0x0000000000000000, 0x0000000000000010, -6, x2, 96, x15)

# rd==x29, rs1_val == 32, 
# opcode:c.addi; op1:x29; dest:x29 op1val:0x0000000000000020; immval:5
TEST_CI_OP( c.addi, x29, 0x0000000000000000, 0x0000000000000020, 5, x2, 104, x15)

# rd==x5, rs1_val == 64, imm_val == -3
# opcode:c.addi; op1:x5; dest:x5 op1val:0x0000000000000040; immval:-3
TEST_CI_OP( c.addi, x5, 0x0000000000000000, 0x0000000000000040, -3, x2, 112, x15)

# rd==x13, rs1_val == 128, imm_val == 16
# opcode:c.addi; op1:x13; dest:x13 op1val:0x0000000000000080; immval:16
TEST_CI_OP( c.addi, x13, 0x0000000000000000, 0x0000000000000080, 16, x2, 120, x15)

# rd==x27, rs1_val == 256, imm_val == 4
# opcode:c.addi; op1:x27; dest:x27 op1val:0x0000000000000100; immval:4
TEST_CI_OP( c.addi, x27, 0x0000000000000000, 0x0000000000000100, 4, x2, 128, x15)

# rd==x26, rs1_val == 512, imm_val == -5
# opcode:c.addi; op1:x26; dest:x26 op1val:0x0000000000000200; immval:-5
TEST_CI_OP( c.addi, x26, 0x0000000000000000, 0x0000000000000200, -5, x2, 136, x15)

# rd==x14, rs1_val == 1024, imm_val == 8
# opcode:c.addi; op1:x14; dest:x14 op1val:0x0000000000000400; immval:8
TEST_CI_OP( c.addi, x14, 0x0000000000000000, 0x0000000000000400, 8, x2, 144, x15)

# rd==x28, rs1_val == 2048, 
# opcode:c.addi; op1:x28; dest:x28 op1val:0x0000000000000800; immval:9
TEST_CI_OP( c.addi, x28, 0x0000000000000000, 0x0000000000000800, 9, x2, 152, x15)

# rd==x30, rs1_val == 4096, 
# opcode:c.addi; op1:x30; dest:x30 op1val:0x0000000000001000; immval:-8
TEST_CI_OP( c.addi, x30, 0x0000000000000000, 0x0000000000001000, -8, x2, 160, x15)

# rd==x10, rs1_val == 8192, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000000002000; immval:5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000000002000, 5, x2, 168, x15)

# rd==x7, rs1_val == 16384, 
# opcode:c.addi; op1:x7; dest:x7 op1val:0x0000000000004000; immval:6
TEST_CI_OP( c.addi, x7, 0x0000000000000000, 0x0000000000004000, 6, x2, 176, x15)

# rd==x31, rs1_val == 32768, 
# opcode:c.addi; op1:x31; dest:x31 op1val:0x0000000000008000; immval:-3
TEST_CI_OP( c.addi, x31, 0x0000000000000000, 0x0000000000008000, -3, x2, 184, x15)

# rd==x22, rs1_val == 65536, imm_val == -17
# opcode:c.addi; op1:x22; dest:x22 op1val:0x0000000000010000; immval:-17
TEST_CI_OP( c.addi, x22, 0x0000000000000000, 0x0000000000010000, -17, x2, 192, x15)

# rd==x17, rs1_val == 131072, 
# opcode:c.addi; op1:x17; dest:x17 op1val:0x0000000000020000; immval:-1
TEST_CI_OP( c.addi, x17, 0x0000000000000000, 0x0000000000020000, -1, x2, 200, x15)

# rd==x25, rs1_val == 262144, 
# opcode:c.addi; op1:x25; dest:x25 op1val:0x0000000000040000; immval:3
TEST_CI_OP( c.addi, x25, 0x0000000000000000, 0x0000000000040000, 3, x2, 208, x15)

# rd==x15, rs1_val == 524288, 
# opcode:c.addi; op1:x15; dest:x15 op1val:0x0000000000080000; immval:15
TEST_CI_OP( c.addi, x15, 0x0000000000000000, 0x0000000000080000, 15, x2, 216, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x16, rs1_val == 1048576, 
# opcode:c.addi; op1:x16; dest:x16 op1val:0x0000000000100000; immval:3
TEST_CI_OP( c.addi, x16, 0x0000000000000000, 0x0000000000100000, 3, x1, 0, x3)

# rd==x2, rs1_val == 2097152, 
# opcode:c.addi; op1:x2; dest:x2 op1val:0x0000000000200000; immval:3
TEST_CI_OP( c.addi, x2, 0x0000000000000000, 0x0000000000200000, 3, x1, 8, x3)

# rd==x20, rs1_val == 4194304, 
# opcode:c.addi; op1:x20; dest:x20 op1val:0x0000000000400000; immval:9
TEST_CI_OP( c.addi, x20, 0x0000000000000000, 0x0000000000400000, 9, x1, 16, x3)

# rs1_val == 8388608, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000000800000; immval:15
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000000800000, 15, x1, 24, x3)

# rs1_val == 16777216, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000001000000; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000001000000, 2, x1, 32, x3)

# rs1_val == 33554432, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000002000000; immval:-7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000002000000, -7, x1, 40, x3)

# rs1_val == 67108864, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000004000000; immval:-1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000004000000, -1, x1, 48, x3)

# rs1_val == 134217728, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000008000000; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000008000000, 1, x1, 56, x3)

# rs1_val == 268435456, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000010000000; immval:6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000010000000, 6, x1, 64, x3)

# rs1_val == 536870912, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000020000000; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000020000000, 1, x1, 72, x3)

# rs1_val == 1073741824, imm_val == 21
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000040000000; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000040000000, 21, x1, 80, x3)

# rs1_val == 2147483648, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000080000000; immval:-5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000080000000, -5, x1, 88, x3)

# rs1_val == 4294967296, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000100000000; immval:7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000100000000, 7, x1, 96, x3)

# rs1_val == 8589934592, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000200000000; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000200000000, 2, x1, 104, x3)

# rs1_val == 17179869184, imm_val == -9
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000400000000; immval:-9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000400000000, -9, x1, 112, x3)

# rs1_val == 34359738368, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000800000000; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000800000000, -10, x1, 120, x3)

# rs1_val == 137438953472, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000002000000000; immval:-3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000002000000000, -3, x1, 128, x3)

# rs1_val == 274877906944, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000004000000000; immval:15
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000004000000000, 15, x1, 136, x3)

# rs1_val == 549755813888, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000008000000000; immval:-16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000008000000000, -16, x1, 144, x3)

# rs1_val == 1099511627776, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000010000000000; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000010000000000, 0, x1, 152, x3)

# rs1_val == 2199023255552, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000020000000000; immval:4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000020000000000, 4, x1, 160, x3)

# rs1_val == 4398046511104, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000040000000000; immval:-8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000040000000000, -8, x1, 168, x3)

# rs1_val == 8796093022208, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000080000000000; immval:-2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000080000000000, -2, x1, 176, x3)

# rs1_val == 17592186044416, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000100000000000; immval:16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000100000000000, 16, x1, 184, x3)

# rs1_val == 35184372088832, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000200000000000; immval:-5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000200000000000, -5, x1, 192, x3)

# rs1_val == 70368744177664, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000400000000000; immval:-6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000400000000000, -6, x1, 200, x3)

# rs1_val == 140737488355328, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0000800000000000; immval:-16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000800000000000, -16, x1, 208, x3)

# rs1_val == 281474976710656, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0001000000000000; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0001000000000000, 21, x1, 216, x3)

# rs1_val == 562949953421312, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0002000000000000; immval:-8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0002000000000000, -8, x1, 224, x3)

# rs1_val == 1125899906842624, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0004000000000000; immval:-3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0004000000000000, -3, x1, 232, x3)

# rs1_val == 2251799813685248, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0008000000000000; immval:7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0008000000000000, 7, x1, 240, x3)

# rs1_val == 4503599627370496, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0010000000000000; immval:-3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0010000000000000, -3, x1, 248, x3)

# rs1_val == 9007199254740992, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0020000000000000; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0020000000000000, 3, x1, 256, x3)

# rs1_val == 18014398509481984, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0040000000000000; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0040000000000000, 1, x1, 264, x3)

# rs1_val == 36028797018963968, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0080000000000000; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0080000000000000, 1, x1, 272, x3)

# rs1_val == 72057594037927936, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0100000000000000; immval:7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0100000000000000, 7, x1, 280, x3)

# rs1_val == 144115188075855872, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0200000000000000; immval:4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0200000000000000, 4, x1, 288, x3)

# rs1_val == 288230376151711744, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0400000000000000; immval:-7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0400000000000000, -7, x1, 296, x3)

# rs1_val == 576460752303423488, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x0800000000000000; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0800000000000000, -22, x1, 304, x3)

# rs1_val == 1152921504606846976, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x1000000000000000; immval:-6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x1000000000000000, -6, x1, 312, x3)

# rs1_val == 2305843009213693952, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x2000000000000000; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x2000000000000000, -10, x1, 320, x3)

# rs1_val == -2251799813685249, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfff7ffffffffffff; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfff7ffffffffffff, 21, x1, 328, x3)

# rs1_val == -4503599627370497, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffefffffffffffff; immval:6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffefffffffffffff, 6, x1, 336, x3)

# rs1_val == -9007199254740993, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffdfffffffffffff; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffdfffffffffffff, 1, x1, 344, x3)

# rs1_val == -18014398509481985, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffbfffffffffffff; immval:9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffbfffffffffffff, 9, x1, 352, x3)

# rs1_val == -36028797018963969, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xff7fffffffffffff; immval:-16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xff7fffffffffffff, -16, x1, 360, x3)

# rs1_val == -72057594037927937, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfeffffffffffffff; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfeffffffffffffff, 1, x1, 368, x3)

# rs1_val == -144115188075855873, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfdffffffffffffff; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfdffffffffffffff, 3, x1, 376, x3)

# rs1_val == -288230376151711745, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfbffffffffffffff; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfbffffffffffffff, 21, x1, 384, x3)

# rs1_val == -576460752303423489, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xf7ffffffffffffff; immval:8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xf7ffffffffffffff, 8, x1, 392, x3)

# rs1_val == -1152921504606846977, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xefffffffffffffff; immval:8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xefffffffffffffff, 8, x1, 400, x3)

# rs1_val == -2305843009213693953, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xdfffffffffffffff; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xdfffffffffffffff, 3, x1, 408, x3)

# rs1_val == -4611686018427387905, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xbfffffffffffffff; immval:8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xbfffffffffffffff, 8, x1, 416, x3)

# rs1_val == 6148914691236517205, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x5555555555555555; immval:-7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x5555555555555555, -7, x1, 424, x3)

# rs1_val == -6148914691236517206, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xaaaaaaaaaaaaaaaa; immval:-17
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, -17, x1, 432, x3)

# rs1_val == 4611686018427387904, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0x4000000000000000; immval:7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x4000000000000000, 7, x1, 440, x3)

# rs1_val == -2, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffffe; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffffe, -10, x1, 448, x3)

# rs1_val == -3, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffffd; immval:16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffffd, 16, x1, 456, x3)

# rs1_val == -5, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffffb; immval:-4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffffb, -4, x1, 464, x3)

# rs1_val == -9, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffff7; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffff7, -22, x1, 472, x3)

# rs1_val == -17, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffffef; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffffef, 2, x1, 480, x3)

# rs1_val == -33, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffffdf; immval:-16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffffdf, -16, x1, 488, x3)

# rs1_val == -65, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffffbf; immval:-17
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffffbf, -17, x1, 496, x3)

# rs1_val == -129, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffff7f; immval:-6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffff7f, -6, x1, 504, x3)

# rs1_val == -257, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffeff; immval:-17
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffeff, -17, x1, 512, x3)

# rs1_val == -513, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffdff; immval:-4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffdff, -4, x1, 520, x3)

# rs1_val == -1025, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffbff; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffbff, 3, x1, 528, x3)

# rs1_val == -2049, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffff7ff; immval:-8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffff7ff, -8, x1, 536, x3)

# rs1_val == -4097, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffefff; immval:-5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffefff, -5, x1, 544, x3)

# rs1_val == -8193, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffdfff; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffdfff, 0, x1, 552, x3)

# rs1_val == -16385, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffbfff; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffbfff, 3, x1, 560, x3)

# rs1_val == -32769, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffff7fff; immval:-17
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffff7fff, -17, x1, 568, x3)

# rs1_val == -65537, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffeffff; immval:-4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffeffff, -4, x1, 576, x3)

# rs1_val == -131073, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffdffff; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffdffff, -10, x1, 584, x3)

# rs1_val == -262145, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffbffff; immval:16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffbffff, 16, x1, 592, x3)

# rs1_val == -524289, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffff7ffff; immval:-9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffff7ffff, -9, x1, 600, x3)

# rs1_val == -1048577, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffefffff; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffefffff, -22, x1, 608, x3)

# rs1_val == -2097153, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffdfffff; immval:-3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffdfffff, -3, x1, 616, x3)

# rs1_val == -4194305, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffbfffff; immval:-17
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffbfffff, -17, x1, 624, x3)

# rs1_val == -8388609, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffff7fffff; immval:16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffff7fffff, 16, x1, 632, x3)

# rs1_val == -16777217, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffeffffff; immval:-8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffeffffff, -8, x1, 640, x3)

# rs1_val == -33554433, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffdffffff; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffdffffff, 2, x1, 648, x3)

# rs1_val == -67108865, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffbffffff; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffbffffff, 3, x1, 656, x3)

# rs1_val == -134217729, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffff7ffffff; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffff7ffffff, 2, x1, 664, x3)

# rs1_val == -268435457, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffefffffff; immval:6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffefffffff, 6, x1, 672, x3)

# rs1_val == -536870913, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffdfffffff; immval:-6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffdfffffff, -6, x1, 680, x3)

# rs1_val == -1073741825, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffbfffffff; immval:-17
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffbfffffff, -17, x1, 688, x3)

# rs1_val == -2147483649, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffff7fffffff; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffff7fffffff, -10, x1, 696, x3)

# rs1_val == -4294967297, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffeffffffff; immval:-2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffeffffffff, -2, x1, 704, x3)

# rs1_val == -8589934593, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffdffffffff; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffdffffffff, 0, x1, 712, x3)

# rs1_val == -17179869185, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffbffffffff; immval:31
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffbffffffff, 31, x1, 720, x3)

# rs1_val == -34359738369, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffff7ffffffff; immval:4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffff7ffffffff, 4, x1, 728, x3)

# rs1_val == -68719476737, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffefffffffff; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffefffffffff, 3, x1, 736, x3)

# rs1_val == -137438953473, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffdfffffffff; immval:4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffdfffffffff, 4, x1, 744, x3)

# rs1_val == -274877906945, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffbfffffffff; immval:16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffbfffffffff, 16, x1, 752, x3)

# rs1_val == -1099511627777, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffeffffffffff; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffeffffffffff, 3, x1, 760, x3)

# rs1_val == -4398046511105, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffbffffffffff; immval:-1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffbffffffffff, -1, x1, 768, x3)

# rs1_val == -8796093022209, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffff7ffffffffff; immval:-32
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffff7ffffffffff, -32, x1, 776, x3)

# rs1_val == -17592186044417, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffefffffffffff; immval:4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffefffffffffff, 4, x1, 784, x3)

# rs1_val == -35184372088833, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffdfffffffffff; immval:-3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffdfffffffffff, -3, x1, 792, x3)

# rs1_val == -70368744177665, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffffbfffffffffff; immval:-16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffbfffffffffff, -16, x1, 800, x3)

# rs1_val == -140737488355329, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xffff7fffffffffff; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffff7fffffffffff, -22, x1, 808, x3)

# rs1_val == -281474976710657, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffeffffffffffff; immval:15
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffeffffffffffff, 15, x1, 816, x3)

# rs1_val == -562949953421313, 
# opcode:c.addi; op1:x10; dest:x10 op1val:0xfffdffffffffffff; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffdffffffffffff, 2, x1, 824, x3)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 104*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
