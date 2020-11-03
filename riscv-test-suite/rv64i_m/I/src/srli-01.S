
#This assembly file tests the srli instruction of the RISC-V I extension for the srli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srli)

RVTEST_SIGBASE( x16,signature_x16_1)

# rs1 == rd, rs1==x5, rd==x5, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -2199023255553, imm_val == 16
# opcode: srli ; op1:x5; dest:x5; op1val:0xfffffdffffffffff;  immval:16
TEST_IMM_OP( srli, x5, x5, 0xffff, 0xfffffdffffffffff, 16, x16, 0, x3)

# rs1 != rd, rs1==x22, rd==x18, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 17179869184, imm_val == 2
# opcode: srli ; op1:x22; dest:x18; op1val:0x0000000400000000;  immval:2
TEST_IMM_OP( srli, x18, x22, 0x0, 0x0000000400000000, 2, x16, 8, x3)

# rs1==x24, rd==x7, rs1_val < 0 and imm_val == 0, rs1_val == -65
# opcode: srli ; op1:x24; dest:x7; op1val:0xffffffffffffffbf;  immval:0
TEST_IMM_OP( srli, x7, x24, 0xffffffbf, 0xffffffffffffffbf, 0, x16, 16, x3)

# rs1==x30, rd==x15, rs1_val > 0 and imm_val == 0, rs1_val == 1048576
# opcode: srli ; op1:x30; dest:x15; op1val:0x0000000000100000;  immval:0
TEST_IMM_OP( srli, x15, x30, 0x100000, 0x0000000000100000, 0, x16, 24, x3)

# rs1==x14, rd==x17, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -4294967297
# opcode: srli ; op1:x14; dest:x17; op1val:0xfffffffeffffffff;  immval:63
TEST_IMM_OP( srli, x17, x14, 0x0, 0xfffffffeffffffff, 63, x16, 32, x3)

# rs1==x9, rd==x13, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 536870912
# opcode: srli ; op1:x9; dest:x13; op1val:0x0000000020000000;  immval:63
TEST_IMM_OP( srli, x13, x9, 0x0, 0x0000000020000000, 63, x16, 40, x3)

# rs1==x10, rd==x6, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 8, imm_val == 8
# opcode: srli ; op1:x10; dest:x6; op1val:0x0000000000000008;  immval:8
TEST_IMM_OP( srli, x6, x10, 0x0, 0x0000000000000008, 8, x16, 48, x3)

# rs1==x13, rd==x0, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -9223372036854775808, imm_val == 62
# opcode: srli ; op1:x13; dest:x0; op1val:0x8000000000000000;  immval:62
TEST_IMM_OP( srli, x0, x13, 0x0, 0x8000000000000000, 62, x16, 56, x3)

# rs1==x6, rd==x26, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srli ; op1:x6; dest:x26; op1val:0x0000000000000000;  immval:0
TEST_IMM_OP( srli, x26, x6, 0x0, 0x0000000000000000, 0, x16, 64, x3)

# rs1==x12, rd==x2, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, imm_val == 32, rs1_val == 9223372036854775807
# opcode: srli ; op1:x12; dest:x2; op1val:0x7fffffffffffffff;  immval:32
TEST_IMM_OP( srli, x2, x12, 0x0, 0x7fffffffffffffff, 32, x16, 72, x3)

# rs1==x23, rd==x14, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: srli ; op1:x23; dest:x14; op1val:0x0000000000000001;  immval:13
TEST_IMM_OP( srli, x14, x23, 0x0, 0x0000000000000001, 13, x16, 80, x3)

# rs1==x4, rd==x31, imm_val == 1, rs1_val == -34359738369
# opcode: srli ; op1:x4; dest:x31; op1val:0xfffffff7ffffffff;  immval:1
TEST_IMM_OP( srli, x31, x4, 0x7fffffff, 0xfffffff7ffffffff, 1, x16, 88, x3)

# rs1==x27, rd==x30, imm_val == 4, rs1_val == -18014398509481985
# opcode: srli ; op1:x27; dest:x30; op1val:0xffbfffffffffffff;  immval:4
TEST_IMM_OP( srli, x30, x27, 0xfffffff, 0xffbfffffffffffff, 4, x16, 96, x3)

# rs1==x8, rd==x9, imm_val == 61, rs1_val == -4398046511105
# opcode: srli ; op1:x8; dest:x9; op1val:0xfffffbffffffffff;  immval:61
TEST_IMM_OP( srli, x9, x8, 0x0, 0xfffffbffffffffff, 61, x16, 104, x3)

# rs1==x29, rd==x19, imm_val == 59, rs1_val == 1073741824
# opcode: srli ; op1:x29; dest:x19; op1val:0x0000000040000000;  immval:59
TEST_IMM_OP( srli, x19, x29, 0x0, 0x0000000040000000, 59, x16, 112, x3)

# rs1==x18, rd==x23, imm_val == 55, rs1_val == 1024
# opcode: srli ; op1:x18; dest:x23; op1val:0x0000000000000400;  immval:55
TEST_IMM_OP( srli, x23, x18, 0x0, 0x0000000000000400, 55, x16, 120, x3)

# rs1==x21, rd==x1, imm_val == 47, 
# opcode: srli ; op1:x21; dest:x1; op1val:0x0000000000000006;  immval:47
TEST_IMM_OP( srli, x1, x21, 0x0, 0x0000000000000006, 47, x16, 128, x3)

# rs1==x28, rd==x11, imm_val == 31, rs1_val == 67108864
# opcode: srli ; op1:x28; dest:x11; op1val:0x0000000004000000;  immval:31
TEST_IMM_OP( srli, x11, x28, 0x0, 0x0000000004000000, 31, x16, 136, x3)

# rs1==x11, rd==x24, imm_val == 21, rs1_val == 2305843009213693952
# opcode: srli ; op1:x11; dest:x24; op1val:0x2000000000000000;  immval:21
TEST_IMM_OP( srli, x24, x11, 0x0, 0x2000000000000000, 21, x16, 144, x5)

# rs1==x31, rd==x4, imm_val == 42, rs1_val == 4294967296
# opcode: srli ; op1:x31; dest:x4; op1val:0x0000000100000000;  immval:42
TEST_IMM_OP( srli, x4, x31, 0x0, 0x0000000100000000, 42, x16, 152, x5)

# rs1==x3, rd==x20, rs1_val == 2, 
# opcode: srli ; op1:x3; dest:x20; op1val:0x0000000000000002;  immval:17
TEST_IMM_OP( srli, x20, x3, 0x0, 0x0000000000000002, 17, x16, 160, x5)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x7, rd==x22, rs1_val == 4, 
# opcode: srli ; op1:x7; dest:x22; op1val:0x0000000000000004;  immval:8
TEST_IMM_OP( srli, x22, x7, 0x0, 0x0000000000000004, 8, x4, 0, x5)

# rs1==x1, rd==x10, rs1_val == 16, 
# opcode: srli ; op1:x1; dest:x10; op1val:0x0000000000000010;  immval:8
TEST_IMM_OP( srli, x10, x1, 0x0, 0x0000000000000010, 8, x4, 8, x5)

# rs1==x0, rd==x27, rs1_val == 32, 
# opcode: srli ; op1:x0; dest:x27; op1val:0x0000000000000020;  immval:47
TEST_IMM_OP( srli, x27, x0, 0x0, 0x0000000000000020, 47, x4, 16, x5)

# rs1==x16, rd==x25, rs1_val == 64, 
# opcode: srli ; op1:x16; dest:x25; op1val:0x0000000000000040;  immval:31
TEST_IMM_OP( srli, x25, x16, 0x0, 0x0000000000000040, 31, x4, 24, x5)

# rs1==x20, rd==x8, rs1_val == 128, 
# opcode: srli ; op1:x20; dest:x8; op1val:0x0000000000000080;  immval:21
TEST_IMM_OP( srli, x8, x20, 0x0, 0x0000000000000080, 21, x4, 32, x5)

# rs1==x2, rd==x3, rs1_val == 256, 
# opcode: srli ; op1:x2; dest:x3; op1val:0x0000000000000100;  immval:47
TEST_IMM_OP( srli, x3, x2, 0x0, 0x0000000000000100, 47, x4, 40, x5)

# rs1==x25, rd==x16, rs1_val == 512, 
# opcode: srli ; op1:x25; dest:x16; op1val:0x0000000000000200;  immval:61
TEST_IMM_OP( srli, x16, x25, 0x0, 0x0000000000000200, 61, x4, 48, x5)

# rs1==x26, rd==x28, rs1_val == 2048, 
# opcode: srli ; op1:x26; dest:x28; op1val:0x0000000000000800;  immval:17
TEST_IMM_OP( srli, x28, x26, 0x0, 0x0000000000000800, 17, x4, 56, x5)

# rs1==x17, rd==x21, rs1_val == 4096, 
# opcode: srli ; op1:x17; dest:x21; op1val:0x0000000000001000;  immval:18
TEST_IMM_OP( srli, x21, x17, 0x0, 0x0000000000001000, 18, x4, 64, x5)

# rs1==x15, rd==x12, rs1_val == 8192, 
# opcode: srli ; op1:x15; dest:x12; op1val:0x0000000000002000;  immval:59
TEST_IMM_OP( srli, x12, x15, 0x0, 0x0000000000002000, 59, x4, 72, x5)

# rs1==x19, rd==x29, rs1_val == 16384, 
# opcode: srli ; op1:x19; dest:x29; op1val:0x0000000000004000;  immval:11
TEST_IMM_OP( srli, x29, x19, 0x8, 0x0000000000004000, 11, x4, 80, x5)

# rs1_val == 32768, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1000, 0x0000000000008000, 3, x4, 88, x5)

# rs1_val == 65536, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x8000, 0x0000000000010000, 1, x4, 96, x5)

# rs1_val == 131072, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000020000, 18, x4, 104, x5)

# rs1_val == 262144, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x4000, 0x0000000000040000, 4, x4, 112, x5)

# rs1_val == 524288, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x10, 0x0000000000080000, 15, x4, 120, x5)

# rs1_val == 2097152, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000200000, 47, x4, 128, x5)

# rs1_val == 4194304, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x10, 0x0000000000400000, 18, x4, 136, x5)

# rs1_val == 8388608, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000800000, 31, x4, 144, x5)

# rs1_val == 16777216, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x400, 0x0000000001000000, 14, x4, 152, x5)

# rs1_val == 33554432, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x200, 0x0000000002000000, 16, x4, 160, x5)

# rs1_val == 134217728, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1000, 0x0000000008000000, 15, x4, 168, x5)

# rs1_val == 268435456, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000010000000, 61, x4, 176, x5)

# rs1_val == 2147483648, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000080000000, 55, x4, 184, x5)

# rs1_val == 8589934592, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:12
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000200000000, 12, x4, 192, x5)

# rs1_val == 34359738368, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000800000000, 55, x4, 200, x5)

# rs1_val == 68719476736, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000001000000000, 5, x4, 208, x5)

# rs1_val == 137438953472, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000002000000000, 47, x4, 216, x5)

# rs1_val == 274877906944, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000004000000000, 21, x4, 224, x5)

# rs1_val == 549755813888, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000008000000000, 19, x4, 232, x5)

# rs1_val == 1099511627776, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000010000000000, 14, x4, 240, x5)

# rs1_val == 2199023255552, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000020000000000, 61, x4, 248, x5)

# rs1_val == 4398046511104, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000040000000000, 42, x4, 256, x5)

# rs1_val == 8796093022208, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000080000000000, 16, x4, 264, x5)

# rs1_val == 17592186044416, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000100000000000, 3, x4, 272, x5)

# rs1_val == 35184372088832, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000200000000000, 63, x4, 280, x5)

# rs1_val == 70368744177664, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000400000000000, 63, x4, 288, x5)

# rs1_val == 140737488355328, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000800000000000, 14, x4, 296, x5)

# rs1_val == 281474976710656, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0001000000000000, 63, x4, 304, x5)

# rs1_val == 562949953421312, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0002000000000000, 1, x4, 312, x5)

# rs1_val == 1125899906842624, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0004000000000000, 18, x4, 320, x5)

# rs1_val == 2251799813685248, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0008000000000000, 32, x4, 328, x5)

# rs1_val == 4503599627370496, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0010000000000000, 9, x4, 336, x5)

# rs1_val == 9007199254740992, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0020000000000000, 8, x4, 344, x5)

# rs1_val == 18014398509481984, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0040000000000000, 42, x4, 352, x5)

# rs1_val == 36028797018963968, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0080000000000000, 3, x4, 360, x5)

# rs1_val == 72057594037927936, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0100000000000000, 10, x4, 368, x5)

# rs1_val == 144115188075855872, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0200000000000000, 4, x4, 376, x5)

# rs1_val == -549755813889, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffff7fffffffff, 62, x4, 384, x5)

# rs1_val == -1099511627777, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7fffff, 0xfffffeffffffffff, 9, x4, 392, x5)

# rs1_val == -8796093022209, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffff7ffffffffff, 32, x4, 400, x5)

# rs1_val == -17592186044417, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xffffefffffffffff, 19, x4, 408, x5)

# rs1_val == -35184372088833, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x7ffff, 0xffffdfffffffffff, 13, x4, 416, x5)

# rs1_val == -70368744177665, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffffff, 0xffffbfffffffffff, 8, x4, 424, x5)

# rs1_val == -140737488355329, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xffff7fffffffffff, 31, x4, 432, x5)

# rs1_val == -281474976710657, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xfffeffffffffffff, 4, x4, 440, x5)

# rs1_val == -562949953421313, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fff, 0xfffdffffffffffff, 18, x4, 448, x5)

# rs1_val == -1125899906842625, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfffbffffffffffff, 31, x4, 456, x5)

# rs1_val == -2251799813685249, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffffff, 0xfff7ffffffffffff, 8, x4, 464, x5)

# rs1_val == -4503599627370497, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffefffffffffffff, 32, x4, 472, x5)

# rs1_val == -9007199254740993, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xffdfffffffffffff, 11, x4, 480, x5)

# rs1_val == -36028797018963969, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0xff7fffffffffffff, 55, x4, 488, x5)

# rs1_val == -72057594037927937, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfeffffffffffffff, 31, x4, 496, x5)

# rs1_val == -144115188075855873, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfdffffffffffffff, 61, x4, 504, x5)

# rs1_val == -288230376151711745, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfbffffffffffffff, 59, x4, 512, x5)

# rs1_val == -576460752303423489, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0xf7ffffffffffffff, 62, x4, 520, x5)

# rs1_val == -1152921504606846977, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xefffffffffffffff, 47, x4, 528, x5)

# rs1_val == -2305843009213693953, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xdfffffffffffffff, 17, x4, 536, x5)

# rs1_val == -4611686018427387905, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xbfffffffffffffff, 4, x4, 544, x5)

# rs1_val == 6148914691236517205, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:15
TEST_IMM_OP( srli, x11, x10, 0xaaaa, 0x5555555555555555, 15, x4, 552, x5)

# rs1_val == -6148914691236517206, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1555, 0xaaaaaaaaaaaaaaaa, 19, x4, 560, x5)

# rs1_val == 288230376151711744, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0400000000000000, 47, x4, 568, x5)

# rs1_val == 576460752303423488, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0800000000000000, 8, x4, 576, x5)

# rs1_val == 1152921504606846976, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x0, 0x1000000000000000, 13, x4, 584, x5)

# rs1_val == 4611686018427387904, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x0, 0x4000000000000000, 5, x4, 592, x5)

# rs1_val == -2, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xfffffffffffffffe, 21, x4, 600, x5)

# rs1_val == -3, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfffffffffffffffd, 31, x4, 608, x5)

# rs1_val == -5, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffffb, 63, x4, 616, x5)

# rs1_val == -9, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffff7, 42, x4, 624, x5)

# rs1_val == -17, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fff, 0xffffffffffffffef, 18, x4, 632, x5)

# rs1_val == -33, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3ffffff7, 0xffffffffffffffdf, 2, x4, 640, x5)

# rs1_val == -129, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffffff7f, 32, x4, 648, x5)

# rs1_val == -257, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xfffffffffffffeff, 16, x4, 656, x5)

# rs1_val == -513, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffdf, 0xfffffffffffffdff, 4, x4, 664, x5)

# rs1_val == -1025, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3ffffeff, 0xfffffffffffffbff, 2, x4, 672, x5)

# rs1_val == -2049, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1ffffef, 0xfffffffffffff7ff, 7, x4, 680, x5)

# rs1_val == -4097, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xffffeff, 0xffffffffffffefff, 4, x4, 688, x5)

# rs1_val == -8193, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7fffeff, 0xffffffffffffdfff, 5, x4, 696, x5)

# rs1_val == -16385, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffffbfff, 42, x4, 704, x5)

# rs1_val == -32769, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x7fffbfff, 0xffffffffffff7fff, 1, x4, 712, x5)

# rs1_val == -65537, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xfffe, 0xfffffffffffeffff, 16, x4, 720, x5)

# rs1_val == -131073, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffbf, 0xfffffffffffdffff, 11, x4, 728, x5)

# rs1_val == -262145, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffbffff, 42, x4, 736, x5)

# rs1_val == -524289, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x7ffbf, 0xfffffffffff7ffff, 13, x4, 744, x5)

# rs1_val == -1048577, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3ffb, 0xffffffffffefffff, 18, x4, 752, x5)

# rs1_val == -2097153, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7fe, 0xffffffffffdfffff, 21, x4, 760, x5)

# rs1_val == -4194305, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xffbfffff, 0xffffffffffbfffff, 0, x4, 768, x5)

# rs1_val == -8388609, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1feff, 0xffffffffff7fffff, 15, x4, 776, x5)

# rs1_val == -16777217, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffeffffff, 63, x4, 784, x5)

# rs1_val == -33554433, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7efffff, 0xfffffffffdffffff, 5, x4, 792, x5)

# rs1_val == -67108865, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xfbffff, 0xfffffffffbffffff, 8, x4, 800, x5)

# rs1_val == -134217729, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7bff, 0xfffffffff7ffffff, 17, x4, 808, x5)

# rs1_val == -268435457, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffefffffff, 47, x4, 816, x5)

# rs1_val == -536870913, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffdfffffff, 62, x4, 824, x5)

# rs1_val == -1073741825, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x5fff, 0xffffffffbfffffff, 17, x4, 832, x5)

# rs1_val == -2147483649, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x7fffffff, 0xffffffff7fffffff, 0, x4, 840, x5)

# rs1_val == -8589934593, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x7ffff, 0xfffffffdffffffff, 13, x4, 848, x5)

# rs1_val == -17179869185, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7fffff, 0xfffffffbffffffff, 9, x4, 856, x5)

# rs1_val == -68719476737, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xffffffefffffffff, 4, x4, 864, x5)

# rs1_val == -137438953473, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7ffffff, 0xffffffdfffffffff, 5, x4, 872, x5)

# rs1_val == -274877906945, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fff, 0xffffffbfffffffff, 18, x4, 880, x5)

# rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -9223372036854775808, imm_val == 62
# opcode: srli ; op1:x10; dest:x11; op1val:0x8000000000000000;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0x8000000000000000, 62, x4, 888, x5)

# rs1_val == 32, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000000020;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000000020, 47, x4, 896, x5)
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

signature_x16_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x16_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x4_0:
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
