
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1 == rd, rs1==x3, rd==x3, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -34359738369
# opcode: srai ; op1:x3; dest:x3; op1val:0xfffffff7ffffffff;  immval:10
TEST_IMM_OP( srai, x3, x3, 0x3fffff, 0xfffffff7ffffffff, 10, x5, 0, x14)

# rs1 != rd, rs1==x29, rd==x21, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 1048576, imm_val == 47
# opcode: srai ; op1:x29; dest:x21; op1val:0x0000000000100000;  immval:47
TEST_IMM_OP( srai, x21, x29, 0x20, 0x0000000000100000, 47, x5, 8, x14)

# rs1==x9, rd==x10, rs1_val < 0 and imm_val == 0, rs1_val == -2
# opcode: srai ; op1:x9; dest:x10; op1val:0xfffffffffffffffe;  immval:0
TEST_IMM_OP( srai, x10, x9, 0xfffffffe, 0xfffffffffffffffe, 0, x5, 16, x14)

# rs1==x22, rd==x16, rs1_val > 0 and imm_val == 0, rs1_val == 4398046511104
# opcode: srai ; op1:x22; dest:x16; op1val:0x0000040000000000;  immval:0
TEST_IMM_OP( srai, x16, x22, 0x0, 0x0000040000000000, 0, x5, 24, x14)

# rs1==x31, rd==x1, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -2147483649
# opcode: srai ; op1:x31; dest:x1; op1val:0xffffffff7fffffff;  immval:63
TEST_IMM_OP( srai, x1, x31, 0x0, 0xffffffff7fffffff, 63, x5, 32, x14)

# rs1==x12, rd==x8, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 2097152
# opcode: srai ; op1:x12; dest:x8; op1val:0x0000000000200000;  immval:63
TEST_IMM_OP( srai, x8, x12, 0x0, 0x0000000000200000, 63, x5, 40, x14)

# rs1==x0, rd==x11, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, 
# opcode: srai ; op1:x0; dest:x11; op1val:0x0000000000000007;  immval:7
TEST_IMM_OP( srai, x11, x0, 0x0, 0x0000000000000007, 7, x5, 48, x14)

# rs1==x25, rd==x9, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -9223372036854775808
# opcode: srai ; op1:x25; dest:x9; op1val:0x8000000000000000;  immval:9
TEST_IMM_OP( srai, x9, x25, 0x0, 0x8000000000000000, 9, x5, 56, x14)

# rs1==x4, rd==x24, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: srai ; op1:x4; dest:x24; op1val:0x0000000000000000;  immval:3
TEST_IMM_OP( srai, x24, x4, 0x0, 0x0000000000000000, 3, x5, 64, x14)

# rs1==x24, rd==x25, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 9223372036854775807, imm_val == 2
# opcode: srai ; op1:x24; dest:x25; op1val:0x7fffffffffffffff;  immval:2
TEST_IMM_OP( srai, x25, x24, 0x3fffffff, 0x7fffffffffffffff, 2, x5, 72, x14)

# rs1==x1, rd==x15, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: srai ; op1:x1; dest:x15; op1val:0x0000000000000001;  immval:3
TEST_IMM_OP( srai, x15, x1, 0x0, 0x0000000000000001, 3, x5, 80, x14)

# rs1==x11, rd==x13, imm_val == 1, rs1_val == 144115188075855872
# opcode: srai ; op1:x11; dest:x13; op1val:0x0200000000000000;  immval:1
TEST_IMM_OP( srai, x13, x11, 0x0, 0x0200000000000000, 1, x5, 88, x14)

# rs1==x28, rd==x17, imm_val == 4, 
# opcode: srai ; op1:x28; dest:x17; op1val:0xfffffff7ffffffff;  immval:4
TEST_IMM_OP( srai, x17, x28, 0xfffffff, 0xfffffff7ffffffff, 4, x5, 96, x14)

# rs1==x27, rd==x6, imm_val == 8, rs1_val == 4194304
# opcode: srai ; op1:x27; dest:x6; op1val:0x0000000000400000;  immval:8
TEST_IMM_OP( srai, x6, x27, 0x4000, 0x0000000000400000, 8, x5, 104, x14)

# rs1==x20, rd==x27, imm_val == 16, 
# opcode: srai ; op1:x20; dest:x27; op1val:0xfffffffffffffff6;  immval:16
TEST_IMM_OP( srai, x27, x20, 0xffff, 0xfffffffffffffff6, 16, x5, 112, x14)

# rs1==x13, rd==x28, imm_val == 32, rs1_val == 2048
# opcode: srai ; op1:x13; dest:x28; op1val:0x0000000000000800;  immval:32
TEST_IMM_OP( srai, x28, x13, 0x800, 0x0000000000000800, 32, x5, 120, x14)

# rs1==x6, rd==x12, imm_val == 62, rs1_val == -134217729
# opcode: srai ; op1:x6; dest:x12; op1val:0xfffffffff7ffffff;  immval:62
TEST_IMM_OP( srai, x12, x6, 0x3, 0xfffffffff7ffffff, 62, x5, 128, x14)

# rs1==x7, rd==x23, imm_val == 61, rs1_val == -8388609
# opcode: srai ; op1:x7; dest:x23; op1val:0xffffffffff7fffff;  immval:61
TEST_IMM_OP( srai, x23, x7, 0x7, 0xffffffffff7fffff, 61, x5, 136, x14)

# rs1==x17, rd==x4, imm_val == 59, rs1_val == -2097153
# opcode: srai ; op1:x17; dest:x4; op1val:0xffffffffffdfffff;  immval:59
TEST_IMM_OP( srai, x4, x17, 0x1f, 0xffffffffffdfffff, 59, x5, 144, x14)

# rs1==x15, rd==x29, imm_val == 55, rs1_val == -576460752303423489
# opcode: srai ; op1:x15; dest:x29; op1val:0xf7ffffffffffffff;  immval:55
TEST_IMM_OP( srai, x29, x15, 0x1ff, 0xf7ffffffffffffff, 55, x5, 152, x14)

# rs1==x10, rd==x30, imm_val == 31, rs1_val == 140737488355328
# opcode: srai ; op1:x10; dest:x30; op1val:0x0000800000000000;  immval:31
TEST_IMM_OP( srai, x30, x10, 0x0, 0x0000800000000000, 31, x5, 160, x14)

# rs1==x30, rd==x2, imm_val == 21, 
# opcode: srai ; op1:x30; dest:x2; op1val:0x0000000000000007;  immval:21
TEST_IMM_OP( srai, x2, x30, 0x0, 0x0000000000000007, 21, x5, 168, x14)

# rs1==x16, rd==x26, imm_val == 42, rs1_val == -65537
# opcode: srai ; op1:x16; dest:x26; op1val:0xfffffffffffeffff;  immval:42
TEST_IMM_OP( srai, x26, x16, 0x3fffbf, 0xfffffffffffeffff, 42, x5, 176, x14)

# rs1==x21, rd==x0, rs1_val == 2, 
# opcode: srai ; op1:x21; dest:x0; op1val:0x0000000000000002;  immval:13
TEST_IMM_OP( srai, x0, x21, 0x0, 0x0000000000000002, 13, x5, 184, x3)

# rs1==x2, rd==x18, rs1_val == 4, 
# opcode: srai ; op1:x2; dest:x18; op1val:0x0000000000000004;  immval:61
TEST_IMM_OP( srai, x18, x2, 0x0, 0x0000000000000004, 61, x5, 192, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x23, rd==x14, rs1_val == 8, 
# opcode: srai ; op1:x23; dest:x14; op1val:0x0000000000000008;  immval:4
TEST_IMM_OP( srai, x14, x23, 0x0, 0x0000000000000008, 4, x1, 0, x3)

# rs1==x19, rd==x22, rs1_val == 16, 
# opcode: srai ; op1:x19; dest:x22; op1val:0x0000000000000010;  immval:8
TEST_IMM_OP( srai, x22, x19, 0x0, 0x0000000000000010, 8, x1, 8, x3)

# rs1==x8, rd==x5, rs1_val == 32, 
# opcode: srai ; op1:x8; dest:x5; op1val:0x0000000000000020;  immval:4
TEST_IMM_OP( srai, x5, x8, 0x2, 0x0000000000000020, 4, x1, 16, x3)

# rs1==x26, rd==x31, rs1_val == 64, 
# opcode: srai ; op1:x26; dest:x31; op1val:0x0000000000000040;  immval:19
TEST_IMM_OP( srai, x31, x26, 0x0, 0x0000000000000040, 19, x1, 24, x3)

# rs1==x18, rd==x20, rs1_val == 128, 
# opcode: srai ; op1:x18; dest:x20; op1val:0x0000000000000080;  immval:17
TEST_IMM_OP( srai, x20, x18, 0x0, 0x0000000000000080, 17, x1, 32, x3)

# rs1==x14, rd==x19, rs1_val == 256, 
# opcode: srai ; op1:x14; dest:x19; op1val:0x0000000000000100;  immval:18
TEST_IMM_OP( srai, x19, x14, 0x0, 0x0000000000000100, 18, x1, 40, x3)

# rs1==x5, rd==x7, rs1_val == 512, 
# opcode: srai ; op1:x5; dest:x7; op1val:0x0000000000000200;  immval:1
TEST_IMM_OP( srai, x7, x5, 0x100, 0x0000000000000200, 1, x1, 48, x3)

# rs1_val == 1024, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000400;  immval:8
TEST_IMM_OP( srai, x11, x10, 0x4, 0x0000000000000400, 8, x1, 56, x3)

# rs1_val == 4096, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000001000, 14, x1, 64, x3)

# rs1_val == 8192, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000002000, 61, x1, 72, x3)

# rs1_val == 16384, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000004000, 18, x1, 80, x3)

# rs1_val == 32768, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000008000, 17, x1, 88, x3)

# rs1_val == 65536, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x1000, 0x0000000000010000, 4, x1, 96, x3)

# rs1_val == 131072, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x4, 0x0000000000020000, 47, x1, 104, x3)

# rs1_val == 262144, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x8, 0x0000000000040000, 15, x1, 112, x3)

# rs1_val == 524288, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x100, 0x0000000000080000, 11, x1, 120, x3)

# rs1_val == 8388608, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x800000, 0x0000000000800000, 0, x1, 128, x3)

# rs1_val == 16777216, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000001000000, 31, x1, 136, x3)

# rs1_val == 33554432, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x200000, 0x0000000002000000, 4, x1, 144, x3)

# rs1_val == 67108864, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x800, 0x0000000004000000, 15, x1, 152, x3)

# rs1_val == 134217728, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000008000000, 61, x1, 160, x3)

# rs1_val == 268435456, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x200000, 0x0000000010000000, 7, x1, 168, x3)

# rs1_val == 536870912, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:32
TEST_IMM_OP( srai, x11, x10, 0x20000000, 0x0000000020000000, 32, x1, 176, x3)

# rs1_val == 1073741824, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x80000, 0x0000000040000000, 11, x1, 184, x3)

# rs1_val == 2147483648, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x4000000, 0x0000000080000000, 5, x1, 192, x3)

# rs1_val == 4294967296, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000100000000, 4, x1, 200, x3)

# rs1_val == 8589934592, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000200000000, 0, x1, 208, x3)

# rs1_val == 17179869184, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000400000000, 6, x1, 216, x3)

# rs1_val == 34359738368, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000800000000, 6, x1, 224, x3)

# rs1_val == 68719476736, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000001000000000, 15, x1, 232, x3)

# rs1_val == 137438953472, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000002000000000, 14, x1, 240, x3)

# rs1_val == 274877906944, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000004000000000, 17, x1, 248, x3)

# rs1_val == 549755813888, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000008000000000, 18, x1, 256, x3)

# rs1_val == 1099511627776, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000010000000000, 5, x1, 264, x3)

# rs1_val == 2199023255552, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000020000000000, 5, x1, 272, x3)

# rs1_val == 8796093022208, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000080000000000, 16, x1, 280, x3)

# rs1_val == 17592186044416, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000100000000000, 2, x1, 288, x3)

# rs1_val == 35184372088832, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000200000000000, 59, x1, 296, x3)

# rs1_val == 70368744177664, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000400000000000, 3, x1, 304, x3)

# rs1_val == 281474976710656, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0001000000000000, 61, x1, 312, x3)

# rs1_val == 562949953421312, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0002000000000000, 14, x1, 320, x3)

# rs1_val == 1125899906842624, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0004000000000000, 4, x1, 328, x3)

# rs1_val == 2251799813685248, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:32
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0008000000000000, 32, x1, 336, x3)

# rs1_val == 4503599627370496, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0010000000000000, 13, x1, 344, x3)

# rs1_val == 9007199254740992, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0020000000000000, 4, x1, 352, x3)

# rs1_val == 18014398509481984, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0040000000000000, 61, x1, 360, x3)

# rs1_val == 36028797018963968, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0080000000000000, 16, x1, 368, x3)

# rs1_val == -549755813889, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xffffff7fffffffff, 5, x1, 376, x3)

# rs1_val == -1099511627777, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1fffffff, 0xfffffeffffffffff, 3, x1, 384, x3)

# rs1_val == -2199023255553, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x7fffff, 0xfffffdffffffffff, 9, x1, 392, x3)

# rs1_val == -4398046511105, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1fffffff, 0xfffffbffffffffff, 3, x1, 400, x3)

# rs1_val == -8796093022209, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xfffff7ffffffffff, 18, x1, 408, x3)

# rs1_val == -17592186044417, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ffff, 0xffffefffffffffff, 13, x1, 416, x3)

# rs1_val == -35184372088833, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffffdfffffffffff, 10, x1, 424, x3)

# rs1_val == -70368744177665, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xffffbfffffffffff, 61, x1, 432, x3)

# rs1_val == -140737488355329, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xffff7fffffffffff, 4, x1, 440, x3)

# rs1_val == -281474976710657, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fffffff, 0xfffeffffffffffff, 2, x1, 448, x3)

# rs1_val == -562949953421313, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xfffdffffffffffff, 11, x1, 456, x3)

# rs1_val == -1125899906842625, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x1, 0xfffbffffffffffff, 63, x1, 464, x3)

# rs1_val == -2251799813685249, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fffffff, 0xfff7ffffffffffff, 2, x1, 472, x3)

# rs1_val == -4503599627370497, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xffefffffffffffff, 31, x1, 480, x3)

# rs1_val == -9007199254740993, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xffdfffffffffffff, 19, x1, 488, x3)

# rs1_val == -18014398509481985, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffbfffffffffffff, 42, x1, 496, x3)

# rs1_val == -36028797018963969, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xff7fffffffffffff, 19, x1, 504, x3)

# rs1_val == -72057594037927937, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xfeffffffffffffff, 55, x1, 512, x3)

# rs1_val == -144115188075855873, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:32
TEST_IMM_OP( srai, x11, x10, 0xffffffff, 0xfdffffffffffffff, 32, x1, 520, x3)

# rs1_val == -288230376151711745, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfbffffffffffffff, 59, x1, 528, x3)

# rs1_val == -1152921504606846977, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xefffffffffffffff, 5, x1, 536, x3)

# rs1_val == -2305843009213693953, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xdfffffffffffffff, 11, x1, 544, x3)

# rs1_val == -4611686018427387905, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xbfffffffffffffff, 21, x1, 552, x3)

# rs1_val == 6148914691236517205, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:7
TEST_IMM_OP( srai, x11, x10, 0xaaaaaa, 0x5555555555555555, 7, x1, 560, x3)

# rs1_val == -6148914691236517206, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1555, 0xaaaaaaaaaaaaaaaa, 19, x1, 568, x3)

# rs1_val == 72057594037927936, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0100000000000000, 4, x1, 576, x3)

# rs1_val == 288230376151711744, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0400000000000000, 61, x1, 584, x3)

# rs1_val == 576460752303423488, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0800000000000000, 5, x1, 592, x3)

# rs1_val == 1152921504606846976, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x0, 0x1000000000000000, 19, x1, 600, x3)

# rs1_val == 2305843009213693952, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x0, 0x2000000000000000, 62, x1, 608, x3)

# rs1_val == 4611686018427387904, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x4000000000000000, 31, x1, 616, x3)

# rs1_val == -3, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xfffffffffffffffd, 14, x1, 624, x3)

# rs1_val == -5, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xfffffffffffffffb, 4, x1, 632, x3)

# rs1_val == -9, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xfffffffffffffff7, 14, x1, 640, x3)

# rs1_val == -17, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffffffffffffffef, 42, x1, 648, x3)

# rs1_val == -33, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xffffff, 0xffffffffffffffdf, 8, x1, 656, x3)

# rs1_val == -65, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xffffffffffffffbf, 59, x1, 664, x3)

# rs1_val == -129, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7fffffbf, 0xffffffffffffff7f, 1, x1, 672, x3)

# rs1_val == -257, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xfffffffffffffeff, 61, x1, 680, x3)

# rs1_val == -513, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xfffffffffffffdff, 14, x1, 688, x3)

# rs1_val == -1025, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:16
TEST_IMM_OP( srai, x11, x10, 0xffff, 0xfffffffffffffbff, 16, x1, 696, x3)

# rs1_val == -2049, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3ffffd, 0xfffffffffffff7ff, 42, x1, 704, x3)

# rs1_val == -4097, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1ffffdff, 0xffffffffffffefff, 3, x1, 712, x3)

# rs1_val == -8193, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xffffffffffffdfff, 62, x1, 720, x3)

# rs1_val == -16385, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xffffffffffffbfff, 59, x1, 728, x3)

# rs1_val == -32769, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7fffbfff, 0xffffffffffff7fff, 1, x1, 736, x3)

# rs1_val == -131073, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xfffffffffffdffff, 31, x1, 744, x3)

# rs1_val == -262145, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x1fff7, 0xfffffffffffbffff, 47, x1, 752, x3)

# rs1_val == -524289, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffef, 0xfffffffffff7ffff, 15, x1, 760, x3)

# rs1_val == -1048577, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xffffffffffefffff, 21, x1, 768, x3)

# rs1_val == -4194305, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3feffff, 0xffffffffffbfffff, 6, x1, 776, x3)

# rs1_val == -16777217, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7f7ff, 0xfffffffffeffffff, 13, x1, 784, x3)

# rs1_val == -33554433, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fbfff, 0xfffffffffdffffff, 11, x1, 792, x3)

# rs1_val == -67108865, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xfbffffff, 0xfffffffffbffffff, 0, x1, 800, x3)

# rs1_val == -268435457, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3bff, 0xffffffffefffffff, 18, x1, 808, x3)

# rs1_val == -536870913, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xdfffff, 0xffffffffdfffffff, 8, x1, 816, x3)

# rs1_val == -1073741825, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x5ffff, 0xffffffffbfffffff, 13, x1, 824, x3)

# rs1_val == -4294967297, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xfffffffeffffffff, 47, x1, 832, x3)

# rs1_val == -8589934593, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xfffffffdffffffff, 62, x1, 840, x3)

# rs1_val == -17179869185, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xfffffffbffffffff, 62, x1, 848, x3)

# rs1_val == -68719476737, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xffffffefffffffff, 59, x1, 856, x3)

# rs1_val == -137438953473, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xffffffdfffffffff, 47, x1, 864, x3)

# rs1_val == -274877906945, 
# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xffffffbfffffffff, 15, x1, 872, x3)

# rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -34359738369
# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xfffffff7ffffffff, 10, x1, 880, x3)

# rs1_val == imm_val and imm_val > 0 and imm_val < xlen, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000007;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000000007, 7, x1, 888, x3)

# rs1_val == 2, 
# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000002;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000000002, 13, x1, 896, x3)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 25*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
