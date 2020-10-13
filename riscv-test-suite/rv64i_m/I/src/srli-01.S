
#This assembly file tests the srli instruction of the RISC-V I extension for the srli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srli)

RVTEST_SIGBASE( x16,signature_x16_1)

# rs1 == rd, rs1==x29, rd==x29, rs1_val < 0 and imm_val > 0 and imm_val < xlen, 
# opcode: srli ; op1:x29; dest:x29; op1val:0xc000000000000000;  immval:13
TEST_IMM_OP( srli, x29, x29, 0x0, 0xc000000000000000, 13, x16, 0, x17)

# rs1 != rd, rs1==x14, rd==x6, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 4, imm_val == 4, rs1_val == imm_val and imm_val > 0 and imm_val < xlen
# opcode: srli ; op1:x14; dest:x6; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( srli, x6, x14, 0x0, 0x0000000000000004, 4, x16, 8, x17)

# rs1==x10, rd==x2, rs1_val < 0 and imm_val == 0, rs1_val == -2305843009213693953
# opcode: srli ; op1:x10; dest:x2; op1val:0xdfffffffffffffff;  immval:0
TEST_IMM_OP( srli, x2, x10, 0xffffffff, 0xdfffffffffffffff, 0, x16, 16, x17)

# rs1==x4, rd==x28, rs1_val > 0 and imm_val == 0, 
# opcode: srli ; op1:x4; dest:x28; op1val:0x0000000000000007;  immval:0
TEST_IMM_OP( srli, x28, x4, 0x7, 0x0000000000000007, 0, x16, 24, x17)

# rs1==x12, rd==x20, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -67108865
# opcode: srli ; op1:x12; dest:x20; op1val:0xfffffffffbffffff;  immval:63
TEST_IMM_OP( srli, x20, x12, 0x0, 0xfffffffffbffffff, 63, x16, 32, x17)

# rs1==x24, rd==x11, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 8796093022208
# opcode: srli ; op1:x24; dest:x11; op1val:0x0000080000000000;  immval:63
TEST_IMM_OP( srli, x11, x24, 0x0, 0x0000080000000000, 63, x16, 40, x17)

# rs1==x9, rd==x5, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, imm_val == 32, rs1_val == -9223372036854775808
# opcode: srli ; op1:x9; dest:x5; op1val:0x8000000000000000;  immval:32
TEST_IMM_OP( srli, x5, x9, 0x0, 0x8000000000000000, 32, x16, 48, x17)

# rs1==x28, rd==x30, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srli ; op1:x28; dest:x30; op1val:0x0000000000000000;  immval:63
TEST_IMM_OP( srli, x30, x28, 0x0, 0x0000000000000000, 63, x16, 56, x17)

# rs1==x13, rd==x26, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 9223372036854775807
# opcode: srli ; op1:x13; dest:x26; op1val:0x7fffffffffffffff;  immval:15
TEST_IMM_OP( srli, x26, x13, 0x1ffff, 0x7fffffffffffffff, 15, x16, 64, x17)

# rs1==x23, rd==x27, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: srli ; op1:x23; dest:x27; op1val:0x0000000000000001;  immval:10
TEST_IMM_OP( srli, x27, x23, 0x0, 0x0000000000000001, 10, x16, 72, x17)

# rs1==x26, rd==x0, imm_val == 1, rs1_val == 1024
# opcode: srli ; op1:x26; dest:x0; op1val:0x0000000000000400;  immval:1
TEST_IMM_OP( srli, x0, x26, 0x200, 0x0000000000000400, 1, x16, 80, x17)

# rs1==x21, rd==x24, imm_val == 2, rs1_val == 17179869184
# opcode: srli ; op1:x21; dest:x24; op1val:0x0000000400000000;  immval:2
TEST_IMM_OP( srli, x24, x21, 0x0, 0x0000000400000000, 2, x16, 88, x17)

# rs1==x20, rd==x18, imm_val == 8, 
# opcode: srli ; op1:x20; dest:x18; op1val:0xc000000000000000;  immval:8
TEST_IMM_OP( srli, x18, x20, 0x0, 0xc000000000000000, 8, x16, 96, x17)

# rs1==x3, rd==x15, imm_val == 16, 
# opcode: srli ; op1:x3; dest:x15; op1val:0xdfffffffffffffff;  immval:16
TEST_IMM_OP( srli, x15, x3, 0xffff, 0xdfffffffffffffff, 16, x16, 104, x17)

# rs1==x5, rd==x7, imm_val == 62, rs1_val == 1152921504606846976
# opcode: srli ; op1:x5; dest:x7; op1val:0x1000000000000000;  immval:62
TEST_IMM_OP( srli, x7, x5, 0x0, 0x1000000000000000, 62, x16, 112, x17)

# rs1==x19, rd==x4, imm_val == 61, rs1_val == 16384
# opcode: srli ; op1:x19; dest:x4; op1val:0x0000000000004000;  immval:61
TEST_IMM_OP( srli, x4, x19, 0x0, 0x0000000000004000, 61, x16, 120, x17)

# rs1==x11, rd==x22, imm_val == 59, rs1_val == -1073741825
# opcode: srli ; op1:x11; dest:x22; op1val:0xffffffffbfffffff;  immval:59
TEST_IMM_OP( srli, x22, x11, 0x0, 0xffffffffbfffffff, 59, x16, 128, x17)

# rs1==x27, rd==x1, imm_val == 55, rs1_val == 576460752303423488
# opcode: srli ; op1:x27; dest:x1; op1val:0x0800000000000000;  immval:55
TEST_IMM_OP( srli, x1, x27, 0x0, 0x0800000000000000, 55, x16, 136, x17)

# rs1==x1, rd==x12, imm_val == 47, rs1_val == 35184372088832
# opcode: srli ; op1:x1; dest:x12; op1val:0x0000200000000000;  immval:47
TEST_IMM_OP( srli, x12, x1, 0x0, 0x0000200000000000, 47, x16, 144, x17)

# rs1==x31, rd==x8, imm_val == 31, 
# opcode: srli ; op1:x31; dest:x8; op1val:0xfffffffffffffffc;  immval:31
TEST_IMM_OP( srli, x8, x31, 0x1, 0xfffffffffffffffc, 31, x16, 152, x17)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x8, rd==x23, imm_val == 21, rs1_val == -8589934593
# opcode: srli ; op1:x8; dest:x23; op1val:0xfffffffdffffffff;  immval:21
TEST_IMM_OP( srli, x23, x8, 0x7ff, 0xfffffffdffffffff, 21, x1, 0, x4)

# rs1==x22, rd==x14, imm_val == 42, rs1_val == 70368744177664
# opcode: srli ; op1:x22; dest:x14; op1val:0x0000400000000000;  immval:42
TEST_IMM_OP( srli, x14, x22, 0x0, 0x0000400000000000, 42, x1, 8, x4)

# rs1==x30, rd==x25, rs1_val == 2, 
# opcode: srli ; op1:x30; dest:x25; op1val:0x0000000000000002;  immval:63
TEST_IMM_OP( srli, x25, x30, 0x0, 0x0000000000000002, 63, x1, 16, x4)

# rs1==x2, rd==x17, rs1_val == 8, 
# opcode: srli ; op1:x2; dest:x17; op1val:0x0000000000000008;  immval:10
TEST_IMM_OP( srli, x17, x2, 0x0, 0x0000000000000008, 10, x1, 24, x4)

# rs1==x16, rd==x19, rs1_val == 16, 
# opcode: srli ; op1:x16; dest:x19; op1val:0x0000000000000010;  immval:63
TEST_IMM_OP( srli, x19, x16, 0x0, 0x0000000000000010, 63, x1, 32, x4)

# rs1==x17, rd==x16, rs1_val == 32, 
# opcode: srli ; op1:x17; dest:x16; op1val:0x0000000000000020;  immval:19
TEST_IMM_OP( srli, x16, x17, 0x0, 0x0000000000000020, 19, x1, 40, x4)

# rs1==x18, rd==x3, rs1_val == 64, 
# opcode: srli ; op1:x18; dest:x3; op1val:0x0000000000000040;  immval:31
TEST_IMM_OP( srli, x3, x18, 0x0, 0x0000000000000040, 31, x1, 48, x4)

# rs1==x6, rd==x9, rs1_val == 128, 
# opcode: srli ; op1:x6; dest:x9; op1val:0x0000000000000080;  immval:55
TEST_IMM_OP( srli, x9, x6, 0x0, 0x0000000000000080, 55, x1, 56, x4)

# rs1==x0, rd==x31, rs1_val == 256, 
# opcode: srli ; op1:x0; dest:x31; op1val:0x0000000000000100;  immval:14
TEST_IMM_OP( srli, x31, x0, 0x0, 0x0000000000000100, 14, x1, 64, x4)

# rs1==x7, rd==x10, rs1_val == 512, 
# opcode: srli ; op1:x7; dest:x10; op1val:0x0000000000000200;  immval:11
TEST_IMM_OP( srli, x10, x7, 0x0, 0x0000000000000200, 11, x1, 72, x4)

# rs1==x25, rd==x21, rs1_val == 2048, 
# opcode: srli ; op1:x25; dest:x21; op1val:0x0000000000000800;  immval:15
TEST_IMM_OP( srli, x21, x25, 0x0, 0x0000000000000800, 15, x1, 80, x4)

# rs1==x15, rd==x13, rs1_val == 4096, 
# opcode: srli ; op1:x15; dest:x13; op1val:0x0000000000001000;  immval:32
TEST_IMM_OP( srli, x13, x15, 0x0, 0x0000000000001000, 32, x1, 88, x4)

# rs1_val == 8192, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x100, 0x0000000000002000, 5, x1, 96, x4)

# rs1_val == 32768, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000008000, 63, x1, 104, x4)

# rs1_val == 65536, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000010000, 19, x1, 112, x4)

# rs1_val == 131072, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000020000, 21, x1, 120, x4)

# rs1_val == 262144, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x100, 0x0000000000040000, 10, x1, 128, x4)

# rs1_val == 524288, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000080000, 21, x1, 136, x4)

# rs1_val == 1048576, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x200, 0x0000000000100000, 11, x1, 144, x4)

# rs1_val == 2097152, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x80000, 0x0000000000200000, 2, x1, 152, x4)

# rs1_val == 4194304, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x4000, 0x0000000000400000, 8, x1, 160, x4)

# rs1_val == 8388608, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000800000, 47, x1, 168, x4)

# rs1_val == 16777216, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x200000, 0x0000000001000000, 3, x1, 176, x4)

# rs1_val == 33554432, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x40000, 0x0000000002000000, 7, x1, 184, x4)

# rs1_val == 67108864, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000004000000, 62, x1, 192, x4)

# rs1_val == 134217728, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x8000000, 0x0000000008000000, 0, x1, 200, x4)

# rs1_val == 268435456, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x8000000, 0x0000000010000000, 1, x1, 208, x4)

# rs1_val == 536870912, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x200000, 0x0000000020000000, 8, x1, 216, x4)

# rs1_val == 1073741824, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x100000, 0x0000000040000000, 10, x1, 224, x4)

# rs1_val == 2147483648, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x400, 0x0000000080000000, 21, x1, 232, x4)

# rs1_val == 4294967296, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000100000000, 11, x1, 240, x4)

# rs1_val == 8589934592, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000200000000, 15, x1, 248, x4)

# rs1_val == 34359738368, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000800000000, 63, x1, 256, x4)

# rs1_val == 68719476736, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000001000000000, 3, x1, 264, x4)

# rs1_val == 137438953472, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000002000000000, 14, x1, 272, x4)

# rs1_val == 274877906944, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000004000000000, 0, x1, 280, x4)

# rs1_val == 549755813888, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000008000000000, 31, x1, 288, x4)

# rs1_val == 1099511627776, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000010000000000, 6, x1, 296, x4)

# rs1_val == 2199023255552, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000020000000000, 17, x1, 304, x4)

# rs1_val == 4398046511104, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000040000000000, 47, x1, 312, x4)

# rs1_val == 17592186044416, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000100000000000, 32, x1, 320, x4)

# rs1_val == 140737488355328, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000800000000000, 32, x1, 328, x4)

# rs1_val == 281474976710656, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0001000000000000, 11, x1, 336, x4)

# rs1_val == 562949953421312, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0002000000000000, 31, x1, 344, x4)

# rs1_val == 1125899906842624, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0004000000000000, 3, x1, 352, x4)

# rs1_val == 2251799813685248, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0008000000000000, 59, x1, 360, x4)

# rs1_val == 4503599627370496, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0010000000000000, 9, x1, 368, x4)

# rs1_val == 9007199254740992, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0020000000000000, 62, x1, 376, x4)

# rs1_val == 18014398509481984, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0040000000000000, 31, x1, 384, x4)

# rs1_val == 36028797018963968, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0080000000000000, 18, x1, 392, x4)

# rs1_val == 72057594037927936, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0100000000000000, 4, x1, 400, x4)

# rs1_val == 144115188075855872, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0200000000000000, 13, x1, 408, x4)

# rs1_val == 288230376151711744, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0400000000000000, 63, x1, 416, x4)

# rs1_val == -549755813889, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffff7fffffffff, 32, x1, 424, x4)

# rs1_val == -1099511627777, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xfffffeffffffffff, 12, x1, 432, x4)

# rs1_val == -2199023255553, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xfffffdffffffffff, 4, x1, 440, x4)

# rs1_val == -4398046511105, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xffffffff, 0xfffffbffffffffff, 0, x1, 448, x4)

# rs1_val == -8796093022209, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffff7ffffffffff, 62, x1, 456, x4)

# rs1_val == -17592186044417, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xffffefffffffffff, 19, x1, 464, x4)

# rs1_val == -35184372088833, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffdfffffffffff, 61, x1, 472, x4)

# rs1_val == -70368744177665, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xffffbfffffffffff, 12, x1, 480, x4)

# rs1_val == -140737488355329, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffffff, 0xffff7fffffffffff, 8, x1, 488, x4)

# rs1_val == -281474976710657, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x7fffffff, 0xfffeffffffffffff, 1, x1, 496, x4)

# rs1_val == -562949953421313, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1fffffff, 0xfffdffffffffffff, 3, x1, 504, x4)

# rs1_val == -1125899906842625, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffbffffffffffff, 42, x1, 512, x4)

# rs1_val == -2251799813685249, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1ffffff, 0xfff7ffffffffffff, 7, x1, 520, x4)

# rs1_val == -4503599627370497, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3ffff, 0xffefffffffffffff, 14, x1, 528, x4)

# rs1_val == -9007199254740993, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xffdfffffffffffff, 31, x1, 536, x4)

# rs1_val == -18014398509481985, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xffbfffffffffffff, 17, x1, 544, x4)

# rs1_val == -36028797018963969, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xff7fffffffffffff, 4, x1, 552, x4)

# rs1_val == -72057594037927937, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfeffffffffffffff, 19, x1, 560, x4)

# rs1_val == -144115188075855873, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1fffffff, 0xfdffffffffffffff, 3, x1, 568, x4)

# rs1_val == -288230376151711745, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xfbffffffffffffff, 11, x1, 576, x4)

# rs1_val == -576460752303423489, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xf7ffffffffffffff, 16, x1, 584, x4)

# rs1_val == -1152921504606846977, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xefffffffffffffff, 31, x1, 592, x4)

# rs1_val == -4611686018427387905, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xbfffffffffffffff, 4, x1, 600, x4)

# rs1_val == 6148914691236517205, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0x5555555555555555, 61, x1, 608, x4)

# rs1_val == -6148914691236517206, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0xaaaaaaaaaaaaaaaa, 59, x1, 616, x4)

# rs1_val == 2305843009213693952, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0x2000000000000000, 59, x1, 624, x4)

# rs1_val == 4611686018427387904, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x0, 0x4000000000000000, 5, x1, 632, x4)

# rs1_val == -2, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfffffffffffffffe, 19, x1, 640, x4)

# rs1_val == -3, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3ffff, 0xfffffffffffffffd, 14, x1, 648, x4)

# rs1_val == -5, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xfffffffffffffffb, 21, x1, 656, x4)

# rs1_val == -9, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffff7, 32, x1, 664, x4)

# rs1_val == -17, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xffffffffffffffef, 12, x1, 672, x4)

# rs1_val == -33, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1ffffffb, 0xffffffffffffffdf, 3, x1, 680, x4)

# rs1_val == -65, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7fffff, 0xffffffffffffffbf, 9, x1, 688, x4)

# rs1_val == -129, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3fffffd, 0xffffffffffffff7f, 6, x1, 696, x4)

# rs1_val == -257, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3fffff, 0xfffffffffffffeff, 10, x1, 704, x4)

# rs1_val == -513, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffdff, 55, x1, 712, x4)

# rs1_val == -1025, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffbff, 59, x1, 720, x4)

# rs1_val == -2049, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xfffff7, 0xfffffffffffff7ff, 8, x1, 728, x4)

# rs1_val == -4097, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffffefff, 47, x1, 736, x4)

# rs1_val == -8193, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xffffffffffffdfff, 17, x1, 744, x4)

# rs1_val == -16385, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xffffffffffffbfff, 21, x1, 752, x4)

# rs1_val == -32769, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3fffd, 0xffffffffffff7fff, 14, x1, 760, x4)

# rs1_val == -65537, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffeffff, 32, x1, 768, x4)

# rs1_val == -131073, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffdffff, 32, x1, 776, x4)

# rs1_val == -262145, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fff7f, 0xfffffffffffbffff, 11, x1, 784, x4)

# rs1_val == -524289, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfffffffffff7ffff, 31, x1, 792, x4)

# rs1_val == -1048577, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffefffff, 63, x1, 800, x4)

# rs1_val == -2097153, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3ff7fff, 0xffffffffffdfffff, 6, x1, 808, x4)

# rs1_val == -4194305, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1ff7, 0xffffffffffbfffff, 19, x1, 816, x4)

# rs1_val == -8388609, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffff7fffff, 59, x1, 824, x4)

# rs1_val == -16777217, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffeffffff, 61, x1, 832, x4)

# rs1_val == -33554433, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfdfff, 0xfffffffffdffffff, 12, x1, 840, x4)

# rs1_val == -134217729, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffff7ffffff, 63, x1, 848, x4)

# rs1_val == -268435457, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffefffffff, 63, x1, 856, x4)

# rs1_val == -536870913, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffdfffffff, 63, x1, 864, x4)

# rs1_val == -2147483649, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xffffffff7fffffff, 18, x1, 872, x4)

# rs1_val == -4294967297, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3fffffff, 0xfffffffeffffffff, 2, x1, 880, x4)

# rs1_val == -17179869185, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xfffffffbffffffff, 17, x1, 888, x4)

# rs1_val == -34359738369, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xfffffff7ffffffff, 4, x1, 896, x4)

# rs1_val == -68719476737, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xffffffefffffffff, 31, x1, 904, x4)

# rs1_val == -137438953473, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7fffff, 0xffffffdfffffffff, 9, x1, 912, x4)

# rs1_val == -274877906945, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffbfffffffff, 59, x1, 920, x4)

# rs1_val < 0 and imm_val > 0 and imm_val < xlen, 
# opcode: srli ; op1:x10; dest:x11; op1val:0xc000000000000000;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x0, 0xc000000000000000, 13, x1, 928, x4)

# imm_val == 1, rs1_val == 1024
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000000400;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x200, 0x0000000000000400, 1, x1, 936, x4)

# rs1_val == 256, 
# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000000100, 14, x1, 944, x4)
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
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 119*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
