
#This assembly file tests the slti instruction of the RISC-V I extension for the slti covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 == rd, rs1==x28, rd==x28, rs1_val == imm_val, imm_val == -129, rs1_val == -129, rs1_val < 0 and imm_val < 0
# opcode: slti ; op1:x28; dest:x28; op1val:0xffffffffffffff7f;  immval:-129
TEST_IMM_OP( slti, x28, x28, 0x0, 0xffffffffffffff7f, -129, x7, 0, x9)

# rs1 != rd, rs1==x17, rd==x1, rs1_val != imm_val, rs1_val > 0 and imm_val > 0, imm_val == 1365, rs1_val == 562949953421312
# opcode: slti ; op1:x17; dest:x1; op1val:0x0002000000000000;  immval:1365
TEST_IMM_OP( slti, x1, x17, 0x0, 0x0002000000000000, 1365, x7, 8, x9)

# rs1==x6, rd==x18, rs1_val > 0 and imm_val < 0, rs1_val == 536870912
# opcode: slti ; op1:x6; dest:x18; op1val:0x0000000020000000;  immval:-129
TEST_IMM_OP( slti, x18, x6, 0x0, 0x0000000020000000, -129, x7, 16, x9)

# rs1==x18, rd==x0, rs1_val < 0 and imm_val > 0, imm_val == 1, rs1_val == -67108865
# opcode: slti ; op1:x18; dest:x0; op1val:0xfffffffffbffffff;  immval:1
TEST_IMM_OP( slti, x0, x18, 0x1, 0xfffffffffbffffff, 1, x7, 24, x9)

# rs1==x29, rd==x6, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808
# opcode: slti ; op1:x29; dest:x6; op1val:0x8000000000000000;  immval:9
TEST_IMM_OP( slti, x6, x29, 0x1, 0x8000000000000000, 9, x7, 32, x9)

# rs1==x25, rd==x15, rs1_val == 0, imm_val == -17
# opcode: slti ; op1:x25; dest:x15; op1val:0x0000000000000000;  immval:-17
TEST_IMM_OP( slti, x15, x25, 0x0, 0x0000000000000000, -17, x7, 40, x9)

# rs1==x10, rd==x13, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807, imm_val == 256
# opcode: slti ; op1:x10; dest:x13; op1val:0x7fffffffffffffff;  immval:256
TEST_IMM_OP( slti, x13, x10, 0x0, 0x7fffffffffffffff, 256, x7, 48, x9)

# rs1==x2, rd==x22, rs1_val == 1, 
# opcode: slti ; op1:x2; dest:x22; op1val:0x0000000000000001;  immval:-10
TEST_IMM_OP( slti, x22, x2, 0x0, 0x0000000000000001, -10, x7, 56, x9)

# rs1==x5, rd==x31, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -274877906945
# opcode: slti ; op1:x5; dest:x31; op1val:0xffffffbfffffffff;  immval:-2048
TEST_IMM_OP( slti, x31, x5, 0x1, 0xffffffbfffffffff, -2048, x7, 64, x9)

# rs1==x12, rd==x14, imm_val == 0, 
# opcode: slti ; op1:x12; dest:x14; op1val:0x0000000000000005;  immval:0
TEST_IMM_OP( slti, x14, x12, 0x0, 0x0000000000000005, 0, x7, 72, x9)

# rs1==x24, rd==x2, imm_val == (2**(12-1)-1), rs1_val == 68719476736, imm_val == 2047
# opcode: slti ; op1:x24; dest:x2; op1val:0x0000001000000000;  immval:2047
TEST_IMM_OP( slti, x2, x24, 0x0, 0x0000001000000000, 2047, x7, 80, x9)

# rs1==x8, rd==x11, rs1_val == 2, 
# opcode: slti ; op1:x8; dest:x11; op1val:0x0000000000000002;  immval:-4
TEST_IMM_OP( slti, x11, x8, 0x0, 0x0000000000000002, -4, x7, 88, x9)

# rs1==x15, rd==x16, rs1_val == 4, imm_val == -65
# opcode: slti ; op1:x15; dest:x16; op1val:0x0000000000000004;  immval:-65
TEST_IMM_OP( slti, x16, x15, 0x0, 0x0000000000000004, -65, x7, 96, x9)

# rs1==x0, rd==x19, rs1_val == 8, 
# opcode: slti ; op1:x0; dest:x19; op1val:0x0000000000000008;  immval:5
TEST_IMM_OP( slti, x19, x0, 0x0, 0x0000000000000008, 5, x7, 104, x9)

# rs1==x4, rd==x24, rs1_val == 16, 
# opcode: slti ; op1:x4; dest:x24; op1val:0x0000000000000010;  immval:0
TEST_IMM_OP( slti, x24, x4, 0x0, 0x0000000000000010, 0, x7, 112, x9)

# rs1==x30, rd==x3, rs1_val == 32, 
# opcode: slti ; op1:x30; dest:x3; op1val:0x0000000000000020;  immval:6
TEST_IMM_OP( slti, x3, x30, 0x0, 0x0000000000000020, 6, x7, 120, x9)

# rs1==x27, rd==x4, rs1_val == 64, imm_val == 16
# opcode: slti ; op1:x27; dest:x4; op1val:0x0000000000000040;  immval:16
TEST_IMM_OP( slti, x4, x27, 0x0, 0x0000000000000040, 16, x7, 128, x9)

# rs1==x11, rd==x10, rs1_val == 128, 
# opcode: slti ; op1:x11; dest:x10; op1val:0x0000000000000080;  immval:16
TEST_IMM_OP( slti, x10, x11, 0x0, 0x0000000000000080, 16, x7, 136, x9)

# rs1==x13, rd==x21, rs1_val == 256, imm_val == -33
# opcode: slti ; op1:x13; dest:x21; op1val:0x0000000000000100;  immval:-33
TEST_IMM_OP( slti, x21, x13, 0x0, 0x0000000000000100, -33, x7, 144, x9)

# rs1==x20, rd==x12, rs1_val == 512, 
# opcode: slti ; op1:x20; dest:x12; op1val:0x0000000000000200;  immval:5
TEST_IMM_OP( slti, x12, x20, 0x0, 0x0000000000000200, 5, x7, 152, x9)

# rs1==x21, rd==x26, rs1_val == 1024, imm_val == 8
# opcode: slti ; op1:x21; dest:x26; op1val:0x0000000000000400;  immval:8
TEST_IMM_OP( slti, x26, x21, 0x0, 0x0000000000000400, 8, x7, 160, x4)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x16, rd==x5, rs1_val == 2048, 
# opcode: slti ; op1:x16; dest:x5; op1val:0x0000000000000800;  immval:-8
TEST_IMM_OP( slti, x5, x16, 0x0, 0x0000000000000800, -8, x2, 0, x4)

# rs1==x22, rd==x8, rs1_val == 4096, 
# opcode: slti ; op1:x22; dest:x8; op1val:0x0000000000001000;  immval:1365
TEST_IMM_OP( slti, x8, x22, 0x0, 0x0000000000001000, 1365, x2, 8, x4)

# rs1==x14, rd==x17, rs1_val == 8192, imm_val == -1025
# opcode: slti ; op1:x14; dest:x17; op1val:0x0000000000002000;  immval:-1025
TEST_IMM_OP( slti, x17, x14, 0x0, 0x0000000000002000, -1025, x2, 16, x4)

# rs1==x7, rd==x9, rs1_val == 16384, imm_val == 4
# opcode: slti ; op1:x7; dest:x9; op1val:0x0000000000004000;  immval:4
TEST_IMM_OP( slti, x9, x7, 0x0, 0x0000000000004000, 4, x2, 24, x4)

# rs1==x23, rd==x7, rs1_val == 32768, 
# opcode: slti ; op1:x23; dest:x7; op1val:0x0000000000008000;  immval:-1
TEST_IMM_OP( slti, x7, x23, 0x0, 0x0000000000008000, -1, x2, 32, x4)

# rs1==x1, rd==x29, rs1_val == 65536, 
# opcode: slti ; op1:x1; dest:x29; op1val:0x0000000000010000;  immval:5
TEST_IMM_OP( slti, x29, x1, 0x0, 0x0000000000010000, 5, x2, 40, x4)

# rs1==x26, rd==x20, rs1_val == 131072, 
# opcode: slti ; op1:x26; dest:x20; op1val:0x0000000000020000;  immval:-1025
TEST_IMM_OP( slti, x20, x26, 0x0, 0x0000000000020000, -1025, x2, 48, x4)

# rs1==x3, rd==x23, rs1_val == 262144, 
# opcode: slti ; op1:x3; dest:x23; op1val:0x0000000000040000;  immval:-65
TEST_IMM_OP( slti, x23, x3, 0x0, 0x0000000000040000, -65, x2, 56, x4)

# rs1==x31, rd==x25, rs1_val == 524288, 
# opcode: slti ; op1:x31; dest:x25; op1val:0x0000000000080000;  immval:-1025
TEST_IMM_OP( slti, x25, x31, 0x0, 0x0000000000080000, -1025, x2, 64, x4)

# rs1==x9, rd==x30, rs1_val == 1048576, 
# opcode: slti ; op1:x9; dest:x30; op1val:0x0000000000100000;  immval:4
TEST_IMM_OP( slti, x30, x9, 0x0, 0x0000000000100000, 4, x2, 72, x4)

# rs1==x19, rd==x27, rs1_val == 2097152, 
# opcode: slti ; op1:x19; dest:x27; op1val:0x0000000000200000;  immval:-7
TEST_IMM_OP( slti, x27, x19, 0x0, 0x0000000000200000, -7, x2, 80, x4)

# rs1_val == 4194304, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000400000, -17, x2, 88, x4)

# rs1_val == 8388608, imm_val == -1366
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000800000, -1366, x2, 96, x4)

# rs1_val == 16777216, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:1023
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000001000000, 1023, x2, 104, x4)

# rs1_val == 33554432, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000002000000, -65, x2, 112, x4)

# rs1_val == 67108864, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000004000000, 2047, x2, 120, x4)

# rs1_val == 134217728, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000008000000, -4, x2, 128, x4)

# rs1_val == 268435456, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000010000000, -65, x2, 136, x4)

# rs1_val == 1073741824, imm_val == -5
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000040000000, -5, x2, 144, x4)

# rs1_val == 2147483648, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000080000000, 16, x2, 152, x4)

# rs1_val == 4294967296, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000100000000, -129, x2, 160, x4)

# rs1_val == 8589934592, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000200000000, -10, x2, 168, x4)

# rs1_val == 17179869184, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000400000000, -17, x2, 176, x4)

# rs1_val == 34359738368, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000800000000, -17, x2, 184, x4)

# rs1_val == 137438953472, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000002000000000, 4, x2, 192, x4)

# rs1_val == 274877906944, imm_val == -257
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000004000000000, -257, x2, 200, x4)

# rs1_val == 549755813888, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000008000000000, 8, x2, 208, x4)

# rs1_val == 1099511627776, imm_val == 1024
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000010000000000, 1024, x2, 216, x4)

# rs1_val == 2199023255552, imm_val == -9
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000020000000000, -9, x2, 224, x4)

# rs1_val == 4398046511104, imm_val == 128
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000040000000000, 128, x2, 232, x4)

# rs1_val == 8796093022208, imm_val == 2
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000080000000000, 2, x2, 240, x4)

# rs1_val == 17592186044416, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000100000000000, 6, x2, 248, x4)

# rs1_val == 35184372088832, imm_val == -3
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000200000000000, -3, x2, 256, x4)

# rs1_val == 70368744177664, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000400000000000, -1025, x2, 264, x4)

# rs1_val == 140737488355328, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000800000000000, 5, x2, 272, x4)

# rs1_val == 281474976710656, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0001000000000000, 1, x2, 280, x4)

# rs1_val == 1125899906842624, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0004000000000000, -8, x2, 288, x4)

# rs1_val == 2251799813685248, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0008000000000000, 128, x2, 296, x4)

# rs1_val == 4503599627370496, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0010000000000000, -2048, x2, 304, x4)

# rs1_val == 9007199254740992, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0020000000000000, -17, x2, 312, x4)

# rs1_val == 18014398509481984, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0040000000000000, 7, x2, 320, x4)

# rs1_val == 36028797018963968, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0080000000000000, -10, x2, 328, x4)

# rs1_val == 72057594037927936, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0100000000000000, -10, x2, 336, x4)

# rs1_val == 144115188075855872, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0200000000000000, 9, x2, 344, x4)

# rs1_val == 288230376151711744, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0400000000000000, -3, x2, 352, x4)

# rs1_val == 576460752303423488, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0800000000000000, 7, x2, 360, x4)

# rs1_val == 1152921504606846976, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x1000000000000000, -257, x2, 368, x4)

# rs1_val == 2305843009213693952, imm_val == 512
# opcode: slti ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x0, 0x2000000000000000, 512, x2, 376, x4)

# rs1_val == 4611686018427387904, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x4000000000000000, 1, x2, 384, x4)

# rs1_val == -2, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffffe, -1, x2, 392, x4)

# rs1_val == -3, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffffd, 8, x2, 400, x4)

# rs1_val == -5, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffffffffffb, -9, x2, 408, x4)

# rs1_val == -2251799813685249, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfff7ffffffffffff, -2048, x2, 416, x4)

# rs1_val == -4503599627370497, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffefffffffffffff, -257, x2, 424, x4)

# rs1_val == -9007199254740993, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffffffffffff, -33, x2, 432, x4)

# rs1_val == -18014398509481985, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffbfffffffffffff, -129, x2, 440, x4)

# rs1_val == -36028797018963969, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xff7fffffffffffff, 4, x2, 448, x4)

# rs1_val == -72057594037927937, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfeffffffffffffff, -65, x2, 456, x4)

# rs1_val == -144115188075855873, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffffffffffff, -65, x2, 464, x4)

# rs1_val == -288230376151711745, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffffffffffff, 16, x2, 472, x4)

# rs1_val == -576460752303423489, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x1, 0xf7ffffffffffffff, 256, x2, 480, x4)

# rs1_val == -1152921504606846977, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xefffffffffffffff, -257, x2, 488, x4)

# rs1_val == -2305843009213693953, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x1, 0xdfffffffffffffff, -129, x2, 496, x4)

# rs1_val == -4611686018427387905, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffffffffffff, -7, x2, 504, x4)

# rs1_val == 6148914691236517205, imm_val == -513
# opcode: slti ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x0, 0x5555555555555555, -513, x2, 512, x4)

# rs1_val == -6148914691236517206, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xaaaaaaaaaaaaaaaa, 1024, x2, 520, x4)

# imm_val == 32, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000000800;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000000800, 32, x2, 528, x4)

# imm_val == 64, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffffffffffff, 64, x2, 536, x4)

# imm_val == -2, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000000006;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000000006, -2, x2, 544, x4)

# rs1_val == -9, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffff7, 128, x2, 552, x4)

# rs1_val == -17, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffef, 1024, x2, 560, x4)

# rs1_val == -33, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffdf, 512, x2, 568, x4)

# rs1_val == -65, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffbf, 2, x2, 576, x4)

# rs1_val == -257, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffeff, 64, x2, 584, x4)

# rs1_val == -513, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffdff, -3, x2, 592, x4)

# rs1_val == -1025, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffbff, -17, x2, 600, x4)

# rs1_val == -2049, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffff7ff, -33, x2, 608, x4)

# rs1_val == -4097, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffefff, -4, x2, 616, x4)

# rs1_val == -8193, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffdfff, 4, x2, 624, x4)

# rs1_val == -16385, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffbfff, 128, x2, 632, x4)

# rs1_val == -32769, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffff7fff, 1024, x2, 640, x4)

# rs1_val == -65537, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffeffff, -129, x2, 648, x4)

# rs1_val == -131073, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffdffff, -10, x2, 656, x4)

# rs1_val == -262145, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffbffff, 2047, x2, 664, x4)

# rs1_val == -524289, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffff7ffff, -3, x2, 672, x4)

# rs1_val == -1048577, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffefffff, 7, x2, 680, x4)

# rs1_val == -2097153, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:1023
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffdfffff, 1023, x2, 688, x4)

# rs1_val == -4194305, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffbfffff, 2047, x2, 696, x4)

# rs1_val == -8388609, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffff7fffff, 64, x2, 704, x4)

# rs1_val == -16777217, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffeffffff, 64, x2, 712, x4)

# rs1_val == -33554433, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffdffffff, -1025, x2, 720, x4)

# rs1_val == -134217729, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffff7ffffff, -1025, x2, 728, x4)

# rs1_val == -268435457, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffefffffff, -65, x2, 736, x4)

# rs1_val == -536870913, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffdfffffff, -5, x2, 744, x4)

# rs1_val == -1073741825, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffbfffffff, -7, x2, 752, x4)

# rs1_val == -2147483649, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffff7fffffff, 1024, x2, 760, x4)

# rs1_val == -4294967297, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffeffffffff, -5, x2, 768, x4)

# rs1_val == -8589934593, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffdffffffff, -4, x2, 776, x4)

# rs1_val == -17179869185, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffbffffffff, -9, x2, 784, x4)

# rs1_val == -34359738369, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff7ffffffff, -6, x2, 792, x4)

# rs1_val == -68719476737, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffefffffffff, -1024, x2, 800, x4)

# rs1_val == -137438953473, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffdfffffffff, 9, x2, 808, x4)

# rs1_val == -549755813889, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffff7fffffffff, -257, x2, 816, x4)

# rs1_val == -1099511627777, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffeffffffffff, 64, x2, 824, x4)

# rs1_val == -2199023255553, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffdffffffffff, -1025, x2, 832, x4)

# rs1_val == -4398046511105, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffbffffffffff, -33, x2, 840, x4)

# rs1_val == -8796093022209, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffff7ffffffffff, 8, x2, 848, x4)

# rs1_val == -17592186044417, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffefffffffffff, 1, x2, 856, x4)

# rs1_val == -35184372088833, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffdfffffffffff, -1025, x2, 864, x4)

# rs1_val == -70368744177665, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffbfffffffffff, -6, x2, 872, x4)

# rs1_val == -140737488355329, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffff7fffffffffff, 32, x2, 880, x4)

# rs1_val == -281474976710657, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffeffffffffffff, 8, x2, 888, x4)

# rs1_val == -562949953421313, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffdffffffffffff, 4, x2, 896, x4)

# rs1_val == -1125899906842625, 
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffbffffffffffff, 256, x2, 904, x4)

# rs1_val == imm_val, imm_val == -129, rs1_val == -129, rs1_val < 0 and imm_val < 0
# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x0, 0xffffffffffffff7f, -129, x2, 912, x4)

# rs1_val < 0 and imm_val > 0, imm_val == 1, rs1_val == -67108865
# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffbffffff, 1, x2, 920, x4)

# rs1_val == 8, 
# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000000008;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000000008, 5, x2, 928, x4)
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
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 117*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
