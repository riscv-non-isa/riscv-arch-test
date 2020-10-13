
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

RVTEST_SIGBASE( x15,signature_x15_1)

# rs1 == rd, rs1==x23, rd==x23, rs1_val < 0 and imm_val > 0 and imm_val < xlen, imm_val == 47, rs1_val == -70368744177665
# opcode: slli ; op1:x23; dest:x23; op1val:0xffffbfffffffffff;  immval:47
TEST_IMM_OP( slli, x23, x23, 0xffff800000000000, 0xffffbfffffffffff, 47, x15, 0, x4)

# rs1 != rd, rs1==x8, rd==x7, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 16
# opcode: slli ; op1:x8; dest:x7; op1val:0x0000000000000010;  immval:12
TEST_IMM_OP( slli, x7, x8, 0x10000, 0x0000000000000010, 12, x15, 8, x4)

# rs1==x22, rd==x12, rs1_val < 0 and imm_val == 0, 
# opcode: slli ; op1:x22; dest:x12; op1val:0xc000000000000000;  immval:0
TEST_IMM_OP( slli, x12, x22, 0xc000000000000000, 0xc000000000000000, 0, x15, 16, x4)

# rs1==x5, rd==x2, rs1_val > 0 and imm_val == 0, rs1_val == 1048576
# opcode: slli ; op1:x5; dest:x2; op1val:0x0000000000100000;  immval:0
TEST_IMM_OP( slli, x2, x5, 0x100000, 0x0000000000100000, 0, x15, 24, x4)

# rs1==x29, rd==x21, rs1_val < 0 and imm_val == (xlen-1), 
# opcode: slli ; op1:x29; dest:x21; op1val:0xfffffffffffffffa;  immval:63
TEST_IMM_OP( slli, x21, x29, 0x0, 0xfffffffffffffffa, 63, x15, 32, x4)

# rs1==x27, rd==x6, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 36028797018963968
# opcode: slli ; op1:x27; dest:x6; op1val:0x0080000000000000;  immval:63
TEST_IMM_OP( slli, x6, x27, 0x0, 0x0080000000000000, 63, x15, 40, x4)

# rs1==x17, rd==x30, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, rs1_val == 2, imm_val == 2
# opcode: slli ; op1:x17; dest:x30; op1val:0x0000000000000002;  immval:2
TEST_IMM_OP( slli, x30, x17, 0x8, 0x0000000000000002, 2, x15, 48, x4)

# rs1==x20, rd==x16, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -9223372036854775808
# opcode: slli ; op1:x20; dest:x16; op1val:0x8000000000000000;  immval:13
TEST_IMM_OP( slli, x16, x20, 0x0, 0x8000000000000000, 13, x15, 56, x4)

# rs1==x11, rd==x10, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, imm_val == 32
# opcode: slli ; op1:x11; dest:x10; op1val:0x0000000000000000;  immval:32
TEST_IMM_OP( slli, x10, x11, 0x0, 0x0000000000000000, 32, x15, 64, x4)

# rs1==x30, rd==x1, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 9223372036854775807
# opcode: slli ; op1:x30; dest:x1; op1val:0x7fffffffffffffff;  immval:3
TEST_IMM_OP( slli, x1, x30, 0xfffffffffffffff8, 0x7fffffffffffffff, 3, x15, 72, x4)

# rs1==x9, rd==x25, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: slli ; op1:x9; dest:x25; op1val:0x0000000000000001;  immval:13
TEST_IMM_OP( slli, x25, x9, 0x2000, 0x0000000000000001, 13, x15, 80, x4)

# rs1==x25, rd==x20, imm_val == 1, rs1_val == 17179869184
# opcode: slli ; op1:x25; dest:x20; op1val:0x0000000400000000;  immval:1
TEST_IMM_OP( slli, x20, x25, 0x800000000, 0x0000000400000000, 1, x15, 88, x4)

# rs1==x16, rd==x29, imm_val == 4, 
# opcode: slli ; op1:x16; dest:x29; op1val:0x0000000000000009;  immval:4
TEST_IMM_OP( slli, x29, x16, 0x90, 0x0000000000000009, 4, x15, 96, x4)

# rs1==x21, rd==x3, imm_val == 8, 
# opcode: slli ; op1:x21; dest:x3; op1val:0x0000000000000006;  immval:8
TEST_IMM_OP( slli, x3, x21, 0x600, 0x0000000000000006, 8, x15, 104, x4)

# rs1==x1, rd==x14, imm_val == 16, rs1_val == 4096
# opcode: slli ; op1:x1; dest:x14; op1val:0x0000000000001000;  immval:16
TEST_IMM_OP( slli, x14, x1, 0x10000000, 0x0000000000001000, 16, x15, 112, x4)

# rs1==x26, rd==x28, imm_val == 62, rs1_val == -4194305
# opcode: slli ; op1:x26; dest:x28; op1val:0xffffffffffbfffff;  immval:62
TEST_IMM_OP( slli, x28, x26, 0xc000000000000000, 0xffffffffffbfffff, 62, x15, 120, x4)

# rs1==x3, rd==x0, imm_val == 61, rs1_val == 2199023255552
# opcode: slli ; op1:x3; dest:x0; op1val:0x0000020000000000;  immval:61
TEST_IMM_OP( slli, x0, x3, 0x0, 0x0000020000000000, 61, x15, 128, x4)

# rs1==x28, rd==x24, imm_val == 59, rs1_val == 536870912
# opcode: slli ; op1:x28; dest:x24; op1val:0x0000000020000000;  immval:59
TEST_IMM_OP( slli, x24, x28, 0x0, 0x0000000020000000, 59, x15, 136, x4)

# rs1==x14, rd==x8, imm_val == 55, rs1_val == -262145
# opcode: slli ; op1:x14; dest:x8; op1val:0xfffffffffffbffff;  immval:55
TEST_IMM_OP( slli, x8, x14, 0xff80000000000000, 0xfffffffffffbffff, 55, x15, 144, x4)

# rs1==x10, rd==x19, imm_val == 31, rs1_val == -35184372088833
# opcode: slli ; op1:x10; dest:x19; op1val:0xffffdfffffffffff;  immval:31
TEST_IMM_OP( slli, x19, x10, 0xffffffff80000000, 0xffffdfffffffffff, 31, x15, 152, x4)

# rs1==x24, rd==x5, imm_val == 21, rs1_val == -2049
# opcode: slli ; op1:x24; dest:x5; op1val:0xfffffffffffff7ff;  immval:21
TEST_IMM_OP( slli, x5, x24, 0xfffffffeffe00000, 0xfffffffffffff7ff, 21, x15, 160, x4)

# rs1==x2, rd==x18, imm_val == 42, rs1_val == -2305843009213693953
# opcode: slli ; op1:x2; dest:x18; op1val:0xdfffffffffffffff;  immval:42
TEST_IMM_OP( slli, x18, x2, 0xfffffc0000000000, 0xdfffffffffffffff, 42, x15, 168, x4)

# rs1==x4, rd==x13, rs1_val == 4, 
# opcode: slli ; op1:x4; dest:x13; op1val:0x0000000000000004;  immval:0
TEST_IMM_OP( slli, x13, x4, 0x4, 0x0000000000000004, 0, x15, 176, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x13, rd==x22, rs1_val == 8, 
# opcode: slli ; op1:x13; dest:x22; op1val:0x0000000000000008;  immval:63
TEST_IMM_OP( slli, x22, x13, 0x0, 0x0000000000000008, 63, x1, 0, x2)

# rs1==x6, rd==x9, rs1_val == 32, 
# opcode: slli ; op1:x6; dest:x9; op1val:0x0000000000000020;  immval:47
TEST_IMM_OP( slli, x9, x6, 0x10000000000000, 0x0000000000000020, 47, x1, 8, x2)

# rs1==x31, rd==x4, rs1_val == 64, 
# opcode: slli ; op1:x31; dest:x4; op1val:0x0000000000000040;  immval:18
TEST_IMM_OP( slli, x4, x31, 0x1000000, 0x0000000000000040, 18, x1, 16, x2)

# rs1==x12, rd==x27, rs1_val == 128, 
# opcode: slli ; op1:x12; dest:x27; op1val:0x0000000000000080;  immval:5
TEST_IMM_OP( slli, x27, x12, 0x1000, 0x0000000000000080, 5, x1, 24, x2)

# rs1==x18, rd==x15, rs1_val == 256, 
# opcode: slli ; op1:x18; dest:x15; op1val:0x0000000000000100;  immval:62
TEST_IMM_OP( slli, x15, x18, 0x0, 0x0000000000000100, 62, x1, 32, x2)

# rs1==x15, rd==x11, rs1_val == 512, 
# opcode: slli ; op1:x15; dest:x11; op1val:0x0000000000000200;  immval:61
TEST_IMM_OP( slli, x11, x15, 0x0, 0x0000000000000200, 61, x1, 40, x2)

# rs1==x19, rd==x31, rs1_val == 1024, 
# opcode: slli ; op1:x19; dest:x31; op1val:0x0000000000000400;  immval:63
TEST_IMM_OP( slli, x31, x19, 0x0, 0x0000000000000400, 63, x1, 48, x2)

# rs1==x0, rd==x26, rs1_val == 2048, 
# opcode: slli ; op1:x0; dest:x26; op1val:0x0000000000000800;  immval:32
TEST_IMM_OP( slli, x26, x0, 0x80000000000, 0x0000000000000800, 32, x1, 56, x2)

# rs1==x7, rd==x17, rs1_val == 8192, 
# opcode: slli ; op1:x7; dest:x17; op1val:0x0000000000002000;  immval:55
TEST_IMM_OP( slli, x17, x7, 0x0, 0x0000000000002000, 55, x1, 64, x2)

# rs1_val == 16384, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x4000, 0x0000000000004000, 0, x1, 72, x2)

# rs1_val == 32768, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:59
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000008000, 59, x1, 80, x2)

# rs1_val == 65536, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x400000000000000, 0x0000000000010000, 42, x1, 88, x2)

# rs1_val == 131072, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x100000, 0x0000000000020000, 3, x1, 96, x2)

# rs1_val == 262144, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x400000, 0x0000000000040000, 4, x1, 104, x2)

# rs1_val == 524288, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x800000, 0x0000000000080000, 4, x1, 112, x2)

# rs1_val == 2097152, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x2000000, 0x0000000000200000, 4, x1, 120, x2)

# rs1_val == 4194304, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x1000000, 0x0000000000400000, 2, x1, 128, x2)

# rs1_val == 8388608, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x1000000000, 0x0000000000800000, 13, x1, 136, x2)

# rs1_val == 16777216, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:32
TEST_IMM_OP( slli, x11, x10, 0x100000000000000, 0x0000000001000000, 32, x1, 144, x2)

# rs1_val == 33554432, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x100000000000000, 0x0000000002000000, 31, x1, 152, x2)

# rs1_val == 67108864, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:15
TEST_IMM_OP( slli, x11, x10, 0x20000000000, 0x0000000004000000, 15, x1, 160, x2)

# rs1_val == 134217728, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:9
TEST_IMM_OP( slli, x11, x10, 0x1000000000, 0x0000000008000000, 9, x1, 168, x2)

# rs1_val == 268435456, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x800000000000000, 0x0000000010000000, 31, x1, 176, x2)

# rs1_val == 1073741824, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x2000000000000000, 0x0000000040000000, 31, x1, 184, x2)

# rs1_val == 2147483648, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x8000000000, 0x0000000080000000, 8, x1, 192, x2)

# rs1_val == 4294967296, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x10000000000, 0x0000000100000000, 8, x1, 200, x2)

# rs1_val == 8589934592, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:59
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000200000000, 59, x1, 208, x2)

# rs1_val == 34359738368, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:62
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000800000000, 62, x1, 216, x2)

# rs1_val == 68719476736, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:18
TEST_IMM_OP( slli, x11, x10, 0x40000000000000, 0x0000001000000000, 18, x1, 224, x2)

# rs1_val == 137438953472, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000002000000000, 31, x1, 232, x2)

# rs1_val == 274877906944, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x4000000000, 0x0000004000000000, 0, x1, 240, x2)

# rs1_val == 549755813888, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000008000000000, 42, x1, 248, x2)

# rs1_val == 1099511627776, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:1
TEST_IMM_OP( slli, x11, x10, 0x20000000000, 0x0000010000000000, 1, x1, 256, x2)

# rs1_val == 4398046511104, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0x0000040000000000, 21, x1, 264, x2)

# rs1_val == 8796093022208, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x2000000000000, 0x0000080000000000, 6, x1, 272, x2)

# rs1_val == 17592186044416, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:5
TEST_IMM_OP( slli, x11, x10, 0x2000000000000, 0x0000100000000000, 5, x1, 280, x2)

# rs1_val == 35184372088832, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000200000000000, 63, x1, 288, x2)

# rs1_val == 70368744177664, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x2000000000000, 0x0000400000000000, 3, x1, 296, x2)

# rs1_val == 140737488355328, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000800000000000, 42, x1, 304, x2)

# rs1_val == 281474976710656, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0001000000000000, 16, x1, 312, x2)

# rs1_val == 562949953421312, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x4000000000000000, 0x0002000000000000, 13, x1, 320, x2)

# rs1_val == 1125899906842624, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x40000000000000, 0x0004000000000000, 4, x1, 328, x2)

# rs1_val == 2251799813685248, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:14
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0008000000000000, 14, x1, 336, x2)

# rs1_val == 4503599627370496, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x40000000000000, 0x0010000000000000, 2, x1, 344, x2)

# rs1_val == 9007199254740992, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:55
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0020000000000000, 55, x1, 352, x2)

# rs1_val == 18014398509481984, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0040000000000000, 31, x1, 360, x2)

# rs1_val == 72057594037927936, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:59
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0100000000000000, 59, x1, 368, x2)

# rs1_val == 144115188075855872, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0200000000000000, 31, x1, 376, x2)

# rs1_val == 288230376151711744, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:12
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0400000000000000, 12, x1, 384, x2)

# rs1_val == -549755813889, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:61
TEST_IMM_OP( slli, x11, x10, 0xe000000000000000, 0xffffff7fffffffff, 61, x1, 392, x2)

# rs1_val == -1099511627777, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xffffffff80000000, 0xfffffeffffffffff, 31, x1, 400, x2)

# rs1_val == -2199023255553, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xfffffbfffffffffe, 0xfffffdffffffffff, 1, x1, 408, x2)

# rs1_val == -4398046511105, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffffbffffffffff0, 0xfffffbffffffffff, 4, x1, 416, x2)

# rs1_val == -8796093022209, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xeffffffffffe0000, 0xfffff7ffffffffff, 17, x1, 424, x2)

# rs1_val == -17592186044417, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:32
TEST_IMM_OP( slli, x11, x10, 0xffffffff00000000, 0xffffefffffffffff, 32, x1, 432, x2)

# rs1_val == -140737488355329, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xfefffffffffffe00, 0xffff7fffffffffff, 9, x1, 440, x2)

# rs1_val == -281474976710657, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xff7fffffffffff80, 0xfffeffffffffffff, 7, x1, 448, x2)

# rs1_val == -562949953421313, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffe0000, 0xfffdffffffffffff, 17, x1, 456, x2)

# rs1_val == -1125899906842625, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xffdffffffffffff8, 0xfffbffffffffffff, 3, x1, 464, x2)

# rs1_val == -2251799813685249, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xff7ffffffffffff0, 0xfff7ffffffffffff, 4, x1, 472, x2)

# rs1_val == -4503599627370497, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xffffffffffff0000, 0xffefffffffffffff, 16, x1, 480, x2)

# rs1_val == -9007199254740993, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xff7ffffffffffffc, 0xffdfffffffffffff, 2, x1, 488, x2)

# rs1_val == -18014398509481985, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffff800, 0xffbfffffffffffff, 11, x1, 496, x2)

# rs1_val == -36028797018963969, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:59
TEST_IMM_OP( slli, x11, x10, 0xf800000000000000, 0xff7fffffffffffff, 59, x1, 504, x2)

# rs1_val == -72057594037927937, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:47
TEST_IMM_OP( slli, x11, x10, 0xffff800000000000, 0xfeffffffffffffff, 47, x1, 512, x2)

# rs1_val == -144115188075855873, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xeffffffffffffff8, 0xfdffffffffffffff, 3, x1, 520, x2)

# rs1_val == -288230376151711745, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xfbffffffffffffff, 0xfbffffffffffffff, 0, x1, 528, x2)

# rs1_val == -576460752303423489, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:61
TEST_IMM_OP( slli, x11, x10, 0xe000000000000000, 0xf7ffffffffffffff, 61, x1, 536, x2)

# rs1_val == -1152921504606846977, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffffc00, 0xefffffffffffffff, 10, x1, 544, x2)

# rs1_val == -4611686018427387905, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffffff0, 0xbfffffffffffffff, 4, x1, 552, x2)

# rs1_val == 6148914691236517205, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:14
TEST_IMM_OP( slli, x11, x10, 0x5555555555554000, 0x5555555555555555, 14, x1, 560, x2)

# rs1_val == -6148914691236517206, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x5555555555555550, 0xaaaaaaaaaaaaaaaa, 3, x1, 568, x2)

# rs1_val == 576460752303423488, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x800000000000000, 0x0800000000000000, 0, x1, 576, x2)

# rs1_val == 1152921504606846976, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x0, 0x1000000000000000, 7, x1, 584, x2)

# rs1_val == 2305843009213693952, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x0, 0x2000000000000000, 3, x1, 592, x2)

# rs1_val == 4611686018427387904, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x0, 0x4000000000000000, 8, x1, 600, x2)

# rs1_val == -2, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffff000, 0xfffffffffffffffe, 11, x1, 608, x2)

# rs1_val == -3, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffd0000, 0xfffffffffffffffd, 16, x1, 616, x2)

# rs1_val == -5, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffffec, 0xfffffffffffffffb, 2, x1, 624, x2)

# rs1_val == -9, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:55
TEST_IMM_OP( slli, x11, x10, 0xfb80000000000000, 0xfffffffffffffff7, 55, x1, 632, x2)

# rs1_val == -17, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:61
TEST_IMM_OP( slli, x11, x10, 0xe000000000000000, 0xffffffffffffffef, 61, x1, 640, x2)

# rs1_val == -33, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffbe000, 0xffffffffffffffdf, 13, x1, 648, x2)

# rs1_val == -65, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:32
TEST_IMM_OP( slli, x11, x10, 0xffffffbf00000000, 0xffffffffffffffbf, 32, x1, 656, x2)

# rs1_val == -129, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffefe0, 0xffffffffffffff7f, 5, x1, 664, x2)

# rs1_val == -257, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xffffffffff7f8000, 0xfffffffffffffeff, 15, x1, 672, x2)

# rs1_val == -513, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:55
TEST_IMM_OP( slli, x11, x10, 0xff80000000000000, 0xfffffffffffffdff, 55, x1, 680, x2)

# rs1_val == -1025, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffffffff7fe0000, 0xfffffffffffffbff, 17, x1, 688, x2)

# rs1_val == -4097, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xffbffc0000000000, 0xffffffffffffefff, 42, x1, 696, x2)

# rs1_val == -8193, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xfffffffbffe00000, 0xffffffffffffdfff, 21, x1, 704, x2)

# rs1_val == -16385, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xfffffffffefffc00, 0xffffffffffffbfff, 10, x1, 712, x2)

# rs1_val == -32769, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:61
TEST_IMM_OP( slli, x11, x10, 0xe000000000000000, 0xffffffffffff7fff, 61, x1, 720, x2)

# rs1_val == -65537, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffffffffffeffff0, 0xfffffffffffeffff, 4, x1, 728, x2)

# rs1_val == -131073, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff7fffc, 0xfffffffffffdffff, 2, x1, 736, x2)

# rs1_val == -524289, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffffffdffffc, 0xfffffffffff7ffff, 2, x1, 744, x2)

# rs1_val == -1048577, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xfffffffefffff000, 0xffffffffffefffff, 12, x1, 752, x2)

# rs1_val == -2097153, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xffffffffffdfffff, 62, x1, 760, x2)

# rs1_val == -8388609, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffffefffffe0000, 0xffffffffff7fffff, 17, x1, 768, x2)

# rs1_val == -16777217, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xfffffc0000000000, 0xfffffffffeffffff, 42, x1, 776, x2)

# rs1_val == -33554433, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xfffffdffffff0000, 0xfffffffffdffffff, 16, x1, 784, x2)

# rs1_val == -67108865, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:55
TEST_IMM_OP( slli, x11, x10, 0xff80000000000000, 0xfffffffffbffffff, 55, x1, 792, x2)

# rs1_val == -134217729, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xffffeffffffe0000, 0xfffffffff7ffffff, 17, x1, 800, x2)

# rs1_val == -268435457, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:47
TEST_IMM_OP( slli, x11, x10, 0xffff800000000000, 0xffffffffefffffff, 47, x1, 808, x2)

# rs1_val == -536870913, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xffffff7ffffffc00, 0xffffffffdfffffff, 10, x1, 816, x2)

# rs1_val == -1073741825, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfffefffffffc0000, 0xffffffffbfffffff, 18, x1, 824, x2)

# rs1_val == -2147483649, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfffffff7fffffff0, 0xffffffff7fffffff, 4, x1, 832, x2)

# rs1_val == -4294967297, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xfffffdfffffffe00, 0xfffffffeffffffff, 9, x1, 840, x2)

# rs1_val == -8589934593, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:55
TEST_IMM_OP( slli, x11, x10, 0xff80000000000000, 0xfffffffdffffffff, 55, x1, 848, x2)

# rs1_val == -17179869185, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xfffffffbffffffff, 62, x1, 856, x2)

# rs1_val == -34359738369, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xfffffff7ffffffff, 62, x1, 864, x2)

# rs1_val == -68719476737, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfffffefffffffff0, 0xffffffefffffffff, 4, x1, 872, x2)

# rs1_val == -137438953473, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xffff7ffffffffc00, 0xffffffdfffffffff, 10, x1, 880, x2)

# rs1_val == -274877906945, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xfffbfffffffff000, 0xffffffbfffffffff, 12, x1, 888, x2)

# rs1_val < 0 and imm_val > 0 and imm_val < xlen, imm_val == 47, rs1_val == -70368744177665
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:47
TEST_IMM_OP( slli, x11, x10, 0xffff800000000000, 0xffffbfffffffffff, 47, x1, 896, x2)

# imm_val == 61, rs1_val == 2199023255552
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000020000000000, 61, x1, 904, x2)

# rs1_val == 2048, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000000800;  immval:32
TEST_IMM_OP( slli, x11, x10, 0x80000000000, 0x0000000000000800, 32, x1, 912, x2)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
