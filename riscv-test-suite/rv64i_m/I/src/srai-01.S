
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rd, rs1==x26, rd==x17, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -16385
# opcode: srai ; op1:x26; dest:x17; op1val:0xffffffffffffbfff;  immval:3
TEST_IMM_OP( srai, x17, x26, 0x1ffff7ff, 0xffffffffffffbfff, 3, x7, 0, x21)

# rs1 == rd, rs1==x10, rd==x10, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 562949953421312, imm_val == 21
# opcode: srai ; op1:x10; dest:x10; op1val:0x0002000000000000;  immval:21
TEST_IMM_OP( srai, x10, x10, 0x0, 0x0002000000000000, 21, x7, 8, x21)

# rs1==x2, rd==x1, rs1_val < 0 and imm_val == 0, rs1_val == -268435457
# opcode: srai ; op1:x2; dest:x1; op1val:0xffffffffefffffff;  immval:0
TEST_IMM_OP( srai, x1, x2, 0xefffffff, 0xffffffffefffffff, 0, x7, 16, x21)

# rs1==x23, rd==x15, rs1_val > 0 and imm_val == 0, rs1_val == 34359738368
# opcode: srai ; op1:x23; dest:x15; op1val:0x0000000800000000;  immval:0
TEST_IMM_OP( srai, x15, x23, 0x0, 0x0000000800000000, 0, x7, 24, x21)

# rs1==x27, rd==x13, rs1_val < 0 and imm_val == (xlen-1), 
# opcode: srai ; op1:x27; dest:x13; op1val:0xfffffffffffffffa;  immval:63
TEST_IMM_OP( srai, x13, x27, 0x1, 0xfffffffffffffffa, 63, x7, 32, x21)

# rs1==x13, rd==x29, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 144115188075855872
# opcode: srai ; op1:x13; dest:x29; op1val:0x0200000000000000;  immval:63
TEST_IMM_OP( srai, x29, x13, 0x0, 0x0200000000000000, 63, x7, 40, x21)

# rs1==x15, rd==x6, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, 
# opcode: srai ; op1:x15; dest:x6; op1val:0x0000000000000009;  immval:9
TEST_IMM_OP( srai, x6, x15, 0x0, 0x0000000000000009, 9, x7, 48, x21)

# rs1==x19, rd==x12, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -9223372036854775808
# opcode: srai ; op1:x19; dest:x12; op1val:0x8000000000000000;  immval:14
TEST_IMM_OP( srai, x12, x19, 0x0, 0x8000000000000000, 14, x7, 56, x21)

# rs1==x16, rd==x19, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srai ; op1:x16; dest:x19; op1val:0x0000000000000000;  immval:9
TEST_IMM_OP( srai, x19, x16, 0x0, 0x0000000000000000, 9, x7, 64, x21)

# rs1==x3, rd==x18, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 9223372036854775807
# opcode: srai ; op1:x3; dest:x18; op1val:0x7fffffffffffffff;  immval:21
TEST_IMM_OP( srai, x18, x3, 0x7ff, 0x7fffffffffffffff, 21, x7, 72, x21)

# rs1==x6, rd==x4, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: srai ; op1:x6; dest:x4; op1val:0x0000000000000001;  immval:0
TEST_IMM_OP( srai, x4, x6, 0x1, 0x0000000000000001, 0, x7, 80, x21)

# rs1==x4, rd==x8, imm_val == 1, rs1_val == -134217729
# opcode: srai ; op1:x4; dest:x8; op1val:0xfffffffff7ffffff;  immval:1
TEST_IMM_OP( srai, x8, x4, 0x7bffffff, 0xfffffffff7ffffff, 1, x7, 88, x21)

# rs1==x14, rd==x20, imm_val == 2, rs1_val == -4398046511105
# opcode: srai ; op1:x14; dest:x20; op1val:0xfffffbffffffffff;  immval:2
TEST_IMM_OP( srai, x20, x14, 0x3fffffff, 0xfffffbffffffffff, 2, x7, 96, x21)

# rs1==x28, rd==x24, imm_val == 4, 
# opcode: srai ; op1:x28; dest:x24; op1val:0xffffffffefffffff;  immval:4
TEST_IMM_OP( srai, x24, x28, 0xeffffff, 0xffffffffefffffff, 4, x7, 104, x21)

# rs1==x24, rd==x23, imm_val == 8, rs1_val == -2251799813685249
# opcode: srai ; op1:x24; dest:x23; op1val:0xfff7ffffffffffff;  immval:8
TEST_IMM_OP( srai, x23, x24, 0xffffff, 0xfff7ffffffffffff, 8, x7, 112, x21)

# rs1==x9, rd==x28, imm_val == 16, rs1_val == 268435456
# opcode: srai ; op1:x9; dest:x28; op1val:0x0000000010000000;  immval:16
TEST_IMM_OP( srai, x28, x9, 0x1000, 0x0000000010000000, 16, x7, 120, x21)

# rs1==x8, rd==x5, imm_val == 32, rs1_val == -70368744177665
# opcode: srai ; op1:x8; dest:x5; op1val:0xffffbfffffffffff;  immval:32
TEST_IMM_OP( srai, x5, x8, 0xffffffff, 0xffffbfffffffffff, 32, x7, 128, x21)

# rs1==x12, rd==x27, imm_val == 62, rs1_val == 8796093022208
# opcode: srai ; op1:x12; dest:x27; op1val:0x0000080000000000;  immval:62
TEST_IMM_OP( srai, x27, x12, 0x0, 0x0000080000000000, 62, x7, 136, x21)

# rs1==x25, rd==x31, imm_val == 61, rs1_val == -257
# opcode: srai ; op1:x25; dest:x31; op1val:0xfffffffffffffeff;  immval:61
TEST_IMM_OP( srai, x31, x25, 0x7, 0xfffffffffffffeff, 61, x7, 144, x21)

# rs1==x0, rd==x11, imm_val == 59, rs1_val == -3
# opcode: srai ; op1:x0; dest:x11; op1val:0xfffffffffffffffd;  immval:59
TEST_IMM_OP( srai, x11, x0, 0x1f, 0xfffffffffffffffd, 59, x7, 152, x21)

# rs1==x29, rd==x16, imm_val == 55, rs1_val == -67108865
# opcode: srai ; op1:x29; dest:x16; op1val:0xfffffffffbffffff;  immval:55
TEST_IMM_OP( srai, x16, x29, 0x1f7, 0xfffffffffbffffff, 55, x7, 160, x6)

# rs1==x21, rd==x14, imm_val == 47, rs1_val == -137438953473
# opcode: srai ; op1:x21; dest:x14; op1val:0xffffffdfffffffff;  immval:47
TEST_IMM_OP( srai, x14, x21, 0x1ffff, 0xffffffdfffffffff, 47, x7, 168, x6)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x20, rd==x26, imm_val == 31, rs1_val == -5
# opcode: srai ; op1:x20; dest:x26; op1val:0xfffffffffffffffb;  immval:31
TEST_IMM_OP( srai, x26, x20, 0x1, 0xfffffffffffffffb, 31, x4, 0, x6)

# rs1==x11, rd==x22, imm_val == 42, 
# opcode: srai ; op1:x11; dest:x22; op1val:0x0000000000000007;  immval:42
TEST_IMM_OP( srai, x22, x11, 0x0, 0x0000000000000007, 42, x4, 8, x6)

# rs1==x1, rd==x25, rs1_val == 2, 
# opcode: srai ; op1:x1; dest:x25; op1val:0x0000000000000002;  immval:4
TEST_IMM_OP( srai, x25, x1, 0x0, 0x0000000000000002, 4, x4, 16, x6)

# rs1==x5, rd==x3, rs1_val == 4, 
# opcode: srai ; op1:x5; dest:x3; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( srai, x3, x5, 0x0, 0x0000000000000004, 4, x4, 24, x6)

# rs1==x17, rd==x21, rs1_val == 8, 
# opcode: srai ; op1:x17; dest:x21; op1val:0x0000000000000008;  immval:15
TEST_IMM_OP( srai, x21, x17, 0x0, 0x0000000000000008, 15, x4, 32, x6)

# rs1==x18, rd==x2, rs1_val == 16, 
# opcode: srai ; op1:x18; dest:x2; op1val:0x0000000000000010;  immval:10
TEST_IMM_OP( srai, x2, x18, 0x0, 0x0000000000000010, 10, x4, 40, x6)

# rs1==x30, rd==x7, rs1_val == 32, 
# opcode: srai ; op1:x30; dest:x7; op1val:0x0000000000000020;  immval:5
TEST_IMM_OP( srai, x7, x30, 0x1, 0x0000000000000020, 5, x4, 48, x6)

# rs1==x7, rd==x0, rs1_val == 64, 
# opcode: srai ; op1:x7; dest:x0; op1val:0x0000000000000040;  immval:3
TEST_IMM_OP( srai, x0, x7, 0x8, 0x0000000000000040, 3, x4, 56, x6)

# rs1==x22, rd==x30, rs1_val == 128, 
# opcode: srai ; op1:x22; dest:x30; op1val:0x0000000000000080;  immval:32
TEST_IMM_OP( srai, x30, x22, 0x80, 0x0000000000000080, 32, x4, 64, x6)

# rs1==x31, rd==x9, rs1_val == 256, 
# opcode: srai ; op1:x31; dest:x9; op1val:0x0000000000000100;  immval:7
TEST_IMM_OP( srai, x9, x31, 0x2, 0x0000000000000100, 7, x4, 72, x6)

# rs1_val == 512, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000200;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x200, 0x0000000000000200, 0, x4, 80, x6)

# rs1_val == 1024, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000400;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000000400, 18, x4, 88, x6)

# rs1_val == 2048, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000800;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000000800, 19, x4, 96, x6)

# rs1_val == 4096, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x80, 0x0000000000001000, 5, x4, 104, x6)

# rs1_val == 8192, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000002000, 63, x4, 112, x6)

# rs1_val == 16384, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x2000, 0x0000000000004000, 1, x4, 120, x6)

# rs1_val == 32768, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x4000, 0x0000000000008000, 1, x4, 128, x6)

# rs1_val == 65536, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x4000, 0x0000000000010000, 2, x4, 136, x6)

# rs1_val == 131072, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000020000, 21, x4, 144, x6)

# rs1_val == 262144, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000040000, 55, x4, 152, x6)

# rs1_val == 524288, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x200, 0x0000000000080000, 42, x4, 160, x6)

# rs1_val == 1048576, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x80000, 0x0000000000100000, 1, x4, 168, x6)

# rs1_val == 2097152, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x200, 0x0000000000200000, 12, x4, 176, x6)

# rs1_val == 4194304, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x800, 0x0000000000400000, 11, x4, 184, x6)

# rs1_val == 8388608, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x800000, 0x0000000000800000, 0, x4, 192, x6)

# rs1_val == 16777216, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x80, 0x0000000001000000, 17, x4, 200, x6)

# rs1_val == 33554432, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x100, 0x0000000002000000, 17, x4, 208, x6)

# rs1_val == 67108864, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000004000000, 61, x4, 216, x6)

# rs1_val == 134217728, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x1000, 0x0000000008000000, 47, x4, 224, x6)

# rs1_val == 536870912, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x2000000, 0x0000000020000000, 4, x4, 232, x6)

# rs1_val == 1073741824, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000040000000, 31, x4, 240, x6)

# rs1_val == 2147483648, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x200000, 0x0000000080000000, 42, x4, 248, x6)

# rs1_val == 4294967296, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000100000000, 1, x4, 256, x6)

# rs1_val == 8589934592, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000200000000, 31, x4, 264, x6)

# rs1_val == 17179869184, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000400000000, 17, x4, 272, x6)

# rs1_val == 68719476736, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000001000000000, 0, x4, 280, x6)

# rs1_val == 137438953472, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000002000000000, 61, x4, 288, x6)

# rs1_val == 274877906944, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000004000000000, 61, x4, 296, x6)

# rs1_val == 549755813888, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:8
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000008000000000, 8, x4, 304, x6)

# rs1_val == 1099511627776, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000010000000000, 62, x4, 312, x6)

# rs1_val == 2199023255552, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000020000000000, 47, x4, 320, x6)

# rs1_val == 4398046511104, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000040000000000, 4, x4, 328, x6)

# rs1_val == 17592186044416, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000100000000000, 6, x4, 336, x6)

# rs1_val == 35184372088832, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000200000000000, 61, x4, 344, x6)

# rs1_val == 70368744177664, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000400000000000, 12, x4, 352, x6)

# rs1_val == 140737488355328, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000800000000000, 59, x4, 360, x6)

# rs1_val == 281474976710656, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0001000000000000, 17, x4, 368, x6)

# rs1_val == 1125899906842624, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:32
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0004000000000000, 32, x4, 376, x6)

# rs1_val == 2251799813685248, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0008000000000000, 2, x4, 384, x6)

# rs1_val == 4503599627370496, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0010000000000000, 4, x4, 392, x6)

# rs1_val == -549755813889, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffffff7fffffffff, 10, x4, 400, x6)

# rs1_val == -1099511627777, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xfffffeffffffffff, 4, x4, 408, x6)

# rs1_val == -2199023255553, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xfffffdffffffffff, 31, x4, 416, x6)

# rs1_val == -8796093022209, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xfffff7ffffffffff, 62, x4, 424, x6)

# rs1_val == -17592186044417, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xffffefffffffffff, 21, x4, 432, x6)

# rs1_val == -35184372088833, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xffffdfffffffffff, 18, x4, 440, x6)

# rs1_val == -140737488355329, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xffff7fffffffffff, 59, x4, 448, x6)

# rs1_val == -281474976710657, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xfffeffffffffffff, 42, x4, 456, x6)

# rs1_val == -562949953421313, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xfffdffffffffffff, 15, x4, 464, x6)

# rs1_val == -1125899906842625, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xfffbffffffffffff, 4, x4, 472, x6)

# rs1_val == -4503599627370497, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1ffffff, 0xffefffffffffffff, 7, x4, 480, x6)

# rs1_val == -9007199254740993, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x1, 0xffdfffffffffffff, 63, x4, 488, x6)

# rs1_val == -18014398509481985, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xffbfffffffffffff, 59, x4, 496, x6)

# rs1_val == -36028797018963969, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xff7fffffffffffff, 31, x4, 504, x6)

# rs1_val == -72057594037927937, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xfeffffffffffffff, 31, x4, 512, x6)

# rs1_val == -144115188075855873, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xfdffffffffffffff, 12, x4, 520, x6)

# rs1_val == -288230376151711745, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7fffffff, 0xfbffffffffffffff, 1, x4, 528, x6)

# rs1_val == -576460752303423489, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fffffff, 0xf7ffffffffffffff, 2, x4, 536, x6)

# rs1_val == -1152921504606846977, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xefffffffffffffff, 61, x4, 544, x6)

# rs1_val == -2305843009213693953, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xdfffffffffffffff, 55, x4, 552, x6)

# rs1_val == -4611686018427387905, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xbfffffffffffffff, 12, x4, 560, x6)

# rs1_val == 6148914691236517205, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x0, 0x5555555555555555, 63, x4, 568, x6)

# rs1_val == -6148914691236517206, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xaaaaa, 0xaaaaaaaaaaaaaaaa, 12, x4, 576, x6)

# rs1_val == 9007199254740992, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0020000000000000, 14, x4, 584, x6)

# rs1_val == 18014398509481984, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0040000000000000, 2, x4, 592, x6)

# rs1_val == 36028797018963968, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0080000000000000, 16, x4, 600, x6)

# rs1_val == 72057594037927936, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0100000000000000, 18, x4, 608, x6)

# rs1_val == 288230376151711744, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0400000000000000, 1, x4, 616, x6)

# rs1_val == 576460752303423488, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0800000000000000, 6, x4, 624, x6)

# rs1_val == 1152921504606846976, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x1000000000000000, 5, x4, 632, x6)

# rs1_val == 2305843009213693952, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x0, 0x2000000000000000, 13, x4, 640, x6)

# rs1_val == 4611686018427387904, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x4000000000000000, 31, x4, 648, x6)

# rs1_val == -2, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:32
TEST_IMM_OP( srai, x11, x10, 0xfffffffe, 0xfffffffffffffffe, 32, x4, 656, x6)

# rs1_val == -9, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3ffffff, 0xfffffffffffffff7, 6, x4, 664, x6)

# rs1_val == -17, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3ffffffb, 0xffffffffffffffef, 2, x4, 672, x6)

# rs1_val == -33, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xffffffdf, 0xffffffffffffffdf, 0, x4, 680, x6)

# rs1_val == -65, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xffffffffffffffbf, 11, x4, 688, x6)

# rs1_val == -129, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xffffffffffffff7f, 19, x4, 696, x6)

# rs1_val == -513, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ffff, 0xfffffffffffffdff, 13, x4, 704, x6)

# rs1_val == -1025, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xfffffffffffffbff, 61, x4, 712, x6)

# rs1_val == -2049, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xfffffffffffff7ff, 55, x4, 720, x6)

# rs1_val == -4097, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x1, 0xffffffffffffefff, 63, x4, 728, x6)

# rs1_val == -8193, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xffffffffffffdfff, 47, x4, 736, x6)

# rs1_val == -32769, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7fffb, 0xffffffffffff7fff, 13, x4, 744, x6)

# rs1_val == -65537, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfffffffffffeffff, 59, x4, 752, x6)

# rs1_val == -131073, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fff7f, 0xfffffffffffdffff, 10, x4, 760, x6)

# rs1_val == -262145, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7ffd, 0xfffffffffffbffff, 17, x4, 768, x6)

# rs1_val == -524289, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xfffffffffff7ffff, 55, x4, 776, x6)

# rs1_val == -1048577, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1ffdff, 0xffffffffffefffff, 11, x4, 784, x6)

# rs1_val == -2097153, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7feffff, 0xffffffffffdfffff, 5, x4, 792, x6)

# rs1_val == -4194305, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1ff7ff, 0xffffffffffbfffff, 11, x4, 800, x6)

# rs1_val == -8388609, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fef, 0xffffffffff7fffff, 19, x4, 808, x6)

# rs1_val == -16777217, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x1fdff, 0xfffffffffeffffff, 47, x4, 816, x6)

# rs1_val == -33554433, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1fbffff, 0xfffffffffdffffff, 7, x4, 824, x6)

# rs1_val == -536870913, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1bffff, 0xffffffffdfffffff, 11, x4, 832, x6)

# rs1_val == -1073741825, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x17ffffff, 0xffffffffbfffffff, 3, x4, 840, x6)

# rs1_val == -2147483649, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0xffffff, 0xffffffff7fffffff, 7, x4, 848, x6)

# rs1_val == -4294967297, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xfffffffeffffffff, 4, x4, 856, x6)

# rs1_val == -8589934593, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xfffffffdffffffff, 19, x4, 864, x6)

# rs1_val == -17179869185, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xfffffffbffffffff, 5, x4, 872, x6)

# rs1_val == -34359738369, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xfffffff7ffffffff, 11, x4, 880, x6)

# rs1_val == -68719476737, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffffffefffffffff, 42, x4, 888, x6)

# rs1_val == -274877906945, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffffffbfffffffff, 42, x4, 896, x6)

# rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 562949953421312, imm_val == 21
# opcode: srai ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0002000000000000, 21, x4, 904, x6)

# imm_val == 59, rs1_val == -3
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfffffffffffffffd, 59, x4, 912, x6)

# rs1_val == 64, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000040;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x8, 0x0000000000000040, 3, x4, 920, x6)
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
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x4_0:
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
