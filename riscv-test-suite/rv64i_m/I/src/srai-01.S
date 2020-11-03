
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

RVTEST_SIGBASE( x13,signature_x13_1)

# rs1 == rd, rs1==x19, rd==x19, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -1025
# opcode: srai ; op1:x19; dest:x19; op1val:0xfffffffffffffbff;  immval:9
TEST_IMM_OP( srai, x19, x19, 0x7ffffd, 0xfffffffffffffbff, 9, x13, 0, x15)

# rs1 != rd, rs1==x21, rd==x23, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 2, imm_val == 4
# opcode: srai ; op1:x21; dest:x23; op1val:0x0000000000000002;  immval:4
TEST_IMM_OP( srai, x23, x21, 0x0, 0x0000000000000002, 4, x13, 8, x15)

# rs1==x12, rd==x28, rs1_val < 0 and imm_val == 0, rs1_val == -4503599627370497
# opcode: srai ; op1:x12; dest:x28; op1val:0xffefffffffffffff;  immval:0
TEST_IMM_OP( srai, x28, x12, 0xffffffff, 0xffefffffffffffff, 0, x13, 16, x15)

# rs1==x23, rd==x31, rs1_val > 0 and imm_val == 0, rs1_val == 2305843009213693952
# opcode: srai ; op1:x23; dest:x31; op1val:0x2000000000000000;  immval:0
TEST_IMM_OP( srai, x31, x23, 0x0, 0x2000000000000000, 0, x13, 24, x15)

# rs1==x14, rd==x4, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -549755813889
# opcode: srai ; op1:x14; dest:x4; op1val:0xffffff7fffffffff;  immval:63
TEST_IMM_OP( srai, x4, x14, 0x1, 0xffffff7fffffffff, 63, x13, 32, x15)

# rs1==x11, rd==x17, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 524288
# opcode: srai ; op1:x11; dest:x17; op1val:0x0000000000080000;  immval:63
TEST_IMM_OP( srai, x17, x11, 0x0, 0x0000000000080000, 63, x13, 40, x15)

# rs1==x26, rd==x3, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 16, imm_val == 16
# opcode: srai ; op1:x26; dest:x3; op1val:0x0000000000000010;  immval:16
TEST_IMM_OP( srai, x3, x26, 0x0, 0x0000000000000010, 16, x13, 48, x15)

# rs1==x9, rd==x2, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -9223372036854775808
# opcode: srai ; op1:x9; dest:x2; op1val:0x8000000000000000;  immval:11
TEST_IMM_OP( srai, x2, x9, 0x0, 0x8000000000000000, 11, x13, 56, x15)

# rs1==x17, rd==x9, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srai ; op1:x17; dest:x9; op1val:0x0000000000000000;  immval:11
TEST_IMM_OP( srai, x9, x17, 0x0, 0x0000000000000000, 11, x13, 64, x15)

# rs1==x10, rd==x6, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 9223372036854775807, imm_val == 61
# opcode: srai ; op1:x10; dest:x6; op1val:0x7fffffffffffffff;  immval:61
TEST_IMM_OP( srai, x6, x10, 0x7, 0x7fffffffffffffff, 61, x13, 72, x15)

# rs1==x3, rd==x5, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: srai ; op1:x3; dest:x5; op1val:0x0000000000000001;  immval:6
TEST_IMM_OP( srai, x5, x3, 0x0, 0x0000000000000001, 6, x13, 80, x15)

# rs1==x22, rd==x26, imm_val == 1, rs1_val == 2251799813685248
# opcode: srai ; op1:x22; dest:x26; op1val:0x0008000000000000;  immval:1
TEST_IMM_OP( srai, x26, x22, 0x0, 0x0008000000000000, 1, x13, 88, x15)

# rs1==x24, rd==x10, imm_val == 2, rs1_val == 72057594037927936
# opcode: srai ; op1:x24; dest:x10; op1val:0x0100000000000000;  immval:2
TEST_IMM_OP( srai, x10, x24, 0x0, 0x0100000000000000, 2, x13, 96, x15)

# rs1==x5, rd==x16, imm_val == 8, rs1_val == -144115188075855873
# opcode: srai ; op1:x5; dest:x16; op1val:0xfdffffffffffffff;  immval:8
TEST_IMM_OP( srai, x16, x5, 0xffffff, 0xfdffffffffffffff, 8, x13, 104, x15)

# rs1==x20, rd==x29, imm_val == 32, rs1_val == 512
# opcode: srai ; op1:x20; dest:x29; op1val:0x0000000000000200;  immval:32
TEST_IMM_OP( srai, x29, x20, 0x200, 0x0000000000000200, 32, x13, 112, x15)

# rs1==x4, rd==x14, imm_val == 62, 
# opcode: srai ; op1:x4; dest:x14; op1val:0x0100000000000000;  immval:62
TEST_IMM_OP( srai, x14, x4, 0x0, 0x0100000000000000, 62, x13, 120, x15)

# rs1==x28, rd==x27, imm_val == 59, rs1_val == 1152921504606846976
# opcode: srai ; op1:x28; dest:x27; op1val:0x1000000000000000;  immval:59
TEST_IMM_OP( srai, x27, x28, 0x0, 0x1000000000000000, 59, x13, 128, x15)

# rs1==x7, rd==x1, imm_val == 55, rs1_val == 4398046511104
# opcode: srai ; op1:x7; dest:x1; op1val:0x0000040000000000;  immval:55
TEST_IMM_OP( srai, x1, x7, 0x0, 0x0000040000000000, 55, x13, 136, x15)

# rs1==x1, rd==x24, imm_val == 47, rs1_val == -2049
# opcode: srai ; op1:x1; dest:x24; op1val:0xfffffffffffff7ff;  immval:47
TEST_IMM_OP( srai, x24, x1, 0x1ffff, 0xfffffffffffff7ff, 47, x13, 144, x15)

# rs1==x29, rd==x8, imm_val == 31, rs1_val == -4097
# opcode: srai ; op1:x29; dest:x8; op1val:0xffffffffffffefff;  immval:31
TEST_IMM_OP( srai, x8, x29, 0x1, 0xffffffffffffefff, 31, x13, 152, x15)

# rs1==x6, rd==x20, imm_val == 21, rs1_val == 4096
# opcode: srai ; op1:x6; dest:x20; op1val:0x0000000000001000;  immval:21
TEST_IMM_OP( srai, x20, x6, 0x0, 0x0000000000001000, 21, x13, 160, x15)

# rs1==x25, rd==x0, imm_val == 42, rs1_val == 17592186044416
# opcode: srai ; op1:x25; dest:x0; op1val:0x0000100000000000;  immval:42
TEST_IMM_OP( srai, x0, x25, 0x0, 0x0000100000000000, 42, x13, 168, x15)

# rs1==x18, rd==x25, rs1_val == 4, 
# opcode: srai ; op1:x18; dest:x25; op1val:0x0000000000000004;  immval:8
TEST_IMM_OP( srai, x25, x18, 0x0, 0x0000000000000004, 8, x13, 176, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x16, rd==x15, rs1_val == 8, 
# opcode: srai ; op1:x16; dest:x15; op1val:0x0000000000000008;  immval:31
TEST_IMM_OP( srai, x15, x16, 0x0, 0x0000000000000008, 31, x1, 0, x3)

# rs1==x27, rd==x11, rs1_val == 32, 
# opcode: srai ; op1:x27; dest:x11; op1val:0x0000000000000020;  immval:55
TEST_IMM_OP( srai, x11, x27, 0x0, 0x0000000000000020, 55, x1, 8, x3)

# rs1==x30, rd==x21, rs1_val == 64, 
# opcode: srai ; op1:x30; dest:x21; op1val:0x0000000000000040;  immval:16
TEST_IMM_OP( srai, x21, x30, 0x0, 0x0000000000000040, 16, x1, 16, x3)

# rs1==x13, rd==x7, rs1_val == 128, 
# opcode: srai ; op1:x13; dest:x7; op1val:0x0000000000000080;  immval:3
TEST_IMM_OP( srai, x7, x13, 0x10, 0x0000000000000080, 3, x1, 24, x3)

# rs1==x31, rd==x12, rs1_val == 256, 
# opcode: srai ; op1:x31; dest:x12; op1val:0x0000000000000100;  immval:7
TEST_IMM_OP( srai, x12, x31, 0x2, 0x0000000000000100, 7, x1, 32, x3)

# rs1==x15, rd==x30, rs1_val == 1024, 
# opcode: srai ; op1:x15; dest:x30; op1val:0x0000000000000400;  immval:13
TEST_IMM_OP( srai, x30, x15, 0x0, 0x0000000000000400, 13, x1, 40, x3)

# rs1==x8, rd==x22, rs1_val == 2048, 
# opcode: srai ; op1:x8; dest:x22; op1val:0x0000000000000800;  immval:8
TEST_IMM_OP( srai, x22, x8, 0x8, 0x0000000000000800, 8, x1, 48, x3)

# rs1==x2, rd==x18, rs1_val == 8192, 
# opcode: srai ; op1:x2; dest:x18; op1val:0x0000000000002000;  immval:3
TEST_IMM_OP( srai, x18, x2, 0x400, 0x0000000000002000, 3, x1, 56, x3)

# rs1==x0, rd==x13, rs1_val == 16384, 
# opcode: srai ; op1:x0; dest:x13; op1val:0x0000000000004000;  immval:3
TEST_IMM_OP( srai, x13, x0, 0x800, 0x0000000000004000, 3, x1, 64, x3)

# rs1_val == 32768, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1, 0x0000000000008000, 15, x1, 72, x3)

# rs1_val == 65536, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x2, 0x0000000000010000, 47, x1, 80, x3)

# rs1_val == 131072, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x400, 0x0000000000020000, 7, x1, 88, x3)

# rs1_val == 262144, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000040000, 31, x1, 96, x3)

# rs1_val == 1048576, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000100000, 31, x1, 104, x3)

# rs1_val == 2097152, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x10000, 0x0000000000200000, 5, x1, 112, x3)

# rs1_val == 4194304, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x20000, 0x0000000000400000, 5, x1, 120, x3)

# rs1_val == 8388608, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x80000, 0x0000000000800000, 4, x1, 128, x3)

# rs1_val == 16777216, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x20000, 0x0000000001000000, 7, x1, 136, x3)

# rs1_val == 33554432, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000002000000, 62, x1, 144, x3)

# rs1_val == 67108864, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x80, 0x0000000004000000, 19, x1, 152, x3)

# rs1_val == 134217728, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x100000, 0x0000000008000000, 7, x1, 160, x3)

# rs1_val == 268435456, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x8000, 0x0000000010000000, 13, x1, 168, x3)

# rs1_val == 536870912, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000020000000, 31, x1, 176, x3)

# rs1_val == 1073741824, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000040000000, 31, x1, 184, x3)

# rs1_val == 2147483648, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x400, 0x0000000080000000, 21, x1, 192, x3)

# rs1_val == 4294967296, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000100000000, 0, x1, 200, x3)

# rs1_val == 8589934592, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000200000000, 5, x1, 208, x3)

# rs1_val == 17179869184, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000400000000, 3, x1, 216, x3)

# rs1_val == 34359738368, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000800000000, 15, x1, 224, x3)

# rs1_val == 68719476736, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:32
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000001000000000, 32, x1, 232, x3)

# rs1_val == 137438953472, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000002000000000, 11, x1, 240, x3)

# rs1_val == 274877906944, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000004000000000, 10, x1, 248, x3)

# rs1_val == 549755813888, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000008000000000, 0, x1, 256, x3)

# rs1_val == 1099511627776, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000010000000000, 5, x1, 264, x3)

# rs1_val == 2199023255552, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000020000000000, 1, x1, 272, x3)

# rs1_val == 8796093022208, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000080000000000, 14, x1, 280, x3)

# rs1_val == 35184372088832, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000200000000000, 16, x1, 288, x3)

# rs1_val == 70368744177664, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000400000000000, 17, x1, 296, x3)

# rs1_val == 140737488355328, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000800000000000, 62, x1, 304, x3)

# rs1_val == 281474976710656, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0001000000000000, 61, x1, 312, x3)

# rs1_val == 562949953421312, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0002000000000000, 62, x1, 320, x3)

# rs1_val == 1125899906842624, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:32
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0004000000000000, 32, x1, 328, x3)

# rs1_val == 4503599627370496, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0010000000000000, 15, x1, 336, x3)

# rs1_val == 9007199254740992, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0020000000000000, 19, x1, 344, x3)

# rs1_val == 18014398509481984, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0040000000000000, 21, x1, 352, x3)

# rs1_val == 36028797018963968, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0080000000000000, 12, x1, 360, x3)

# rs1_val == -1099511627777, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xfffffeffffffffff, 15, x1, 368, x3)

# rs1_val == -2199023255553, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xfffffdffffffffff, 10, x1, 376, x3)

# rs1_val == -4398046511105, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xfffffbffffffffff, 47, x1, 384, x3)

# rs1_val == -8796093022209, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x1, 0xfffff7ffffffffff, 63, x1, 392, x3)

# rs1_val == -17592186044417, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xffffefffffffffff, 12, x1, 400, x3)

# rs1_val == -35184372088833, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fffffff, 0xffffdfffffffffff, 2, x1, 408, x3)

# rs1_val == -70368744177665, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3ffffff, 0xffffbfffffffffff, 6, x1, 416, x3)

# rs1_val == -140737488355329, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xffff7fffffffffff, 15, x1, 424, x3)

# rs1_val == -281474976710657, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xfffeffffffffffff, 10, x1, 432, x3)

# rs1_val == -562949953421313, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xfffdffffffffffff, 14, x1, 440, x3)

# rs1_val == -1125899906842625, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xfffbffffffffffff, 62, x1, 448, x3)

# rs1_val == -2251799813685249, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xfff7ffffffffffff, 11, x1, 456, x3)

# rs1_val == -9007199254740993, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xffdfffffffffffff, 21, x1, 464, x3)

# rs1_val == -18014398509481985, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xffbfffffffffffff, 15, x1, 472, x3)

# rs1_val == -36028797018963969, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xff7fffffffffffff, 4, x1, 480, x3)

# rs1_val == -72057594037927937, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xfeffffffffffffff, 14, x1, 488, x3)

# rs1_val == -288230376151711745, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3ffffff, 0xfbffffffffffffff, 6, x1, 496, x3)

# rs1_val == -576460752303423489, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xf7ffffffffffffff, 10, x1, 504, x3)

# rs1_val == -1152921504606846977, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xefffffffffffffff, 62, x1, 512, x3)

# rs1_val == -2305843009213693953, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3ffffff, 0xdfffffffffffffff, 6, x1, 520, x3)

# rs1_val == -4611686018427387905, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xbfffffffffffffff, 21, x1, 528, x3)

# rs1_val == 6148914691236517205, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x15555, 0x5555555555555555, 14, x1, 536, x3)

# rs1_val == -6148914691236517206, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1555555, 0xaaaaaaaaaaaaaaaa, 7, x1, 544, x3)

# rs1_val == 144115188075855872, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0200000000000000, 31, x1, 552, x3)

# rs1_val == 288230376151711744, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0400000000000000, 47, x1, 560, x3)

# rs1_val == 576460752303423488, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0800000000000000, 19, x1, 568, x3)

# rs1_val == 4611686018427387904, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x0, 0x4000000000000000, 10, x1, 576, x3)

# rs1_val == -2, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:16
TEST_IMM_OP( srai, x11, x10, 0xffff, 0xfffffffffffffffe, 16, x1, 584, x3)

# rs1_val == -3, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xfffffffffffffffd, 12, x1, 592, x3)

# rs1_val == -5, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7fff, 0xfffffffffffffffb, 17, x1, 600, x3)

# rs1_val == -9, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7fff, 0xfffffffffffffff7, 17, x1, 608, x3)

# rs1_val == -17, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffffffffffffffef, 10, x1, 616, x3)

# rs1_val == -33, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xffffffffffffffdf, 12, x1, 624, x3)

# rs1_val == -65, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffffffffffffffbf, 42, x1, 632, x3)

# rs1_val == -129, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xffffffffffffff7f, 61, x1, 640, x3)

# rs1_val == -257, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:32
TEST_IMM_OP( srai, x11, x10, 0xfffffeff, 0xfffffffffffffeff, 32, x1, 648, x3)

# rs1_val == -513, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xfffffffffffffdff, 62, x1, 656, x3)

# rs1_val == -8193, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xffffffffffffdfff, 31, x1, 664, x3)

# rs1_val == -16385, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7fffd, 0xffffffffffffbfff, 13, x1, 672, x3)

# rs1_val == -32769, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xffffffffffff7fff, 31, x1, 680, x3)

# rs1_val == -65537, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xfffeffff, 0xfffffffffffeffff, 0, x1, 688, x3)

# rs1_val == -131073, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xfffffffffffdffff, 31, x1, 696, x3)

# rs1_val == -262145, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xfffffffffffbffff, 55, x1, 704, x3)

# rs1_val == -524289, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1ffefff, 0xfffffffffff7ffff, 7, x1, 712, x3)

# rs1_val == -1048577, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ff7f, 0xffffffffffefffff, 13, x1, 720, x3)

# rs1_val == -2097153, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7fe, 0xffffffffffdfffff, 21, x1, 728, x3)

# rs1_val == -4194305, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xffffffffffbfffff, 61, x1, 736, x3)

# rs1_val == -8388609, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fdfffff, 0xffffffffff7fffff, 2, x1, 744, x3)

# rs1_val == -16777217, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfefffff, 0xfffffffffeffffff, 4, x1, 752, x3)

# rs1_val == -33554433, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3f7fffff, 0xfffffffffdffffff, 2, x1, 760, x3)

# rs1_val == -67108865, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7dffffff, 0xfffffffffbffffff, 1, x1, 768, x3)

# rs1_val == -134217729, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1e, 0xfffffffff7ffffff, 59, x1, 776, x3)

# rs1_val == -268435457, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x77f, 0xffffffffefffffff, 21, x1, 784, x3)

# rs1_val == -536870913, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x1bfff, 0xffffffffdfffffff, 47, x1, 792, x3)

# rs1_val == -1073741825, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x2ffff, 0xffffffffbfffffff, 14, x1, 800, x3)

# rs1_val == -2147483649, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:47
TEST_IMM_OP( srai, x11, x10, 0xffff, 0xffffffff7fffffff, 47, x1, 808, x3)

# rs1_val == -4294967297, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xfffffffeffffffff, 18, x1, 816, x3)

# rs1_val == -8589934593, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xfffffffdffffffff, 5, x1, 824, x3)

# rs1_val == -17179869185, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ffff, 0xfffffffbffffffff, 13, x1, 832, x3)

# rs1_val == -34359738369, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xfffffff7ffffffff, 61, x1, 840, x3)

# rs1_val == -68719476737, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7fffffff, 0xffffffefffffffff, 1, x1, 848, x3)

# rs1_val == -137438953473, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xffffffdfffffffff, 19, x1, 856, x3)

# rs1_val == -274877906945, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fffffff, 0xffffffbfffffffff, 2, x1, 864, x3)

# imm_val == 42, rs1_val == 17592186044416
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000100000000000, 42, x1, 872, x3)

# rs1_val == 16384, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x800, 0x0000000000004000, 3, x1, 880, x3)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x13_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 111*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
