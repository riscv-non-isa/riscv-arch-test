
#This assembly file tests the srliw instruction of the RISC-V I extension for the srliw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",srliw)

RVTEST_SIGBASE( x8,signature_x8_1)

# rs1 != rd, rs1==x1, rd==x3, rs1_val < 0 and imm_val > 0 and imm_val < 32, rs1_val == -8388609
# opcode: srliw ; op1:x1; dest:x3; op1val:0xffffffffff7fffff;  immval:13
TEST_IMM_OP( srliw, x3, x1, 0x7fbff, 0xffffffffff7fffff, 13, x8, 0, x29)

# rs1 == rd, rs1==x25, rd==x25, rs1_val > 0 and imm_val > 0 and imm_val < 32, rs1_val == 562949953421312
# opcode: srliw ; op1:x25; dest:x25; op1val:0x0002000000000000;  immval:11
TEST_IMM_OP( srliw, x25, x25, 0x0, 0x0002000000000000, 11, x8, 8, x29)

# rs1==x18, rd==x4, rs1_val < 0 and imm_val == 0, rs1_val == -17592186044417
# opcode: srliw ; op1:x18; dest:x4; op1val:0xffffefffffffffff;  immval:0
TEST_IMM_OP( srliw, x4, x18, 0xffffffff, 0xffffefffffffffff, 0, x8, 16, x29)

# rs1==x17, rd==x20, rs1_val > 0 and imm_val == 0, rs1_val == 2048
# opcode: srliw ; op1:x17; dest:x20; op1val:0x0000000000000800;  immval:0
TEST_IMM_OP( srliw, x20, x17, 0x800, 0x0000000000000800, 0, x8, 24, x29)

# rs1==x21, rd==x5, rs1_val < 0 and imm_val == 31, rs1_val == -562949953421313
# opcode: srliw ; op1:x21; dest:x5; op1val:0xfffdffffffffffff;  immval:31
TEST_IMM_OP( srliw, x5, x21, 0x1, 0xfffdffffffffffff, 31, x8, 32, x29)

# rs1==x0, rd==x24, rs1_val > 0 and imm_val == 31, 
# opcode: srliw ; op1:x0; dest:x24; op1val:0x0000000000000003;  immval:31
TEST_IMM_OP( srliw, x24, x0, 0x0, 0x0000000000000003, 31, x8, 40, x29)

# rs1==x2, rd==x21, rs1_val == imm_val and imm_val > 0 and imm_val < 32, rs1_val == 4, imm_val == 4
# opcode: srliw ; op1:x2; dest:x21; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( srliw, x21, x2, 0x0, 0x0000000000000004, 4, x8, 48, x29)

# rs1==x9, rd==x10, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32, rs1_val == -9223372036854775808
# opcode: srliw ; op1:x9; dest:x10; op1val:0x8000000000000000;  immval:4
TEST_IMM_OP( srliw, x10, x9, 0x0, 0x8000000000000000, 4, x8, 56, x29)

# rs1==x12, rd==x27, rs1_val == 0 and imm_val >= 0 and imm_val < 32, imm_val == 1
# opcode: srliw ; op1:x12; dest:x27; op1val:0x0000000000000000;  immval:1
TEST_IMM_OP( srliw, x27, x12, 0x0, 0x0000000000000000, 1, x8, 64, x29)

# rs1==x22, rd==x13, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32, rs1_val == 9223372036854775807
# opcode: srliw ; op1:x22; dest:x13; op1val:0x7fffffffffffffff;  immval:5
TEST_IMM_OP( srliw, x13, x22, 0x7ffffff, 0x7fffffffffffffff, 5, x8, 72, x29)

# rs1==x13, rd==x19, rs1_val == 1 and imm_val >= 0 and imm_val < 32, imm_val == 21, rs1_val == 1
# opcode: srliw ; op1:x13; dest:x19; op1val:0x0000000000000001;  immval:21
TEST_IMM_OP( srliw, x19, x13, 0x0, 0x0000000000000001, 21, x8, 80, x29)

# rs1==x11, rd==x7, imm_val == 2, rs1_val == -524289
# opcode: srliw ; op1:x11; dest:x7; op1val:0xfffffffffff7ffff;  immval:2
TEST_IMM_OP( srliw, x7, x11, 0x3ffdffff, 0xfffffffffff7ffff, 2, x8, 88, x29)

# rs1==x16, rd==x28, imm_val == 8, rs1_val == -16385
# opcode: srliw ; op1:x16; dest:x28; op1val:0xffffffffffffbfff;  immval:8
TEST_IMM_OP( srliw, x28, x16, 0xffffbf, 0xffffffffffffbfff, 8, x8, 96, x29)

# rs1==x15, rd==x11, imm_val == 16, rs1_val == 32
# opcode: srliw ; op1:x15; dest:x11; op1val:0x0000000000000020;  immval:16
TEST_IMM_OP( srliw, x11, x15, 0x0, 0x0000000000000020, 16, x8, 104, x29)

# rs1==x24, rd==x26, imm_val == 30, rs1_val == 2305843009213693952
# opcode: srliw ; op1:x24; dest:x26; op1val:0x2000000000000000;  immval:30
TEST_IMM_OP( srliw, x26, x24, 0x0, 0x2000000000000000, 30, x8, 112, x29)

# rs1==x4, rd==x31, imm_val == 29, rs1_val == -144115188075855873
# opcode: srliw ; op1:x4; dest:x31; op1val:0xfdffffffffffffff;  immval:29
TEST_IMM_OP( srliw, x31, x4, 0x7, 0xfdffffffffffffff, 29, x8, 120, x29)

# rs1==x31, rd==x22, imm_val == 27, rs1_val == -1025
# opcode: srliw ; op1:x31; dest:x22; op1val:0xfffffffffffffbff;  immval:27
TEST_IMM_OP( srliw, x22, x31, 0x1f, 0xfffffffffffffbff, 27, x8, 128, x29)

# rs1==x3, rd==x18, imm_val == 23, rs1_val == -288230376151711745
# opcode: srliw ; op1:x3; dest:x18; op1val:0xfbffffffffffffff;  immval:23
TEST_IMM_OP( srliw, x18, x3, 0x1ff, 0xfbffffffffffffff, 23, x8, 136, x29)

# rs1==x6, rd==x15, imm_val == 15, rs1_val == -140737488355329
# opcode: srliw ; op1:x6; dest:x15; op1val:0xffff7fffffffffff;  immval:15
TEST_IMM_OP( srliw, x15, x6, 0x1ffff, 0xffff7fffffffffff, 15, x8, 144, x29)

# rs1==x20, rd==x12, imm_val == 10, rs1_val == -257
# opcode: srliw ; op1:x20; dest:x12; op1val:0xfffffffffffffeff;  immval:10
TEST_IMM_OP( srliw, x12, x20, 0x3fffff, 0xfffffffffffffeff, 10, x8, 152, x29)

# rs1==x23, rd==x14, rs1_val == 2, 
# opcode: srliw ; op1:x23; dest:x14; op1val:0x0000000000000002;  immval:9
TEST_IMM_OP( srliw, x14, x23, 0x0, 0x0000000000000002, 9, x8, 160, x29)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x29, rd==x1, rs1_val == 8, 
# opcode: srliw ; op1:x29; dest:x1; op1val:0x0000000000000008;  immval:17
TEST_IMM_OP( srliw, x1, x29, 0x0, 0x0000000000000008, 17, x3, 0, x4)

# rs1==x8, rd==x30, rs1_val == 16, 
# opcode: srliw ; op1:x8; dest:x30; op1val:0x0000000000000010;  immval:8
TEST_IMM_OP( srliw, x30, x8, 0x0, 0x0000000000000010, 8, x3, 8, x4)

# rs1==x5, rd==x2, rs1_val == 64, 
# opcode: srliw ; op1:x5; dest:x2; op1val:0x0000000000000040;  immval:7
TEST_IMM_OP( srliw, x2, x5, 0x0, 0x0000000000000040, 7, x3, 16, x4)

# rs1==x10, rd==x8, rs1_val == 128, 
# opcode: srliw ; op1:x10; dest:x8; op1val:0x0000000000000080;  immval:1
TEST_IMM_OP( srliw, x8, x10, 0x40, 0x0000000000000080, 1, x3, 24, x4)

# rs1==x26, rd==x0, rs1_val == 256, 
# opcode: srliw ; op1:x26; dest:x0; op1val:0x0000000000000100;  immval:10
TEST_IMM_OP( srliw, x0, x26, 0x0, 0x0000000000000100, 10, x3, 32, x4)

# rs1==x7, rd==x6, rs1_val == 512, 
# opcode: srliw ; op1:x7; dest:x6; op1val:0x0000000000000200;  immval:4
TEST_IMM_OP( srliw, x6, x7, 0x20, 0x0000000000000200, 4, x3, 40, x4)

# rs1==x30, rd==x9, rs1_val == 1024, 
# opcode: srliw ; op1:x30; dest:x9; op1val:0x0000000000000400;  immval:31
TEST_IMM_OP( srliw, x9, x30, 0x0, 0x0000000000000400, 31, x3, 48, x4)

# rs1==x28, rd==x17, rs1_val == 4096, 
# opcode: srliw ; op1:x28; dest:x17; op1val:0x0000000000001000;  immval:8
TEST_IMM_OP( srliw, x17, x28, 0x10, 0x0000000000001000, 8, x3, 56, x4)

# rs1==x27, rd==x23, rs1_val == 8192, 
# opcode: srliw ; op1:x27; dest:x23; op1val:0x0000000000002000;  immval:23
TEST_IMM_OP( srliw, x23, x27, 0x0, 0x0000000000002000, 23, x3, 64, x4)

# rs1==x19, rd==x29, rs1_val == 16384, 
# opcode: srliw ; op1:x19; dest:x29; op1val:0x0000000000004000;  immval:4
TEST_IMM_OP( srliw, x29, x19, 0x400, 0x0000000000004000, 4, x3, 72, x4)

# rs1==x14, rd==x16, rs1_val == 32768, 
# opcode: srliw ; op1:x14; dest:x16; op1val:0x0000000000008000;  immval:31
TEST_IMM_OP( srliw, x16, x14, 0x0, 0x0000000000008000, 31, x3, 80, x4)

# rs1_val == 65536, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x1000, 0x0000000000010000, 4, x3, 88, x4)

# rs1_val == 131072, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x20000, 0x0000000000020000, 0, x3, 96, x4)

# rs1_val == 262144, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x40, 0x0000000000040000, 12, x3, 104, x4)

# rs1_val == 524288, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x2000, 0x0000000000080000, 6, x3, 112, x4)

# rs1_val == 1048576, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x8, 0x0000000000100000, 17, x3, 120, x4)

# rs1_val == 2097152, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000200000, 27, x3, 128, x4)

# rs1_val == 4194304, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x10, 0x0000000000400000, 18, x3, 136, x4)

# rs1_val == 8388608, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x20, 0x0000000000800000, 18, x3, 144, x4)

# rs1_val == 16777216, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x1000000, 0x0000000001000000, 0, x3, 152, x4)

# rs1_val == 33554432, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x4, 0x0000000002000000, 23, x3, 160, x4)

# rs1_val == 67108864, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x1000, 0x0000000004000000, 14, x3, 168, x4)

# rs1_val == 134217728, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x8000000, 0x0000000008000000, 0, x3, 176, x4)

# rs1_val == 268435456, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x4000, 0x0000000010000000, 14, x3, 184, x4)

# rs1_val == 536870912, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x800, 0x0000000020000000, 18, x3, 192, x4)

# rs1_val == 1073741824, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x20000000, 0x0000000040000000, 1, x3, 200, x4)

# rs1_val == 2147483648, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x2000000, 0x0000000080000000, 6, x3, 208, x4)

# rs1_val == 4294967296, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000100000000, 18, x3, 216, x4)

# rs1_val == 8589934592, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000200000000, 5, x3, 224, x4)

# rs1_val == 17179869184, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000400000000, 27, x3, 232, x4)

# rs1_val == 34359738368, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000800000000, 6, x3, 240, x4)

# rs1_val == 68719476736, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000001000000000, 10, x3, 248, x4)

# rs1_val == 137438953472, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000002000000000, 29, x3, 256, x4)

# rs1_val == 274877906944, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000004000000000, 30, x3, 264, x4)

# rs1_val == 549755813888, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000008000000000, 16, x3, 272, x4)

# rs1_val == 1099511627776, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000010000000000, 10, x3, 280, x4)

# rs1_val == 2199023255552, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000020000000000, 17, x3, 288, x4)

# rs1_val == 4398046511104, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000040000000000, 6, x3, 296, x4)

# rs1_val == 8796093022208, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000080000000000, 5, x3, 304, x4)

# rs1_val == 17592186044416, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000100000000000, 4, x3, 312, x4)

# rs1_val == 35184372088832, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000200000000000, 31, x3, 320, x4)

# rs1_val == 70368744177664, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000400000000000, 12, x3, 328, x4)

# rs1_val == 140737488355328, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000800000000000, 21, x3, 336, x4)

# rs1_val == 281474976710656, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0001000000000000, 0, x3, 344, x4)

# rs1_val == 1125899906842624, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0004000000000000, 8, x3, 352, x4)

# rs1_val == 2251799813685248, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0008000000000000, 0, x3, 360, x4)

# rs1_val == 4503599627370496, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0010000000000000, 12, x3, 368, x4)

# rs1_val == 9007199254740992, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0020000000000000, 0, x3, 376, x4)

# rs1_val == -2199023255553, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x7, 0xfffffdffffffffff, 29, x3, 384, x4)

# rs1_val == -4398046511105, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xfffff, 0xfffffbffffffffff, 12, x3, 392, x4)

# rs1_val == -8796093022209, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xfffff7ffffffffff, 14, x3, 400, x4)

# rs1_val == -35184372088833, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x7, 0xffffdfffffffffff, 29, x3, 408, x4)

# rs1_val == -70368744177665, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xffffbfffffffffff, 11, x3, 416, x4)

# rs1_val == -281474976710657, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x7fffffff, 0xfffeffffffffffff, 1, x3, 424, x4)

# rs1_val == -1125899906842625, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xfffbffffffffffff, 14, x3, 432, x4)

# rs1_val == -2251799813685249, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xfff7ffffffffffff, 4, x3, 440, x4)

# rs1_val == -4503599627370497, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7ffffff, 0xffefffffffffffff, 5, x3, 448, x4)

# rs1_val == -9007199254740993, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x1, 0xffdfffffffffffff, 31, x3, 456, x4)

# rs1_val == -18014398509481985, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xffbfffffffffffff, 19, x3, 464, x4)

# rs1_val == -36028797018963969, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0xffff, 0xff7fffffffffffff, 16, x3, 472, x4)

# rs1_val == -72057594037927937, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x3fffff, 0xfeffffffffffffff, 10, x3, 480, x4)

# rs1_val == -576460752303423489, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7ffffff, 0xf7ffffffffffffff, 5, x3, 488, x4)

# rs1_val == -1152921504606846977, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xefffffffffffffff, 11, x3, 496, x4)

# rs1_val == -2305843009213693953, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xfffff, 0xdfffffffffffffff, 12, x3, 504, x4)

# rs1_val == -4611686018427387905, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xbfffffffffffffff, 4, x3, 512, x4)

# rs1_val == 6148914691236517205, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x55555, 0x5555555555555555, 12, x3, 520, x4)

# rs1_val == -6148914691236517206, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x555, 0xaaaaaaaaaaaaaaaa, 21, x3, 528, x4)

# rs1_val == 18014398509481984, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0040000000000000, 18, x3, 536, x4)

# rs1_val == 36028797018963968, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0080000000000000, 4, x3, 544, x4)

# rs1_val == 72057594037927936, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0100000000000000, 0, x3, 552, x4)

# rs1_val == 144115188075855872, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0200000000000000, 1, x3, 560, x4)

# rs1_val == 288230376151711744, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0400000000000000, 19, x3, 568, x4)

# rs1_val == 576460752303423488, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0800000000000000, 2, x3, 576, x4)

# rs1_val == 1152921504606846976, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x1000000000000000, 23, x3, 584, x4)

# rs1_val == 4611686018427387904, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x4000000000000000, 21, x3, 592, x4)

# rs1_val == -2, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x3fffff, 0xfffffffffffffffe, 10, x3, 600, x4)

# rs1_val == -3, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xfffffffffffffffd, 27, x3, 608, x4)

# rs1_val == -5, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7fff, 0xfffffffffffffffb, 17, x3, 616, x4)

# rs1_val == -9, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xfffffffffffffff7, 23, x3, 624, x4)

# rs1_val == -17, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xffffffffffffffef, 14, x3, 632, x4)

# rs1_val == -33, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xffffffffffffffdf, 19, x3, 640, x4)

# rs1_val == -65, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xffffffbf, 0xffffffffffffffbf, 0, x3, 648, x4)

# rs1_val == -129, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ffff, 0xffffffffffffff7f, 13, x3, 656, x4)

# rs1_val == -513, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3fffff7f, 0xfffffffffffffdff, 2, x3, 664, x4)

# rs1_val == -2049, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xfffffffffffff7ff, 19, x3, 672, x4)

# rs1_val == -4097, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xffffeff, 0xffffffffffffefff, 4, x3, 680, x4)

# rs1_val == -8193, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xffffdfff, 0xffffffffffffdfff, 0, x3, 688, x4)

# rs1_val == -32769, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1fffeff, 0xffffffffffff7fff, 7, x3, 696, x4)

# rs1_val == -65537, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xfffffffffffeffff, 23, x3, 704, x4)

# rs1_val == -131073, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1fffbff, 0xfffffffffffdffff, 7, x3, 712, x4)

# rs1_val == -262145, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ffdf, 0xfffffffffffbffff, 13, x3, 720, x4)

# rs1_val == -1048577, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1ffdff, 0xffffffffffefffff, 11, x3, 728, x4)

# rs1_val == -2097153, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0xffdf, 0xffffffffffdfffff, 16, x3, 736, x4)

# rs1_val == -4194305, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x3, 0xffffffffffbfffff, 30, x3, 744, x4)

# rs1_val == -16777217, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xfeffff, 0xfffffffffeffffff, 8, x3, 752, x4)

# rs1_val == -33554433, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xfdffff, 0xfffffffffdffffff, 8, x3, 760, x4)

# rs1_val == -67108865, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1f7ffff, 0xfffffffffbffffff, 7, x3, 768, x4)

# rs1_val == -134217729, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7bfff, 0xfffffffff7ffffff, 13, x3, 776, x4)

# rs1_val == -268435457, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1dfffff, 0xffffffffefffffff, 7, x3, 784, x4)

# rs1_val == -536870913, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xdffff, 0xffffffffdfffffff, 12, x3, 792, x4)

# rs1_val == -1073741825, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x17f, 0xffffffffbfffffff, 23, x3, 800, x4)

# rs1_val == -2147483649, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x7ffffff, 0xffffffff7fffffff, 4, x3, 808, x4)

# rs1_val == -4294967297, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7fff, 0xfffffffeffffffff, 17, x3, 816, x4)

# rs1_val == -8589934593, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x1, 0xfffffffdffffffff, 31, x3, 824, x4)

# rs1_val == -17179869185, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xfffffffbffffffff, 21, x3, 832, x4)

# rs1_val == -34359738369, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x1, 0xfffffff7ffffffff, 31, x3, 840, x4)

# rs1_val == -68719476737, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xffffffff, 0xffffffefffffffff, 0, x3, 848, x4)

# rs1_val == -137438953473, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x3fffff, 0xffffffdfffffffff, 10, x3, 856, x4)

# rs1_val == -274877906945, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xffffffbfffffffff, 11, x3, 864, x4)

# rs1_val == -549755813889, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xffffffff, 0xffffff7fffffffff, 0, x3, 872, x4)

# rs1_val == -1099511627777, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xfffffeffffffffff, 4, x3, 880, x4)

# rs1_val > 0 and imm_val > 0 and imm_val < 32, rs1_val == 562949953421312
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0002000000000000, 11, x3, 888, x4)

# rs1_val > 0 and imm_val == 31, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000000003;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000000003, 31, x3, 896, x4)

# rs1_val == 256, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000000100, 10, x3, 904, x4)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x8_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 114*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
