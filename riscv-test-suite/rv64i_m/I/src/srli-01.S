
#This assembly file tests the srli instruction of the RISC-V I extension for the srli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srli)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 != rd, rs1==x24, rd==x14, rs1_val < 0 and imm_val > 0 and imm_val < xlen, imm_val == 2
# opcode: srli ; op1:x24; dest:x14; op1val:0xfffffffffffffff9;  immval:2
TEST_IMM_OP( srli, x14, x24, 0x3ffffffe, 0xfffffffffffffff9, 2, x2, 0, x9)

# rs1 == rd, rs1==x25, rd==x25, rs1_val > 0 and imm_val > 0 and imm_val < xlen, 
# opcode: srli ; op1:x25; dest:x25; op1val:0x0000000000000007;  immval:6
TEST_IMM_OP( srli, x25, x25, 0x0, 0x0000000000000007, 6, x2, 8, x9)

# rs1==x8, rd==x0, rs1_val < 0 and imm_val == 0, rs1_val == -4194305
# opcode: srli ; op1:x8; dest:x0; op1val:0xffffffffffbfffff;  immval:0
TEST_IMM_OP( srli, x0, x8, 0xffbfffff, 0xffffffffffbfffff, 0, x2, 16, x9)

# rs1==x17, rd==x29, rs1_val > 0 and imm_val == 0, rs1_val == 128
# opcode: srli ; op1:x17; dest:x29; op1val:0x0000000000000080;  immval:0
TEST_IMM_OP( srli, x29, x17, 0x80, 0x0000000000000080, 0, x2, 24, x9)

# rs1==x0, rd==x3, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -8796093022209
# opcode: srli ; op1:x0; dest:x3; op1val:0xfffff7ffffffffff;  immval:63
TEST_IMM_OP( srli, x3, x0, 0x0, 0xfffff7ffffffffff, 63, x2, 32, x9)

# rs1==x10, rd==x27, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 18014398509481984
# opcode: srli ; op1:x10; dest:x27; op1val:0x0040000000000000;  immval:63
TEST_IMM_OP( srli, x27, x10, 0x0, 0x0040000000000000, 63, x2, 40, x9)

# rs1==x20, rd==x21, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 1, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, imm_val == 1
# opcode: srli ; op1:x20; dest:x21; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( srli, x21, x20, 0x0, 0x0000000000000001, 1, x2, 48, x9)

# rs1==x26, rd==x18, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -9223372036854775808, imm_val == 59
# opcode: srli ; op1:x26; dest:x18; op1val:0x8000000000000000;  immval:59
TEST_IMM_OP( srli, x18, x26, 0x0, 0x8000000000000000, 59, x2, 56, x9)

# rs1==x31, rd==x24, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srli ; op1:x31; dest:x24; op1val:0x0000000000000000;  immval:18
TEST_IMM_OP( srli, x24, x31, 0x0, 0x0000000000000000, 18, x2, 64, x9)

# rs1==x15, rd==x6, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 9223372036854775807, imm_val == 4
# opcode: srli ; op1:x15; dest:x6; op1val:0x7fffffffffffffff;  immval:4
TEST_IMM_OP( srli, x6, x15, 0xfffffff, 0x7fffffffffffffff, 4, x2, 72, x9)

# rs1==x29, rd==x16, imm_val == 8, rs1_val == 2305843009213693952
# opcode: srli ; op1:x29; dest:x16; op1val:0x2000000000000000;  immval:8
TEST_IMM_OP( srli, x16, x29, 0x0, 0x2000000000000000, 8, x2, 80, x9)

# rs1==x7, rd==x15, imm_val == 16, rs1_val == 576460752303423488
# opcode: srli ; op1:x7; dest:x15; op1val:0x0800000000000000;  immval:16
TEST_IMM_OP( srli, x15, x7, 0x0, 0x0800000000000000, 16, x2, 88, x9)

# rs1==x3, rd==x1, imm_val == 32, rs1_val == 68719476736
# opcode: srli ; op1:x3; dest:x1; op1val:0x0000001000000000;  immval:32
TEST_IMM_OP( srli, x1, x3, 0x0, 0x0000001000000000, 32, x2, 96, x9)

# rs1==x6, rd==x22, imm_val == 62, rs1_val == 2048
# opcode: srli ; op1:x6; dest:x22; op1val:0x0000000000000800;  immval:62
TEST_IMM_OP( srli, x22, x6, 0x0, 0x0000000000000800, 62, x2, 104, x9)

# rs1==x5, rd==x23, imm_val == 61, 
# opcode: srli ; op1:x5; dest:x23; op1val:0x0000000000000005;  immval:61
TEST_IMM_OP( srli, x23, x5, 0x0, 0x0000000000000005, 61, x2, 112, x9)

# rs1==x4, rd==x11, imm_val == 55, rs1_val == 137438953472
# opcode: srli ; op1:x4; dest:x11; op1val:0x0000002000000000;  immval:55
TEST_IMM_OP( srli, x11, x4, 0x0, 0x0000002000000000, 55, x2, 120, x9)

# rs1==x27, rd==x5, imm_val == 47, rs1_val == -536870913
# opcode: srli ; op1:x27; dest:x5; op1val:0xffffffffdfffffff;  immval:47
TEST_IMM_OP( srli, x5, x27, 0x0, 0xffffffffdfffffff, 47, x2, 128, x9)

# rs1==x22, rd==x13, imm_val == 31, rs1_val == 16
# opcode: srli ; op1:x22; dest:x13; op1val:0x0000000000000010;  immval:31
TEST_IMM_OP( srli, x13, x22, 0x0, 0x0000000000000010, 31, x2, 136, x9)

# rs1==x28, rd==x8, imm_val == 21, rs1_val == 32768
# opcode: srli ; op1:x28; dest:x8; op1val:0x0000000000008000;  immval:21
TEST_IMM_OP( srli, x8, x28, 0x0, 0x0000000000008000, 21, x2, 144, x9)

# rs1==x14, rd==x12, imm_val == 42, rs1_val == 262144
# opcode: srli ; op1:x14; dest:x12; op1val:0x0000000000040000;  immval:42
TEST_IMM_OP( srli, x12, x14, 0x0, 0x0000000000040000, 42, x2, 152, x9)

# rs1==x21, rd==x17, rs1_val == 2, 
# opcode: srli ; op1:x21; dest:x17; op1val:0x0000000000000002;  immval:55
TEST_IMM_OP( srli, x17, x21, 0x0, 0x0000000000000002, 55, x2, 160, x5)

# rs1==x13, rd==x30, rs1_val == 4, 
# opcode: srli ; op1:x13; dest:x30; op1val:0x0000000000000004;  immval:59
TEST_IMM_OP( srli, x30, x13, 0x0, 0x0000000000000004, 59, x2, 168, x5)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x18, rd==x28, rs1_val == 8, 
# opcode: srli ; op1:x18; dest:x28; op1val:0x0000000000000008;  immval:12
TEST_IMM_OP( srli, x28, x18, 0x0, 0x0000000000000008, 12, x3, 0, x5)

# rs1==x16, rd==x19, rs1_val == 32, 
# opcode: srli ; op1:x16; dest:x19; op1val:0x0000000000000020;  immval:13
TEST_IMM_OP( srli, x19, x16, 0x0, 0x0000000000000020, 13, x3, 8, x5)

# rs1==x9, rd==x2, rs1_val == 64, 
# opcode: srli ; op1:x9; dest:x2; op1val:0x0000000000000040;  immval:9
TEST_IMM_OP( srli, x2, x9, 0x0, 0x0000000000000040, 9, x3, 16, x5)

# rs1==x11, rd==x20, rs1_val == 256, 
# opcode: srli ; op1:x11; dest:x20; op1val:0x0000000000000100;  immval:10
TEST_IMM_OP( srli, x20, x11, 0x0, 0x0000000000000100, 10, x3, 24, x5)

# rs1==x19, rd==x10, rs1_val == 512, 
# opcode: srli ; op1:x19; dest:x10; op1val:0x0000000000000200;  immval:7
TEST_IMM_OP( srli, x10, x19, 0x4, 0x0000000000000200, 7, x3, 32, x5)

# rs1==x1, rd==x31, rs1_val == 1024, 
# opcode: srli ; op1:x1; dest:x31; op1val:0x0000000000000400;  immval:31
TEST_IMM_OP( srli, x31, x1, 0x0, 0x0000000000000400, 31, x3, 40, x5)

# rs1==x2, rd==x9, rs1_val == 4096, 
# opcode: srli ; op1:x2; dest:x9; op1val:0x0000000000001000;  immval:8
TEST_IMM_OP( srli, x9, x2, 0x10, 0x0000000000001000, 8, x3, 48, x5)

# rs1==x30, rd==x4, rs1_val == 8192, 
# opcode: srli ; op1:x30; dest:x4; op1val:0x0000000000002000;  immval:61
TEST_IMM_OP( srli, x4, x30, 0x0, 0x0000000000002000, 61, x3, 56, x5)

# rs1==x12, rd==x26, rs1_val == 16384, 
# opcode: srli ; op1:x12; dest:x26; op1val:0x0000000000004000;  immval:62
TEST_IMM_OP( srli, x26, x12, 0x0, 0x0000000000004000, 62, x3, 64, x5)

# rs1==x23, rd==x7, rs1_val == 65536, 
# opcode: srli ; op1:x23; dest:x7; op1val:0x0000000000010000;  immval:6
TEST_IMM_OP( srli, x7, x23, 0x400, 0x0000000000010000, 6, x3, 72, x5)

# rs1_val == 131072, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x10, 0x0000000000020000, 13, x3, 80, x5)

# rs1_val == 524288, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000080000, 62, x3, 88, x5)

# rs1_val == 1048576, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000100000, 59, x3, 96, x5)

# rs1_val == 2097152, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x10, 0x0000000000200000, 17, x3, 104, x5)

# rs1_val == 4194304, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x100, 0x0000000000400000, 14, x3, 112, x5)

# rs1_val == 8388608, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x400, 0x0000000000800000, 13, x3, 120, x5)

# rs1_val == 16777216, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000001000000, 42, x3, 128, x5)

# rs1_val == 33554432, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x1000000, 0x0000000002000000, 1, x3, 136, x5)

# rs1_val == 67108864, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x800, 0x0000000004000000, 15, x3, 144, x5)

# rs1_val == 134217728, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x800, 0x0000000008000000, 16, x3, 152, x5)

# rs1_val == 268435456, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000010000000, 55, x3, 160, x5)

# rs1_val == 536870912, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x80000, 0x0000000020000000, 10, x3, 168, x5)

# rs1_val == 1073741824, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000040000000, 63, x3, 176, x5)

# rs1_val == 2147483648, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000080000000, 32, x3, 184, x5)

# rs1_val == 4294967296, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000100000000, 16, x3, 192, x5)

# rs1_val == 8589934592, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000200000000, 42, x3, 200, x5)

# rs1_val == 17179869184, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000400000000, 32, x3, 208, x5)

# rs1_val == 34359738368, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000800000000, 1, x3, 216, x5)

# rs1_val == 274877906944, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000004000000000, 16, x3, 224, x5)

# rs1_val == 549755813888, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000008000000000, 2, x3, 232, x5)

# rs1_val == 1099511627776, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000010000000000, 15, x3, 240, x5)

# rs1_val == 2199023255552, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000020000000000, 31, x3, 248, x5)

# rs1_val == 4398046511104, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000040000000000, 59, x3, 256, x5)

# rs1_val == 8796093022208, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000080000000000, 9, x3, 264, x5)

# rs1_val == 17592186044416, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000100000000000, 4, x3, 272, x5)

# rs1_val == 35184372088832, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000200000000000, 47, x3, 280, x5)

# rs1_val == 70368744177664, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000400000000000, 14, x3, 288, x5)

# rs1_val == 140737488355328, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000800000000000, 17, x3, 296, x5)

# rs1_val == 281474976710656, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0001000000000000, 8, x3, 304, x5)

# rs1_val == 562949953421312, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0002000000000000, 15, x3, 312, x5)

# rs1_val == 1125899906842624, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0004000000000000, 16, x3, 320, x5)

# rs1_val == 2251799813685248, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0008000000000000, 59, x3, 328, x5)

# rs1_val == 4503599627370496, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0010000000000000, 2, x3, 336, x5)

# rs1_val == 9007199254740992, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0020000000000000, 3, x3, 344, x5)

# rs1_val == 36028797018963968, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0080000000000000, 0, x3, 352, x5)

# rs1_val == 72057594037927936, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0100000000000000, 47, x3, 360, x5)

# rs1_val == 144115188075855872, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0200000000000000, 15, x3, 368, x5)

# rs1_val == 288230376151711744, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0400000000000000, 19, x3, 376, x5)

# rs1_val == 1152921504606846976, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x0, 0x1000000000000000, 8, x3, 384, x5)

# rs1_val == -549755813889, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fff, 0xffffff7fffffffff, 18, x3, 392, x5)

# rs1_val == -1099511627777, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffeffffffffff, 61, x3, 400, x5)

# rs1_val == -2199023255553, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xfffffdffffffffff, 11, x3, 408, x5)

# rs1_val == -4398046511105, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fff, 0xfffffbffffffffff, 18, x3, 416, x5)

# rs1_val == -17592186044417, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xffffefffffffffff, 17, x3, 424, x5)

# rs1_val == -35184372088833, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xffffdfffffffffff, 17, x3, 432, x5)

# rs1_val == -70368744177665, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xffffbfffffffffff, 16, x3, 440, x5)

# rs1_val == -140737488355329, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xffffffff, 0xffff7fffffffffff, 0, x3, 448, x5)

# rs1_val == -281474976710657, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7ffffff, 0xfffeffffffffffff, 5, x3, 456, x5)

# rs1_val == -562949953421313, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffdffffffffffff, 63, x3, 464, x5)

# rs1_val == -1125899906842625, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3fffff, 0xfffbffffffffffff, 10, x3, 472, x5)

# rs1_val == -2251799813685249, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ffff, 0xfff7ffffffffffff, 15, x3, 480, x5)

# rs1_val == -4503599627370497, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xffefffffffffffff, 31, x3, 488, x5)

# rs1_val == -9007199254740993, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3ffff, 0xffdfffffffffffff, 14, x3, 496, x5)

# rs1_val == -18014398509481985, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3fffff, 0xffbfffffffffffff, 10, x3, 504, x5)

# rs1_val == -36028797018963969, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0xff7fffffffffffff, 62, x3, 512, x5)

# rs1_val == -72057594037927937, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1fffffff, 0xfeffffffffffffff, 3, x3, 520, x5)

# rs1_val == -144115188075855873, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfdffffffffffffff, 32, x3, 528, x5)

# rs1_val == -288230376151711745, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3ffff, 0xfbffffffffffffff, 14, x3, 536, x5)

# rs1_val == -576460752303423489, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xf7ffffffffffffff, 16, x3, 544, x5)

# rs1_val == -1152921504606846977, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xefffffffffffffff, 11, x3, 552, x5)

# rs1_val == -2305843009213693953, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0xdfffffffffffffff, 55, x3, 560, x5)

# rs1_val == -4611686018427387905, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xbfffffffffffffff, 31, x3, 568, x5)

# rs1_val == 6148914691236517205, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x2aaaa, 0x5555555555555555, 13, x3, 576, x5)

# rs1_val == -6148914691236517206, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xaaaaa, 0xaaaaaaaaaaaaaaaa, 12, x3, 584, x5)

# rs1_val == 4611686018427387904, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x4000000000000000, 47, x3, 592, x5)

# rs1_val == -2, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fff, 0xfffffffffffffffe, 18, x3, 600, x5)

# rs1_val == -3, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3ffff, 0xfffffffffffffffd, 14, x3, 608, x5)

# rs1_val == -5, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ffff, 0xfffffffffffffffb, 15, x3, 616, x5)

# rs1_val == -9, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfffffffffffffff7, 31, x3, 624, x5)

# rs1_val == -17, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xffffffffffffffef, 21, x3, 632, x5)

# rs1_val == -33, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xffffffffffffffdf, 17, x3, 640, x5)

# rs1_val == -65, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7fffffd, 0xffffffffffffffbf, 5, x3, 648, x5)

# rs1_val == -129, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xffffffffffffff7f, 12, x3, 656, x5)

# rs1_val == -257, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xfffffffffffffeff, 11, x3, 664, x5)

# rs1_val == -513, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3fffff7, 0xfffffffffffffdff, 6, x3, 672, x5)

# rs1_val == -1025, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xfffffffffffffbff, 21, x3, 680, x5)

# rs1_val == -2049, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3ffffdff, 0xfffffffffffff7ff, 2, x3, 688, x5)

# rs1_val == -4097, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7ffff7, 0xffffffffffffefff, 9, x3, 696, x5)

# rs1_val == -8193, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xffffdfff, 0xffffffffffffdfff, 0, x3, 704, x5)

# rs1_val == -16385, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x7fffdfff, 0xffffffffffffbfff, 1, x3, 712, x5)

# rs1_val == -32769, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xffffffffffff7fff, 31, x3, 720, x5)

# rs1_val == -65537, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfffffffffffeffff, 19, x3, 728, x5)

# rs1_val == -131073, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3fff7fff, 0xfffffffffffdffff, 2, x3, 736, x5)

# rs1_val == -262145, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffbffff, 42, x3, 744, x5)

# rs1_val == -524289, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x7ffbf, 0xfffffffffff7ffff, 13, x3, 752, x5)

# rs1_val == -1048577, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3ffbf, 0xffffffffffefffff, 14, x3, 760, x5)

# rs1_val == -2097153, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1ffbff, 0xffffffffffdfffff, 11, x3, 768, x5)

# rs1_val == -8388609, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffff7fffff, 47, x3, 776, x5)

# rs1_val == -16777217, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffeffffff, 59, x3, 784, x5)

# rs1_val == -33554433, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3f7ffff, 0xfffffffffdffffff, 6, x3, 792, x5)

# rs1_val == -67108865, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7dffff, 0xfffffffffbffffff, 9, x3, 800, x5)

# rs1_val == -134217729, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7bfffff, 0xfffffffff7ffffff, 5, x3, 808, x5)

# rs1_val == -268435457, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1dff, 0xffffffffefffffff, 19, x3, 816, x5)

# rs1_val == -1073741825, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffbfffffff, 61, x3, 824, x5)

# rs1_val == -2147483649, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x7fffffff, 0xffffffff7fffffff, 0, x3, 832, x5)

# rs1_val == -4294967297, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfffffffeffffffff, 19, x3, 840, x5)

# rs1_val == -8589934593, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffdffffffff, 61, x3, 848, x5)

# rs1_val == -17179869185, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffbffffffff, 32, x3, 856, x5)

# rs1_val == -34359738369, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfffffff7ffffffff, 19, x3, 864, x5)

# rs1_val == -68719476737, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x7fffffff, 0xffffffefffffffff, 1, x3, 872, x5)

# rs1_val == -137438953473, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x7ffff, 0xffffffdfffffffff, 13, x3, 880, x5)

# rs1_val == -274877906945, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xffffffbfffffffff, 11, x3, 888, x5)

# rs1_val > 0 and imm_val > 0 and imm_val < xlen, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000000007;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000000007, 6, x3, 896, x5)

# rs1_val < 0 and imm_val == 0, rs1_val == -4194305
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xffbfffff, 0xffffffffffbfffff, 0, x3, 904, x5)

# rs1_val < 0 and imm_val == (xlen-1), rs1_val == -8796093022209
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffff7ffffffffff, 63, x3, 912, x5)
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
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x3_0:
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
