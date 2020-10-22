
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 != rd, rs1==x4, rd==x0, rs1_val == imm_val, imm_val == 4, rs1_val > 0 and imm_val > 0, rs1_val == 4
# opcode: xori ; op1:x4; dest:x0; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( xori, x0, x4, 0x0, 0x0000000000000004, 4, x3, 0, x7)

# rs1 == rd, rs1==x21, rd==x21, rs1_val != imm_val, imm_val == 8, rs1_val < 0 and imm_val > 0, rs1_val == -4398046511105
# opcode: xori ; op1:x21; dest:x21; op1val:0xfffffbffffffffff;  immval:8
TEST_IMM_OP( xori, x21, x21, 0xfffffbfffffffff7, 0xfffffbffffffffff, 8, x3, 8, x7)

# rs1==x20, rd==x6, rs1_val > 0 and imm_val < 0, 
# opcode: xori ; op1:x20; dest:x6; op1val:0x0000000000000009;  immval:-1024
TEST_IMM_OP( xori, x6, x20, 0xfffffffffffffc09, 0x0000000000000009, -1024, x3, 16, x7)

# rs1==x16, rd==x18, rs1_val < 0 and imm_val < 0, rs1_val == -2097153
# opcode: xori ; op1:x16; dest:x18; op1val:0xffffffffffdfffff;  immval:-1
TEST_IMM_OP( xori, x18, x16, 0x200000, 0xffffffffffdfffff, -1, x3, 24, x7)

# rs1==x5, rd==x19, rs1_val == (-2**(xlen-1)), imm_val == -2, rs1_val == -9223372036854775808
# opcode: xori ; op1:x5; dest:x19; op1val:0x8000000000000000;  immval:-2
TEST_IMM_OP( xori, x19, x5, 0x7ffffffffffffffe, 0x8000000000000000, -2, x3, 32, x7)

# rs1==x12, rd==x26, rs1_val == 0, imm_val == 16
# opcode: xori ; op1:x12; dest:x26; op1val:0x0000000000000000;  immval:16
TEST_IMM_OP( xori, x26, x12, 0x10, 0x0000000000000000, 16, x3, 40, x7)

# rs1==x9, rd==x31, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: xori ; op1:x9; dest:x31; op1val:0x7fffffffffffffff;  immval:5
TEST_IMM_OP( xori, x31, x9, 0x7ffffffffffffffa, 0x7fffffffffffffff, 5, x3, 48, x7)

# rs1==x25, rd==x23, rs1_val == 1, imm_val == 1024
# opcode: xori ; op1:x25; dest:x23; op1val:0x0000000000000001;  immval:1024
TEST_IMM_OP( xori, x23, x25, 0x401, 0x0000000000000001, 1024, x3, 56, x7)

# rs1==x2, rd==x30, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -17179869185
# opcode: xori ; op1:x2; dest:x30; op1val:0xfffffffbffffffff;  immval:-2048
TEST_IMM_OP( xori, x30, x2, 0x4000007ff, 0xfffffffbffffffff, -2048, x3, 64, x7)

# rs1==x15, rd==x17, imm_val == 0, rs1_val == 2048
# opcode: xori ; op1:x15; dest:x17; op1val:0x0000000000000800;  immval:0
TEST_IMM_OP( xori, x17, x15, 0x800, 0x0000000000000800, 0, x3, 72, x7)

# rs1==x0, rd==x14, imm_val == (2**(12-1)-1), rs1_val == -35184372088833, imm_val == 2047
# opcode: xori ; op1:x0; dest:x14; op1val:0xffffdfffffffffff;  immval:2047
TEST_IMM_OP( xori, x14, x0, 0xffffdffffffff800, 0xffffdfffffffffff, 2047, x3, 80, x7)

# rs1==x31, rd==x13, imm_val == 1, rs1_val == 2147483648
# opcode: xori ; op1:x31; dest:x13; op1val:0x0000000080000000;  immval:1
TEST_IMM_OP( xori, x13, x31, 0x80000001, 0x0000000080000000, 1, x3, 88, x7)

# rs1==x19, rd==x28, rs1_val == 2, 
# opcode: xori ; op1:x19; dest:x28; op1val:0x0000000000000002;  immval:-2048
TEST_IMM_OP( xori, x28, x19, 0xfffffffffffff802, 0x0000000000000002, -2048, x3, 96, x7)

# rs1==x18, rd==x11, rs1_val == 8, 
# opcode: xori ; op1:x18; dest:x11; op1val:0x0000000000000008;  immval:4
TEST_IMM_OP( xori, x11, x18, 0xc, 0x0000000000000008, 4, x3, 104, x7)

# rs1==x24, rd==x9, rs1_val == 16, 
# opcode: xori ; op1:x24; dest:x9; op1val:0x0000000000000010;  immval:1
TEST_IMM_OP( xori, x9, x24, 0x11, 0x0000000000000010, 1, x3, 112, x7)

# rs1==x23, rd==x1, rs1_val == 32, imm_val == -9
# opcode: xori ; op1:x23; dest:x1; op1val:0x0000000000000020;  immval:-9
TEST_IMM_OP( xori, x1, x23, 0xffffffffffffffd7, 0x0000000000000020, -9, x3, 120, x7)

# rs1==x22, rd==x16, rs1_val == 64, imm_val == 1365
# opcode: xori ; op1:x22; dest:x16; op1val:0x0000000000000040;  immval:1365
TEST_IMM_OP( xori, x16, x22, 0x515, 0x0000000000000040, 1365, x3, 128, x7)

# rs1==x11, rd==x5, rs1_val == 128, 
# opcode: xori ; op1:x11; dest:x5; op1val:0x0000000000000080;  immval:-2048
TEST_IMM_OP( xori, x5, x11, 0xfffffffffffff880, 0x0000000000000080, -2048, x3, 136, x7)

# rs1==x29, rd==x15, rs1_val == 256, 
# opcode: xori ; op1:x29; dest:x15; op1val:0x0000000000000100;  immval:0
TEST_IMM_OP( xori, x15, x29, 0x100, 0x0000000000000100, 0, x3, 144, x7)

# rs1==x14, rd==x4, rs1_val == 512, 
# opcode: xori ; op1:x14; dest:x4; op1val:0x0000000000000200;  immval:4
TEST_IMM_OP( xori, x4, x14, 0x204, 0x0000000000000200, 4, x3, 152, x7)

# rs1==x30, rd==x8, rs1_val == 1024, imm_val == -65
# opcode: xori ; op1:x30; dest:x8; op1val:0x0000000000000400;  immval:-65
TEST_IMM_OP( xori, x8, x30, 0xfffffffffffffbbf, 0x0000000000000400, -65, x3, 160, x7)

# rs1==x6, rd==x25, rs1_val == 4096, 
# opcode: xori ; op1:x6; dest:x25; op1val:0x0000000000001000;  immval:1023
TEST_IMM_OP( xori, x25, x6, 0x13ff, 0x0000000000001000, 1023, x3, 168, x4)

# rs1==x1, rd==x24, rs1_val == 8192, 
# opcode: xori ; op1:x1; dest:x24; op1val:0x0000000000002000;  immval:5
TEST_IMM_OP( xori, x24, x1, 0x2005, 0x0000000000002000, 5, x3, 176, x4)

# rs1==x10, rd==x20, rs1_val == 16384, 
# opcode: xori ; op1:x10; dest:x20; op1val:0x0000000000004000;  immval:3
TEST_IMM_OP( xori, x20, x10, 0x4003, 0x0000000000004000, 3, x3, 184, x4)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x8, rd==x2, rs1_val == 32768, 
# opcode: xori ; op1:x8; dest:x2; op1val:0x0000000000008000;  immval:6
TEST_IMM_OP( xori, x2, x8, 0x8006, 0x0000000000008000, 6, x1, 0, x4)

# rs1==x17, rd==x22, rs1_val == 65536, imm_val == -3
# opcode: xori ; op1:x17; dest:x22; op1val:0x0000000000010000;  immval:-3
TEST_IMM_OP( xori, x22, x17, 0xfffffffffffefffd, 0x0000000000010000, -3, x1, 8, x4)

# rs1==x27, rd==x10, rs1_val == 131072, 
# opcode: xori ; op1:x27; dest:x10; op1val:0x0000000000020000;  immval:0
TEST_IMM_OP( xori, x10, x27, 0x20000, 0x0000000000020000, 0, x1, 16, x4)

# rs1==x13, rd==x27, rs1_val == 262144, 
# opcode: xori ; op1:x13; dest:x27; op1val:0x0000000000040000;  immval:-4
TEST_IMM_OP( xori, x27, x13, 0xfffffffffffbfffc, 0x0000000000040000, -4, x1, 24, x4)

# rs1==x28, rd==x12, rs1_val == 524288, imm_val == 64
# opcode: xori ; op1:x28; dest:x12; op1val:0x0000000000080000;  immval:64
TEST_IMM_OP( xori, x12, x28, 0x80040, 0x0000000000080000, 64, x1, 32, x4)

# rs1==x26, rd==x3, rs1_val == 1048576, 
# opcode: xori ; op1:x26; dest:x3; op1val:0x0000000000100000;  immval:4
TEST_IMM_OP( xori, x3, x26, 0x100004, 0x0000000000100000, 4, x1, 40, x4)

# rs1==x7, rd==x29, rs1_val == 2097152, 
# opcode: xori ; op1:x7; dest:x29; op1val:0x0000000000200000;  immval:6
TEST_IMM_OP( xori, x29, x7, 0x200006, 0x0000000000200000, 6, x1, 48, x4)

# rs1==x3, rd==x7, rs1_val == 4194304, 
# opcode: xori ; op1:x3; dest:x7; op1val:0x0000000000400000;  immval:-1024
TEST_IMM_OP( xori, x7, x3, 0xffffffffffbffc00, 0x0000000000400000, -1024, x1, 56, x4)

# rs1_val == 8388608, imm_val == -257
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0xffffffffff7ffeff, 0x0000000000800000, -257, x1, 64, x4)

# rs1_val == 16777216, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:8
TEST_IMM_OP( xori, x11, x10, 0x1000008, 0x0000000001000000, 8, x1, 72, x4)

# rs1_val == 33554432, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0xfffffffffdfffffc, 0x0000000002000000, -4, x1, 80, x4)

# rs1_val == 67108864, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0xfffffffffbfffff9, 0x0000000004000000, -7, x1, 88, x4)

# rs1_val == 134217728, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0xfffffffff7fffff6, 0x0000000008000000, -10, x1, 96, x4)

# rs1_val == 268435456, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0xffffffffeffffeff, 0x0000000010000000, -257, x1, 104, x4)

# rs1_val == 536870912, imm_val == -1025
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0xffffffffdffffbff, 0x0000000020000000, -1025, x1, 112, x4)

# rs1_val == 1073741824, imm_val == 128
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:128
TEST_IMM_OP( xori, x11, x10, 0x40000080, 0x0000000040000000, 128, x1, 120, x4)

# rs1_val == 4294967296, imm_val == 32
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:32
TEST_IMM_OP( xori, x11, x10, 0x100000020, 0x0000000100000000, 32, x1, 128, x4)

# rs1_val == 8589934592, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:7
TEST_IMM_OP( xori, x11, x10, 0x200000007, 0x0000000200000000, 7, x1, 136, x4)

# rs1_val == 17179869184, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0x4000003ff, 0x0000000400000000, 1023, x1, 144, x4)

# rs1_val == 34359738368, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xfffffff7fffffff7, 0x0000000800000000, -9, x1, 152, x4)

# rs1_val == 68719476736, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0x1000000400, 0x0000001000000000, 1024, x1, 160, x4)

# rs1_val == 137438953472, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:1
TEST_IMM_OP( xori, x11, x10, 0x2000000001, 0x0000002000000000, 1, x1, 168, x4)

# rs1_val == 274877906944, imm_val == -513
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xffffffbffffffdff, 0x0000004000000000, -513, x1, 176, x4)

# rs1_val == 549755813888, imm_val == 512
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:512
TEST_IMM_OP( xori, x11, x10, 0x8000000200, 0x0000008000000000, 512, x1, 184, x4)

# rs1_val == 1099511627776, imm_val == 2
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x10000000002, 0x0000010000000000, 2, x1, 192, x4)

# rs1_val == 2199023255552, imm_val == -1366
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xfffffdfffffffaaa, 0x0000020000000000, -1366, x1, 200, x4)

# rs1_val == 4398046511104, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xfffffbfffffffaaa, 0x0000040000000000, -1366, x1, 208, x4)

# rs1_val == 8796093022208, imm_val == -5
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0xfffff7fffffffffb, 0x0000080000000000, -5, x1, 216, x4)

# rs1_val == 17592186044416, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0xffffeffffffffffc, 0x0000100000000000, -4, x1, 224, x4)

# rs1_val == 35184372088832, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x200000000002, 0x0000200000000000, 2, x1, 232, x4)

# rs1_val == 70368744177664, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:7
TEST_IMM_OP( xori, x11, x10, 0x400000000007, 0x0000400000000000, 7, x1, 240, x4)

# rs1_val == 140737488355328, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0x800000000555, 0x0000800000000000, 1365, x1, 248, x4)

# rs1_val == 281474976710656, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xfffefffffffffaaa, 0x0001000000000000, -1366, x1, 256, x4)

# rs1_val == 562949953421312, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0xfffdfffffffffff9, 0x0002000000000000, -7, x1, 264, x4)

# rs1_val == 1125899906842624, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:9
TEST_IMM_OP( xori, x11, x10, 0x4000000000009, 0x0004000000000000, 9, x1, 272, x4)

# rs1_val == 2251799813685248, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:64
TEST_IMM_OP( xori, x11, x10, 0x8000000000040, 0x0008000000000000, 64, x1, 280, x4)

# rs1_val == 4503599627370496, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0xffeffffffffffffa, 0x0010000000000000, -6, x1, 288, x4)

# rs1_val == 9007199254740992, imm_val == -129
# opcode: xori ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0xffdfffffffffff7f, 0x0020000000000000, -129, x1, 296, x4)

# rs1_val == 18014398509481984, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0xffbffffffffffffa, 0x0040000000000000, -6, x1, 304, x4)

# rs1_val == 36028797018963968, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:4
TEST_IMM_OP( xori, x11, x10, 0x80000000000004, 0x0080000000000000, 4, x1, 312, x4)

# rs1_val == 72057594037927936, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0xfefffffffffffeff, 0x0100000000000000, -257, x1, 320, x4)

# rs1_val == 144115188075855872, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xfdfffffffffffff7, 0x0200000000000000, -9, x1, 328, x4)

# rs1_val == 288230376151711744, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xfbfffffffffffaaa, 0x0400000000000000, -1366, x1, 336, x4)

# rs1_val == 576460752303423488, imm_val == -17
# opcode: xori ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0xf7ffffffffffffef, 0x0800000000000000, -17, x1, 344, x4)

# rs1_val == 1152921504606846976, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0xeffffffffffffff8, 0x1000000000000000, -8, x1, 352, x4)

# rs1_val == 2305843009213693952, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:6
TEST_IMM_OP( xori, x11, x10, 0x2000000000000006, 0x2000000000000000, 6, x1, 360, x4)

# rs1_val == 4611686018427387904, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0xbfffffffffffff7f, 0x4000000000000000, -129, x1, 368, x4)

# rs1_val == -2251799813685249, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xfff7fffffffffaaa, 0xfff7ffffffffffff, 1365, x1, 376, x4)

# rs1_val == -4503599627370497, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xffeffffffffffffb, 0xffefffffffffffff, 4, x1, 384, x4)

# rs1_val == -9007199254740993, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xffdffffffffffff6, 0xffdfffffffffffff, 9, x1, 392, x4)

# rs1_val == -18014398509481985, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0x40000000000006, 0xffbfffffffffffff, -7, x1, 400, x4)

# rs1_val == -36028797018963969, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x80000000000005, 0xff7fffffffffffff, -6, x1, 408, x4)

# rs1_val == -72057594037927937, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xfeffffffffffffbf, 0xfeffffffffffffff, 64, x1, 416, x4)

# rs1_val == -144115188075855873, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:5
TEST_IMM_OP( xori, x11, x10, 0xfdfffffffffffffa, 0xfdffffffffffffff, 5, x1, 424, x4)

# rs1_val == -288230376151711745, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x400000000000003, 0xfbffffffffffffff, -4, x1, 432, x4)

# rs1_val == -576460752303423489, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xf7ffffffffffffbf, 0xf7ffffffffffffff, 64, x1, 440, x4)

# rs1_val == -1152921504606846977, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x1000000000000001, 0xefffffffffffffff, -2, x1, 448, x4)

# rs1_val == -2305843009213693953, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0x2000000000000006, 0xdfffffffffffffff, -7, x1, 456, x4)

# rs1_val == -4611686018427387905, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xbffffffffffffaaa, 0xbfffffffffffffff, 1365, x1, 464, x4)

# rs1_val == 6148914691236517205, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:4
TEST_IMM_OP( xori, x11, x10, 0x5555555555555551, 0x5555555555555555, 4, x1, 472, x4)

# rs1_val == -6148914691236517206, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xaaaaaaaaaaaaaaa3, 0xaaaaaaaaaaaaaaaa, 9, x1, 480, x4)

# imm_val == 256, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:256
TEST_IMM_OP( xori, x11, x10, 0x100100, 0x0000000000100000, 256, x1, 488, x4)

# imm_val == -33, rs1_val == -16777217
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x1000020, 0xfffffffffeffffff, -33, x1, 496, x4)

# rs1_val == -2, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0x11, 0xfffffffffffffffe, -17, x1, 504, x4)

# rs1_val == -3, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:2
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffd, 2, x1, 512, x4)

# rs1_val == -5, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0x7fb, 0xfffffffffffffffb, -2048, x1, 520, x4)

# rs1_val == -9, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x1, 0xfffffffffffffff7, -10, x1, 528, x4)

# rs1_val == -17, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffffe7, 0xffffffffffffffef, 8, x1, 536, x4)

# rs1_val == -33, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffffd6, 0xffffffffffffffdf, 9, x1, 544, x4)

# rs1_val == -65, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffffbf, 0xffffffffffffffbf, 0, x1, 552, x4)

# rs1_val == -129, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0xc0, 0xffffffffffffff7f, -65, x1, 560, x4)

# rs1_val == -257, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0x106, 0xfffffffffffffeff, -7, x1, 568, x4)

# rs1_val == -513, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffdff, 0xfffffffffffffdff, 0, x1, 576, x4)

# rs1_val == -1025, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x420, 0xfffffffffffffbff, -33, x1, 584, x4)

# rs1_val == -2049, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0x807, 0xfffffffffffff7ff, -8, x1, 592, x4)

# rs1_val == -4097, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x1200, 0xffffffffffffefff, -513, x1, 600, x4)

# rs1_val == -8193, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffdff6, 0xffffffffffffdfff, 9, x1, 608, x4)

# rs1_val == -16385, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffbffb, 0xffffffffffffbfff, 4, x1, 616, x4)

# rs1_val == -32769, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:512
TEST_IMM_OP( xori, x11, x10, 0xffffffffffff7dff, 0xffffffffffff7fff, 512, x1, 624, x4)

# rs1_val == -65537, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffefeff, 0xfffffffffffeffff, 256, x1, 632, x4)

# rs1_val == -131073, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffdfffe, 0xfffffffffffdffff, 1, x1, 640, x4)

# rs1_val == -262145, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0x40007, 0xfffffffffffbffff, -8, x1, 648, x4)

# rs1_val == -524289, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xfffffffffff7fffb, 0xfffffffffff7ffff, 4, x1, 656, x4)

# rs1_val == -1048577, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xffffffffffeffff8, 0xffffffffffefffff, 7, x1, 664, x4)

# rs1_val == -4194305, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xffffffffffbfffbf, 0xffffffffffbfffff, 64, x1, 672, x4)

# rs1_val == -8388609, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0x800555, 0xffffffffff7fffff, -1366, x1, 680, x4)

# rs1_val == -33554433, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xfffffffffdffffff, 0xfffffffffdffffff, 0, x1, 688, x4)

# rs1_val == -67108865, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xfffffffffbfffff8, 0xfffffffffbffffff, 7, x1, 696, x4)

# rs1_val == -134217729, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0x8000010, 0xfffffffff7ffffff, -17, x1, 704, x4)

# rs1_val == -268435457, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xffffffffeffffffb, 0xffffffffefffffff, 4, x1, 712, x4)

# rs1_val == -536870913, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xffffffffdffffffe, 0xffffffffdfffffff, 1, x1, 720, x4)

# rs1_val == -1073741825, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x40000020, 0xffffffffbfffffff, -33, x1, 728, x4)

# rs1_val == -2147483649, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:3
TEST_IMM_OP( xori, x11, x10, 0xffffffff7ffffffc, 0xffffffff7fffffff, 3, x1, 736, x4)

# rs1_val == -4294967297, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfffffffefffffc00, 0xfffffffeffffffff, 1023, x1, 744, x4)

# rs1_val == -8589934593, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0x200000004, 0xfffffffdffffffff, -5, x1, 752, x4)

# rs1_val == -34359738369, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xfffffff7fffffffe, 0xfffffff7ffffffff, 1, x1, 760, x4)

# rs1_val == -68719476737, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xffffffeffffffffe, 0xffffffefffffffff, 1, x1, 768, x4)

# rs1_val == -137438953473, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xffffffdffffffaaa, 0xffffffdfffffffff, 1365, x1, 776, x4)

# rs1_val == -274877906945, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x4000000003, 0xffffffbfffffffff, -4, x1, 784, x4)

# rs1_val == -549755813889, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xffffff7ffffffc00, 0xffffff7fffffffff, 1023, x1, 792, x4)

# rs1_val == -1099511627777, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xfffffefffffffff7, 0xfffffeffffffffff, 8, x1, 800, x4)

# rs1_val == -2199023255553, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfffffdfffffffc00, 0xfffffdffffffffff, 1023, x1, 808, x4)

# rs1_val == -8796093022209, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xfffff7fffffffffb, 0xfffff7ffffffffff, 4, x1, 816, x4)

# rs1_val == -17592186044417, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x100000000200, 0xffffefffffffffff, -513, x1, 824, x4)

# rs1_val == -70368744177665, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:2
TEST_IMM_OP( xori, x11, x10, 0xffffbffffffffffd, 0xffffbfffffffffff, 2, x1, 832, x4)

# rs1_val == -140737488355329, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0x800000000007, 0xffff7fffffffffff, -8, x1, 840, x4)

# rs1_val == -281474976710657, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xfffefffffffffff7, 0xfffeffffffffffff, 8, x1, 848, x4)

# rs1_val == -562949953421313, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:5
TEST_IMM_OP( xori, x11, x10, 0xfffdfffffffffffa, 0xfffdffffffffffff, 5, x1, 856, x4)

# rs1_val == -1125899906842625, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x4000000000001, 0xfffbffffffffffff, -2, x1, 864, x4)

# rs1_val == imm_val, imm_val == 4, rs1_val > 0 and imm_val > 0, rs1_val == 4
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( xori, x11, x10, 0x0, 0x0000000000000004, 4, x1, 872, x4)

# rs1_val != imm_val, imm_val == 8, rs1_val < 0 and imm_val > 0, rs1_val == -4398046511105
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xfffffbfffffffff7, 0xfffffbffffffffff, 8, x1, 880, x4)

# imm_val == (2**(12-1)-1), rs1_val == -35184372088833, imm_val == 2047
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xffffdffffffff800, 0xffffdfffffffffff, 2047, x1, 888, x4)
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


signature_x1_0:
    .fill 112*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
