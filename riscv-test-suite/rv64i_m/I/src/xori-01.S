
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

RVTEST_SIGBASE( x10,signature_x10_1)

# rs1 == rd, rs1==x14, rd==x14, rs1_val == imm_val, imm_val == 4, rs1_val > 0 and imm_val > 0, rs1_val == 4
# opcode: xori ; op1:x14; dest:x14; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( xori, x14, x14, 0x0, 0x0000000000000004, 4, x10, 0, x2)

# rs1 != rd, rs1==x11, rd==x19, rs1_val != imm_val, rs1_val == 262144
# opcode: xori ; op1:x11; dest:x19; op1val:0x0000000000040000;  immval:7
TEST_IMM_OP( xori, x19, x11, 0x40007, 0x0000000000040000, 7, x10, 8, x2)

# rs1==x1, rd==x17, rs1_val > 0 and imm_val < 0, rs1_val == 70368744177664
# opcode: xori ; op1:x1; dest:x17; op1val:0x0000400000000000;  immval:-7
TEST_IMM_OP( xori, x17, x1, 0xffffbffffffffff9, 0x0000400000000000, -7, x10, 16, x2)

# rs1==x25, rd==x16, rs1_val < 0 and imm_val > 0, rs1_val == -268435457
# opcode: xori ; op1:x25; dest:x16; op1val:0xffffffffefffffff;  immval:7
TEST_IMM_OP( xori, x16, x25, 0xffffffffeffffff8, 0xffffffffefffffff, 7, x10, 24, x2)

# rs1==x15, rd==x31, rs1_val < 0 and imm_val < 0, imm_val == -5, rs1_val == -72057594037927937
# opcode: xori ; op1:x15; dest:x31; op1val:0xfeffffffffffffff;  immval:-5
TEST_IMM_OP( xori, x31, x15, 0x100000000000004, 0xfeffffffffffffff, -5, x10, 32, x2)

# rs1==x22, rd==x15, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808
# opcode: xori ; op1:x22; dest:x15; op1val:0x8000000000000000;  immval:1023
TEST_IMM_OP( xori, x15, x22, 0x80000000000003ff, 0x8000000000000000, 1023, x10, 40, x2)

# rs1==x21, rd==x8, rs1_val == 0, imm_val == 1
# opcode: xori ; op1:x21; dest:x8; op1val:0x0000000000000000;  immval:1
TEST_IMM_OP( xori, x8, x21, 0x1, 0x0000000000000000, 1, x10, 48, x2)

# rs1==x18, rd==x12, rs1_val == (2**(xlen-1)-1), imm_val == 64, rs1_val == 9223372036854775807
# opcode: xori ; op1:x18; dest:x12; op1val:0x7fffffffffffffff;  immval:64
TEST_IMM_OP( xori, x12, x18, 0x7fffffffffffffbf, 0x7fffffffffffffff, 64, x10, 56, x2)

# rs1==x9, rd==x24, rs1_val == 1, 
# opcode: xori ; op1:x9; dest:x24; op1val:0x0000000000000001;  immval:6
TEST_IMM_OP( xori, x24, x9, 0x7, 0x0000000000000001, 6, x10, 64, x2)

# rs1==x5, rd==x25, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == 4194304
# opcode: xori ; op1:x5; dest:x25; op1val:0x0000000000400000;  immval:-2048
TEST_IMM_OP( xori, x25, x5, 0xffffffffffbff800, 0x0000000000400000, -2048, x10, 72, x2)

# rs1==x8, rd==x1, imm_val == 0, rs1_val == 4096
# opcode: xori ; op1:x8; dest:x1; op1val:0x0000000000001000;  immval:0
TEST_IMM_OP( xori, x1, x8, 0x1000, 0x0000000000001000, 0, x10, 80, x2)

# rs1==x6, rd==x27, imm_val == (2**(12-1)-1), imm_val == 2047, rs1_val == -5
# opcode: xori ; op1:x6; dest:x27; op1val:0xfffffffffffffffb;  immval:2047
TEST_IMM_OP( xori, x27, x6, 0xfffffffffffff804, 0xfffffffffffffffb, 2047, x10, 88, x2)

# rs1==x26, rd==x30, rs1_val == 2, 
# opcode: xori ; op1:x26; dest:x30; op1val:0x0000000000000002;  immval:-5
TEST_IMM_OP( xori, x30, x26, 0xfffffffffffffff9, 0x0000000000000002, -5, x10, 96, x2)

# rs1==x27, rd==x0, rs1_val == 8, imm_val == -9
# opcode: xori ; op1:x27; dest:x0; op1val:0x0000000000000008;  immval:-9
TEST_IMM_OP( xori, x0, x27, 0xffffffffffffffff, 0x0000000000000008, -9, x10, 104, x2)

# rs1==x13, rd==x20, rs1_val == 16, 
# opcode: xori ; op1:x13; dest:x20; op1val:0x0000000000000010;  immval:-4
TEST_IMM_OP( xori, x20, x13, 0xffffffffffffffec, 0x0000000000000010, -4, x10, 112, x2)

# rs1==x20, rd==x4, rs1_val == 32, 
# opcode: xori ; op1:x20; dest:x4; op1val:0x0000000000000020;  immval:7
TEST_IMM_OP( xori, x4, x20, 0x27, 0x0000000000000020, 7, x10, 120, x2)

# rs1==x7, rd==x13, rs1_val == 64, imm_val == -65
# opcode: xori ; op1:x7; dest:x13; op1val:0x0000000000000040;  immval:-65
TEST_IMM_OP( xori, x13, x7, 0xffffffffffffffff, 0x0000000000000040, -65, x10, 128, x2)

# rs1==x4, rd==x26, rs1_val == 128, 
# opcode: xori ; op1:x4; dest:x26; op1val:0x0000000000000080;  immval:-1
TEST_IMM_OP( xori, x26, x4, 0xffffffffffffff7f, 0x0000000000000080, -1, x10, 136, x2)

# rs1==x28, rd==x3, rs1_val == 256, 
# opcode: xori ; op1:x28; dest:x3; op1val:0x0000000000000100;  immval:-1024
TEST_IMM_OP( xori, x3, x28, 0xfffffffffffffd00, 0x0000000000000100, -1024, x10, 144, x2)

# rs1==x16, rd==x7, rs1_val == 512, imm_val == 2
# opcode: xori ; op1:x16; dest:x7; op1val:0x0000000000000200;  immval:2
TEST_IMM_OP( xori, x7, x16, 0x202, 0x0000000000000200, 2, x10, 152, x4)

# rs1==x31, rd==x6, rs1_val == 1024, imm_val == -2
# opcode: xori ; op1:x31; dest:x6; op1val:0x0000000000000400;  immval:-2
TEST_IMM_OP( xori, x6, x31, 0xfffffffffffffbfe, 0x0000000000000400, -2, x10, 160, x4)

# rs1==x24, rd==x2, rs1_val == 2048, imm_val == 1365
# opcode: xori ; op1:x24; dest:x2; op1val:0x0000000000000800;  immval:1365
TEST_IMM_OP( xori, x2, x24, 0xd55, 0x0000000000000800, 1365, x10, 168, x4)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x19, rd==x29, rs1_val == 8192, 
# opcode: xori ; op1:x19; dest:x29; op1val:0x0000000000002000;  immval:-6
TEST_IMM_OP( xori, x29, x19, 0xffffffffffffdffa, 0x0000000000002000, -6, x1, 0, x4)

# rs1==x29, rd==x21, rs1_val == 16384, 
# opcode: xori ; op1:x29; dest:x21; op1val:0x0000000000004000;  immval:-5
TEST_IMM_OP( xori, x21, x29, 0xffffffffffffbffb, 0x0000000000004000, -5, x1, 8, x4)

# rs1==x17, rd==x28, rs1_val == 32768, 
# opcode: xori ; op1:x17; dest:x28; op1val:0x0000000000008000;  immval:64
TEST_IMM_OP( xori, x28, x17, 0x8040, 0x0000000000008000, 64, x1, 16, x4)

# rs1==x2, rd==x22, rs1_val == 65536, imm_val == -257
# opcode: xori ; op1:x2; dest:x22; op1val:0x0000000000010000;  immval:-257
TEST_IMM_OP( xori, x22, x2, 0xfffffffffffefeff, 0x0000000000010000, -257, x1, 24, x4)

# rs1==x0, rd==x9, rs1_val == 131072, 
# opcode: xori ; op1:x0; dest:x9; op1val:0x0000000000020000;  immval:6
TEST_IMM_OP( xori, x9, x0, 0x20006, 0x0000000000020000, 6, x1, 32, x4)

# rs1==x10, rd==x18, rs1_val == 524288, 
# opcode: xori ; op1:x10; dest:x18; op1val:0x0000000000080000;  immval:7
TEST_IMM_OP( xori, x18, x10, 0x80007, 0x0000000000080000, 7, x1, 40, x4)

# rs1==x30, rd==x10, rs1_val == 1048576, imm_val == 32
# opcode: xori ; op1:x30; dest:x10; op1val:0x0000000000100000;  immval:32
TEST_IMM_OP( xori, x10, x30, 0x100020, 0x0000000000100000, 32, x1, 48, x4)

# rs1==x3, rd==x11, rs1_val == 2097152, 
# opcode: xori ; op1:x3; dest:x11; op1val:0x0000000000200000;  immval:4
TEST_IMM_OP( xori, x11, x3, 0x200004, 0x0000000000200000, 4, x1, 56, x4)

# rs1==x23, rd==x5, rs1_val == 8388608, imm_val == -17
# opcode: xori ; op1:x23; dest:x5; op1val:0x0000000000800000;  immval:-17
TEST_IMM_OP( xori, x5, x23, 0xffffffffff7fffef, 0x0000000000800000, -17, x1, 64, x4)

# rs1==x12, rd==x23, rs1_val == 16777216, imm_val == 256
# opcode: xori ; op1:x12; dest:x23; op1val:0x0000000001000000;  immval:256
TEST_IMM_OP( xori, x23, x12, 0x1000100, 0x0000000001000000, 256, x1, 72, x4)

# rs1_val == 33554432, imm_val == 512
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:512
TEST_IMM_OP( xori, x11, x10, 0x2000200, 0x0000000002000000, 512, x1, 80, x4)

# rs1_val == 67108864, imm_val == -129
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0xfffffffffbffff7f, 0x0000000004000000, -129, x1, 88, x4)

# rs1_val == 134217728, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0xfffffffff7fffeff, 0x0000000008000000, -257, x1, 96, x4)

# rs1_val == 268435456, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:3
TEST_IMM_OP( xori, x11, x10, 0x10000003, 0x0000000010000000, 3, x1, 104, x4)

# rs1_val == 536870912, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:32
TEST_IMM_OP( xori, x11, x10, 0x20000020, 0x0000000020000000, 32, x1, 112, x4)

# rs1_val == 1073741824, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:0
TEST_IMM_OP( xori, x11, x10, 0x40000000, 0x0000000040000000, 0, x1, 120, x4)

# rs1_val == 2147483648, imm_val == -1366
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xffffffff7ffffaaa, 0x0000000080000000, -1366, x1, 128, x4)

# rs1_val == 4294967296, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:512
TEST_IMM_OP( xori, x11, x10, 0x100000200, 0x0000000100000000, 512, x1, 136, x4)

# rs1_val == 8589934592, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0x2000007ff, 0x0000000200000000, 2047, x1, 144, x4)

# rs1_val == 17179869184, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:64
TEST_IMM_OP( xori, x11, x10, 0x400000040, 0x0000000400000000, 64, x1, 152, x4)

# rs1_val == 34359738368, imm_val == -1025
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0xfffffff7fffffbff, 0x0000000800000000, -1025, x1, 160, x4)

# rs1_val == 68719476736, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x1000000002, 0x0000001000000000, 2, x1, 168, x4)

# rs1_val == 137438953472, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0xffffffdfffffffef, 0x0000002000000000, -17, x1, 176, x4)

# rs1_val == 274877906944, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:3
TEST_IMM_OP( xori, x11, x10, 0x4000000003, 0x0000004000000000, 3, x1, 184, x4)

# rs1_val == 549755813888, imm_val == 1024
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0x8000000400, 0x0000008000000000, 1024, x1, 192, x4)

# rs1_val == 1099511627776, imm_val == -513
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xfffffefffffffdff, 0x0000010000000000, -513, x1, 200, x4)

# rs1_val == 2199023255552, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0xfffffdffffffffbf, 0x0000020000000000, -65, x1, 208, x4)

# rs1_val == 4398046511104, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xfffffbfffffffaaa, 0x0000040000000000, -1366, x1, 216, x4)

# rs1_val == 8796093022208, imm_val == -3
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0xfffff7fffffffffd, 0x0000080000000000, -3, x1, 224, x4)

# rs1_val == 17592186044416, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0xffffeffffffffffe, 0x0000100000000000, -2, x1, 232, x4)

# rs1_val == 35184372088832, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0xffffdffffffffeff, 0x0000200000000000, -257, x1, 240, x4)

# rs1_val == 140737488355328, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:1
TEST_IMM_OP( xori, x11, x10, 0x800000000001, 0x0000800000000000, 1, x1, 248, x4)

# rs1_val == 281474976710656, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:4
TEST_IMM_OP( xori, x11, x10, 0x1000000000004, 0x0001000000000000, 4, x1, 256, x4)

# rs1_val == 562949953421312, imm_val == -33
# opcode: xori ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0xfffdffffffffffdf, 0x0002000000000000, -33, x1, 264, x4)

# rs1_val == 1125899906842624, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xfffbfffffffffff7, 0x0004000000000000, -9, x1, 272, x4)

# rs1_val == 2251799813685248, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0xfff7fffffffffff6, 0x0008000000000000, -10, x1, 280, x4)

# rs1_val == 4503599627370496, imm_val == 8
# opcode: xori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:8
TEST_IMM_OP( xori, x11, x10, 0x10000000000008, 0x0010000000000000, 8, x1, 288, x4)

# rs1_val == 9007199254740992, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0xffdffffffffffff9, 0x0020000000000000, -7, x1, 296, x4)

# rs1_val == 18014398509481984, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xffbffffffffffaaa, 0x0040000000000000, -1366, x1, 304, x4)

# rs1_val == 36028797018963968, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:32
TEST_IMM_OP( xori, x11, x10, 0x80000000000020, 0x0080000000000000, 32, x1, 312, x4)

# rs1_val == 72057594037927936, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:64
TEST_IMM_OP( xori, x11, x10, 0x100000000000040, 0x0100000000000000, 64, x1, 320, x4)

# rs1_val == 144115188075855872, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x200000000000002, 0x0200000000000000, 2, x1, 328, x4)

# rs1_val == 288230376151711744, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xfbfffffffffffdff, 0x0400000000000000, -513, x1, 336, x4)

# rs1_val == 576460752303423488, imm_val == 128
# opcode: xori ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:128
TEST_IMM_OP( xori, x11, x10, 0x800000000000080, 0x0800000000000000, 128, x1, 344, x4)

# rs1_val == 1152921504606846976, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:5
TEST_IMM_OP( xori, x11, x10, 0x1000000000000005, 0x1000000000000000, 5, x1, 352, x4)

# rs1_val == 2305843009213693952, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:7
TEST_IMM_OP( xori, x11, x10, 0x2000000000000007, 0x2000000000000000, 7, x1, 360, x4)

# rs1_val == 4611686018427387904, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:5
TEST_IMM_OP( xori, x11, x10, 0x4000000000000005, 0x4000000000000000, 5, x1, 368, x4)

# rs1_val == -2251799813685249, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xfff7ffffffffffdf, 0xfff7ffffffffffff, 32, x1, 376, x4)

# rs1_val == -4503599627370497, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xffeffffffffffff7, 0xffefffffffffffff, 8, x1, 384, x4)

# rs1_val == -9007199254740993, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x20000000000003, 0xffdfffffffffffff, -4, x1, 392, x4)

# rs1_val == -18014398509481985, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xffbffffffffffc00, 0xffbfffffffffffff, 1023, x1, 400, x4)

# rs1_val == -36028797018963969, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0x80000000000007, 0xff7fffffffffffff, -8, x1, 408, x4)

# rs1_val == -144115188075855873, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xfdfffffffffffff6, 0xfdffffffffffffff, 9, x1, 416, x4)

# rs1_val == -288230376151711745, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xfbffffffffffff7f, 0xfbffffffffffffff, 128, x1, 424, x4)

# rs1_val == -576460752303423489, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xf7ffffffffffffbf, 0xf7ffffffffffffff, 64, x1, 432, x4)

# rs1_val == -1152921504606846977, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0x1000000000000006, 0xefffffffffffffff, -7, x1, 440, x4)

# rs1_val == -2305843009213693953, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x2000000000000002, 0xdfffffffffffffff, -3, x1, 448, x4)

# rs1_val == -4611686018427387905, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xbfffffffffffff7f, 0xbfffffffffffffff, 128, x1, 456, x4)

# rs1_val == 6148914691236517205, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0xaaaaaaaaaaaaaaad, 0x5555555555555555, -8, x1, 464, x4)

# rs1_val == -6148914691236517206, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xaaaaaaaaaaaaad55, 0xaaaaaaaaaaaaaaaa, 2047, x1, 472, x4)

# imm_val == 16, rs1_val == -16385
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffbfef, 0xffffffffffffbfff, 16, x1, 480, x4)

# rs1_val == -2, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffc01, 0xfffffffffffffffe, 1023, x1, 488, x4)

# rs1_val == -3, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0x2, 0xfffffffffffffffd, -1, x1, 496, x4)

# rs1_val == -9, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x0, 0xfffffffffffffff7, -9, x1, 504, x4)

# rs1_val == -17, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0x7ef, 0xffffffffffffffef, -2048, x1, 512, x4)

# rs1_val == -33, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0x60, 0xffffffffffffffdf, -65, x1, 520, x4)

# rs1_val == -65, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0x0, 0xffffffffffffffbf, -65, x1, 528, x4)

# rs1_val == -129, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0x86, 0xffffffffffffff7f, -7, x1, 536, x4)

# rs1_val == -257, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x102, 0xfffffffffffffeff, -3, x1, 544, x4)

# rs1_val == -513, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:2
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffdfd, 0xfffffffffffffdff, 2, x1, 552, x4)

# rs1_val == -1025, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:5
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffbfa, 0xfffffffffffffbff, 5, x1, 560, x4)

# rs1_val == -2049, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffff7bf, 0xfffffffffffff7ff, 64, x1, 568, x4)

# rs1_val == -4097, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:6
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffeff9, 0xffffffffffffefff, 6, x1, 576, x4)

# rs1_val == -8193, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0x2555, 0xffffffffffffdfff, -1366, x1, 584, x4)

# rs1_val == -32769, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0x87ff, 0xffffffffffff7fff, -2048, x1, 592, x4)

# rs1_val == -65537, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffef800, 0xfffffffffffeffff, 2047, x1, 600, x4)

# rs1_val == -131073, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x20005, 0xfffffffffffdffff, -6, x1, 608, x4)

# rs1_val == -262145, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffbffff, 0xfffffffffffbffff, 0, x1, 616, x4)

# rs1_val == -524289, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xfffffffffff7fffb, 0xfffffffffff7ffff, 4, x1, 624, x4)

# rs1_val == -1048577, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x100002, 0xffffffffffefffff, -3, x1, 632, x4)

# rs1_val == -2097153, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xffffffffffdfffdf, 0xffffffffffdfffff, 32, x1, 640, x4)

# rs1_val == -4194305, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x400009, 0xffffffffffbfffff, -10, x1, 648, x4)

# rs1_val == -8388609, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x800080, 0xffffffffff7fffff, -129, x1, 656, x4)

# rs1_val == -16777217, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0x1000004, 0xfffffffffeffffff, -5, x1, 664, x4)

# rs1_val == -33554433, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xfffffffffdffffff, 0xfffffffffdffffff, 0, x1, 672, x4)

# rs1_val == -67108865, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xfffffffffbfffaaa, 0xfffffffffbffffff, 1365, x1, 680, x4)

# rs1_val == -134217729, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x8000001, 0xfffffffff7ffffff, -2, x1, 688, x4)

# rs1_val == -536870913, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xffffffffdffff800, 0xffffffffdfffffff, 2047, x1, 696, x4)

# rs1_val == -1073741825, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xffffffffbfffff7f, 0xffffffffbfffffff, 128, x1, 704, x4)

# rs1_val == -2147483649, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0x80000004, 0xffffffff7fffffff, -5, x1, 712, x4)

# rs1_val == -4294967297, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x100000002, 0xfffffffeffffffff, -3, x1, 720, x4)

# rs1_val == -8589934593, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x200000009, 0xfffffffdffffffff, -10, x1, 728, x4)

# rs1_val == -17179869185, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:2
TEST_IMM_OP( xori, x11, x10, 0xfffffffbfffffffd, 0xfffffffbffffffff, 2, x1, 736, x4)

# rs1_val == -34359738369, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xfffffff7fffffeff, 0xfffffff7ffffffff, 256, x1, 744, x4)

# rs1_val == -68719476737, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xffffffeffffffff7, 0xffffffefffffffff, 8, x1, 752, x4)

# rs1_val == -137438953473, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xffffffdffffffaaa, 0xffffffdfffffffff, 1365, x1, 760, x4)

# rs1_val == -274877906945, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0x4000000040, 0xffffffbfffffffff, -65, x1, 768, x4)

# rs1_val == -549755813889, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x8000000080, 0xffffff7fffffffff, -129, x1, 776, x4)

# rs1_val == -1099511627777, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x10000000001, 0xfffffeffffffffff, -2, x1, 784, x4)

# rs1_val == -2199023255553, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0x200000007ff, 0xfffffdffffffffff, -2048, x1, 792, x4)

# rs1_val == -4398046511105, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x40000000080, 0xfffffbffffffffff, -129, x1, 800, x4)

# rs1_val == -8796093022209, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xfffff7fffffffff6, 0xfffff7ffffffffff, 9, x1, 808, x4)

# rs1_val == -17592186044417, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0x100000000006, 0xffffefffffffffff, -7, x1, 816, x4)

# rs1_val == -35184372088833, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0x200000000555, 0xffffdfffffffffff, -1366, x1, 824, x4)

# rs1_val == -70368744177665, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xffffbffffffffbff, 0xffffbfffffffffff, 1024, x1, 832, x4)

# rs1_val == -140737488355329, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0x800000000010, 0xffff7fffffffffff, -17, x1, 840, x4)

# rs1_val == -281474976710657, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x1000000000200, 0xfffeffffffffffff, -513, x1, 848, x4)

# rs1_val == -562949953421313, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:3
TEST_IMM_OP( xori, x11, x10, 0xfffdfffffffffffc, 0xfffdffffffffffff, 3, x1, 856, x4)

# rs1_val == -1125899906842625, 
# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0x4000000000100, 0xfffbffffffffffff, -257, x1, 864, x4)

# rs1_val == imm_val, imm_val == 4, rs1_val > 0 and imm_val > 0, rs1_val == 4
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( xori, x11, x10, 0x0, 0x0000000000000004, 4, x1, 872, x4)

# rs1_val == 8, imm_val == -9
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000000008;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffffff, 0x0000000000000008, -9, x1, 880, x4)

# rs1_val == 131072, 
# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:6
TEST_IMM_OP( xori, x11, x10, 0x20006, 0x0000000000020000, 6, x1, 888, x4)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


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
