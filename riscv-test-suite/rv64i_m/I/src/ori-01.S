
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

RVTEST_SIGBASE( x16,signature_x16_1)

# rs1 == rd, rs1==x9, rd==x9, rs1_val == imm_val, rs1_val == 1, rs1_val > 0 and imm_val > 0, imm_val == 1
# opcode: ori ; op1:x9; dest:x9; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( ori, x9, x9, 0x1, 0x0000000000000001, 1, x16, 0, x19)

# rs1 != rd, rs1==x5, rd==x25, rs1_val != imm_val, rs1_val == 8, rs1_val > 0 and imm_val < 0, imm_val == -17
# opcode: ori ; op1:x5; dest:x25; op1val:0x0000000000000008;  immval:-17
TEST_IMM_OP( ori, x25, x5, 0xffffffffffffffef, 0x0000000000000008, -17, x16, 8, x19)

# rs1==x12, rd==x13, rs1_val < 0 and imm_val > 0, rs1_val == -17179869185
# opcode: ori ; op1:x12; dest:x13; op1val:0xfffffffbffffffff;  immval:1
TEST_IMM_OP( ori, x13, x12, 0xfffffffbffffffff, 0xfffffffbffffffff, 1, x16, 16, x19)

# rs1==x15, rd==x11, rs1_val < 0 and imm_val < 0, rs1_val == -131073, imm_val == -33
# opcode: ori ; op1:x15; dest:x11; op1val:0xfffffffffffdffff;  immval:-33
TEST_IMM_OP( ori, x11, x15, 0xffffffffffffffff, 0xfffffffffffdffff, -33, x16, 24, x19)

# rs1==x13, rd==x26, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808
# opcode: ori ; op1:x13; dest:x26; op1val:0x8000000000000000;  immval:-8
TEST_IMM_OP( ori, x26, x13, 0xfffffffffffffff8, 0x8000000000000000, -8, x16, 32, x19)

# rs1==x8, rd==x17, rs1_val == 0, imm_val == -2048, imm_val == (-2**(12-1))
# opcode: ori ; op1:x8; dest:x17; op1val:0x0000000000000000;  immval:-2048
TEST_IMM_OP( ori, x17, x8, 0xfffffffffffff800, 0x0000000000000000, -2048, x16, 40, x19)

# rs1==x27, rd==x0, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: ori ; op1:x27; dest:x0; op1val:0x7fffffffffffffff;  immval:-2048
TEST_IMM_OP( ori, x0, x27, 0xffffffffffffffff, 0x7fffffffffffffff, -2048, x16, 48, x19)

# rs1==x11, rd==x21, imm_val == 0, rs1_val == -67108865
# opcode: ori ; op1:x11; dest:x21; op1val:0xfffffffffbffffff;  immval:0
TEST_IMM_OP( ori, x21, x11, 0xfffffffffbffffff, 0xfffffffffbffffff, 0, x16, 56, x19)

# rs1==x23, rd==x8, imm_val == (2**(12-1)-1), imm_val == 2047, rs1_val == -1125899906842625
# opcode: ori ; op1:x23; dest:x8; op1val:0xfffbffffffffffff;  immval:2047
TEST_IMM_OP( ori, x8, x23, 0xfffbffffffffffff, 0xfffbffffffffffff, 2047, x16, 64, x19)

# rs1==x21, rd==x12, rs1_val == 2, imm_val == 32
# opcode: ori ; op1:x21; dest:x12; op1val:0x0000000000000002;  immval:32
TEST_IMM_OP( ori, x12, x21, 0x22, 0x0000000000000002, 32, x16, 72, x19)

# rs1==x10, rd==x2, rs1_val == 4, imm_val == -129
# opcode: ori ; op1:x10; dest:x2; op1val:0x0000000000000004;  immval:-129
TEST_IMM_OP( ori, x2, x10, 0xffffffffffffff7f, 0x0000000000000004, -129, x16, 80, x19)

# rs1==x7, rd==x1, rs1_val == 16, imm_val == -1025
# opcode: ori ; op1:x7; dest:x1; op1val:0x0000000000000010;  immval:-1025
TEST_IMM_OP( ori, x1, x7, 0xfffffffffffffbff, 0x0000000000000010, -1025, x16, 88, x19)

# rs1==x26, rd==x6, rs1_val == 32, imm_val == -9
# opcode: ori ; op1:x26; dest:x6; op1val:0x0000000000000020;  immval:-9
TEST_IMM_OP( ori, x6, x26, 0xfffffffffffffff7, 0x0000000000000020, -9, x16, 96, x19)

# rs1==x29, rd==x23, rs1_val == 64, imm_val == 16
# opcode: ori ; op1:x29; dest:x23; op1val:0x0000000000000040;  immval:16
TEST_IMM_OP( ori, x23, x29, 0x50, 0x0000000000000040, 16, x16, 104, x19)

# rs1==x14, rd==x24, rs1_val == 128, 
# opcode: ori ; op1:x14; dest:x24; op1val:0x0000000000000080;  immval:-4
TEST_IMM_OP( ori, x24, x14, 0xfffffffffffffffc, 0x0000000000000080, -4, x16, 112, x19)

# rs1==x28, rd==x29, rs1_val == 256, 
# opcode: ori ; op1:x28; dest:x29; op1val:0x0000000000000100;  immval:-4
TEST_IMM_OP( ori, x29, x28, 0xfffffffffffffffc, 0x0000000000000100, -4, x16, 120, x19)

# rs1==x3, rd==x27, rs1_val == 512, 
# opcode: ori ; op1:x3; dest:x27; op1val:0x0000000000000200;  immval:-10
TEST_IMM_OP( ori, x27, x3, 0xfffffffffffffff6, 0x0000000000000200, -10, x16, 128, x19)

# rs1==x4, rd==x14, rs1_val == 1024, imm_val == 4
# opcode: ori ; op1:x4; dest:x14; op1val:0x0000000000000400;  immval:4
TEST_IMM_OP( ori, x14, x4, 0x404, 0x0000000000000400, 4, x16, 136, x19)

# rs1==x20, rd==x7, rs1_val == 2048, imm_val == 8
# opcode: ori ; op1:x20; dest:x7; op1val:0x0000000000000800;  immval:8
TEST_IMM_OP( ori, x7, x20, 0x808, 0x0000000000000800, 8, x16, 144, x19)

# rs1==x18, rd==x5, rs1_val == 4096, imm_val == -1366
# opcode: ori ; op1:x18; dest:x5; op1val:0x0000000000001000;  immval:-1366
TEST_IMM_OP( ori, x5, x18, 0xfffffffffffffaaa, 0x0000000000001000, -1366, x16, 152, x19)

# rs1==x30, rd==x31, rs1_val == 8192, 
# opcode: ori ; op1:x30; dest:x31; op1val:0x0000000000002000;  immval:-17
TEST_IMM_OP( ori, x31, x30, 0xffffffffffffffef, 0x0000000000002000, -17, x16, 160, x19)
RVTEST_SIGBASE( x5,signature_x5_0)

# rs1==x31, rd==x30, rs1_val == 16384, 
# opcode: ori ; op1:x31; dest:x30; op1val:0x0000000000004000;  immval:-6
TEST_IMM_OP( ori, x30, x31, 0xfffffffffffffffa, 0x0000000000004000, -6, x5, 0, x7)

# rs1==x24, rd==x28, rs1_val == 32768, imm_val == 2
# opcode: ori ; op1:x24; dest:x28; op1val:0x0000000000008000;  immval:2
TEST_IMM_OP( ori, x28, x24, 0x8002, 0x0000000000008000, 2, x5, 8, x7)

# rs1==x22, rd==x3, rs1_val == 65536, 
# opcode: ori ; op1:x22; dest:x3; op1val:0x0000000000010000;  immval:-8
TEST_IMM_OP( ori, x3, x22, 0xfffffffffffffff8, 0x0000000000010000, -8, x5, 16, x7)

# rs1==x19, rd==x10, rs1_val == 131072, 
# opcode: ori ; op1:x19; dest:x10; op1val:0x0000000000020000;  immval:-6
TEST_IMM_OP( ori, x10, x19, 0xfffffffffffffffa, 0x0000000000020000, -6, x5, 24, x7)

# rs1==x2, rd==x19, rs1_val == 262144, 
# opcode: ori ; op1:x2; dest:x19; op1val:0x0000000000040000;  immval:5
TEST_IMM_OP( ori, x19, x2, 0x40005, 0x0000000000040000, 5, x5, 32, x7)

# rs1==x25, rd==x4, rs1_val == 524288, 
# opcode: ori ; op1:x25; dest:x4; op1val:0x0000000000080000;  immval:4
TEST_IMM_OP( ori, x4, x25, 0x80004, 0x0000000000080000, 4, x5, 40, x7)

# rs1==x6, rd==x18, rs1_val == 1048576, imm_val == 128
# opcode: ori ; op1:x6; dest:x18; op1val:0x0000000000100000;  immval:128
TEST_IMM_OP( ori, x18, x6, 0x100080, 0x0000000000100000, 128, x5, 48, x7)

# rs1==x1, rd==x16, rs1_val == 2097152, imm_val == 256
# opcode: ori ; op1:x1; dest:x16; op1val:0x0000000000200000;  immval:256
TEST_IMM_OP( ori, x16, x1, 0x200100, 0x0000000000200000, 256, x5, 56, x7)

# rs1==x16, rd==x15, rs1_val == 4194304, 
# opcode: ori ; op1:x16; dest:x15; op1val:0x0000000000400000;  immval:128
TEST_IMM_OP( ori, x15, x16, 0x400080, 0x0000000000400000, 128, x5, 64, x7)

# rs1==x17, rd==x20, rs1_val == 8388608, 
# opcode: ori ; op1:x17; dest:x20; op1val:0x0000000000800000;  immval:-33
TEST_IMM_OP( ori, x20, x17, 0xffffffffffffffdf, 0x0000000000800000, -33, x5, 72, x7)

# rs1==x0, rd==x22, rs1_val == 16777216, 
# opcode: ori ; op1:x0; dest:x22; op1val:0x0000000001000000;  immval:-1025
TEST_IMM_OP( ori, x22, x0, 0xfffffffffffffbff, 0x0000000001000000, -1025, x5, 80, x7)

# rs1_val == 33554432, imm_val == 512
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x2000200, 0x0000000002000000, 512, x5, 88, x7)

# rs1_val == 67108864, imm_val == -3
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffd, 0x0000000004000000, -3, x5, 96, x7)

# rs1_val == 134217728, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x80007ff, 0x0000000008000000, 2047, x5, 104, x7)

# rs1_val == 268435456, imm_val == 1365
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0x10000555, 0x0000000010000000, 1365, x5, 112, x7)

# rs1_val == 536870912, imm_val == -5
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffb, 0x0000000020000000, -5, x5, 120, x7)

# rs1_val == 1073741824, imm_val == -513
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffdff, 0x0000000040000000, -513, x5, 128, x7)

# rs1_val == 2147483648, imm_val == 1024
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0x80000400, 0x0000000080000000, 1024, x5, 136, x7)

# rs1_val == 4294967296, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:4
TEST_IMM_OP( ori, x11, x10, 0x100000004, 0x0000000100000000, 4, x5, 144, x7)

# rs1_val == 8589934592, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffd, 0x0000000200000000, -3, x5, 152, x7)

# rs1_val == 17179869184, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x400000006, 0x0000000400000000, 6, x5, 160, x7)

# rs1_val == 34359738368, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff9, 0x0000000800000000, -7, x5, 168, x7)

# rs1_val == 68719476736, imm_val == -257
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffeff, 0x0000001000000000, -257, x5, 176, x7)

# rs1_val == 137438953472, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x2000000100, 0x0000002000000000, 256, x5, 184, x7)

# rs1_val == 274877906944, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x40000003ff, 0x0000004000000000, 1023, x5, 192, x7)

# rs1_val == 549755813888, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:9
TEST_IMM_OP( ori, x11, x10, 0x8000000009, 0x0000008000000000, 9, x5, 200, x7)

# rs1_val == 1099511627776, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x10000000002, 0x0000010000000000, 2, x5, 208, x7)

# rs1_val == 2199023255552, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:128
TEST_IMM_OP( ori, x11, x10, 0x20000000080, 0x0000020000000000, 128, x5, 216, x7)

# rs1_val == 4398046511104, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:7
TEST_IMM_OP( ori, x11, x10, 0x40000000007, 0x0000040000000000, 7, x5, 224, x7)

# rs1_val == 8796093022208, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:3
TEST_IMM_OP( ori, x11, x10, 0x80000000003, 0x0000080000000000, 3, x5, 232, x7)

# rs1_val == 17592186044416, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffc, 0x0000100000000000, -4, x5, 240, x7)

# rs1_val == 35184372088832, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:0
TEST_IMM_OP( ori, x11, x10, 0x200000000000, 0x0000200000000000, 0, x5, 248, x7)

# rs1_val == 70368744177664, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffb, 0x0000400000000000, -5, x5, 256, x7)

# rs1_val == 140737488355328, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffd, 0x0000800000000000, -3, x5, 264, x7)

# rs1_val == 281474976710656, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:9
TEST_IMM_OP( ori, x11, x10, 0x1000000000009, 0x0001000000000000, 9, x5, 272, x7)

# rs1_val == 562949953421312, imm_val == -2
# opcode: ori ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffe, 0x0002000000000000, -2, x5, 280, x7)

# rs1_val == 1125899906842624, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffc00, 0x0004000000000000, -1024, x5, 288, x7)

# rs1_val == 2251799813685248, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x8000000000200, 0x0008000000000000, 512, x5, 296, x7)

# rs1_val == 4503599627370496, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffd, 0x0010000000000000, -3, x5, 304, x7)

# rs1_val == 9007199254740992, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:4
TEST_IMM_OP( ori, x11, x10, 0x20000000000004, 0x0020000000000000, 4, x5, 312, x7)

# rs1_val == 18014398509481984, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff6, 0x0040000000000000, -10, x5, 320, x7)

# rs1_val == 36028797018963968, imm_val == -65
# opcode: ori ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0x0080000000000000, -65, x5, 328, x7)

# rs1_val == 72057594037927936, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x100000000000100, 0x0100000000000000, 256, x5, 336, x7)

# rs1_val == 144115188075855872, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffa, 0x0200000000000000, -6, x5, 344, x7)

# rs1_val == 288230376151711744, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff8, 0x0400000000000000, -8, x5, 352, x7)

# rs1_val == 576460752303423488, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0x0800000000000000, -1, x5, 360, x7)

# rs1_val == 1152921504606846976, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffdf, 0x1000000000000000, -33, x5, 368, x7)

# rs1_val == 2305843009213693952, imm_val == 64
# opcode: ori ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:64
TEST_IMM_OP( ori, x11, x10, 0x2000000000000040, 0x2000000000000000, 64, x5, 376, x7)

# rs1_val == -2251799813685249, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfff7ffffffffffff, -65, x5, 384, x7)

# rs1_val == -4503599627370497, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xffefffffffffffff, 0xffefffffffffffff, 512, x5, 392, x7)

# rs1_val == -9007199254740993, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xffdfffffffffffff, 0xffdfffffffffffff, 5, x5, 400, x7)

# rs1_val == -18014398509481985, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xffbfffffffffffff, 0xffbfffffffffffff, 0, x5, 408, x7)

# rs1_val == -36028797018963969, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xff7fffffffffffff, 0xff7fffffffffffff, 7, x5, 416, x7)

# rs1_val == -72057594037927937, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfeffffffffffffff, -6, x5, 424, x7)

# rs1_val == -144115188075855873, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfdffffffffffffff, -1, x5, 432, x7)

# rs1_val == -288230376151711745, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfbffffffffffffff, -10, x5, 440, x7)

# rs1_val == -576460752303423489, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xf7ffffffffffffff, 0xf7ffffffffffffff, 1023, x5, 448, x7)

# rs1_val == -1152921504606846977, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xefffffffffffffff, -1025, x5, 456, x7)

# rs1_val == -2305843009213693953, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xdfffffffffffffff, 0xdfffffffffffffff, 2, x5, 464, x7)

# rs1_val == -4611686018427387905, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xbfffffffffffffff, 0xbfffffffffffffff, 128, x5, 472, x7)

# rs1_val == 6148914691236517205, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffd55, 0x5555555555555555, -2048, x5, 480, x7)

# rs1_val == -6148914691236517206, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xaaaaaaaaaaaaabff, 0xaaaaaaaaaaaaaaaa, 1023, x5, 488, x7)

# rs1_val == 4611686018427387904, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:4
TEST_IMM_OP( ori, x11, x10, 0x4000000000000004, 0x4000000000000000, 4, x5, 496, x7)

# rs1_val == -2, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffe, -17, x5, 504, x7)

# rs1_val == -3, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffd, 1023, x5, 512, x7)

# rs1_val == -5, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffb, -17, x5, 520, x7)

# rs1_val == -9, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0xfffffffffffffff7, 2, x5, 528, x7)

# rs1_val == -17, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffef, -9, x5, 536, x7)

# rs1_val == -33, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffdf, -8, x5, 544, x7)

# rs1_val == -65, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0xffffffffffffffbf, 4, x5, 552, x7)

# rs1_val == -129, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffff7f, -1025, x5, 560, x7)

# rs1_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffeff, 256, x5, 568, x7)

# rs1_val == -513, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffdff, -3, x5, 576, x7)

# rs1_val == -1025, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffbff, -1024, x5, 584, x7)

# rs1_val == -2049, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffff7ff, 0xfffffffffffff7ff, 7, x5, 592, x7)

# rs1_val == -4097, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffefff, -10, x5, 600, x7)

# rs1_val == -8193, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffdfff, -1024, x5, 608, x7)

# rs1_val == -16385, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffbfff, -1366, x5, 616, x7)

# rs1_val == -32769, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffff7fff, 0xffffffffffff7fff, 1, x5, 624, x7)

# rs1_val == -65537, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffeffff, -2, x5, 632, x7)

# rs1_val == -262145, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffbffff, -2, x5, 640, x7)

# rs1_val == -524289, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffff7ffff, -513, x5, 648, x7)

# rs1_val == -1048577, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffefffff, 0xffffffffffefffff, 4, x5, 656, x7)

# rs1_val == -2097153, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xffffffffffdfffff, 0xffffffffffdfffff, 512, x5, 664, x7)

# rs1_val == -4194305, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:32
TEST_IMM_OP( ori, x11, x10, 0xffffffffffbfffff, 0xffffffffffbfffff, 32, x5, 672, x7)

# rs1_val == -8388609, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xffffffffff7fffff, 0xffffffffff7fffff, 0, x5, 680, x7)

# rs1_val == -16777217, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xfffffffffeffffff, 0xfffffffffeffffff, 1, x5, 688, x7)

# rs1_val == -33554433, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0xfffffffffdffffff, 0xfffffffffdffffff, 1365, x5, 696, x7)

# rs1_val == -134217729, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xfffffffff7ffffff, 0xfffffffff7ffffff, 1023, x5, 704, x7)

# rs1_val == -268435457, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xffffffffefffffff, 0xffffffffefffffff, 128, x5, 712, x7)

# rs1_val == -536870913, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffdfffffff, -1366, x5, 720, x7)

# rs1_val == -1073741825, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffbfffffff, -513, x5, 728, x7)

# rs1_val == -2147483649, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffff7fffffff, -7, x5, 736, x7)

# rs1_val == -4294967297, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffeffffffff, -6, x5, 744, x7)

# rs1_val == -8589934593, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffdffffffff, -7, x5, 752, x7)

# rs1_val == -34359738369, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:6
TEST_IMM_OP( ori, x11, x10, 0xfffffff7ffffffff, 0xfffffff7ffffffff, 6, x5, 760, x7)

# rs1_val == -68719476737, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffefffffffff, -1025, x5, 768, x7)

# rs1_val == -137438953473, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffdfffffffff, -65, x5, 776, x7)

# rs1_val == -274877906945, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffbfffffffff, -17, x5, 784, x7)

# rs1_val == -549755813889, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffffff7fffffffff, 0xffffff7fffffffff, 8, x5, 792, x7)

# rs1_val == -1099511627777, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xfffffeffffffffff, 0xfffffeffffffffff, 2047, x5, 800, x7)

# rs1_val == -2199023255553, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffdffffffffff, -4, x5, 808, x7)

# rs1_val == -4398046511105, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xfffffbffffffffff, 0xfffffbffffffffff, 4, x5, 816, x7)

# rs1_val == -8796093022209, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffff7ffffffffff, -2048, x5, 824, x7)

# rs1_val == -17592186044417, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffefffffffffff, -1025, x5, 832, x7)

# rs1_val == -35184372088833, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffffdfffffffffff, 0xffffdfffffffffff, 8, x5, 840, x7)

# rs1_val == -70368744177665, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffbfffffffffff, -17, x5, 848, x7)

# rs1_val == -140737488355329, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffff7fffffffffff, -8, x5, 856, x7)

# rs1_val == -281474976710657, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:16
TEST_IMM_OP( ori, x11, x10, 0xfffeffffffffffff, 0xfffeffffffffffff, 16, x5, 864, x7)

# rs1_val == -562949953421313, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffdffffffffffff, -17, x5, 872, x7)

# rs1_val == imm_val, rs1_val == 1, rs1_val > 0 and imm_val > 0, imm_val == 1
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( ori, x11, x10, 0x1, 0x0000000000000001, 1, x5, 880, x7)

# rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: ori ; op1:x10; dest:x11; op1val:0x7fffffffffffffff;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0x7fffffffffffffff, -2048, x5, 888, x7)

# rs1_val == 16777216, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0x0000000001000000, -1025, x5, 896, x7)
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

signature_x16_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x16_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 113*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
