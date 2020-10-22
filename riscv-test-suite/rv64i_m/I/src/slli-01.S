
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

RVTEST_SIGBASE( x13,signature_x13_1)

# rs1 != rd, rs1==x8, rd==x14, rs1_val < 0 and imm_val > 0 and imm_val < xlen, 
# opcode: slli ; op1:x8; dest:x14; op1val:0xfffffffffffffff6;  immval:9
TEST_IMM_OP( slli, x14, x8, 0xffffffffffffec00, 0xfffffffffffffff6, 9, x13, 0, x20)

# rs1 == rd, rs1==x17, rd==x17, rs1_val > 0 and imm_val > 0 and imm_val < xlen, imm_val == 61, rs1_val == 144115188075855872
# opcode: slli ; op1:x17; dest:x17; op1val:0x0200000000000000;  immval:61
TEST_IMM_OP( slli, x17, x17, 0x0, 0x0200000000000000, 61, x13, 8, x20)

# rs1==x1, rd==x24, rs1_val < 0 and imm_val == 0, rs1_val == -4097
# opcode: slli ; op1:x1; dest:x24; op1val:0xffffffffffffefff;  immval:0
TEST_IMM_OP( slli, x24, x1, 0xffffffffffffefff, 0xffffffffffffefff, 0, x13, 16, x20)

# rs1==x7, rd==x19, rs1_val > 0 and imm_val == 0, rs1_val == 8
# opcode: slli ; op1:x7; dest:x19; op1val:0x0000000000000008;  immval:0
TEST_IMM_OP( slli, x19, x7, 0x8, 0x0000000000000008, 0, x13, 24, x20)

# rs1==x16, rd==x30, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -513
# opcode: slli ; op1:x16; dest:x30; op1val:0xfffffffffffffdff;  immval:63
TEST_IMM_OP( slli, x30, x16, 0x8000000000000000, 0xfffffffffffffdff, 63, x13, 32, x20)

# rs1==x11, rd==x1, rs1_val > 0 and imm_val == (xlen-1), 
# opcode: slli ; op1:x11; dest:x1; op1val:0x0000000000000007;  immval:63
TEST_IMM_OP( slli, x1, x11, 0x8000000000000000, 0x0000000000000007, 63, x13, 40, x20)

# rs1==x14, rd==x3, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, 
# opcode: slli ; op1:x14; dest:x3; op1val:0x0000000000000003;  immval:3
TEST_IMM_OP( slli, x3, x14, 0x18, 0x0000000000000003, 3, x13, 48, x20)

# rs1==x12, rd==x11, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -9223372036854775808
# opcode: slli ; op1:x12; dest:x11; op1val:0x8000000000000000;  immval:15
TEST_IMM_OP( slli, x11, x12, 0x0, 0x8000000000000000, 15, x13, 56, x20)

# rs1==x6, rd==x10, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, 
# opcode: slli ; op1:x6; dest:x10; op1val:0x0000000000000000;  immval:14
TEST_IMM_OP( slli, x10, x6, 0x0, 0x0000000000000000, 14, x13, 64, x20)

# rs1==x5, rd==x9, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, imm_val == 42, rs1_val == 9223372036854775807
# opcode: slli ; op1:x5; dest:x9; op1val:0x7fffffffffffffff;  immval:42
TEST_IMM_OP( slli, x9, x5, 0xfffffc0000000000, 0x7fffffffffffffff, 42, x13, 72, x20)

# rs1==x22, rd==x25, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, imm_val == 62, rs1_val == 1
# opcode: slli ; op1:x22; dest:x25; op1val:0x0000000000000001;  immval:62
TEST_IMM_OP( slli, x25, x22, 0x4000000000000000, 0x0000000000000001, 62, x13, 80, x20)

# rs1==x21, rd==x27, imm_val == 1, rs1_val == -65537
# opcode: slli ; op1:x21; dest:x27; op1val:0xfffffffffffeffff;  immval:1
TEST_IMM_OP( slli, x27, x21, 0xfffffffffffdfffe, 0xfffffffffffeffff, 1, x13, 88, x20)

# rs1==x26, rd==x16, imm_val == 2, 
# opcode: slli ; op1:x26; dest:x16; op1val:0x0000000000000001;  immval:2
TEST_IMM_OP( slli, x16, x26, 0x4, 0x0000000000000001, 2, x13, 96, x20)

# rs1==x15, rd==x18, imm_val == 4, rs1_val == -576460752303423489
# opcode: slli ; op1:x15; dest:x18; op1val:0xf7ffffffffffffff;  immval:4
TEST_IMM_OP( slli, x18, x15, 0x7ffffffffffffff0, 0xf7ffffffffffffff, 4, x13, 104, x20)

# rs1==x23, rd==x29, imm_val == 8, rs1_val == 4194304
# opcode: slli ; op1:x23; dest:x29; op1val:0x0000000000400000;  immval:8
TEST_IMM_OP( slli, x29, x23, 0x40000000, 0x0000000000400000, 8, x13, 112, x20)

# rs1==x27, rd==x22, imm_val == 16, rs1_val == 549755813888
# opcode: slli ; op1:x27; dest:x22; op1val:0x0000008000000000;  immval:16
TEST_IMM_OP( slli, x22, x27, 0x80000000000000, 0x0000008000000000, 16, x13, 120, x20)

# rs1==x4, rd==x2, imm_val == 32, rs1_val == -288230376151711745
# opcode: slli ; op1:x4; dest:x2; op1val:0xfbffffffffffffff;  immval:32
TEST_IMM_OP( slli, x2, x4, 0xffffffff00000000, 0xfbffffffffffffff, 32, x13, 128, x20)

# rs1==x19, rd==x31, imm_val == 59, 
# opcode: slli ; op1:x19; dest:x31; op1val:0x0000000000400000;  immval:59
TEST_IMM_OP( slli, x31, x19, 0x0, 0x0000000000400000, 59, x13, 136, x14)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x20, rd==x0, imm_val == 55, rs1_val == -536870913
# opcode: slli ; op1:x20; dest:x0; op1val:0xffffffffdfffffff;  immval:55
TEST_IMM_OP( slli, x0, x20, 0xff80000000000000, 0xffffffffdfffffff, 55, x1, 0, x14)

# rs1==x10, rd==x28, imm_val == 47, rs1_val == -34359738369
# opcode: slli ; op1:x10; dest:x28; op1val:0xfffffff7ffffffff;  immval:47
TEST_IMM_OP( slli, x28, x10, 0xffff800000000000, 0xfffffff7ffffffff, 47, x1, 8, x14)

# rs1==x30, rd==x7, imm_val == 31, 
# opcode: slli ; op1:x30; dest:x7; op1val:0x0000000000000008;  immval:31
TEST_IMM_OP( slli, x7, x30, 0x400000000, 0x0000000000000008, 31, x1, 16, x14)

# rs1==x18, rd==x21, imm_val == 21, rs1_val == 36028797018963968
# opcode: slli ; op1:x18; dest:x21; op1val:0x0080000000000000;  immval:21
TEST_IMM_OP( slli, x21, x18, 0x0, 0x0080000000000000, 21, x1, 24, x14)

# rs1==x31, rd==x8, rs1_val == 2, 
# opcode: slli ; op1:x31; dest:x8; op1val:0x0000000000000002;  immval:21
TEST_IMM_OP( slli, x8, x31, 0x400000, 0x0000000000000002, 21, x1, 32, x14)

# rs1==x9, rd==x23, rs1_val == 4, 
# opcode: slli ; op1:x9; dest:x23; op1val:0x0000000000000004;  immval:21
TEST_IMM_OP( slli, x23, x9, 0x800000, 0x0000000000000004, 21, x1, 40, x14)

# rs1==x0, rd==x5, rs1_val == 16, 
# opcode: slli ; op1:x0; dest:x5; op1val:0x0000000000000010;  immval:31
TEST_IMM_OP( slli, x5, x0, 0x800000000, 0x0000000000000010, 31, x1, 48, x14)

# rs1==x25, rd==x20, rs1_val == 32, 
# opcode: slli ; op1:x25; dest:x20; op1val:0x0000000000000020;  immval:42
TEST_IMM_OP( slli, x20, x25, 0x800000000000, 0x0000000000000020, 42, x1, 56, x14)

# rs1==x29, rd==x26, rs1_val == 64, 
# opcode: slli ; op1:x29; dest:x26; op1val:0x0000000000000040;  immval:31
TEST_IMM_OP( slli, x26, x29, 0x2000000000, 0x0000000000000040, 31, x1, 64, x14)

# rs1==x28, rd==x12, rs1_val == 128, 
# opcode: slli ; op1:x28; dest:x12; op1val:0x0000000000000080;  immval:42
TEST_IMM_OP( slli, x12, x28, 0x2000000000000, 0x0000000000000080, 42, x1, 72, x14)

# rs1==x24, rd==x15, rs1_val == 256, 
# opcode: slli ; op1:x24; dest:x15; op1val:0x0000000000000100;  immval:21
TEST_IMM_OP( slli, x15, x24, 0x20000000, 0x0000000000000100, 21, x1, 80, x14)

# rs1==x3, rd==x13, rs1_val == 512, 
# opcode: slli ; op1:x3; dest:x13; op1val:0x0000000000000200;  immval:55
TEST_IMM_OP( slli, x13, x3, 0x0, 0x0000000000000200, 55, x1, 88, x14)

# rs1==x2, rd==x4, rs1_val == 1024, 
# opcode: slli ; op1:x2; dest:x4; op1val:0x0000000000000400;  immval:8
TEST_IMM_OP( slli, x4, x2, 0x40000, 0x0000000000000400, 8, x1, 96, x14)

# rs1==x13, rd==x6, rs1_val == 2048, 
# opcode: slli ; op1:x13; dest:x6; op1val:0x0000000000000800;  immval:0
TEST_IMM_OP( slli, x6, x13, 0x800, 0x0000000000000800, 0, x1, 104, x14)

# rs1_val == 4096, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x1000, 0x0000000000001000, 0, x1, 112, x14)

# rs1_val == 8192, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x8000, 0x0000000000002000, 2, x1, 120, x14)

# rs1_val == 16384, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:18
TEST_IMM_OP( slli, x11, x10, 0x100000000, 0x0000000000004000, 18, x1, 128, x14)

# rs1_val == 32768, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x8000, 0x0000000000008000, 0, x1, 136, x14)

# rs1_val == 65536, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x80000, 0x0000000000010000, 3, x1, 144, x14)

# rs1_val == 131072, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x1000000000, 0x0000000000020000, 19, x1, 152, x14)

# rs1_val == 262144, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x40000, 0x0000000000040000, 0, x1, 160, x14)

# rs1_val == 524288, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000080000, 63, x1, 168, x14)

# rs1_val == 1048576, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000100000, 63, x1, 176, x14)

# rs1_val == 2097152, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x1000000, 0x0000000000200000, 3, x1, 184, x14)

# rs1_val == 8388608, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:55
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000800000, 55, x1, 192, x14)

# rs1_val == 16777216, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:32
TEST_IMM_OP( slli, x11, x10, 0x100000000000000, 0x0000000001000000, 32, x1, 200, x14)

# rs1_val == 33554432, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:55
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000002000000, 55, x1, 208, x14)

# rs1_val == 67108864, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000004000000, 47, x1, 216, x14)

# rs1_val == 134217728, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x1000000000000, 0x0000000008000000, 21, x1, 224, x14)

# rs1_val == 268435456, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x2000000000000, 0x0000000010000000, 21, x1, 232, x14)

# rs1_val == 536870912, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:32
TEST_IMM_OP( slli, x11, x10, 0x2000000000000000, 0x0000000020000000, 32, x1, 240, x14)

# rs1_val == 1073741824, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:62
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000040000000, 62, x1, 248, x14)

# rs1_val == 2147483648, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x10000000000000, 0x0000000080000000, 21, x1, 256, x14)

# rs1_val == 4294967296, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x1000000000, 0x0000000100000000, 4, x1, 264, x14)

# rs1_val == 8589934592, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x200000000, 0x0000000200000000, 0, x1, 272, x14)

# rs1_val == 17179869184, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x4000000000000, 0x0000000400000000, 16, x1, 280, x14)

# rs1_val == 34359738368, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x80000000000, 0x0000000800000000, 8, x1, 288, x14)

# rs1_val == 68719476736, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x200000000000000, 0x0000001000000000, 21, x1, 296, x14)

# rs1_val == 137438953472, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x20000000000000, 0x0000002000000000, 16, x1, 304, x14)

# rs1_val == 274877906944, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x200000000000000, 0x0000004000000000, 19, x1, 312, x14)

# rs1_val == 1099511627776, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x800000000000, 0x0000010000000000, 7, x1, 320, x14)

# rs1_val == 2199023255552, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000020000000000, 47, x1, 328, x14)

# rs1_val == 4398046511104, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x10000000000000, 0x0000040000000000, 10, x1, 336, x14)

# rs1_val == 8796093022208, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:1
TEST_IMM_OP( slli, x11, x10, 0x100000000000, 0x0000080000000000, 1, x1, 344, x14)

# rs1_val == 17592186044416, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x2000000000000000, 0x0000100000000000, 17, x1, 352, x14)

# rs1_val == 35184372088832, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x20000000000000, 0x0000200000000000, 8, x1, 360, x14)

# rs1_val == 70368744177664, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:9
TEST_IMM_OP( slli, x11, x10, 0x80000000000000, 0x0000400000000000, 9, x1, 368, x14)

# rs1_val == 140737488355328, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:1
TEST_IMM_OP( slli, x11, x10, 0x1000000000000, 0x0000800000000000, 1, x1, 376, x14)

# rs1_val == 281474976710656, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0001000000000000, 47, x1, 384, x14)

# rs1_val == 562949953421312, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:18
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0002000000000000, 18, x1, 392, x14)

# rs1_val == 1125899906842624, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x1000000000000000, 0x0004000000000000, 10, x1, 400, x14)

# rs1_val == 2251799813685248, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:5
TEST_IMM_OP( slli, x11, x10, 0x100000000000000, 0x0008000000000000, 5, x1, 408, x14)

# rs1_val == 4503599627370496, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0010000000000000, 31, x1, 416, x14)

# rs1_val == 9007199254740992, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:18
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0020000000000000, 18, x1, 424, x14)

# rs1_val == 18014398509481984, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x4000000000000000, 0x0040000000000000, 8, x1, 432, x14)

# rs1_val == 72057594037927936, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x4000000000000000, 0x0100000000000000, 6, x1, 440, x14)

# rs1_val == -549755813889, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfffff7fffffffff0, 0xffffff7fffffffff, 4, x1, 448, x14)

# rs1_val == -1099511627777, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xfff7fffffffff800, 0xfffffeffffffffff, 11, x1, 456, x14)

# rs1_val == -2199023255553, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xfeffffffffff8000, 0xfffffdffffffffff, 15, x1, 464, x14)

# rs1_val == -4398046511105, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xfffffbffffffffff, 62, x1, 472, x14)

# rs1_val == -8796093022209, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xf7ffffffffff0000, 0xfffff7ffffffffff, 16, x1, 480, x14)

# rs1_val == -17592186044417, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xffbffffffffffc00, 0xffffefffffffffff, 10, x1, 488, x14)

# rs1_val == -35184372088833, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xfffefffffffffff8, 0xffffdfffffffffff, 3, x1, 496, x14)

# rs1_val == -70368744177665, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xfdfffffffffff800, 0xffffbfffffffffff, 11, x1, 504, x14)

# rs1_val == -140737488355329, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xbfffffffffff8000, 0xffff7fffffffffff, 15, x1, 512, x14)

# rs1_val == -281474976710657, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xeffffffffffff000, 0xfffeffffffffffff, 12, x1, 520, x14)

# rs1_val == -562949953421313, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfdffffffffffff00, 0xfffdffffffffffff, 8, x1, 528, x14)

# rs1_val == -1125899906842625, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffeffffffffffffc, 0xfffbffffffffffff, 2, x1, 536, x14)

# rs1_val == -2251799813685249, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffdffffffffffffc, 0xfff7ffffffffffff, 2, x1, 544, x14)

# rs1_val == -4503599627370497, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xbffffffffffffc00, 0xffefffffffffffff, 10, x1, 552, x14)

# rs1_val == -9007199254740993, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffff000, 0xffdfffffffffffff, 12, x1, 560, x14)

# rs1_val == -18014398509481985, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xdfffffffffffff80, 0xffbfffffffffffff, 7, x1, 568, x14)

# rs1_val == -36028797018963969, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xffffffffffff8000, 0xff7fffffffffffff, 15, x1, 576, x14)

# rs1_val == -72057594037927937, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:55
TEST_IMM_OP( slli, x11, x10, 0xff80000000000000, 0xfeffffffffffffff, 55, x1, 584, x14)

# rs1_val == -144115188075855873, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xffffffffffff0000, 0xfdffffffffffffff, 16, x1, 592, x14)

# rs1_val == -1152921504606846977, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffff00, 0xefffffffffffffff, 8, x1, 600, x14)

# rs1_val == -2305843009213693953, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xdfffffffffffffff, 0xdfffffffffffffff, 0, x1, 608, x14)

# rs1_val == -4611686018427387905, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:59
TEST_IMM_OP( slli, x11, x10, 0xf800000000000000, 0xbfffffffffffffff, 59, x1, 616, x14)

# rs1_val == 6148914691236517205, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x5555555555555554, 0x5555555555555555, 2, x1, 624, x14)

# rs1_val == -6148914691236517206, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:15
TEST_IMM_OP( slli, x11, x10, 0x5555555555550000, 0xaaaaaaaaaaaaaaaa, 15, x1, 632, x14)

# rs1_val == 288230376151711744, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0400000000000000, 7, x1, 640, x14)

# rs1_val == 576460752303423488, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:15
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0800000000000000, 15, x1, 648, x14)

# rs1_val == 1152921504606846976, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x0, 0x1000000000000000, 17, x1, 656, x14)

# rs1_val == 2305843009213693952, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:59
TEST_IMM_OP( slli, x11, x10, 0x0, 0x2000000000000000, 59, x1, 664, x14)

# rs1_val == 4611686018427387904, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:55
TEST_IMM_OP( slli, x11, x10, 0x0, 0x4000000000000000, 55, x1, 672, x14)

# rs1_val == -2, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xfffff80000000000, 0xfffffffffffffffe, 42, x1, 680, x14)

# rs1_val == -3, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffffff4, 0xfffffffffffffffd, 2, x1, 688, x14)

# rs1_val == -5, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xffffffffffd80000, 0xfffffffffffffffb, 19, x1, 696, x14)

# rs1_val == -9, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffffdc, 0xfffffffffffffff7, 2, x1, 704, x14)

# rs1_val == -17, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xffffbc0000000000, 0xffffffffffffffef, 42, x1, 712, x14)

# rs1_val == -33, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffdf000, 0xffffffffffffffdf, 12, x1, 720, x14)

# rs1_val == -65, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xffffffffff7e0000, 0xffffffffffffffbf, 17, x1, 728, x14)

# rs1_val == -129, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xffffffffffbf8000, 0xffffffffffffff7f, 15, x1, 736, x14)

# rs1_val == -257, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffeff00, 0xfffffffffffffeff, 8, x1, 744, x14)

# rs1_val == -1025, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffeffc, 0xfffffffffffffbff, 2, x1, 752, x14)

# rs1_val == -2049, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xffffffffff7ff000, 0xfffffffffffff7ff, 12, x1, 760, x14)

# rs1_val == -8193, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffffffff7ffc, 0xffffffffffffdfff, 2, x1, 768, x14)

# rs1_val == -16385, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xfffffffffdfff800, 0xffffffffffffbfff, 11, x1, 776, x14)

# rs1_val == -32769, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xffffffffffdfffc0, 0xffffffffffff7fff, 6, x1, 784, x14)

# rs1_val == -131073, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffbfffe, 0xfffffffffffdffff, 1, x1, 792, x14)

# rs1_val == -262145, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xfffffffdffff8000, 0xfffffffffffbffff, 15, x1, 800, x14)

# rs1_val == -524289, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:59
TEST_IMM_OP( slli, x11, x10, 0xf800000000000000, 0xfffffffffff7ffff, 59, x1, 808, x14)

# rs1_val == -1048577, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xfff7ffff80000000, 0xffffffffffefffff, 31, x1, 816, x14)

# rs1_val == -2097153, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:61
TEST_IMM_OP( slli, x11, x10, 0xe000000000000000, 0xffffffffffdfffff, 61, x1, 824, x14)

# rs1_val == -4194305, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xffffffffffbfffff, 62, x1, 832, x14)

# rs1_val == -8388609, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xfffffffffbfffff8, 0xffffffffff7fffff, 3, x1, 840, x14)

# rs1_val == -16777217, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xfffffffff7fffff8, 0xfffffffffeffffff, 3, x1, 848, x14)

# rs1_val == -33554433, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xfffffdffffff0000, 0xfffffffffdffffff, 16, x1, 856, x14)

# rs1_val == -67108865, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0xfffffffffbffffff, 63, x1, 864, x14)

# rs1_val == -134217729, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xffffeffffffe0000, 0xfffffffff7ffffff, 17, x1, 872, x14)

# rs1_val == -268435457, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xfffff7ffffff8000, 0xffffffffefffffff, 15, x1, 880, x14)

# rs1_val == -1073741825, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xfffffffefffffffc, 0xffffffffbfffffff, 2, x1, 888, x14)

# rs1_val == -2147483649, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xbfffffff80000000, 0xffffffff7fffffff, 31, x1, 896, x14)

# rs1_val == -4294967297, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:47
TEST_IMM_OP( slli, x11, x10, 0xffff800000000000, 0xfffffffeffffffff, 47, x1, 904, x14)

# rs1_val == -8589934593, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xfffffc0000000000, 0xfffffffdffffffff, 42, x1, 912, x14)

# rs1_val == -17179869185, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xffffff7fffffffe0, 0xfffffffbffffffff, 5, x1, 920, x14)

# rs1_val == -68719476737, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xfff7ffffffff8000, 0xffffffefffffffff, 15, x1, 928, x14)

# rs1_val == -137438953473, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:32
TEST_IMM_OP( slli, x11, x10, 0xffffffff00000000, 0xffffffdfffffffff, 32, x1, 936, x14)

# rs1_val == -274877906945, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xfffdfffffffff800, 0xffffffbfffffffff, 11, x1, 944, x14)

# rs1_val > 0 and imm_val > 0 and imm_val < xlen, imm_val == 61, rs1_val == 144115188075855872
# opcode: slli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0200000000000000, 61, x1, 952, x14)

# imm_val == 55, rs1_val == -536870913
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:55
TEST_IMM_OP( slli, x11, x10, 0xff80000000000000, 0xffffffffdfffffff, 55, x1, 960, x14)

# rs1_val == 16, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000000010;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x800000000, 0x0000000000000010, 31, x1, 968, x14)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x13_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 122*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
