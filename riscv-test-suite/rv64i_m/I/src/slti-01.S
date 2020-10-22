
#This assembly file tests the slti instruction of the RISC-V I extension for the slti covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)

RVTEST_SIGBASE( x13,signature_x13_1)

# rs1 != rd, rs1==x5, rd==x6, rs1_val == imm_val, rs1_val == 8, imm_val == 8, rs1_val > 0 and imm_val > 0
# opcode: slti ; op1:x5; dest:x6; op1val:0x0000000000000008;  immval:8
TEST_IMM_OP( slti, x6, x5, 0x0, 0x0000000000000008, 8, x13, 0, x21)

# rs1 == rd, rs1==x15, rd==x15, rs1_val != imm_val, rs1_val == 8796093022208, imm_val == 2
# opcode: slti ; op1:x15; dest:x15; op1val:0x0000080000000000;  immval:2
TEST_IMM_OP( slti, x15, x15, 0x0, 0x0000080000000000, 2, x13, 8, x21)

# rs1==x27, rd==x11, rs1_val > 0 and imm_val < 0, imm_val == -5, rs1_val == 2147483648
# opcode: slti ; op1:x27; dest:x11; op1val:0x0000000080000000;  immval:-5
TEST_IMM_OP( slti, x11, x27, 0x0, 0x0000000080000000, -5, x13, 16, x21)

# rs1==x23, rd==x19, rs1_val < 0 and imm_val > 0, rs1_val == -524289, imm_val == 64
# opcode: slti ; op1:x23; dest:x19; op1val:0xfffffffffff7ffff;  immval:64
TEST_IMM_OP( slti, x19, x23, 0x1, 0xfffffffffff7ffff, 64, x13, 24, x21)

# rs1==x7, rd==x27, rs1_val < 0 and imm_val < 0, imm_val == -3, rs1_val == -3
# opcode: slti ; op1:x7; dest:x27; op1val:0xfffffffffffffffd;  immval:-3
TEST_IMM_OP( slti, x27, x7, 0x0, 0xfffffffffffffffd, -3, x13, 32, x21)

# rs1==x11, rd==x30, rs1_val == (-2**(xlen-1)), imm_val == -65, rs1_val == -9223372036854775808
# opcode: slti ; op1:x11; dest:x30; op1val:0x8000000000000000;  immval:-65
TEST_IMM_OP( slti, x30, x11, 0x1, 0x8000000000000000, -65, x13, 40, x21)

# rs1==x2, rd==x29, rs1_val == 0, imm_val == 32
# opcode: slti ; op1:x2; dest:x29; op1val:0x0000000000000000;  immval:32
TEST_IMM_OP( slti, x29, x2, 0x1, 0x0000000000000000, 32, x13, 48, x21)

# rs1==x3, rd==x17, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: slti ; op1:x3; dest:x17; op1val:0x7fffffffffffffff;  immval:1023
TEST_IMM_OP( slti, x17, x3, 0x0, 0x7fffffffffffffff, 1023, x13, 56, x21)

# rs1==x14, rd==x22, rs1_val == 1, 
# opcode: slti ; op1:x14; dest:x22; op1val:0x0000000000000001;  immval:-4
TEST_IMM_OP( slti, x22, x14, 0x0, 0x0000000000000001, -4, x13, 64, x21)

# rs1==x12, rd==x23, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -2199023255553
# opcode: slti ; op1:x12; dest:x23; op1val:0xfffffdffffffffff;  immval:-2048
TEST_IMM_OP( slti, x23, x12, 0x1, 0xfffffdffffffffff, -2048, x13, 72, x21)

# rs1==x0, rd==x7, imm_val == 0, rs1_val == 6148914691236517205
# opcode: slti ; op1:x0; dest:x7; op1val:0x5555555555555555;  immval:0
TEST_IMM_OP( slti, x7, x0, 0x0, 0x5555555555555555, 0, x13, 80, x21)

# rs1==x18, rd==x8, imm_val == (2**(12-1)-1), rs1_val == 4096, imm_val == 2047
# opcode: slti ; op1:x18; dest:x8; op1val:0x0000000000001000;  immval:2047
TEST_IMM_OP( slti, x8, x18, 0x0, 0x0000000000001000, 2047, x13, 88, x21)

# rs1==x20, rd==x16, imm_val == 1, rs1_val == -1099511627777
# opcode: slti ; op1:x20; dest:x16; op1val:0xfffffeffffffffff;  immval:1
TEST_IMM_OP( slti, x16, x20, 0x1, 0xfffffeffffffffff, 1, x13, 96, x21)

# rs1==x25, rd==x26, rs1_val == 2, 
# opcode: slti ; op1:x25; dest:x26; op1val:0x0000000000000002;  immval:2047
TEST_IMM_OP( slti, x26, x25, 0x1, 0x0000000000000002, 2047, x13, 104, x21)

# rs1==x26, rd==x28, rs1_val == 4, 
# opcode: slti ; op1:x26; dest:x28; op1val:0x0000000000000004;  immval:6
TEST_IMM_OP( slti, x28, x26, 0x1, 0x0000000000000004, 6, x13, 112, x21)

# rs1==x10, rd==x3, rs1_val == 16, 
# opcode: slti ; op1:x10; dest:x3; op1val:0x0000000000000010;  immval:-10
TEST_IMM_OP( slti, x3, x10, 0x0, 0x0000000000000010, -10, x13, 120, x21)

# rs1==x1, rd==x4, rs1_val == 32, 
# opcode: slti ; op1:x1; dest:x4; op1val:0x0000000000000020;  immval:-1024
TEST_IMM_OP( slti, x4, x1, 0x0, 0x0000000000000020, -1024, x13, 128, x21)

# rs1==x30, rd==x1, rs1_val == 64, imm_val == 512
# opcode: slti ; op1:x30; dest:x1; op1val:0x0000000000000040;  immval:512
TEST_IMM_OP( slti, x1, x30, 0x1, 0x0000000000000040, 512, x13, 136, x21)

# rs1==x31, rd==x9, rs1_val == 128, 
# opcode: slti ; op1:x31; dest:x9; op1val:0x0000000000000080;  immval:512
TEST_IMM_OP( slti, x9, x31, 0x1, 0x0000000000000080, 512, x13, 144, x21)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x24, rd==x2, rs1_val == 256, 
# opcode: slti ; op1:x24; dest:x2; op1val:0x0000000000000100;  immval:-5
TEST_IMM_OP( slti, x2, x24, 0x0, 0x0000000000000100, -5, x1, 0, x3)

# rs1==x6, rd==x18, rs1_val == 512, 
# opcode: slti ; op1:x6; dest:x18; op1val:0x0000000000000200;  immval:-4
TEST_IMM_OP( slti, x18, x6, 0x0, 0x0000000000000200, -4, x1, 8, x3)

# rs1==x22, rd==x5, rs1_val == 1024, imm_val == 1024
# opcode: slti ; op1:x22; dest:x5; op1val:0x0000000000000400;  immval:1024
TEST_IMM_OP( slti, x5, x22, 0x0, 0x0000000000000400, 1024, x1, 16, x3)

# rs1==x13, rd==x14, rs1_val == 2048, imm_val == 16
# opcode: slti ; op1:x13; dest:x14; op1val:0x0000000000000800;  immval:16
TEST_IMM_OP( slti, x14, x13, 0x0, 0x0000000000000800, 16, x1, 24, x3)

# rs1==x29, rd==x31, rs1_val == 8192, imm_val == 256
# opcode: slti ; op1:x29; dest:x31; op1val:0x0000000000002000;  immval:256
TEST_IMM_OP( slti, x31, x29, 0x0, 0x0000000000002000, 256, x1, 32, x3)

# rs1==x9, rd==x21, rs1_val == 16384, 
# opcode: slti ; op1:x9; dest:x21; op1val:0x0000000000004000;  immval:-7
TEST_IMM_OP( slti, x21, x9, 0x0, 0x0000000000004000, -7, x1, 40, x3)

# rs1==x28, rd==x0, rs1_val == 32768, imm_val == -2
# opcode: slti ; op1:x28; dest:x0; op1val:0x0000000000008000;  immval:-2
TEST_IMM_OP( slti, x0, x28, 0x0, 0x0000000000008000, -2, x1, 48, x3)

# rs1==x8, rd==x10, rs1_val == 65536, 
# opcode: slti ; op1:x8; dest:x10; op1val:0x0000000000010000;  immval:-2048
TEST_IMM_OP( slti, x10, x8, 0x0, 0x0000000000010000, -2048, x1, 56, x3)

# rs1==x16, rd==x12, rs1_val == 131072, 
# opcode: slti ; op1:x16; dest:x12; op1val:0x0000000000020000;  immval:-8
TEST_IMM_OP( slti, x12, x16, 0x0, 0x0000000000020000, -8, x1, 64, x3)

# rs1==x4, rd==x13, rs1_val == 262144, 
# opcode: slti ; op1:x4; dest:x13; op1val:0x0000000000040000;  immval:-1
TEST_IMM_OP( slti, x13, x4, 0x0, 0x0000000000040000, -1, x1, 72, x3)

# rs1==x17, rd==x24, rs1_val == 524288, 
# opcode: slti ; op1:x17; dest:x24; op1val:0x0000000000080000;  immval:5
TEST_IMM_OP( slti, x24, x17, 0x0, 0x0000000000080000, 5, x1, 80, x3)

# rs1==x19, rd==x25, rs1_val == 1048576, 
# opcode: slti ; op1:x19; dest:x25; op1val:0x0000000000100000;  immval:-7
TEST_IMM_OP( slti, x25, x19, 0x0, 0x0000000000100000, -7, x1, 88, x3)

# rs1==x21, rd==x20, rs1_val == 2097152, 
# opcode: slti ; op1:x21; dest:x20; op1val:0x0000000000200000;  immval:-8
TEST_IMM_OP( slti, x20, x21, 0x0, 0x0000000000200000, -8, x1, 96, x3)

# rs1_val == 4194304, imm_val == -513
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000400000, -513, x1, 104, x3)

# rs1_val == 8388608, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000800000, -513, x1, 112, x3)

# rs1_val == 16777216, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000001000000, -1, x1, 120, x3)

# rs1_val == 33554432, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000002000000, 3, x1, 128, x3)

# rs1_val == 67108864, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000004000000, -2048, x1, 136, x3)

# rs1_val == 134217728, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000008000000, 5, x1, 144, x3)

# rs1_val == 268435456, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000010000000, -1024, x1, 152, x3)

# rs1_val == 536870912, imm_val == 128
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000020000000, 128, x1, 160, x3)

# rs1_val == 1073741824, imm_val == -257
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000040000000, -257, x1, 168, x3)

# rs1_val == 4294967296, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:1023
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000100000000, 1023, x1, 176, x3)

# rs1_val == 8589934592, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000200000000, 1024, x1, 184, x3)

# rs1_val == 17179869184, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000400000000, 1, x1, 192, x3)

# rs1_val == 34359738368, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000800000000, -513, x1, 200, x3)

# rs1_val == 68719476736, imm_val == 4
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000001000000000, 4, x1, 208, x3)

# rs1_val == 137438953472, imm_val == -1366
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000002000000000, -1366, x1, 216, x3)

# rs1_val == 274877906944, imm_val == 1365
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000004000000000, 1365, x1, 224, x3)

# rs1_val == 549755813888, imm_val == -33
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000008000000000, -33, x1, 232, x3)

# rs1_val == 1099511627776, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000010000000000, 256, x1, 240, x3)

# rs1_val == 2199023255552, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000020000000000, 1, x1, 248, x3)

# rs1_val == 4398046511104, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000040000000000, 64, x1, 256, x3)

# rs1_val == 17592186044416, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000100000000000, 1365, x1, 264, x3)

# rs1_val == 35184372088832, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000200000000000, -4, x1, 272, x3)

# rs1_val == 70368744177664, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000400000000000, 1024, x1, 280, x3)

# rs1_val == 140737488355328, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000800000000000, -8, x1, 288, x3)

# rs1_val == 281474976710656, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0001000000000000, 32, x1, 296, x3)

# rs1_val == 562949953421312, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0002000000000000, -4, x1, 304, x3)

# rs1_val == 1125899906842624, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0004000000000000, 512, x1, 312, x3)

# rs1_val == 2251799813685248, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0008000000000000, 5, x1, 320, x3)

# rs1_val == 4503599627370496, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:1023
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0010000000000000, 1023, x1, 328, x3)

# rs1_val == 9007199254740992, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0020000000000000, -2048, x1, 336, x3)

# rs1_val == 18014398509481984, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0040000000000000, 4, x1, 344, x3)

# rs1_val == 36028797018963968, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0080000000000000, -7, x1, 352, x3)

# rs1_val == 72057594037927936, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0100000000000000, 7, x1, 360, x3)

# rs1_val == 144115188075855872, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0200000000000000, -1366, x1, 368, x3)

# rs1_val == 288230376151711744, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0400000000000000, 7, x1, 376, x3)

# rs1_val == 576460752303423488, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0800000000000000, -10, x1, 384, x3)

# rs1_val == 1152921504606846976, imm_val == -1025
# opcode: slti ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x0, 0x1000000000000000, -1025, x1, 392, x3)

# rs1_val == 2305843009213693952, imm_val == -9
# opcode: slti ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x0, 0x2000000000000000, -9, x1, 400, x3)

# rs1_val == 4611686018427387904, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x0, 0x4000000000000000, -1025, x1, 408, x3)

# rs1_val == -2251799813685249, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfff7ffffffffffff, -65, x1, 416, x3)

# rs1_val == -4503599627370497, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffefffffffffffff, -2, x1, 424, x3)

# rs1_val == -9007199254740993, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffffffffffff, -65, x1, 432, x3)

# rs1_val == -18014398509481985, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffbfffffffffffff, 3, x1, 440, x3)

# rs1_val == -36028797018963969, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x1, 0xff7fffffffffffff, -513, x1, 448, x3)

# rs1_val == -72057594037927937, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfeffffffffffffff, -3, x1, 456, x3)

# rs1_val == -144115188075855873, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffffffffffff, 2, x1, 464, x3)

# rs1_val == -288230376151711745, imm_val == -17
# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffffffffffff, -17, x1, 472, x3)

# rs1_val == -576460752303423489, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x1, 0xf7ffffffffffffff, -513, x1, 480, x3)

# rs1_val == -1152921504606846977, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xefffffffffffffff, -65, x1, 488, x3)

# rs1_val == -2305843009213693953, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xdfffffffffffffff, -1, x1, 496, x3)

# rs1_val == -4611686018427387905, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffffffffffff, 7, x1, 504, x3)

# rs1_val == -6148914691236517206, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xaaaaaaaaaaaaaaaa, -8, x1, 512, x3)

# imm_val == -129, rs1_val == -32769
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffff7fff, -129, x1, 520, x3)

# rs1_val == -2, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffffe, 3, x1, 528, x3)

# rs1_val == -5, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffffb, 128, x1, 536, x3)

# rs1_val == -9, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffffffffff7, -129, x1, 544, x3)

# rs1_val == -17, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0xffffffffffffffef, -257, x1, 552, x3)

# rs1_val == -33, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffdf, 2047, x1, 560, x3)

# rs1_val == -65, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffbf, 256, x1, 568, x3)

# rs1_val == -129, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:1023
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffff7f, 1023, x1, 576, x3)

# rs1_val == -257, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffeff, -10, x1, 584, x3)

# rs1_val == -513, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffdff, 0, x1, 592, x3)

# rs1_val == -1025, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffbff, 6, x1, 600, x3)

# rs1_val == -2049, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffff7ff, 9, x1, 608, x3)

# rs1_val == -4097, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffefff, 4, x1, 616, x3)

# rs1_val == -8193, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffdfff, 8, x1, 624, x3)

# rs1_val == -16385, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffbfff, 32, x1, 632, x3)

# rs1_val == -65537, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffeffff, 5, x1, 640, x3)

# rs1_val == -131073, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffdffff, 32, x1, 648, x3)

# rs1_val == -262145, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffbffff, 32, x1, 656, x3)

# rs1_val == -1048577, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffefffff, -17, x1, 664, x3)

# rs1_val == -2097153, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffdfffff, 5, x1, 672, x3)

# rs1_val == -4194305, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffbfffff, -6, x1, 680, x3)

# rs1_val == -8388609, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffff7fffff, -1, x1, 688, x3)

# rs1_val == -16777217, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffeffffff, -2, x1, 696, x3)

# rs1_val == -33554433, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffdffffff, 9, x1, 704, x3)

# rs1_val == -67108865, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffbffffff, 4, x1, 712, x3)

# rs1_val == -134217729, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffff7ffffff, -8, x1, 720, x3)

# rs1_val == -268435457, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffefffffff, -33, x1, 728, x3)

# rs1_val == -536870913, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffdfffffff, -513, x1, 736, x3)

# rs1_val == -1073741825, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffbfffffff, 32, x1, 744, x3)

# rs1_val == -2147483649, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffff7fffffff, -1024, x1, 752, x3)

# rs1_val == -4294967297, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffeffffffff, -6, x1, 760, x3)

# rs1_val == -8589934593, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffdffffffff, 1, x1, 768, x3)

# rs1_val == -17179869185, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffbffffffff, 1024, x1, 776, x3)

# rs1_val == -34359738369, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff7ffffffff, -1024, x1, 784, x3)

# rs1_val == -68719476737, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffefffffffff, -10, x1, 792, x3)

# rs1_val == -137438953473, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffdfffffffff, 512, x1, 800, x3)

# rs1_val == -274877906945, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffbfffffffff, -1366, x1, 808, x3)

# rs1_val == -549755813889, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffff7fffffffff, -33, x1, 816, x3)

# rs1_val == -4398046511105, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffbffffffffff, 2, x1, 824, x3)

# rs1_val == -8796093022209, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffff7ffffffffff, -65, x1, 832, x3)

# rs1_val == -17592186044417, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffefffffffffff, 7, x1, 840, x3)

# rs1_val == -35184372088833, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:1023
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffdfffffffffff, 1023, x1, 848, x3)

# rs1_val == -70368744177665, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffbfffffffffff, 8, x1, 856, x3)

# rs1_val == -140737488355329, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffff7fffffffffff, -257, x1, 864, x3)

# rs1_val == -281474976710657, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffeffffffffffff, -33, x1, 872, x3)

# rs1_val == -562949953421313, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffdffffffffffff, 32, x1, 880, x3)

# rs1_val == -1125899906842625, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffbffffffffffff, 256, x1, 888, x3)

# rs1_val != imm_val, rs1_val == 8796093022208, imm_val == 2
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000080000000000, 2, x1, 896, x3)

# imm_val == 0, rs1_val == 6148914691236517205
# opcode: slti ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x0, 0x5555555555555555, 0, x1, 904, x3)

# rs1_val == 32768, imm_val == -2
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000008000, -2, x1, 912, x3)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x13_1:
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 115*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
