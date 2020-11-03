
#This assembly file tests the srliw instruction of the RISC-V I extension for the srliw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",srliw)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 == rd, rs1==x2, rd==x2, rs1_val < 0 and imm_val > 0 and imm_val < 32, imm_val == 30, rs1_val == -16777217
# opcode: srliw ; op1:x2; dest:x2; op1val:0xfffffffffeffffff;  immval:30
TEST_IMM_OP( srliw, x2, x2, 0x3, 0xfffffffffeffffff, 30, x4, 0, x20)

# rs1 != rd, rs1==x14, rd==x21, rs1_val > 0 and imm_val > 0 and imm_val < 32, 
# opcode: srliw ; op1:x14; dest:x21; op1val:0x0000000000000005;  immval:13
TEST_IMM_OP( srliw, x21, x14, 0x0, 0x0000000000000005, 13, x4, 8, x20)

# rs1==x28, rd==x25, rs1_val < 0 and imm_val == 0, rs1_val == -17
# opcode: srliw ; op1:x28; dest:x25; op1val:0xffffffffffffffef;  immval:0
TEST_IMM_OP( srliw, x25, x28, 0xffffffef, 0xffffffffffffffef, 0, x4, 16, x20)

# rs1==x21, rd==x10, rs1_val > 0 and imm_val == 0, rs1_val == 131072
# opcode: srliw ; op1:x21; dest:x10; op1val:0x0000000000020000;  immval:0
TEST_IMM_OP( srliw, x10, x21, 0x20000, 0x0000000000020000, 0, x4, 24, x20)

# rs1==x7, rd==x0, rs1_val < 0 and imm_val == 31, 
# opcode: srliw ; op1:x7; dest:x0; op1val:0xffffffffffffffef;  immval:31
TEST_IMM_OP( srliw, x0, x7, 0x1, 0xffffffffffffffef, 31, x4, 32, x20)

# rs1==x10, rd==x11, rs1_val > 0 and imm_val == 31, rs1_val == 8796093022208
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000080000000000, 31, x4, 40, x20)

# rs1==x26, rd==x24, rs1_val == imm_val and imm_val > 0 and imm_val < 32, 
# opcode: srliw ; op1:x26; dest:x24; op1val:0x0000000000000006;  immval:6
TEST_IMM_OP( srliw, x24, x26, 0x0, 0x0000000000000006, 6, x4, 48, x20)

# rs1==x27, rd==x7, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32, rs1_val == -9223372036854775808
# opcode: srliw ; op1:x27; dest:x7; op1val:0x8000000000000000;  immval:5
TEST_IMM_OP( srliw, x7, x27, 0x0, 0x8000000000000000, 5, x4, 56, x20)

# rs1==x31, rd==x9, rs1_val == 0 and imm_val >= 0 and imm_val < 32, imm_val == 16
# opcode: srliw ; op1:x31; dest:x9; op1val:0x0000000000000000;  immval:16
TEST_IMM_OP( srliw, x9, x31, 0x0, 0x0000000000000000, 16, x4, 64, x20)

# rs1==x8, rd==x26, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32, imm_val == 27, rs1_val == 9223372036854775807
# opcode: srliw ; op1:x8; dest:x26; op1val:0x7fffffffffffffff;  immval:27
TEST_IMM_OP( srliw, x26, x8, 0x1f, 0x7fffffffffffffff, 27, x4, 72, x20)

# rs1==x3, rd==x19, rs1_val == 1 and imm_val >= 0 and imm_val < 32, rs1_val == 1
# opcode: srliw ; op1:x3; dest:x19; op1val:0x0000000000000001;  immval:27
TEST_IMM_OP( srliw, x19, x3, 0x0, 0x0000000000000001, 27, x4, 80, x20)

# rs1==x0, rd==x31, imm_val == 1, rs1_val == 9007199254740992
# opcode: srliw ; op1:x0; dest:x31; op1val:0x0020000000000000;  immval:1
TEST_IMM_OP( srliw, x31, x0, 0x0, 0x0020000000000000, 1, x4, 88, x20)

# rs1==x18, rd==x29, imm_val == 2, rs1_val == -9007199254740993
# opcode: srliw ; op1:x18; dest:x29; op1val:0xffdfffffffffffff;  immval:2
TEST_IMM_OP( srliw, x29, x18, 0x3fffffff, 0xffdfffffffffffff, 2, x4, 96, x20)

# rs1==x19, rd==x15, imm_val == 4, rs1_val == 144115188075855872
# opcode: srliw ; op1:x19; dest:x15; op1val:0x0200000000000000;  immval:4
TEST_IMM_OP( srliw, x15, x19, 0x0, 0x0200000000000000, 4, x4, 104, x20)

# rs1==x6, rd==x1, imm_val == 8, rs1_val == 576460752303423488
# opcode: srliw ; op1:x6; dest:x1; op1val:0x0800000000000000;  immval:8
TEST_IMM_OP( srliw, x1, x6, 0x0, 0x0800000000000000, 8, x4, 112, x20)

# rs1==x16, rd==x13, imm_val == 29, rs1_val == 128
# opcode: srliw ; op1:x16; dest:x13; op1val:0x0000000000000080;  immval:29
TEST_IMM_OP( srliw, x13, x16, 0x0, 0x0000000000000080, 29, x4, 120, x20)

# rs1==x12, rd==x18, imm_val == 23, rs1_val == -131073
# opcode: srliw ; op1:x12; dest:x18; op1val:0xfffffffffffdffff;  immval:23
TEST_IMM_OP( srliw, x18, x12, 0x1ff, 0xfffffffffffdffff, 23, x4, 128, x20)

# rs1==x11, rd==x30, imm_val == 15, 
# opcode: srliw ; op1:x11; dest:x30; op1val:0x0020000000000000;  immval:15
TEST_IMM_OP( srliw, x30, x11, 0x0, 0x0020000000000000, 15, x4, 136, x20)

# rs1==x5, rd==x17, imm_val == 21, rs1_val == -5
# opcode: srliw ; op1:x5; dest:x17; op1val:0xfffffffffffffffb;  immval:21
TEST_IMM_OP( srliw, x17, x5, 0x7ff, 0xfffffffffffffffb, 21, x4, 144, x20)

# rs1==x24, rd==x20, imm_val == 10, 
# opcode: srliw ; op1:x24; dest:x20; op1val:0xfffffffffffdffff;  immval:10
TEST_IMM_OP( srliw, x20, x24, 0x3fff7f, 0xfffffffffffdffff, 10, x4, 152, x7)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x29, rd==x27, rs1_val == 2, 
# opcode: srliw ; op1:x29; dest:x27; op1val:0x0000000000000002;  immval:12
TEST_IMM_OP( srliw, x27, x29, 0x0, 0x0000000000000002, 12, x2, 0, x7)

# rs1==x1, rd==x5, rs1_val == 4, 
# opcode: srliw ; op1:x1; dest:x5; op1val:0x0000000000000004;  immval:12
TEST_IMM_OP( srliw, x5, x1, 0x0, 0x0000000000000004, 12, x2, 8, x7)

# rs1==x13, rd==x28, rs1_val == 8, 
# opcode: srliw ; op1:x13; dest:x28; op1val:0x0000000000000008;  immval:18
TEST_IMM_OP( srliw, x28, x13, 0x0, 0x0000000000000008, 18, x2, 16, x7)

# rs1==x4, rd==x23, rs1_val == 16, 
# opcode: srliw ; op1:x4; dest:x23; op1val:0x0000000000000010;  immval:10
TEST_IMM_OP( srliw, x23, x4, 0x0, 0x0000000000000010, 10, x2, 24, x7)

# rs1==x17, rd==x8, rs1_val == 32, 
# opcode: srliw ; op1:x17; dest:x8; op1val:0x0000000000000020;  immval:15
TEST_IMM_OP( srliw, x8, x17, 0x0, 0x0000000000000020, 15, x2, 32, x7)

# rs1==x9, rd==x12, rs1_val == 64, 
# opcode: srliw ; op1:x9; dest:x12; op1val:0x0000000000000040;  immval:13
TEST_IMM_OP( srliw, x12, x9, 0x0, 0x0000000000000040, 13, x2, 40, x7)

# rs1==x15, rd==x16, rs1_val == 256, 
# opcode: srliw ; op1:x15; dest:x16; op1val:0x0000000000000100;  immval:18
TEST_IMM_OP( srliw, x16, x15, 0x0, 0x0000000000000100, 18, x2, 48, x7)

# rs1==x30, rd==x14, rs1_val == 512, 
# opcode: srliw ; op1:x30; dest:x14; op1val:0x0000000000000200;  immval:18
TEST_IMM_OP( srliw, x14, x30, 0x0, 0x0000000000000200, 18, x2, 56, x7)

# rs1==x20, rd==x22, rs1_val == 1024, 
# opcode: srliw ; op1:x20; dest:x22; op1val:0x0000000000000400;  immval:15
TEST_IMM_OP( srliw, x22, x20, 0x0, 0x0000000000000400, 15, x2, 64, x7)

# rs1==x23, rd==x3, rs1_val == 2048, 
# opcode: srliw ; op1:x23; dest:x3; op1val:0x0000000000000800;  immval:6
TEST_IMM_OP( srliw, x3, x23, 0x20, 0x0000000000000800, 6, x2, 72, x7)

# rs1==x25, rd==x6, rs1_val == 4096, 
# opcode: srliw ; op1:x25; dest:x6; op1val:0x0000000000001000;  immval:10
TEST_IMM_OP( srliw, x6, x25, 0x4, 0x0000000000001000, 10, x2, 80, x7)

# rs1==x22, rd==x4, rs1_val == 8192, 
# opcode: srliw ; op1:x22; dest:x4; op1val:0x0000000000002000;  immval:2
TEST_IMM_OP( srliw, x4, x22, 0x800, 0x0000000000002000, 2, x2, 88, x7)

# rs1_val == 16384, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x1, 0x0000000000004000, 14, x2, 96, x7)

# rs1_val == 32768, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000008000, 18, x2, 104, x7)

# rs1_val == 65536, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000010000, 21, x2, 112, x7)

# rs1_val == 262144, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x40000, 0x0000000000040000, 0, x2, 120, x7)

# rs1_val == 524288, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x10, 0x0000000000080000, 15, x2, 128, x7)

# rs1_val == 1048576, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0x10, 0x0000000000100000, 16, x2, 136, x7)

# rs1_val == 2097152, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x1, 0x0000000000200000, 21, x2, 144, x7)

# rs1_val == 4194304, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000400000, 30, x2, 152, x7)

# rs1_val == 8388608, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x2000, 0x0000000000800000, 10, x2, 160, x7)

# rs1_val == 16777216, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x1000, 0x0000000001000000, 12, x2, 168, x7)

# rs1_val == 33554432, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x400, 0x0000000002000000, 15, x2, 176, x7)

# rs1_val == 67108864, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x100, 0x0000000004000000, 18, x2, 184, x7)

# rs1_val == 134217728, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000008000000, 30, x2, 192, x7)

# rs1_val == 268435456, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x80000, 0x0000000010000000, 9, x2, 200, x7)

# rs1_val == 536870912, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000020000000, 30, x2, 208, x7)

# rs1_val == 1073741824, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x2000, 0x0000000040000000, 17, x2, 216, x7)

# rs1_val == 2147483648, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x10, 0x0000000080000000, 27, x2, 224, x7)

# rs1_val == 4294967296, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000100000000, 9, x2, 232, x7)

# rs1_val == 8589934592, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000200000000, 14, x2, 240, x7)

# rs1_val == 17179869184, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000400000000, 18, x2, 248, x7)

# rs1_val == 34359738368, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000800000000, 0, x2, 256, x7)

# rs1_val == 68719476736, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000001000000000, 12, x2, 264, x7)

# rs1_val == 137438953472, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000002000000000, 6, x2, 272, x7)

# rs1_val == 274877906944, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000004000000000, 21, x2, 280, x7)

# rs1_val == 549755813888, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000008000000000, 31, x2, 288, x7)

# rs1_val == 1099511627776, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000010000000000, 13, x2, 296, x7)

# rs1_val == 2199023255552, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000020000000000, 30, x2, 304, x7)

# rs1_val == 4398046511104, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000040000000000, 31, x2, 312, x7)

# rs1_val == 17592186044416, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000100000000000, 8, x2, 320, x7)

# rs1_val == 35184372088832, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000200000000000, 19, x2, 328, x7)

# rs1_val == 70368744177664, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000400000000000, 30, x2, 336, x7)

# rs1_val == 140737488355328, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000800000000000, 19, x2, 344, x7)

# rs1_val == 281474976710656, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0001000000000000, 15, x2, 352, x7)

# rs1_val == 562949953421312, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0002000000000000, 3, x2, 360, x7)

# rs1_val == 1125899906842624, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0004000000000000, 16, x2, 368, x7)

# rs1_val == 2251799813685248, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0008000000000000, 3, x2, 376, x7)

# rs1_val == 4503599627370496, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0010000000000000, 29, x2, 384, x7)

# rs1_val == 18014398509481984, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0040000000000000, 11, x2, 392, x7)

# rs1_val == 36028797018963968, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0080000000000000, 7, x2, 400, x7)

# rs1_val == 72057594037927936, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0100000000000000, 21, x2, 408, x7)

# rs1_val == 288230376151711744, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0400000000000000, 10, x2, 416, x7)

# rs1_val == -2199023255553, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x7fffffff, 0xfffffdffffffffff, 1, x2, 424, x7)

# rs1_val == -4398046511105, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x1, 0xfffffbffffffffff, 31, x2, 432, x7)

# rs1_val == -8796093022209, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xfffff7ffffffffff, 4, x2, 440, x7)

# rs1_val == -17592186044417, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xffffefffffffffff, 4, x2, 448, x7)

# rs1_val == -35184372088833, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xffffdfffffffffff, 6, x2, 456, x7)

# rs1_val == -70368744177665, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1ffffff, 0xffffbfffffffffff, 7, x2, 464, x7)

# rs1_val == -140737488355329, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3fffffff, 0xffff7fffffffffff, 2, x2, 472, x7)

# rs1_val == -281474976710657, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xfffeffffffffffff, 4, x2, 480, x7)

# rs1_val == -562949953421313, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xfffff, 0xfffdffffffffffff, 12, x2, 488, x7)

# rs1_val == -1125899906842625, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xfffbffffffffffff, 6, x2, 496, x7)

# rs1_val == -2251799813685249, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xfff7ffffffffffff, 11, x2, 504, x7)

# rs1_val == -4503599627370497, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1ffff, 0xffefffffffffffff, 15, x2, 512, x7)

# rs1_val == -18014398509481985, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xffbfffffffffffff, 11, x2, 520, x7)

# rs1_val == -36028797018963969, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xff7fffffffffffff, 27, x2, 528, x7)

# rs1_val == -72057594037927937, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x3fffff, 0xfeffffffffffffff, 10, x2, 536, x7)

# rs1_val == -144115188075855873, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7ffffff, 0xfdffffffffffffff, 5, x2, 544, x7)

# rs1_val == -288230376151711745, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7fff, 0xfbffffffffffffff, 17, x2, 552, x7)

# rs1_val == -576460752303423489, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3fff, 0xf7ffffffffffffff, 18, x2, 560, x7)

# rs1_val == -1152921504606846977, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xefffffffffffffff, 11, x2, 568, x7)

# rs1_val == -2305843009213693953, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1ffff, 0xdfffffffffffffff, 15, x2, 576, x7)

# rs1_val == -4611686018427387905, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3fffffff, 0xbfffffffffffffff, 2, x2, 584, x7)

# rs1_val == 6148914691236517205, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x1555, 0x5555555555555555, 18, x2, 592, x7)

# rs1_val == -6148914691236517206, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xaaaaaaa, 0xaaaaaaaaaaaaaaaa, 4, x2, 600, x7)

# rs1_val == 1152921504606846976, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x1000000000000000, 5, x2, 608, x7)

# rs1_val == 2305843009213693952, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x2000000000000000, 3, x2, 616, x7)

# rs1_val == 4611686018427387904, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x4000000000000000, 8, x2, 624, x7)

# rs1_val == -2, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xfffffffffffffffe, 6, x2, 632, x7)

# rs1_val == -3, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xfffffffd, 0xfffffffffffffffd, 0, x2, 640, x7)

# rs1_val == -9, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xfffffffffffffff7, 6, x2, 648, x7)

# rs1_val == -33, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7fffffe, 0xffffffffffffffdf, 5, x2, 656, x7)

# rs1_val == -65, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3fffffe, 0xffffffffffffffbf, 6, x2, 664, x7)

# rs1_val == -129, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xfffff, 0xffffffffffffff7f, 12, x2, 672, x7)

# rs1_val == -257, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xfffffffffffffeff, 14, x2, 680, x7)

# rs1_val == -513, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffdf, 0xfffffffffffffdff, 4, x2, 688, x7)

# rs1_val == -1025, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xfffffffffffffbff, 23, x2, 696, x7)

# rs1_val == -2049, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xfffffffffffff7ff, 27, x2, 704, x7)

# rs1_val == -4097, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3ffffbff, 0xffffffffffffefff, 2, x2, 712, x7)

# rs1_val == -8193, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x3ffff7, 0xffffffffffffdfff, 10, x2, 720, x7)

# rs1_val == -16385, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xffffffffffffbfff, 19, x2, 728, x7)

# rs1_val == -32769, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7fffb, 0xffffffffffff7fff, 13, x2, 736, x7)

# rs1_val == -65537, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7fff7ff, 0xfffffffffffeffff, 5, x2, 744, x7)

# rs1_val == -262145, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xfffbff, 0xfffffffffffbffff, 8, x2, 752, x7)

# rs1_val == -524289, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0xfff7, 0xfffffffffff7ffff, 16, x2, 760, x7)

# rs1_val == -1048577, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xffffffffffefffff, 23, x2, 768, x7)

# rs1_val == -2097153, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xffdfff, 0xffffffffffdfffff, 8, x2, 776, x7)

# rs1_val == -4194305, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x1, 0xffffffffffbfffff, 31, x2, 784, x7)

# rs1_val == -8388609, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x3, 0xffffffffff7fffff, 30, x2, 792, x7)

# rs1_val == -33554433, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1fb, 0xfffffffffdffffff, 23, x2, 800, x7)

# rs1_val == -67108865, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1f7ffff, 0xfffffffffbffffff, 7, x2, 808, x7)

# rs1_val == -134217729, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x3, 0xfffffffff7ffffff, 30, x2, 816, x7)

# rs1_val == -268435457, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3bfffff, 0xffffffffefffffff, 6, x2, 824, x7)

# rs1_val == -536870913, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xdffff, 0xffffffffdfffffff, 12, x2, 832, x7)

# rs1_val == -1073741825, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x2fffff, 0xffffffffbfffffff, 10, x2, 840, x7)

# rs1_val == -2147483649, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0xfffff, 0xffffffff7fffffff, 11, x2, 848, x7)

# rs1_val == -4294967297, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0xffff, 0xfffffffeffffffff, 16, x2, 856, x7)

# rs1_val == -8589934593, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x7, 0xfffffffdffffffff, 29, x2, 864, x7)

# rs1_val == -17179869185, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1ffffff, 0xfffffffbffffffff, 7, x2, 872, x7)

# rs1_val == -34359738369, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xfffffff7ffffffff, 27, x2, 880, x7)

# rs1_val == -68719476737, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xffffffefffffffff, 23, x2, 888, x7)

# rs1_val == -137438953473, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x3, 0xffffffdfffffffff, 30, x2, 896, x7)

# rs1_val == -274877906945, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xffffffbfffffffff, 23, x2, 904, x7)

# rs1_val == -549755813889, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x7fffffff, 0xffffff7fffffffff, 1, x2, 912, x7)

# rs1_val == -1099511627777, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x7fffffff, 0xfffffeffffffffff, 1, x2, 920, x7)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 116*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
