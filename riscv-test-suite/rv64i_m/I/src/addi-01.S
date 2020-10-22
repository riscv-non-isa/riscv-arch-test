
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

RVTEST_SIGBASE( x9,signature_x9_1)

# rs1 != rd, rs1==x24, rd==x2, rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 64, imm_val == 64
# opcode: addi ; op1:x24; dest:x2; op1val:0x0000000000000040;  immval:64
TEST_IMM_OP( addi, x2, x24, 0x80, 0x0000000000000040, 64, x9, 0, x10)

# rs1 == rd, rs1==x21, rd==x21, rs1_val != imm_val, rs1_val == 128, imm_val == 1
# opcode: addi ; op1:x21; dest:x21; op1val:0x0000000000000080;  immval:1
TEST_IMM_OP( addi, x21, x21, 0x81, 0x0000000000000080, 1, x9, 8, x10)

# rs1==x29, rd==x14, rs1_val > 0 and imm_val < 0, rs1_val == 576460752303423488
# opcode: addi ; op1:x29; dest:x14; op1val:0x0800000000000000;  immval:-6
TEST_IMM_OP( addi, x14, x29, 0x7fffffffffffffa, 0x0800000000000000, -6, x9, 16, x10)

# rs1==x3, rd==x22, rs1_val < 0 and imm_val > 0, imm_val == 256, rs1_val == -144115188075855873
# opcode: addi ; op1:x3; dest:x22; op1val:0xfdffffffffffffff;  immval:256
TEST_IMM_OP( addi, x22, x3, 0xfe000000000000ff, 0xfdffffffffffffff, 256, x9, 24, x10)

# rs1==x8, rd==x15, rs1_val < 0 and imm_val < 0, rs1_val == -549755813889, imm_val == -33
# opcode: addi ; op1:x8; dest:x15; op1val:0xffffff7fffffffff;  immval:-33
TEST_IMM_OP( addi, x15, x8, 0xffffff7fffffffde, 0xffffff7fffffffff, -33, x9, 32, x10)

# rs1==x19, rd==x13, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808, imm_val == 1365
# opcode: addi ; op1:x19; dest:x13; op1val:0x8000000000000000;  immval:1365
TEST_IMM_OP( addi, x13, x19, 0x8000000000000555, 0x8000000000000000, 1365, x9, 40, x10)

# rs1==x25, rd==x30, rs1_val == 0, 
# opcode: addi ; op1:x25; dest:x30; op1val:0x0000000000000000;  immval:-10
TEST_IMM_OP( addi, x30, x25, 0xfffffffffffffff6, 0x0000000000000000, -10, x9, 48, x10)

# rs1==x16, rd==x18, rs1_val == (2**(xlen-1)-1), imm_val == -65, rs1_val == 9223372036854775807
# opcode: addi ; op1:x16; dest:x18; op1val:0x7fffffffffffffff;  immval:-65
TEST_IMM_OP( addi, x18, x16, 0x7fffffffffffffbe, 0x7fffffffffffffff, -65, x9, 56, x10)

# rs1==x27, rd==x4, rs1_val == 1, 
# opcode: addi ; op1:x27; dest:x4; op1val:0x0000000000000001;  immval:-7
TEST_IMM_OP( addi, x4, x27, 0xfffffffffffffffa, 0x0000000000000001, -7, x9, 64, x10)

# rs1==x5, rd==x1, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -65
# opcode: addi ; op1:x5; dest:x1; op1val:0xffffffffffffffbf;  immval:-2048
TEST_IMM_OP( addi, x1, x5, 0xfffffffffffff7bf, 0xffffffffffffffbf, -2048, x9, 72, x10)

# rs1==x2, rd==x12, imm_val == 0, 
# opcode: addi ; op1:x2; dest:x12; op1val:0x0000000000000003;  immval:0
TEST_IMM_OP( addi, x12, x2, 0x3, 0x0000000000000003, 0, x9, 80, x10)

# rs1==x17, rd==x26, imm_val == (2**(12-1)-1), imm_val == 2047, rs1_val == -67108865
# opcode: addi ; op1:x17; dest:x26; op1val:0xfffffffffbffffff;  immval:2047
TEST_IMM_OP( addi, x26, x17, 0xfffffffffc0007fe, 0xfffffffffbffffff, 2047, x9, 88, x10)

# rs1==x12, rd==x23, rs1_val == 2, imm_val == 2
# opcode: addi ; op1:x12; dest:x23; op1val:0x0000000000000002;  immval:2
TEST_IMM_OP( addi, x23, x12, 0x4, 0x0000000000000002, 2, x9, 96, x10)

# rs1==x31, rd==x24, rs1_val == 4, 
# opcode: addi ; op1:x31; dest:x24; op1val:0x0000000000000004;  immval:9
TEST_IMM_OP( addi, x24, x31, 0xd, 0x0000000000000004, 9, x9, 104, x10)

# rs1==x1, rd==x11, rs1_val == 8, imm_val == 1024
# opcode: addi ; op1:x1; dest:x11; op1val:0x0000000000000008;  immval:1024
TEST_IMM_OP( addi, x11, x1, 0x408, 0x0000000000000008, 1024, x9, 112, x10)

# rs1==x14, rd==x16, rs1_val == 16, 
# opcode: addi ; op1:x14; dest:x16; op1val:0x0000000000000010;  immval:-8
TEST_IMM_OP( addi, x16, x14, 0x8, 0x0000000000000010, -8, x9, 120, x10)

# rs1==x13, rd==x19, rs1_val == 32, 
# opcode: addi ; op1:x13; dest:x19; op1val:0x0000000000000020;  immval:5
TEST_IMM_OP( addi, x19, x13, 0x25, 0x0000000000000020, 5, x9, 128, x10)

# rs1==x7, rd==x0, rs1_val == 256, imm_val == 16
# opcode: addi ; op1:x7; dest:x0; op1val:0x0000000000000100;  immval:16
TEST_IMM_OP( addi, x0, x7, 0x110, 0x0000000000000100, 16, x9, 136, x10)

# rs1==x11, rd==x5, rs1_val == 512, imm_val == 128
# opcode: addi ; op1:x11; dest:x5; op1val:0x0000000000000200;  immval:128
TEST_IMM_OP( addi, x5, x11, 0x280, 0x0000000000000200, 128, x9, 144, x10)

# rs1==x15, rd==x31, rs1_val == 1024, 
# opcode: addi ; op1:x15; dest:x31; op1val:0x0000000000000400;  immval:2047
TEST_IMM_OP( addi, x31, x15, 0xbff, 0x0000000000000400, 2047, x9, 152, x10)

# rs1==x6, rd==x3, rs1_val == 2048, imm_val == 4
# opcode: addi ; op1:x6; dest:x3; op1val:0x0000000000000800;  immval:4
TEST_IMM_OP( addi, x3, x6, 0x804, 0x0000000000000800, 4, x9, 160, x10)

# rs1==x18, rd==x10, rs1_val == 4096, imm_val == -17
# opcode: addi ; op1:x18; dest:x10; op1val:0x0000000000001000;  immval:-17
TEST_IMM_OP( addi, x10, x18, 0xfef, 0x0000000000001000, -17, x9, 168, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x23, rd==x29, rs1_val == 8192, 
# opcode: addi ; op1:x23; dest:x29; op1val:0x0000000000002000;  immval:64
TEST_IMM_OP( addi, x29, x23, 0x2040, 0x0000000000002000, 64, x1, 0, x2)

# rs1==x0, rd==x6, rs1_val == 16384, imm_val == 512
# opcode: addi ; op1:x0; dest:x6; op1val:0x0000000000004000;  immval:512
TEST_IMM_OP( addi, x6, x0, 0x4200, 0x0000000000004000, 512, x1, 8, x2)

# rs1==x10, rd==x20, rs1_val == 32768, 
# opcode: addi ; op1:x10; dest:x20; op1val:0x0000000000008000;  immval:0
TEST_IMM_OP( addi, x20, x10, 0x8000, 0x0000000000008000, 0, x1, 16, x2)

# rs1==x4, rd==x28, rs1_val == 65536, imm_val == -257
# opcode: addi ; op1:x4; dest:x28; op1val:0x0000000000010000;  immval:-257
TEST_IMM_OP( addi, x28, x4, 0xfeff, 0x0000000000010000, -257, x1, 24, x2)

# rs1==x26, rd==x17, rs1_val == 131072, 
# opcode: addi ; op1:x26; dest:x17; op1val:0x0000000000020000;  immval:1365
TEST_IMM_OP( addi, x17, x26, 0x20555, 0x0000000000020000, 1365, x1, 32, x2)

# rs1==x22, rd==x25, rs1_val == 262144, 
# opcode: addi ; op1:x22; dest:x25; op1val:0x0000000000040000;  immval:3
TEST_IMM_OP( addi, x25, x22, 0x40003, 0x0000000000040000, 3, x1, 40, x2)

# rs1==x9, rd==x27, rs1_val == 524288, 
# opcode: addi ; op1:x9; dest:x27; op1val:0x0000000000080000;  immval:7
TEST_IMM_OP( addi, x27, x9, 0x80007, 0x0000000000080000, 7, x1, 48, x2)

# rs1==x30, rd==x7, rs1_val == 1048576, 
# opcode: addi ; op1:x30; dest:x7; op1val:0x0000000000100000;  immval:-65
TEST_IMM_OP( addi, x7, x30, 0xfffbf, 0x0000000000100000, -65, x1, 56, x2)

# rs1==x28, rd==x9, rs1_val == 2097152, 
# opcode: addi ; op1:x28; dest:x9; op1val:0x0000000000200000;  immval:256
TEST_IMM_OP( addi, x9, x28, 0x200100, 0x0000000000200000, 256, x1, 64, x2)

# rs1==x20, rd==x8, rs1_val == 4194304, imm_val == -513
# opcode: addi ; op1:x20; dest:x8; op1val:0x0000000000400000;  immval:-513
TEST_IMM_OP( addi, x8, x20, 0x3ffdff, 0x0000000000400000, -513, x1, 72, x2)

# rs1_val == 8388608, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x8003ff, 0x0000000000800000, 1023, x1, 80, x2)

# rs1_val == 16777216, imm_val == -5
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xfffffb, 0x0000000001000000, -5, x1, 88, x2)

# rs1_val == 33554432, imm_val == -9
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0x1fffff7, 0x0000000002000000, -9, x1, 96, x2)

# rs1_val == 67108864, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:256
TEST_IMM_OP( addi, x11, x10, 0x4000100, 0x0000000004000000, 256, x1, 104, x2)

# rs1_val == 134217728, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:4
TEST_IMM_OP( addi, x11, x10, 0x8000004, 0x0000000008000000, 4, x1, 112, x2)

# rs1_val == 268435456, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:5
TEST_IMM_OP( addi, x11, x10, 0x10000005, 0x0000000010000000, 5, x1, 120, x2)

# rs1_val == 536870912, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0x1ffffffc, 0x0000000020000000, -4, x1, 128, x2)

# rs1_val == 1073741824, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x40000006, 0x0000000040000000, 6, x1, 136, x2)

# rs1_val == 2147483648, imm_val == 32
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x80000020, 0x0000000080000000, 32, x1, 144, x2)

# rs1_val == 4294967296, imm_val == -1025
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfffffbff, 0x0000000100000000, -1025, x1, 152, x2)

# rs1_val == 8589934592, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0x1fffffff7, 0x0000000200000000, -9, x1, 160, x2)

# rs1_val == 17179869184, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x400000020, 0x0000000400000000, 32, x1, 168, x2)

# rs1_val == 34359738368, imm_val == -129
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0x7ffffff7f, 0x0000000800000000, -129, x1, 176, x2)

# rs1_val == 68719476736, imm_val == -2
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xffffffffe, 0x0000001000000000, -2, x1, 184, x2)

# rs1_val == 137438953472, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:9
TEST_IMM_OP( addi, x11, x10, 0x2000000009, 0x0000002000000000, 9, x1, 192, x2)

# rs1_val == 274877906944, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0x3ffffffdff, 0x0000004000000000, -513, x1, 200, x2)

# rs1_val == 549755813888, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0x7fffffffdf, 0x0000008000000000, -33, x1, 208, x2)

# rs1_val == 1099511627776, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfffffffbff, 0x0000010000000000, -1025, x1, 216, x2)

# rs1_val == 2199023255552, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x20000000020, 0x0000020000000000, 32, x1, 224, x2)

# rs1_val == 4398046511104, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffbf, 0x0000040000000000, -65, x1, 232, x2)

# rs1_val == 8796093022208, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0x7ffffffff7f, 0x0000080000000000, -129, x1, 240, x2)

# rs1_val == 17592186044416, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xffffffffeff, 0x0000100000000000, -257, x1, 248, x2)

# rs1_val == 35184372088832, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffdff, 0x0000200000000000, -513, x1, 256, x2)

# rs1_val == 70368744177664, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffeff, 0x0000400000000000, -257, x1, 264, x2)

# rs1_val == 140737488355328, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x8000000003ff, 0x0000800000000000, 1023, x1, 272, x2)

# rs1_val == 281474976710656, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:9
TEST_IMM_OP( addi, x11, x10, 0x1000000000009, 0x0001000000000000, 9, x1, 280, x2)

# rs1_val == 562949953421312, imm_val == 8
# opcode: addi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:8
TEST_IMM_OP( addi, x11, x10, 0x2000000000008, 0x0002000000000000, 8, x1, 288, x2)

# rs1_val == 1125899906842624, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0x3fffffffffff8, 0x0004000000000000, -8, x1, 296, x2)

# rs1_val == 2251799813685248, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0x7ffffffffffbf, 0x0008000000000000, -65, x1, 304, x2)

# rs1_val == 4503599627370496, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffb, 0x0010000000000000, -5, x1, 312, x2)

# rs1_val == 9007199254740992, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffffffa, 0x0020000000000000, -6, x1, 320, x2)

# rs1_val == 18014398509481984, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x40000000000400, 0x0040000000000000, 1024, x1, 328, x2)

# rs1_val == 36028797018963968, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x80000000000006, 0x0080000000000000, 6, x1, 336, x2)

# rs1_val == 72057594037927936, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x1000000000007ff, 0x0100000000000000, 2047, x1, 344, x2)

# rs1_val == 144115188075855872, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x200000000000006, 0x0200000000000000, 6, x1, 352, x2)

# rs1_val == 288230376151711744, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:1
TEST_IMM_OP( addi, x11, x10, 0x400000000000001, 0x0400000000000000, 1, x1, 360, x2)

# rs1_val == 1152921504606846976, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:7
TEST_IMM_OP( addi, x11, x10, 0x1000000000000007, 0x1000000000000000, 7, x1, 368, x2)

# rs1_val == 2305843009213693952, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffffffff7, 0x2000000000000000, -9, x1, 376, x2)

# rs1_val == 4611686018427387904, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:3
TEST_IMM_OP( addi, x11, x10, 0x4000000000000003, 0x4000000000000000, 3, x1, 384, x2)

# rs1_val == -2251799813685249, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xfff7fffffffffff6, 0xfff7ffffffffffff, -9, x1, 392, x2)

# rs1_val == -4503599627370497, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xffefffffffffffde, 0xffefffffffffffff, -33, x1, 400, x2)

# rs1_val == -9007199254740993, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xffe000000000007f, 0xffdfffffffffffff, 128, x1, 408, x2)

# rs1_val == -18014398509481985, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xffbffffffffffffb, 0xffbfffffffffffff, -4, x1, 416, x2)

# rs1_val == -36028797018963969, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xff7ffffffffffbff, 0xff7fffffffffffff, -1024, x1, 424, x2)

# rs1_val == -72057594037927937, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xfefffffffffffff7, 0xfeffffffffffffff, -8, x1, 432, x2)

# rs1_val == -288230376151711745, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xfbfffffffffffff5, 0xfbffffffffffffff, -10, x1, 440, x2)

# rs1_val == -576460752303423489, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0xf800000000000554, 0xf7ffffffffffffff, 1365, x1, 448, x2)

# rs1_val == -1152921504606846977, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xeffffffffffffdfe, 0xefffffffffffffff, -513, x1, 456, x2)

# rs1_val == -2305843009213693953, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xe0000000000000ff, 0xdfffffffffffffff, 256, x1, 464, x2)

# rs1_val == -4611686018427387905, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xc00000000000000f, 0xbfffffffffffffff, 16, x1, 472, x2)

# rs1_val == 6148914691236517205, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x55555555555555d5, 0x5555555555555555, 128, x1, 480, x2)

# rs1_val == -6148914691236517206, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xaaaaaaaaaaaaaab2, 0xaaaaaaaaaaaaaaaa, 8, x1, 488, x2)

# imm_val == -3, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffffffffd, 0x2000000000000000, -3, x1, 496, x2)

# imm_val == -1366, rs1_val == -4294967297
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xfffffffefffffaa9, 0xfffffffeffffffff, -1366, x1, 504, x2)

# rs1_val == -2, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x3fe, 0xfffffffffffffffe, 1024, x1, 512, x2)

# rs1_val == -3, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff7fd, 0xfffffffffffffffd, -2048, x1, 520, x2)

# rs1_val == -5, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:7
TEST_IMM_OP( addi, x11, x10, 0x2, 0xfffffffffffffffb, 7, x1, 528, x2)

# rs1_val == -9, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffd6, 0xfffffffffffffff7, -33, x1, 536, x2)

# rs1_val == -17, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x6f, 0xffffffffffffffef, 128, x1, 544, x2)

# rs1_val == -33, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffe0, 0xffffffffffffffdf, 1, x1, 552, x2)

# rs1_val == -129, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffefe, 0xffffffffffffff7f, -129, x1, 560, x2)

# rs1_val == -257, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:32
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffff1f, 0xfffffffffffffeff, 32, x1, 568, x2)

# rs1_val == -513, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffdfc, 0xfffffffffffffdff, -3, x1, 576, x2)

# rs1_val == -1025, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffbfb, 0xfffffffffffffbff, -4, x1, 584, x2)

# rs1_val == -2049, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff807, 0xfffffffffffff7ff, 8, x1, 592, x2)

# rs1_val == -4097, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffe7ff, 0xffffffffffffefff, -2048, x1, 600, x2)

# rs1_val == -8193, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffdffc, 0xffffffffffffdfff, -3, x1, 608, x2)

# rs1_val == -16385, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffbfbe, 0xffffffffffffbfff, -65, x1, 616, x2)

# rs1_val == -32769, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xffffffffffff80ff, 0xffffffffffff7fff, 256, x1, 624, x2)

# rs1_val == -65537, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xffffffffffff007f, 0xfffffffffffeffff, 128, x1, 632, x2)

# rs1_val == -131073, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffdfff6, 0xfffffffffffdffff, -9, x1, 640, x2)

# rs1_val == -262145, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffbffee, 0xfffffffffffbffff, -17, x1, 648, x2)

# rs1_val == -524289, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xfffffffffff7fff5, 0xfffffffffff7ffff, -10, x1, 656, x2)

# rs1_val == -1048577, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xffffffffffeffffa, 0xffffffffffefffff, -5, x1, 664, x2)

# rs1_val == -2097153, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:32
TEST_IMM_OP( addi, x11, x10, 0xffffffffffe0001f, 0xffffffffffdfffff, 32, x1, 672, x2)

# rs1_val == -4194305, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0xffffffffffc007fe, 0xffffffffffbfffff, 2047, x1, 680, x2)

# rs1_val == -8388609, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0xffffffffff800554, 0xffffffffff7fffff, 1365, x1, 688, x2)

# rs1_val == -16777217, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xfffffffffefffffa, 0xfffffffffeffffff, -5, x1, 696, x2)

# rs1_val == -33554433, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xfffffffffdffff7e, 0xfffffffffdffffff, -129, x1, 704, x2)

# rs1_val == -134217729, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xfffffffff8000005, 0xfffffffff7ffffff, 6, x1, 712, x2)

# rs1_val == -268435457, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xffffffffeffffff7, 0xffffffffefffffff, -8, x1, 720, x2)

# rs1_val == -536870913, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xffffffffe0000003, 0xffffffffdfffffff, 4, x1, 728, x2)

# rs1_val == -1073741825, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0xffffffffc00003fe, 0xffffffffbfffffff, 1023, x1, 736, x2)

# rs1_val == -2147483649, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xffffffff7ffffffb, 0xffffffff7fffffff, -4, x1, 744, x2)

# rs1_val == -8589934593, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xfffffffdfffffff8, 0xfffffffdffffffff, -7, x1, 752, x2)

# rs1_val == -17179869185, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xfffffffbffffffee, 0xfffffffbffffffff, -17, x1, 760, x2)

# rs1_val == -34359738369, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xfffffff80000003f, 0xfffffff7ffffffff, 64, x1, 768, x2)

# rs1_val == -68719476737, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xffffffefffffffee, 0xffffffefffffffff, -17, x1, 776, x2)

# rs1_val == -137438953473, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xffffffdffffffffc, 0xffffffdfffffffff, -3, x1, 784, x2)

# rs1_val == -274877906945, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xffffffbffffffff8, 0xffffffbfffffffff, -7, x1, 792, x2)

# rs1_val == -1099511627777, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xffffff000000007f, 0xfffffeffffffffff, 128, x1, 800, x2)

# rs1_val == -2199023255553, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xfffffdffffffffbe, 0xfffffdffffffffff, -65, x1, 808, x2)

# rs1_val == -4398046511105, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfffffc0000000003, 0xfffffbffffffffff, 4, x1, 816, x2)

# rs1_val == -8796093022209, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfffff7fffffffbfe, 0xfffff7ffffffffff, -1025, x1, 824, x2)

# rs1_val == -17592186044417, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffefffffffffbe, 0xffffefffffffffff, -65, x1, 832, x2)

# rs1_val == -35184372088833, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0xffffe000000007fe, 0xffffdfffffffffff, 2047, x1, 840, x2)

# rs1_val == -70368744177665, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xffffbffffffffff9, 0xffffbfffffffffff, -6, x1, 848, x2)

# rs1_val == -140737488355329, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0xffff800000000554, 0xffff7fffffffffff, 1365, x1, 856, x2)

# rs1_val == -281474976710657, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0xffff0000000003fe, 0xfffeffffffffffff, 1023, x1, 864, x2)

# rs1_val == -562949953421313, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:512
TEST_IMM_OP( addi, x11, x10, 0xfffe0000000001ff, 0xfffdffffffffffff, 512, x1, 872, x2)

# rs1_val == -1125899906842625, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfffbfffffffff7ff, 0xfffbffffffffffff, -2048, x1, 880, x2)

# rs1_val != imm_val, rs1_val == 128, imm_val == 1
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000000080;  immval:1
TEST_IMM_OP( addi, x11, x10, 0x81, 0x0000000000000080, 1, x1, 888, x2)

# rs1_val == 256, imm_val == 16
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:16
TEST_IMM_OP( addi, x11, x10, 0x110, 0x0000000000000100, 16, x1, 896, x2)

# rs1_val == 16384, imm_val == 512
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x4200, 0x0000000000004000, 512, x1, 904, x2)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x9_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


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
