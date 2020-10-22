
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rd, rs1==x29, rd==x4, rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 32, imm_val == 32
# opcode: andi ; op1:x29; dest:x4; op1val:0x0000000000000020;  immval:32
TEST_IMM_OP( andi, x4, x29, 0x20, 0x0000000000000020, 32, x7, 0, x16)

# rs1 == rd, rs1==x13, rd==x13, rs1_val != imm_val, rs1_val == 4096
# opcode: andi ; op1:x13; dest:x13; op1val:0x0000000000001000;  immval:7
TEST_IMM_OP( andi, x13, x13, 0x0, 0x0000000000001000, 7, x7, 8, x16)

# rs1==x28, rd==x24, rs1_val > 0 and imm_val < 0, rs1_val == 17179869184
# opcode: andi ; op1:x28; dest:x24; op1val:0x0000000400000000;  immval:-4
TEST_IMM_OP( andi, x24, x28, 0x400000000, 0x0000000400000000, -4, x7, 16, x16)

# rs1==x3, rd==x29, rs1_val < 0 and imm_val > 0, imm_val == 1024, rs1_val == -16777217
# opcode: andi ; op1:x3; dest:x29; op1val:0xfffffffffeffffff;  immval:1024
TEST_IMM_OP( andi, x29, x3, 0x400, 0xfffffffffeffffff, 1024, x7, 24, x16)

# rs1==x5, rd==x17, rs1_val < 0 and imm_val < 0, rs1_val == -1048577, imm_val == -9
# opcode: andi ; op1:x5; dest:x17; op1val:0xffffffffffefffff;  immval:-9
TEST_IMM_OP( andi, x17, x5, 0xffffffffffeffff7, 0xffffffffffefffff, -9, x7, 32, x16)

# rs1==x24, rd==x2, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808, imm_val == -17
# opcode: andi ; op1:x24; dest:x2; op1val:0x8000000000000000;  immval:-17
TEST_IMM_OP( andi, x2, x24, 0x8000000000000000, 0x8000000000000000, -17, x7, 40, x16)

# rs1==x12, rd==x21, rs1_val == 0, 
# opcode: andi ; op1:x12; dest:x21; op1val:0x0000000000000000;  immval:1024
TEST_IMM_OP( andi, x21, x12, 0x0, 0x0000000000000000, 1024, x7, 48, x16)

# rs1==x26, rd==x28, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: andi ; op1:x26; dest:x28; op1val:0x7fffffffffffffff;  immval:5
TEST_IMM_OP( andi, x28, x26, 0x5, 0x7fffffffffffffff, 5, x7, 56, x16)

# rs1==x30, rd==x27, rs1_val == 1, imm_val == -513
# opcode: andi ; op1:x30; dest:x27; op1val:0x0000000000000001;  immval:-513
TEST_IMM_OP( andi, x27, x30, 0x1, 0x0000000000000001, -513, x7, 64, x16)

# rs1==x14, rd==x1, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == 144115188075855872
# opcode: andi ; op1:x14; dest:x1; op1val:0x0200000000000000;  immval:-2048
TEST_IMM_OP( andi, x1, x14, 0x200000000000000, 0x0200000000000000, -2048, x7, 72, x16)

# rs1==x9, rd==x30, imm_val == 0, rs1_val == -1073741825
# opcode: andi ; op1:x9; dest:x30; op1val:0xffffffffbfffffff;  immval:0
TEST_IMM_OP( andi, x30, x9, 0x0, 0xffffffffbfffffff, 0, x7, 80, x16)

# rs1==x1, rd==x11, imm_val == (2**(12-1)-1), rs1_val == 1073741824, imm_val == 2047
# opcode: andi ; op1:x1; dest:x11; op1val:0x0000000040000000;  immval:2047
TEST_IMM_OP( andi, x11, x1, 0x0, 0x0000000040000000, 2047, x7, 88, x16)

# rs1==x18, rd==x0, imm_val == 1, rs1_val == -67108865
# opcode: andi ; op1:x18; dest:x0; op1val:0xfffffffffbffffff;  immval:1
TEST_IMM_OP( andi, x0, x18, 0x1, 0xfffffffffbffffff, 1, x7, 96, x16)

# rs1==x22, rd==x10, rs1_val == 2, 
# opcode: andi ; op1:x22; dest:x10; op1val:0x0000000000000002;  immval:-6
TEST_IMM_OP( andi, x10, x22, 0x2, 0x0000000000000002, -6, x7, 104, x16)

# rs1==x2, rd==x8, rs1_val == 4, imm_val == -1366
# opcode: andi ; op1:x2; dest:x8; op1val:0x0000000000000004;  immval:-1366
TEST_IMM_OP( andi, x8, x2, 0x0, 0x0000000000000004, -1366, x7, 112, x16)

# rs1==x27, rd==x15, rs1_val == 8, imm_val == 2
# opcode: andi ; op1:x27; dest:x15; op1val:0x0000000000000008;  immval:2
TEST_IMM_OP( andi, x15, x27, 0x0, 0x0000000000000008, 2, x7, 120, x16)

# rs1==x15, rd==x22, rs1_val == 16, 
# opcode: andi ; op1:x15; dest:x22; op1val:0x0000000000000010;  immval:1
TEST_IMM_OP( andi, x22, x15, 0x0, 0x0000000000000010, 1, x7, 128, x16)

# rs1==x11, rd==x23, rs1_val == 64, 
# opcode: andi ; op1:x11; dest:x23; op1val:0x0000000000000040;  immval:1
TEST_IMM_OP( andi, x23, x11, 0x0, 0x0000000000000040, 1, x7, 136, x16)

# rs1==x19, rd==x31, rs1_val == 128, imm_val == 512
# opcode: andi ; op1:x19; dest:x31; op1val:0x0000000000000080;  immval:512
TEST_IMM_OP( andi, x31, x19, 0x0, 0x0000000000000080, 512, x7, 144, x16)

# rs1==x31, rd==x18, rs1_val == 256, imm_val == 8
# opcode: andi ; op1:x31; dest:x18; op1val:0x0000000000000100;  immval:8
TEST_IMM_OP( andi, x18, x31, 0x0, 0x0000000000000100, 8, x7, 152, x16)

# rs1==x25, rd==x6, rs1_val == 512, 
# opcode: andi ; op1:x25; dest:x6; op1val:0x0000000000000200;  immval:1023
TEST_IMM_OP( andi, x6, x25, 0x200, 0x0000000000000200, 1023, x7, 160, x16)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x8, rd==x16, rs1_val == 1024, 
# opcode: andi ; op1:x8; dest:x16; op1val:0x0000000000000400;  immval:2047
TEST_IMM_OP( andi, x16, x8, 0x400, 0x0000000000000400, 2047, x1, 0, x2)

# rs1==x23, rd==x20, rs1_val == 2048, imm_val == -257
# opcode: andi ; op1:x23; dest:x20; op1val:0x0000000000000800;  immval:-257
TEST_IMM_OP( andi, x20, x23, 0x800, 0x0000000000000800, -257, x1, 8, x2)

# rs1==x6, rd==x5, rs1_val == 8192, 
# opcode: andi ; op1:x6; dest:x5; op1val:0x0000000000002000;  immval:3
TEST_IMM_OP( andi, x5, x6, 0x0, 0x0000000000002000, 3, x1, 16, x2)

# rs1==x7, rd==x3, rs1_val == 16384, 
# opcode: andi ; op1:x7; dest:x3; op1val:0x0000000000004000;  immval:-513
TEST_IMM_OP( andi, x3, x7, 0x4000, 0x0000000000004000, -513, x1, 24, x2)

# rs1==x10, rd==x19, rs1_val == 32768, 
# opcode: andi ; op1:x10; dest:x19; op1val:0x0000000000008000;  immval:-10
TEST_IMM_OP( andi, x19, x10, 0x8000, 0x0000000000008000, -10, x1, 32, x2)

# rs1==x21, rd==x14, rs1_val == 65536, 
# opcode: andi ; op1:x21; dest:x14; op1val:0x0000000000010000;  immval:1
TEST_IMM_OP( andi, x14, x21, 0x0, 0x0000000000010000, 1, x1, 40, x2)

# rs1==x17, rd==x7, rs1_val == 131072, imm_val == 64
# opcode: andi ; op1:x17; dest:x7; op1val:0x0000000000020000;  immval:64
TEST_IMM_OP( andi, x7, x17, 0x0, 0x0000000000020000, 64, x1, 48, x2)

# rs1==x20, rd==x9, rs1_val == 262144, 
# opcode: andi ; op1:x20; dest:x9; op1val:0x0000000000040000;  immval:-513
TEST_IMM_OP( andi, x9, x20, 0x40000, 0x0000000000040000, -513, x1, 56, x2)

# rs1==x4, rd==x26, rs1_val == 524288, imm_val == -3
# opcode: andi ; op1:x4; dest:x26; op1val:0x0000000000080000;  immval:-3
TEST_IMM_OP( andi, x26, x4, 0x80000, 0x0000000000080000, -3, x1, 64, x2)

# rs1==x16, rd==x25, rs1_val == 1048576, 
# opcode: andi ; op1:x16; dest:x25; op1val:0x0000000000100000;  immval:-1
TEST_IMM_OP( andi, x25, x16, 0x100000, 0x0000000000100000, -1, x1, 72, x2)

# rs1==x0, rd==x12, rs1_val == 2097152, 
# opcode: andi ; op1:x0; dest:x12; op1val:0x0000000000200000;  immval:9
TEST_IMM_OP( andi, x12, x0, 0x0, 0x0000000000200000, 9, x1, 80, x2)

# rs1_val == 4194304, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000400000, 0, x1, 88, x2)

# rs1_val == 8388608, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000800000, 3, x1, 96, x2)

# rs1_val == 16777216, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0x1000000, 0x0000000001000000, -9, x1, 104, x2)

# rs1_val == 33554432, imm_val == 256
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000002000000, 256, x1, 112, x2)

# rs1_val == 67108864, imm_val == -129
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0x4000000, 0x0000000004000000, -129, x1, 120, x2)

# rs1_val == 134217728, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000008000000, 5, x1, 128, x2)

# rs1_val == 268435456, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000010000000, 256, x1, 136, x2)

# rs1_val == 536870912, imm_val == 1365
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000020000000, 1365, x1, 144, x2)

# rs1_val == 2147483648, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0x80000000, 0x0000000080000000, -3, x1, 152, x2)

# rs1_val == 4294967296, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0x100000000, 0x0000000100000000, -7, x1, 160, x2)

# rs1_val == 8589934592, imm_val == -33
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0x200000000, 0x0000000200000000, -33, x1, 168, x2)

# rs1_val == 34359738368, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0x800000000, 0x0000000800000000, -2048, x1, 176, x2)

# rs1_val == 68719476736, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000001000000000, 8, x1, 184, x2)

# rs1_val == 137438953472, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000002000000000, 512, x1, 192, x2)

# rs1_val == 274877906944, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000004000000000, 1024, x1, 200, x2)

# rs1_val == 549755813888, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0x8000000000, 0x0000008000000000, -1366, x1, 208, x2)

# rs1_val == 1099511627776, imm_val == 128
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000010000000000, 128, x1, 216, x2)

# rs1_val == 2199023255552, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000020000000000, 3, x1, 224, x2)

# rs1_val == 4398046511104, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000040000000000, 9, x1, 232, x2)

# rs1_val == 8796093022208, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0x80000000000, 0x0000080000000000, -8, x1, 240, x2)

# rs1_val == 17592186044416, imm_val == 4
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000100000000000, 4, x1, 248, x2)

# rs1_val == 35184372088832, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000200000000000, 512, x1, 256, x2)

# rs1_val == 70368744177664, imm_val == 16
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000400000000000, 16, x1, 264, x2)

# rs1_val == 140737488355328, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000800000000000, 2047, x1, 272, x2)

# rs1_val == 281474976710656, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0x1000000000000, 0x0001000000000000, -2048, x1, 280, x2)

# rs1_val == 562949953421312, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0002000000000000, 1023, x1, 288, x2)

# rs1_val == 1125899906842624, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0004000000000000, 5, x1, 296, x2)

# rs1_val == 2251799813685248, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0x8000000000000, 0x0008000000000000, -3, x1, 304, x2)

# rs1_val == 4503599627370496, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0010000000000000, 2047, x1, 312, x2)

# rs1_val == 9007199254740992, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0x20000000000000, 0x0020000000000000, -1, x1, 320, x2)

# rs1_val == 18014398509481984, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0040000000000000, 5, x1, 328, x2)

# rs1_val == 36028797018963968, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0x80000000000000, 0x0080000000000000, -1, x1, 336, x2)

# rs1_val == 72057594037927936, imm_val == -5
# opcode: andi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0x100000000000000, 0x0100000000000000, -5, x1, 344, x2)

# rs1_val == 288230376151711744, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0400000000000000, 6, x1, 352, x2)

# rs1_val == 576460752303423488, imm_val == -65
# opcode: andi ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0x800000000000000, 0x0800000000000000, -65, x1, 360, x2)

# rs1_val == 1152921504606846976, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0x1000000000000000, 0x1000000000000000, -5, x1, 368, x2)

# rs1_val == 2305843009213693952, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x2000000000000000, 0x2000000000000000, -257, x1, 376, x2)

# rs1_val == 4611686018427387904, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x4000000000000000, 256, x1, 384, x2)

# rs1_val == -2251799813685249, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xfff7ffffffffffff, 9, x1, 392, x2)

# rs1_val == -4503599627370497, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x3ff, 0xffefffffffffffff, 1023, x1, 400, x2)

# rs1_val == -9007199254740993, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xffdffffffffffdff, 0xffdfffffffffffff, -513, x1, 408, x2)

# rs1_val == -18014398509481985, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xffbfffffffffffff, 256, x1, 416, x2)

# rs1_val == -36028797018963969, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0xff7ffffffffff800, 0xff7fffffffffffff, -2048, x1, 424, x2)

# rs1_val == -72057594037927937, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfefffffffffffff8, 0xfeffffffffffffff, -8, x1, 432, x2)

# rs1_val == -144115188075855873, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xfdffffffffffffff, 2, x1, 440, x2)

# rs1_val == -288230376151711745, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfbffffffffffffff, 16, x1, 448, x2)

# rs1_val == -576460752303423489, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xf7ffffffffffffff, 6, x1, 456, x2)

# rs1_val == -1152921504606846977, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xefffffffffffffff, 5, x1, 464, x2)

# rs1_val == -2305843009213693953, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xdfffffffffffffff, 3, x1, 472, x2)

# rs1_val == -4611686018427387905, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xbffffffffffffff8, 0xbfffffffffffffff, -8, x1, 480, x2)

# rs1_val == 6148914691236517205, imm_val == -1025
# opcode: andi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0x5555555555555155, 0x5555555555555555, -1025, x1, 488, x2)

# rs1_val == -6148914691236517206, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, -1366, x1, 496, x2)

# imm_val == -2, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0x1000000, 0x0000000001000000, -2, x1, 504, x2)

# rs1_val == -2, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffbfe, 0xfffffffffffffffe, -1025, x1, 512, x2)

# rs1_val == -3, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffffd, 0xfffffffffffffffd, -3, x1, 520, x2)

# rs1_val == -5, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xfffffffffffffffb, 256, x1, 528, x2)

# rs1_val == -9, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffffffffffffff7, 1, x1, 536, x2)

# rs1_val == -17, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffffee, 0xffffffffffffffef, -2, x1, 544, x2)

# rs1_val == -33, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffffdc, 0xffffffffffffffdf, -4, x1, 552, x2)

# rs1_val == -65, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x0, 0xffffffffffffffbf, 64, x1, 560, x2)

# rs1_val == -129, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffb7f, 0xffffffffffffff7f, -1025, x1, 568, x2)

# rs1_val == -257, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffedf, 0xfffffffffffffeff, -33, x1, 576, x2)

# rs1_val == -513, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffdff, 0xfffffffffffffdff, -1, x1, 584, x2)

# rs1_val == -1025, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffbbf, 0xfffffffffffffbff, -65, x1, 592, x2)

# rs1_val == -2049, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xfffffffffffff7ff, 0, x1, 600, x2)

# rs1_val == -4097, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffefef, 0xffffffffffffefff, -17, x1, 608, x2)

# rs1_val == -8193, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffddff, 0xffffffffffffdfff, -513, x1, 616, x2)

# rs1_val == -16385, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffbffd, 0xffffffffffffbfff, -3, x1, 624, x2)

# rs1_val == -32769, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xffffffffffff7aaa, 0xffffffffffff7fff, -1366, x1, 632, x2)

# rs1_val == -65537, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffeffbf, 0xfffffffffffeffff, -65, x1, 640, x2)

# rs1_val == -131073, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xfffffffffffdffff, 256, x1, 648, x2)

# rs1_val == -262145, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xfffffffffffbffff, 3, x1, 656, x2)

# rs1_val == -524289, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xfffffffffff7ffff, 64, x1, 664, x2)

# rs1_val == -2097153, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xffffffffffdfffff, 9, x1, 672, x2)

# rs1_val == -4194305, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xffffffffffbffaaa, 0xffffffffffbfffff, -1366, x1, 680, x2)

# rs1_val == -8388609, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x7, 0xffffffffff7fffff, 7, x1, 688, x2)

# rs1_val == -33554433, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xfffffffffdfffffe, 0xfffffffffdffffff, -2, x1, 696, x2)

# rs1_val == -134217729, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xfffffffff7ffffff, 5, x1, 704, x2)

# rs1_val == -268435457, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xffffffffefffffbf, 0xffffffffefffffff, -65, x1, 712, x2)

# rs1_val == -536870913, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0xffffffffdffffffa, 0xffffffffdfffffff, -6, x1, 720, x2)

# rs1_val == -2147483649, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xffffffff7ffffeff, 0xffffffff7fffffff, -257, x1, 728, x2)

# rs1_val == -4294967297, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0xfffffffefffffc00, 0xfffffffeffffffff, -1024, x1, 736, x2)

# rs1_val == -8589934593, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xfffffffdffffffbf, 0xfffffffdffffffff, -65, x1, 744, x2)

# rs1_val == -17179869185, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xfffffffbffffffff, 64, x1, 752, x2)

# rs1_val == -34359738369, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xfffffff7ffffffff, 64, x1, 760, x2)

# rs1_val == -68719476737, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xffffffefffffffdf, 0xffffffefffffffff, -33, x1, 768, x2)

# rs1_val == -137438953473, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0xffffffdffffffc00, 0xffffffdfffffffff, -1024, x1, 776, x2)

# rs1_val == -274877906945, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xffffffbfffffffff, 4, x1, 784, x2)

# rs1_val == -549755813889, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xffffff7fffffffff, 0xffffff7fffffffff, -1, x1, 792, x2)

# rs1_val == -1099511627777, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfffffefffffffbff, 0xfffffeffffffffff, -1025, x1, 800, x2)

# rs1_val == -2199023255553, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xfffffdfffffffff9, 0xfffffdffffffffff, -7, x1, 808, x2)

# rs1_val == -4398046511105, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xfffffbfffffffff6, 0xfffffbffffffffff, -10, x1, 816, x2)

# rs1_val == -8796093022209, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xfffff7ffffffffdf, 0xfffff7ffffffffff, -33, x1, 824, x2)

# rs1_val == -17592186044417, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xffffefffffffffff, 256, x1, 832, x2)

# rs1_val == -35184372088833, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0xffffdffffffffff7, 0xffffdfffffffffff, -9, x1, 840, x2)

# rs1_val == -70368744177665, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xffffbffffffffdff, 0xffffbfffffffffff, -513, x1, 848, x2)

# rs1_val == -140737488355329, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xffff7ffffffffffb, 0xffff7fffffffffff, -5, x1, 856, x2)

# rs1_val == -281474976710657, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xfffefffffffffaaa, 0xfffeffffffffffff, -1366, x1, 864, x2)

# rs1_val == -562949953421313, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xfffdffffffffffdf, 0xfffdffffffffffff, -33, x1, 872, x2)

# rs1_val == -1125899906842625, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xfffbffffffffffff, 1024, x1, 880, x2)

# rs1_val != imm_val, rs1_val == 4096
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000001000, 7, x1, 888, x2)

# imm_val == 1, rs1_val == -67108865
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffffffffbffffff, 1, x1, 896, x2)

# rs1_val == 2097152, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000200000, 9, x1, 904, x2)
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


signature_x1_0:
    .fill 114*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
