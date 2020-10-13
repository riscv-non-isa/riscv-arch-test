
#This assembly file tests the sraiw instruction of the RISC-V I extension for the sraiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sraiw)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 == rd, rs1==x19, rd==x19, rs1_val < 0 and imm_val > 0 and imm_val < 32, 
# opcode: sraiw ; op1:x19; dest:x19; op1val:0xffffffffffffffff;  immval:9
TEST_IMM_OP( sraiw, x19, x19, 0x7fffff, 0xffffffffffffffff, 9, x3, 0, x5)

# rs1 != rd, rs1==x6, rd==x10, rs1_val > 0 and imm_val > 0 and imm_val < 32, rs1_val == 536870912
# opcode: sraiw ; op1:x6; dest:x10; op1val:0x0000000020000000;  immval:13
TEST_IMM_OP( sraiw, x10, x6, 0x10000, 0x0000000020000000, 13, x3, 8, x5)

# rs1==x29, rd==x7, rs1_val < 0 and imm_val == 0, rs1_val == -65537
# opcode: sraiw ; op1:x29; dest:x7; op1val:0xfffffffffffeffff;  immval:0
TEST_IMM_OP( sraiw, x7, x29, 0xfffeffff, 0xfffffffffffeffff, 0, x3, 16, x5)

# rs1==x31, rd==x21, rs1_val > 0 and imm_val == 0, rs1_val == 72057594037927936
# opcode: sraiw ; op1:x31; dest:x21; op1val:0x0100000000000000;  immval:0
TEST_IMM_OP( sraiw, x21, x31, 0x0, 0x0100000000000000, 0, x3, 24, x5)

# rs1==x23, rd==x20, rs1_val < 0 and imm_val == 31, rs1_val == -72057594037927937
# opcode: sraiw ; op1:x23; dest:x20; op1val:0xfeffffffffffffff;  immval:31
TEST_IMM_OP( sraiw, x20, x23, 0x1, 0xfeffffffffffffff, 31, x3, 32, x5)

# rs1==x14, rd==x2, rs1_val > 0 and imm_val == 31, rs1_val == 2097152
# opcode: sraiw ; op1:x14; dest:x2; op1val:0x0000000000200000;  immval:31
TEST_IMM_OP( sraiw, x2, x14, 0x0, 0x0000000000200000, 31, x3, 40, x5)

# rs1==x8, rd==x11, rs1_val == imm_val and imm_val > 0 and imm_val < 32, 
# opcode: sraiw ; op1:x8; dest:x11; op1val:0x0000000000000006;  immval:6
TEST_IMM_OP( sraiw, x11, x8, 0x0, 0x0000000000000006, 6, x3, 48, x5)

# rs1==x24, rd==x18, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32, rs1_val == -9223372036854775808, imm_val == 16
# opcode: sraiw ; op1:x24; dest:x18; op1val:0x8000000000000000;  immval:16
TEST_IMM_OP( sraiw, x18, x24, 0x0, 0x8000000000000000, 16, x3, 56, x5)

# rs1==x12, rd==x6, rs1_val == 0 and imm_val >= 0 and imm_val < 32, imm_val == 8
# opcode: sraiw ; op1:x12; dest:x6; op1val:0x0000000000000000;  immval:8
TEST_IMM_OP( sraiw, x6, x12, 0x0, 0x0000000000000000, 8, x3, 64, x5)

# rs1==x20, rd==x0, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32, rs1_val == 9223372036854775807
# opcode: sraiw ; op1:x20; dest:x0; op1val:0x7fffffffffffffff;  immval:19
TEST_IMM_OP( sraiw, x0, x20, 0x1fff, 0x7fffffffffffffff, 19, x3, 72, x5)

# rs1==x7, rd==x1, rs1_val == 1 and imm_val >= 0 and imm_val < 32, rs1_val == 1
# opcode: sraiw ; op1:x7; dest:x1; op1val:0x0000000000000001;  immval:12
TEST_IMM_OP( sraiw, x1, x7, 0x0, 0x0000000000000001, 12, x3, 80, x5)

# rs1==x1, rd==x4, imm_val == 1, rs1_val == -268435457
# opcode: sraiw ; op1:x1; dest:x4; op1val:0xffffffffefffffff;  immval:1
TEST_IMM_OP( sraiw, x4, x1, 0x77ffffff, 0xffffffffefffffff, 1, x3, 88, x5)

# rs1==x22, rd==x31, imm_val == 2, rs1_val == 8796093022208
# opcode: sraiw ; op1:x22; dest:x31; op1val:0x0000080000000000;  immval:2
TEST_IMM_OP( sraiw, x31, x22, 0x0, 0x0000080000000000, 2, x3, 96, x5)

# rs1==x2, rd==x25, imm_val == 4, rs1_val == 8
# opcode: sraiw ; op1:x2; dest:x25; op1val:0x0000000000000008;  immval:4
TEST_IMM_OP( sraiw, x25, x2, 0x0, 0x0000000000000008, 4, x3, 104, x5)

# rs1==x0, rd==x12, imm_val == 30, rs1_val == 16777216
# opcode: sraiw ; op1:x0; dest:x12; op1val:0x0000000001000000;  immval:30
TEST_IMM_OP( sraiw, x12, x0, 0x0, 0x0000000001000000, 30, x3, 112, x5)

# rs1==x21, rd==x24, imm_val == 29, rs1_val == -140737488355329
# opcode: sraiw ; op1:x21; dest:x24; op1val:0xffff7fffffffffff;  immval:29
TEST_IMM_OP( sraiw, x24, x21, 0x7, 0xffff7fffffffffff, 29, x3, 120, x5)

# rs1==x13, rd==x27, imm_val == 27, rs1_val == -17592186044417
# opcode: sraiw ; op1:x13; dest:x27; op1val:0xffffefffffffffff;  immval:27
TEST_IMM_OP( sraiw, x27, x13, 0x1f, 0xffffefffffffffff, 27, x3, 128, x5)

# rs1==x15, rd==x8, imm_val == 23, rs1_val == 35184372088832
# opcode: sraiw ; op1:x15; dest:x8; op1val:0x0000200000000000;  immval:23
TEST_IMM_OP( sraiw, x8, x15, 0x0, 0x0000200000000000, 23, x3, 136, x5)

# rs1==x18, rd==x9, imm_val == 15, rs1_val == 128
# opcode: sraiw ; op1:x18; dest:x9; op1val:0x0000000000000080;  immval:15
TEST_IMM_OP( sraiw, x9, x18, 0x0, 0x0000000000000080, 15, x3, 144, x5)

# rs1==x16, rd==x26, imm_val == 21, rs1_val == -4294967297
# opcode: sraiw ; op1:x16; dest:x26; op1val:0xfffffffeffffffff;  immval:21
TEST_IMM_OP( sraiw, x26, x16, 0x7ff, 0xfffffffeffffffff, 21, x3, 152, x5)

# rs1==x28, rd==x22, imm_val == 10, rs1_val == 274877906944
# opcode: sraiw ; op1:x28; dest:x22; op1val:0x0000004000000000;  immval:10
TEST_IMM_OP( sraiw, x22, x28, 0x0, 0x0000004000000000, 10, x3, 160, x5)

# rs1==x11, rd==x30, rs1_val == 2, 
# opcode: sraiw ; op1:x11; dest:x30; op1val:0x0000000000000002;  immval:27
TEST_IMM_OP( sraiw, x30, x11, 0x0, 0x0000000000000002, 27, x3, 168, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x3, rd==x28, rs1_val == 4, 
# opcode: sraiw ; op1:x3; dest:x28; op1val:0x0000000000000004;  immval:6
TEST_IMM_OP( sraiw, x28, x3, 0x0, 0x0000000000000004, 6, x1, 0, x2)

# rs1==x5, rd==x13, rs1_val == 16, 
# opcode: sraiw ; op1:x5; dest:x13; op1val:0x0000000000000010;  immval:3
TEST_IMM_OP( sraiw, x13, x5, 0x2, 0x0000000000000010, 3, x1, 8, x2)

# rs1==x17, rd==x3, rs1_val == 32, 
# opcode: sraiw ; op1:x17; dest:x3; op1val:0x0000000000000020;  immval:6
TEST_IMM_OP( sraiw, x3, x17, 0x0, 0x0000000000000020, 6, x1, 16, x2)

# rs1==x9, rd==x15, rs1_val == 64, 
# opcode: sraiw ; op1:x9; dest:x15; op1val:0x0000000000000040;  immval:0
TEST_IMM_OP( sraiw, x15, x9, 0x40, 0x0000000000000040, 0, x1, 24, x2)

# rs1==x26, rd==x16, rs1_val == 256, 
# opcode: sraiw ; op1:x26; dest:x16; op1val:0x0000000000000100;  immval:15
TEST_IMM_OP( sraiw, x16, x26, 0x0, 0x0000000000000100, 15, x1, 32, x2)

# rs1==x25, rd==x17, rs1_val == 512, 
# opcode: sraiw ; op1:x25; dest:x17; op1val:0x0000000000000200;  immval:3
TEST_IMM_OP( sraiw, x17, x25, 0x40, 0x0000000000000200, 3, x1, 40, x2)

# rs1==x4, rd==x14, rs1_val == 1024, 
# opcode: sraiw ; op1:x4; dest:x14; op1val:0x0000000000000400;  immval:30
TEST_IMM_OP( sraiw, x14, x4, 0x0, 0x0000000000000400, 30, x1, 48, x2)

# rs1==x30, rd==x23, rs1_val == 2048, 
# opcode: sraiw ; op1:x30; dest:x23; op1val:0x0000000000000800;  immval:30
TEST_IMM_OP( sraiw, x23, x30, 0x0, 0x0000000000000800, 30, x1, 56, x2)

# rs1==x10, rd==x5, rs1_val == 4096, 
# opcode: sraiw ; op1:x10; dest:x5; op1val:0x0000000000001000;  immval:13
TEST_IMM_OP( sraiw, x5, x10, 0x0, 0x0000000000001000, 13, x1, 64, x2)

# rs1==x27, rd==x29, rs1_val == 8192, 
# opcode: sraiw ; op1:x27; dest:x29; op1val:0x0000000000002000;  immval:21
TEST_IMM_OP( sraiw, x29, x27, 0x0, 0x0000000000002000, 21, x1, 72, x2)

# rs1_val == 16384, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x100, 0x0000000000004000, 6, x1, 80, x2)

# rs1_val == 32768, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x4000, 0x0000000000008000, 1, x1, 88, x2)

# rs1_val == 65536, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x20, 0x0000000000010000, 11, x1, 96, x2)

# rs1_val == 131072, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x1000, 0x0000000000020000, 5, x1, 104, x2)

# rs1_val == 262144, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x10, 0x0000000000040000, 14, x1, 112, x2)

# rs1_val == 524288, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x20, 0x0000000000080000, 14, x1, 120, x2)

# rs1_val == 1048576, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x20000, 0x0000000000100000, 3, x1, 128, x2)

# rs1_val == 4194304, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000400000, 30, x1, 136, x2)

# rs1_val == 8388608, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x40, 0x0000000000800000, 17, x1, 144, x2)

# rs1_val == 33554432, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x40, 0x0000000002000000, 19, x1, 152, x2)

# rs1_val == 67108864, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x1000000, 0x0000000004000000, 2, x1, 160, x2)

# rs1_val == 134217728, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x8000, 0x0000000008000000, 12, x1, 168, x2)

# rs1_val == 268435456, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x10000000, 0x0000000010000000, 0, x1, 176, x2)

# rs1_val == 1073741824, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x1000, 0x0000000040000000, 18, x1, 184, x2)

# rs1_val == 2147483648, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x20000000, 0x0000000080000000, 2, x1, 192, x2)

# rs1_val == 4294967296, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000100000000, 14, x1, 200, x2)

# rs1_val == 8589934592, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000200000000, 1, x1, 208, x2)

# rs1_val == 17179869184, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000400000000, 6, x1, 216, x2)

# rs1_val == 34359738368, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000800000000, 31, x1, 224, x2)

# rs1_val == 68719476736, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000001000000000, 3, x1, 232, x2)

# rs1_val == 137438953472, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000002000000000, 8, x1, 240, x2)

# rs1_val == 549755813888, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000008000000000, 3, x1, 248, x2)

# rs1_val == 1099511627776, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000010000000000, 31, x1, 256, x2)

# rs1_val == 2199023255552, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000020000000000, 30, x1, 264, x2)

# rs1_val == 4398046511104, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000040000000000, 11, x1, 272, x2)

# rs1_val == 17592186044416, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000100000000000, 6, x1, 280, x2)

# rs1_val == 70368744177664, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000400000000000, 21, x1, 288, x2)

# rs1_val == 140737488355328, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000800000000000, 3, x1, 296, x2)

# rs1_val == 281474976710656, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0001000000000000, 21, x1, 304, x2)

# rs1_val == 562949953421312, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0002000000000000, 30, x1, 312, x2)

# rs1_val == 1125899906842624, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0004000000000000, 31, x1, 320, x2)

# rs1_val == 2251799813685248, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0008000000000000, 31, x1, 328, x2)

# rs1_val == 4503599627370496, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0010000000000000, 14, x1, 336, x2)

# rs1_val == 9007199254740992, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0020000000000000, 23, x1, 344, x2)

# rs1_val == 18014398509481984, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0040000000000000, 10, x1, 352, x2)

# rs1_val == 36028797018963968, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0080000000000000, 3, x1, 360, x2)

# rs1_val == 144115188075855872, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0200000000000000, 8, x1, 368, x2)

# rs1_val == 288230376151711744, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0400000000000000, 21, x1, 376, x2)

# rs1_val == -2199023255553, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x1ff, 0xfffffdffffffffff, 23, x1, 384, x2)

# rs1_val == -4398046511105, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff, 0xfffffbffffffffff, 13, x1, 392, x2)

# rs1_val == -8796093022209, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x7fffff, 0xfffff7ffffffffff, 9, x1, 400, x2)

# rs1_val == -35184372088833, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xffffdfffffffffff, 31, x1, 408, x2)

# rs1_val == -70368744177665, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xffffbfffffffffff, 30, x1, 416, x2)

# rs1_val == -281474976710657, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xfffeffffffffffff, 10, x1, 424, x2)

# rs1_val == -562949953421313, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x3fffffff, 0xfffdffffffffffff, 2, x1, 432, x2)

# rs1_val == -1125899906842625, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xfffbffffffffffff, 12, x1, 440, x2)

# rs1_val == -2251799813685249, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xfff7ffffffffffff, 4, x1, 448, x2)

# rs1_val == -4503599627370497, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xffefffffffffffff, 11, x1, 456, x2)

# rs1_val == -9007199254740993, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xffdfffffffffffff, 19, x1, 464, x2)

# rs1_val == -18014398509481985, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xffbfffffffffffff, 4, x1, 472, x2)

# rs1_val == -36028797018963969, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x1ff, 0xff7fffffffffffff, 23, x1, 480, x2)

# rs1_val == -144115188075855873, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x3ffffff, 0xfdffffffffffffff, 6, x1, 488, x2)

# rs1_val == -288230376151711745, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xfbffffffffffffff, 19, x1, 496, x2)

# rs1_val == -576460752303423489, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xf7ffffffffffffff, 5, x1, 504, x2)

# rs1_val == -1152921504606846977, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff, 0xefffffffffffffff, 14, x1, 512, x2)

# rs1_val == -2305843009213693953, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xdfffffffffffffff, 5, x1, 520, x2)

# rs1_val == -4611686018427387905, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xbfffffffffffffff, 10, x1, 528, x2)

# rs1_val == 6148914691236517205, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x1555, 0x5555555555555555, 18, x1, 536, x2)

# rs1_val == -6148914691236517206, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x5555555, 0xaaaaaaaaaaaaaaaa, 5, x1, 544, x2)

# rs1_val == 576460752303423488, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0800000000000000, 23, x1, 552, x2)

# rs1_val == 1152921504606846976, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x1000000000000000, 16, x1, 560, x2)

# rs1_val == 2305843009213693952, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x2000000000000000, 7, x1, 568, x2)

# rs1_val == 4611686018427387904, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x4000000000000000, 12, x1, 576, x2)

# rs1_val == -2, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xfffffffffffffffe, 4, x1, 584, x2)

# rs1_val == -3, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xfffffffffffffffd, 4, x1, 592, x2)

# rs1_val == -5, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xfffffffffffffffb, 11, x1, 600, x2)

# rs1_val == -9, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x1ff, 0xfffffffffffffff7, 23, x1, 608, x2)

# rs1_val == -17, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x7fffff, 0xffffffffffffffef, 9, x1, 616, x2)

# rs1_val == -33, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xffffffffffffffdf, 10, x1, 624, x2)

# rs1_val == -65, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xffffffb, 0xffffffffffffffbf, 4, x1, 632, x2)

# rs1_val == -129, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x7ff, 0xffffffffffffff7f, 21, x1, 640, x2)

# rs1_val == -257, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7fff, 0xfffffffffffffeff, 17, x1, 648, x2)

# rs1_val == -513, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff, 0xfffffffffffffdff, 13, x1, 656, x2)

# rs1_val == -1025, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffdff, 0xfffffffffffffbff, 1, x1, 664, x2)

# rs1_val == -2049, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x1ffffef, 0xfffffffffffff7ff, 7, x1, 672, x2)

# rs1_val == -4097, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff7f, 0xffffffffffffefff, 5, x1, 680, x2)

# rs1_val == -8193, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7fff, 0xffffffffffffdfff, 17, x1, 688, x2)

# rs1_val == -16385, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1ffff7, 0xffffffffffffbfff, 11, x1, 696, x2)

# rs1_val == -32769, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3fffd, 0xffffffffffff7fff, 14, x1, 704, x2)

# rs1_val == -131073, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3fff7, 0xfffffffffffdffff, 14, x1, 712, x2)

# rs1_val == -262145, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xfffffffffffbffff, 27, x1, 720, x2)

# rs1_val == -524289, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xfffffffffff7ffff, 31, x1, 728, x2)

# rs1_val == -1048577, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x7ff, 0xffffffffffefffff, 21, x1, 736, x2)

# rs1_val == -2097153, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7fefffff, 0xffffffffffdfffff, 1, x1, 744, x2)

# rs1_val == -4194305, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3fef, 0xffffffffffbfffff, 18, x1, 752, x2)

# rs1_val == -8388609, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x1fefffff, 0xffffffffff7fffff, 3, x1, 760, x2)

# rs1_val == -16777217, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xfeffff, 0xfffffffffeffffff, 8, x1, 768, x2)

# rs1_val == -33554433, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xfffffffffdffffff, 27, x1, 776, x2)

# rs1_val == -67108865, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x3efffff, 0xfffffffffbffffff, 6, x1, 784, x2)

# rs1_val == -134217729, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1eff, 0xfffffffff7ffffff, 19, x1, 792, x2)

# rs1_val == -536870913, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x37fffff, 0xffffffffdfffffff, 6, x1, 800, x2)

# rs1_val == -1073741825, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x2fff, 0xffffffffbfffffff, 18, x1, 808, x2)

# rs1_val == -2147483649, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0xffffff, 0xffffffff7fffffff, 7, x1, 816, x2)

# rs1_val == -8589934593, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xfffffffdffffffff, 16, x1, 824, x2)

# rs1_val == -17179869185, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xfffffffbffffffff, 19, x1, 832, x2)

# rs1_val == -34359738369, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xfffffff7ffffffff, 12, x1, 840, x2)

# rs1_val == -68719476737, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x3fffffff, 0xffffffefffffffff, 2, x1, 848, x2)

# rs1_val == -137438953473, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3fff, 0xffffffdfffffffff, 18, x1, 856, x2)

# rs1_val == -274877906945, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7fff, 0xffffffbfffffffff, 17, x1, 864, x2)

# rs1_val == -549755813889, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xffffff7fffffffff, 12, x1, 872, x2)

# rs1_val == -1099511627777, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff, 0xfffffeffffffffff, 13, x1, 880, x2)

# rs1_val < 0 and imm_val > 0 and imm_val < 32, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffff;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x7fffff, 0xffffffffffffffff, 9, x1, 888, x2)

# rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32, rs1_val == 9223372036854775807
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x7fffffffffffffff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0x7fffffffffffffff, 19, x1, 896, x2)

# imm_val == 30, rs1_val == 16777216
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000001000000, 30, x1, 904, x2)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
