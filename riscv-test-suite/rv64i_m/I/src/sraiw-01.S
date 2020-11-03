
#This assembly file tests the sraiw instruction of the RISC-V I extension for the sraiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sraiw)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 == rd, rs1==x29, rd==x29, rs1_val < 0 and imm_val > 0 and imm_val < 32, 
# opcode: sraiw ; op1:x29; dest:x29; op1val:0xfffffffffffffff6;  immval:6
TEST_IMM_OP( sraiw, x29, x29, 0x3ffffff, 0xfffffffffffffff6, 6, x4, 0, x12)

# rs1 != rd, rs1==x3, rd==x30, rs1_val > 0 and imm_val > 0 and imm_val < 32, imm_val == 21
# opcode: sraiw ; op1:x3; dest:x30; op1val:0x0000000000000005;  immval:21
TEST_IMM_OP( sraiw, x30, x3, 0x0, 0x0000000000000005, 21, x4, 8, x12)

# rs1==x20, rd==x10, rs1_val < 0 and imm_val == 0, rs1_val == -16385
# opcode: sraiw ; op1:x20; dest:x10; op1val:0xffffffffffffbfff;  immval:0
TEST_IMM_OP( sraiw, x10, x20, 0xffffbfff, 0xffffffffffffbfff, 0, x4, 16, x12)

# rs1==x0, rd==x31, rs1_val > 0 and imm_val == 0, rs1_val == 576460752303423488
# opcode: sraiw ; op1:x0; dest:x31; op1val:0x0800000000000000;  immval:0
TEST_IMM_OP( sraiw, x31, x0, 0x0, 0x0800000000000000, 0, x4, 24, x12)

# rs1==x23, rd==x3, rs1_val < 0 and imm_val == 31, rs1_val == -68719476737
# opcode: sraiw ; op1:x23; dest:x3; op1val:0xffffffefffffffff;  immval:31
TEST_IMM_OP( sraiw, x3, x23, 0x1, 0xffffffefffffffff, 31, x4, 32, x12)

# rs1==x2, rd==x18, rs1_val > 0 and imm_val == 31, rs1_val == 134217728
# opcode: sraiw ; op1:x2; dest:x18; op1val:0x0000000008000000;  immval:31
TEST_IMM_OP( sraiw, x18, x2, 0x0, 0x0000000008000000, 31, x4, 40, x12)

# rs1==x26, rd==x17, rs1_val == imm_val and imm_val > 0 and imm_val < 32, rs1_val == 8, imm_val == 8
# opcode: sraiw ; op1:x26; dest:x17; op1val:0x0000000000000008;  immval:8
TEST_IMM_OP( sraiw, x17, x26, 0x0, 0x0000000000000008, 8, x4, 48, x12)

# rs1==x25, rd==x9, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32, rs1_val == -9223372036854775808
# opcode: sraiw ; op1:x25; dest:x9; op1val:0x8000000000000000;  immval:17
TEST_IMM_OP( sraiw, x9, x25, 0x0, 0x8000000000000000, 17, x4, 56, x12)

# rs1==x17, rd==x26, rs1_val == 0 and imm_val >= 0 and imm_val < 32, imm_val == 10
# opcode: sraiw ; op1:x17; dest:x26; op1val:0x0000000000000000;  immval:10
TEST_IMM_OP( sraiw, x26, x17, 0x0, 0x0000000000000000, 10, x4, 64, x12)

# rs1==x7, rd==x27, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32, rs1_val == 9223372036854775807
# opcode: sraiw ; op1:x7; dest:x27; op1val:0x7fffffffffffffff;  immval:18
TEST_IMM_OP( sraiw, x27, x7, 0x3fff, 0x7fffffffffffffff, 18, x4, 72, x12)

# rs1==x5, rd==x24, rs1_val == 1 and imm_val >= 0 and imm_val < 32, rs1_val == 1
# opcode: sraiw ; op1:x5; dest:x24; op1val:0x0000000000000001;  immval:0
TEST_IMM_OP( sraiw, x24, x5, 0x1, 0x0000000000000001, 0, x4, 80, x12)

# rs1==x9, rd==x28, imm_val == 1, rs1_val == 72057594037927936
# opcode: sraiw ; op1:x9; dest:x28; op1val:0x0100000000000000;  immval:1
TEST_IMM_OP( sraiw, x28, x9, 0x0, 0x0100000000000000, 1, x4, 88, x12)

# rs1==x22, rd==x7, imm_val == 2, rs1_val == -17592186044417
# opcode: sraiw ; op1:x22; dest:x7; op1val:0xffffefffffffffff;  immval:2
TEST_IMM_OP( sraiw, x7, x22, 0x3fffffff, 0xffffefffffffffff, 2, x4, 96, x12)

# rs1==x10, rd==x21, imm_val == 4, 
# opcode: sraiw ; op1:x10; dest:x21; op1val:0xffffffffffffbfff;  immval:4
TEST_IMM_OP( sraiw, x21, x10, 0xffffbff, 0xffffffffffffbfff, 4, x4, 104, x12)

# rs1==x18, rd==x19, imm_val == 16, rs1_val == -34359738369
# opcode: sraiw ; op1:x18; dest:x19; op1val:0xfffffff7ffffffff;  immval:16
TEST_IMM_OP( sraiw, x19, x18, 0xffff, 0xfffffff7ffffffff, 16, x4, 112, x12)

# rs1==x11, rd==x0, imm_val == 30, rs1_val == -4398046511105
# opcode: sraiw ; op1:x11; dest:x0; op1val:0xfffffbffffffffff;  immval:30
TEST_IMM_OP( sraiw, x0, x11, 0x3, 0xfffffbffffffffff, 30, x4, 120, x12)

# rs1==x13, rd==x20, imm_val == 29, rs1_val == -1099511627777
# opcode: sraiw ; op1:x13; dest:x20; op1val:0xfffffeffffffffff;  immval:29
TEST_IMM_OP( sraiw, x20, x13, 0x7, 0xfffffeffffffffff, 29, x4, 128, x12)

# rs1==x14, rd==x23, imm_val == 27, 
# opcode: sraiw ; op1:x14; dest:x23; op1val:0xffffffefffffffff;  immval:27
TEST_IMM_OP( sraiw, x23, x14, 0x1f, 0xffffffefffffffff, 27, x4, 136, x12)

# rs1==x8, rd==x11, imm_val == 23, rs1_val == -562949953421313
# opcode: sraiw ; op1:x8; dest:x11; op1val:0xfffdffffffffffff;  immval:23
TEST_IMM_OP( sraiw, x11, x8, 0x1ff, 0xfffdffffffffffff, 23, x4, 144, x12)

# rs1==x6, rd==x1, imm_val == 15, rs1_val == 32768
# opcode: sraiw ; op1:x6; dest:x1; op1val:0x0000000000008000;  immval:15
TEST_IMM_OP( sraiw, x1, x6, 0x1, 0x0000000000008000, 15, x4, 152, x12)

# rs1==x28, rd==x16, rs1_val == 2, 
# opcode: sraiw ; op1:x28; dest:x16; op1val:0x0000000000000002;  immval:30
TEST_IMM_OP( sraiw, x16, x28, 0x0, 0x0000000000000002, 30, x4, 160, x7)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x15, rd==x12, rs1_val == 4, 
# opcode: sraiw ; op1:x15; dest:x12; op1val:0x0000000000000004;  immval:21
TEST_IMM_OP( sraiw, x12, x15, 0x0, 0x0000000000000004, 21, x3, 0, x7)

# rs1==x1, rd==x22, rs1_val == 16, 
# opcode: sraiw ; op1:x1; dest:x22; op1val:0x0000000000000010;  immval:4
TEST_IMM_OP( sraiw, x22, x1, 0x1, 0x0000000000000010, 4, x3, 8, x7)

# rs1==x31, rd==x6, rs1_val == 32, 
# opcode: sraiw ; op1:x31; dest:x6; op1val:0x0000000000000020;  immval:17
TEST_IMM_OP( sraiw, x6, x31, 0x0, 0x0000000000000020, 17, x3, 16, x7)

# rs1==x16, rd==x13, rs1_val == 64, 
# opcode: sraiw ; op1:x16; dest:x13; op1val:0x0000000000000040;  immval:5
TEST_IMM_OP( sraiw, x13, x16, 0x2, 0x0000000000000040, 5, x3, 24, x7)

# rs1==x12, rd==x8, rs1_val == 128, 
# opcode: sraiw ; op1:x12; dest:x8; op1val:0x0000000000000080;  immval:8
TEST_IMM_OP( sraiw, x8, x12, 0x0, 0x0000000000000080, 8, x3, 32, x7)

# rs1==x4, rd==x25, rs1_val == 256, 
# opcode: sraiw ; op1:x4; dest:x25; op1val:0x0000000000000100;  immval:14
TEST_IMM_OP( sraiw, x25, x4, 0x0, 0x0000000000000100, 14, x3, 40, x7)

# rs1==x19, rd==x4, rs1_val == 512, 
# opcode: sraiw ; op1:x19; dest:x4; op1val:0x0000000000000200;  immval:5
TEST_IMM_OP( sraiw, x4, x19, 0x10, 0x0000000000000200, 5, x3, 48, x7)

# rs1==x30, rd==x14, rs1_val == 1024, 
# opcode: sraiw ; op1:x30; dest:x14; op1val:0x0000000000000400;  immval:19
TEST_IMM_OP( sraiw, x14, x30, 0x0, 0x0000000000000400, 19, x3, 56, x7)

# rs1==x24, rd==x2, rs1_val == 2048, 
# opcode: sraiw ; op1:x24; dest:x2; op1val:0x0000000000000800;  immval:18
TEST_IMM_OP( sraiw, x2, x24, 0x0, 0x0000000000000800, 18, x3, 64, x7)

# rs1==x21, rd==x15, rs1_val == 4096, 
# opcode: sraiw ; op1:x21; dest:x15; op1val:0x0000000000001000;  immval:19
TEST_IMM_OP( sraiw, x15, x21, 0x0, 0x0000000000001000, 19, x3, 72, x7)

# rs1==x27, rd==x5, rs1_val == 8192, 
# opcode: sraiw ; op1:x27; dest:x5; op1val:0x0000000000002000;  immval:13
TEST_IMM_OP( sraiw, x5, x27, 0x1, 0x0000000000002000, 13, x3, 80, x7)

# rs1_val == 16384, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000004000, 17, x3, 88, x7)

# rs1_val == 65536, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000010000, 31, x3, 96, x7)

# rs1_val == 131072, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x40, 0x0000000000020000, 11, x3, 104, x7)

# rs1_val == 262144, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x10000, 0x0000000000040000, 2, x3, 112, x7)

# rs1_val == 524288, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000080000, 21, x3, 120, x7)

# rs1_val == 1048576, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x4000, 0x0000000000100000, 6, x3, 128, x7)

# rs1_val == 2097152, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x4000, 0x0000000000200000, 7, x3, 136, x7)

# rs1_val == 4194304, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x200, 0x0000000000400000, 13, x3, 144, x7)

# rs1_val == 8388608, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x2000, 0x0000000000800000, 10, x3, 152, x7)

# rs1_val == 16777216, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x80000, 0x0000000001000000, 5, x3, 160, x7)

# rs1_val == 33554432, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x400000, 0x0000000002000000, 3, x3, 168, x7)

# rs1_val == 67108864, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x1000, 0x0000000004000000, 14, x3, 176, x7)

# rs1_val == 268435456, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x400, 0x0000000010000000, 18, x3, 184, x7)

# rs1_val == 536870912, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x400, 0x0000000020000000, 19, x3, 192, x7)

# rs1_val == 1073741824, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x100000, 0x0000000040000000, 10, x3, 200, x7)

# rs1_val == 2147483648, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x8000, 0x0000000080000000, 16, x3, 208, x7)

# rs1_val == 4294967296, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000100000000, 18, x3, 216, x7)

# rs1_val == 8589934592, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000200000000, 3, x3, 224, x7)

# rs1_val == 17179869184, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000400000000, 0, x3, 232, x7)

# rs1_val == 34359738368, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000800000000, 30, x3, 240, x7)

# rs1_val == 68719476736, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000001000000000, 7, x3, 248, x7)

# rs1_val == 137438953472, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000002000000000, 14, x3, 256, x7)

# rs1_val == 274877906944, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000004000000000, 7, x3, 264, x7)

# rs1_val == 549755813888, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000008000000000, 23, x3, 272, x7)

# rs1_val == 1099511627776, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000010000000000, 29, x3, 280, x7)

# rs1_val == 2199023255552, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000020000000000, 31, x3, 288, x7)

# rs1_val == 4398046511104, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000040000000000, 5, x3, 296, x7)

# rs1_val == 8796093022208, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000080000000000, 19, x3, 304, x7)

# rs1_val == 17592186044416, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000100000000000, 23, x3, 312, x7)

# rs1_val == 35184372088832, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000200000000000, 27, x3, 320, x7)

# rs1_val == 70368744177664, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000400000000000, 17, x3, 328, x7)

# rs1_val == 140737488355328, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000800000000000, 16, x3, 336, x7)

# rs1_val == 281474976710656, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0001000000000000, 10, x3, 344, x7)

# rs1_val == 562949953421312, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0002000000000000, 19, x3, 352, x7)

# rs1_val == 1125899906842624, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0004000000000000, 9, x3, 360, x7)

# rs1_val == 2251799813685248, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0008000000000000, 1, x3, 368, x7)

# rs1_val == 4503599627370496, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0010000000000000, 7, x3, 376, x7)

# rs1_val == 9007199254740992, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:15
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0020000000000000, 15, x3, 384, x7)

# rs1_val == 18014398509481984, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0040000000000000, 7, x3, 392, x7)

# rs1_val == 36028797018963968, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0080000000000000, 3, x3, 400, x7)

# rs1_val == -2199023255553, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff, 0xfffffdffffffffff, 14, x3, 408, x7)

# rs1_val == -8796093022209, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xfffff7ffffffffff, 19, x3, 416, x7)

# rs1_val == -35184372088833, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xffffdfffffffffff, 11, x3, 424, x7)

# rs1_val == -70368744177665, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff, 0xffffbfffffffffff, 14, x3, 432, x7)

# rs1_val == -140737488355329, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xffff7fffffffffff, 5, x3, 440, x7)

# rs1_val == -281474976710657, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xffffff, 0xfffeffffffffffff, 8, x3, 448, x7)

# rs1_val == -1125899906842625, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7fffffff, 0xfffbffffffffffff, 1, x3, 456, x7)

# rs1_val == -2251799813685249, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xfff7ffffffffffff, 31, x3, 464, x7)

# rs1_val == -4503599627370497, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xffefffffffffffff, 31, x3, 472, x7)

# rs1_val == -9007199254740993, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xffdfffffffffffff, 5, x3, 480, x7)

# rs1_val == -18014398509481985, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x7fffff, 0xffbfffffffffffff, 9, x3, 488, x7)

# rs1_val == -36028797018963969, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xff7fffffffffffff, 4, x3, 496, x7)

# rs1_val == -72057594037927937, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7fffffff, 0xfeffffffffffffff, 1, x3, 504, x7)

# rs1_val == -144115188075855873, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x1ff, 0xfdffffffffffffff, 23, x3, 512, x7)

# rs1_val == -288230376151711745, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xfbffffffffffffff, 10, x3, 520, x7)

# rs1_val == -576460752303423489, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x7ff, 0xf7ffffffffffffff, 21, x3, 528, x7)

# rs1_val == -1152921504606846977, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x3ffffff, 0xefffffffffffffff, 6, x3, 536, x7)

# rs1_val == -2305843009213693953, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xdfffffffffffffff, 5, x3, 544, x7)

# rs1_val == -4611686018427387905, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xbfffffffffffffff, 27, x3, 552, x7)

# rs1_val == 6148914691236517205, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0xaaaaa, 0x5555555555555555, 11, x3, 560, x7)

# rs1_val == -6148914691236517206, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x155, 0xaaaaaaaaaaaaaaaa, 23, x3, 568, x7)

# rs1_val == 144115188075855872, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0200000000000000, 31, x3, 576, x7)

# rs1_val == 288230376151711744, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0400000000000000, 17, x3, 584, x7)

# rs1_val == 1152921504606846976, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x1000000000000000, 8, x3, 592, x7)

# rs1_val == 2305843009213693952, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x2000000000000000, 27, x3, 600, x7)

# rs1_val == 4611686018427387904, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x4000000000000000, 16, x3, 608, x7)

# rs1_val == -2, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xfffffffffffffffe, 5, x3, 616, x7)

# rs1_val == -3, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xfffffffffffffffd, 10, x3, 624, x7)

# rs1_val == -5, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xfffffffffffffffb, 12, x3, 632, x7)

# rs1_val == -9, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffffb, 0xfffffffffffffff7, 1, x3, 640, x7)

# rs1_val == -17, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xffffffef, 0xffffffffffffffef, 0, x3, 648, x7)

# rs1_val == -33, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xffffffdf, 0xffffffffffffffdf, 0, x3, 656, x7)

# rs1_val == -65, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xffffffffffffffbf, 31, x3, 664, x7)

# rs1_val == -129, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff, 0xffffffffffffff7f, 14, x3, 672, x7)

# rs1_val == -257, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xfffffffffffffeff, 19, x3, 680, x7)

# rs1_val == -513, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffdf, 0xfffffffffffffdff, 4, x3, 688, x7)

# rs1_val == -1025, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xfffffffffffffbff, 19, x3, 696, x7)

# rs1_val == -2049, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xfffffffffffff7ff, 31, x3, 704, x7)

# rs1_val == -4097, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xffffffffffffefff, 16, x3, 712, x7)

# rs1_val == -8193, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff, 0xffffffffffffdfff, 14, x3, 720, x7)

# rs1_val == -32769, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xffff7f, 0xffffffffffff7fff, 8, x3, 728, x7)

# rs1_val == -65537, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x1ff, 0xfffffffffffeffff, 23, x3, 736, x7)

# rs1_val == -131073, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffef, 0xfffffffffffdffff, 13, x3, 744, x7)

# rs1_val == -262145, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xfffb, 0xfffffffffffbffff, 16, x3, 752, x7)

# rs1_val == -524289, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xfff7ffff, 0xfffffffffff7ffff, 0, x3, 760, x7)

# rs1_val == -1048577, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7ff7ffff, 0xffffffffffefffff, 1, x3, 768, x7)

# rs1_val == -2097153, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffdf, 0xffffffffffdfffff, 16, x3, 776, x7)

# rs1_val == -4194305, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xffbfffff, 0xffffffffffbfffff, 0, x3, 784, x7)

# rs1_val == -8388609, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xff7ffff, 0xffffffffff7fffff, 4, x3, 792, x7)

# rs1_val == -16777217, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3fbff, 0xfffffffffeffffff, 14, x3, 800, x7)

# rs1_val == -33554433, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x1fbffff, 0xfffffffffdffffff, 7, x3, 808, x7)

# rs1_val == -67108865, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1f7fff, 0xfffffffffbffffff, 11, x3, 816, x7)

# rs1_val == -134217729, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x1ef, 0xfffffffff7ffffff, 23, x3, 824, x7)

# rs1_val == -268435457, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xeffff, 0xffffffffefffffff, 12, x3, 832, x7)

# rs1_val == -536870913, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xffffffffdfffffff, 31, x3, 840, x7)

# rs1_val == -1073741825, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x2fff, 0xffffffffbfffffff, 18, x3, 848, x7)

# rs1_val == -2147483649, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xffffffff7fffffff, 11, x3, 856, x7)

# rs1_val == -4294967297, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xfffffffeffffffff, 10, x3, 864, x7)

# rs1_val == -8589934593, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7fff, 0xfffffffdffffffff, 17, x3, 872, x7)

# rs1_val == -17179869185, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x3ffffff, 0xfffffffbffffffff, 6, x3, 880, x7)

# rs1_val == -137438953473, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x1ffffff, 0xffffffdfffffffff, 7, x3, 888, x7)

# rs1_val == -274877906945, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xffffffbfffffffff, 10, x3, 896, x7)

# rs1_val == -549755813889, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x7, 0xffffff7fffffffff, 29, x3, 904, x7)

# rs1_val > 0 and imm_val == 0, rs1_val == 576460752303423488
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0800000000000000, 0, x3, 912, x7)

# imm_val == 30, rs1_val == -4398046511105
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xfffffbffffffffff, 30, x3, 920, x7)
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
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x3_0:
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
