
#This assembly file tests the srliw instruction of the RISC-V I extension for the srliw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",srliw)

RVTEST_SIGBASE( x14,signature_x14_1)

# rs1 == rd, rs1==x30, rd==x30, rs1_val < 0 and imm_val > 0 and imm_val < 32, rs1_val == -17592186044417
# opcode: srliw ; op1:x30; dest:x30; op1val:0xffffefffffffffff;  immval:11
TEST_IMM_OP( srliw, x30, x30, 0x1fffff, 0xffffefffffffffff, 11, x14, 0, x17)

# rs1 != rd, rs1==x24, rd==x22, rs1_val > 0 and imm_val > 0 and imm_val < 32, imm_val == 27, rs1_val == 274877906944
# opcode: srliw ; op1:x24; dest:x22; op1val:0x0000004000000000;  immval:27
TEST_IMM_OP( srliw, x22, x24, 0x0, 0x0000004000000000, 27, x14, 8, x17)

# rs1==x31, rd==x12, rs1_val < 0 and imm_val == 0, rs1_val == -4611686018427387905
# opcode: srliw ; op1:x31; dest:x12; op1val:0xbfffffffffffffff;  immval:0
TEST_IMM_OP( srliw, x12, x31, 0xffffffff, 0xbfffffffffffffff, 0, x14, 16, x17)

# rs1==x2, rd==x5, rs1_val > 0 and imm_val == 0, rs1_val == 4398046511104
# opcode: srliw ; op1:x2; dest:x5; op1val:0x0000040000000000;  immval:0
TEST_IMM_OP( srliw, x5, x2, 0x0, 0x0000040000000000, 0, x14, 24, x17)

# rs1==x10, rd==x23, rs1_val < 0 and imm_val == 31, rs1_val == -268435457
# opcode: srliw ; op1:x10; dest:x23; op1val:0xffffffffefffffff;  immval:31
TEST_IMM_OP( srliw, x23, x10, 0x1, 0xffffffffefffffff, 31, x14, 32, x17)

# rs1==x9, rd==x16, rs1_val > 0 and imm_val == 31, rs1_val == 2251799813685248
# opcode: srliw ; op1:x9; dest:x16; op1val:0x0008000000000000;  immval:31
TEST_IMM_OP( srliw, x16, x9, 0x0, 0x0008000000000000, 31, x14, 40, x17)

# rs1==x8, rd==x15, rs1_val == imm_val and imm_val > 0 and imm_val < 32, rs1_val == 1 and imm_val >= 0 and imm_val < 32, imm_val == 1, rs1_val == 1
# opcode: srliw ; op1:x8; dest:x15; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( srliw, x15, x8, 0x0, 0x0000000000000001, 1, x14, 48, x17)

# rs1==x26, rd==x19, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32, rs1_val == -9223372036854775808, imm_val == 10
# opcode: srliw ; op1:x26; dest:x19; op1val:0x8000000000000000;  immval:10
TEST_IMM_OP( srliw, x19, x26, 0x0, 0x8000000000000000, 10, x14, 56, x17)

# rs1==x6, rd==x4, rs1_val == 0 and imm_val >= 0 and imm_val < 32, 
# opcode: srliw ; op1:x6; dest:x4; op1val:0x0000000000000000;  immval:13
TEST_IMM_OP( srliw, x4, x6, 0x0, 0x0000000000000000, 13, x14, 64, x17)

# rs1==x16, rd==x25, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32, rs1_val == 9223372036854775807
# opcode: srliw ; op1:x16; dest:x25; op1val:0x7fffffffffffffff;  immval:6
TEST_IMM_OP( srliw, x25, x16, 0x3ffffff, 0x7fffffffffffffff, 6, x14, 72, x17)

# rs1==x28, rd==x13, imm_val == 2, rs1_val == 32
# opcode: srliw ; op1:x28; dest:x13; op1val:0x0000000000000020;  immval:2
TEST_IMM_OP( srliw, x13, x28, 0x8, 0x0000000000000020, 2, x14, 80, x17)

# rs1==x7, rd==x21, imm_val == 4, rs1_val == 67108864
# opcode: srliw ; op1:x7; dest:x21; op1val:0x0000000004000000;  immval:4
TEST_IMM_OP( srliw, x21, x7, 0x400000, 0x0000000004000000, 4, x14, 88, x17)

# rs1==x1, rd==x7, imm_val == 8, rs1_val == -131073
# opcode: srliw ; op1:x1; dest:x7; op1val:0xfffffffffffdffff;  immval:8
TEST_IMM_OP( srliw, x7, x1, 0xfffdff, 0xfffffffffffdffff, 8, x14, 96, x17)

# rs1==x3, rd==x31, imm_val == 16, rs1_val == -8388609
# opcode: srliw ; op1:x3; dest:x31; op1val:0xffffffffff7fffff;  immval:16
TEST_IMM_OP( srliw, x31, x3, 0xff7f, 0xffffffffff7fffff, 16, x14, 104, x17)

# rs1==x12, rd==x2, imm_val == 30, rs1_val == 17179869184
# opcode: srliw ; op1:x12; dest:x2; op1val:0x0000000400000000;  immval:30
TEST_IMM_OP( srliw, x2, x12, 0x0, 0x0000000400000000, 30, x14, 112, x17)

# rs1==x21, rd==x11, imm_val == 29, rs1_val == -4503599627370497
# opcode: srliw ; op1:x21; dest:x11; op1val:0xffefffffffffffff;  immval:29
TEST_IMM_OP( srliw, x11, x21, 0x7, 0xffefffffffffffff, 29, x14, 120, x17)

# rs1==x19, rd==x27, imm_val == 23, 
# opcode: srliw ; op1:x19; dest:x27; op1val:0xffefffffffffffff;  immval:23
TEST_IMM_OP( srliw, x27, x19, 0x1ff, 0xffefffffffffffff, 23, x14, 128, x17)

# rs1==x13, rd==x29, imm_val == 15, 
# opcode: srliw ; op1:x13; dest:x29; op1val:0xffefffffffffffff;  immval:15
TEST_IMM_OP( srliw, x29, x13, 0x1ffff, 0xffefffffffffffff, 15, x14, 136, x17)

# rs1==x29, rd==x0, imm_val == 21, rs1_val == -34359738369
# opcode: srliw ; op1:x29; dest:x0; op1val:0xfffffff7ffffffff;  immval:21
TEST_IMM_OP( srliw, x0, x29, 0x7ff, 0xfffffff7ffffffff, 21, x14, 144, x2)

# rs1==x27, rd==x9, rs1_val == 2, 
# opcode: srliw ; op1:x27; dest:x9; op1val:0x0000000000000002;  immval:0
TEST_IMM_OP( srliw, x9, x27, 0x2, 0x0000000000000002, 0, x14, 152, x2)

# rs1==x11, rd==x1, rs1_val == 4, 
# opcode: srliw ; op1:x11; dest:x1; op1val:0x0000000000000004;  immval:6
TEST_IMM_OP( srliw, x1, x11, 0x0, 0x0000000000000004, 6, x14, 160, x2)

# rs1==x23, rd==x6, rs1_val == 8, 
# opcode: srliw ; op1:x23; dest:x6; op1val:0x0000000000000008;  immval:2
TEST_IMM_OP( srliw, x6, x23, 0x2, 0x0000000000000008, 2, x14, 168, x2)

# rs1==x5, rd==x3, rs1_val == 16, 
# opcode: srliw ; op1:x5; dest:x3; op1val:0x0000000000000010;  immval:4
TEST_IMM_OP( srliw, x3, x5, 0x1, 0x0000000000000010, 4, x14, 176, x2)

# rs1==x15, rd==x24, rs1_val == 64, 
# opcode: srliw ; op1:x15; dest:x24; op1val:0x0000000000000040;  immval:29
TEST_IMM_OP( srliw, x24, x15, 0x0, 0x0000000000000040, 29, x14, 184, x2)

# rs1==x18, rd==x8, rs1_val == 128, 
# opcode: srliw ; op1:x18; dest:x8; op1val:0x0000000000000080;  immval:7
TEST_IMM_OP( srliw, x8, x18, 0x1, 0x0000000000000080, 7, x14, 192, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x22, rd==x18, rs1_val == 256, 
# opcode: srliw ; op1:x22; dest:x18; op1val:0x0000000000000100;  immval:27
TEST_IMM_OP( srliw, x18, x22, 0x0, 0x0000000000000100, 27, x1, 0, x2)

# rs1==x20, rd==x10, rs1_val == 512, 
# opcode: srliw ; op1:x20; dest:x10; op1val:0x0000000000000200;  immval:13
TEST_IMM_OP( srliw, x10, x20, 0x0, 0x0000000000000200, 13, x1, 8, x2)

# rs1==x14, rd==x20, rs1_val == 1024, 
# opcode: srliw ; op1:x14; dest:x20; op1val:0x0000000000000400;  immval:7
TEST_IMM_OP( srliw, x20, x14, 0x8, 0x0000000000000400, 7, x1, 16, x2)

# rs1==x25, rd==x28, rs1_val == 2048, 
# opcode: srliw ; op1:x25; dest:x28; op1val:0x0000000000000800;  immval:7
TEST_IMM_OP( srliw, x28, x25, 0x10, 0x0000000000000800, 7, x1, 24, x2)

# rs1==x0, rd==x14, rs1_val == 4096, 
# opcode: srliw ; op1:x0; dest:x14; op1val:0x0000000000001000;  immval:8
TEST_IMM_OP( srliw, x14, x0, 0x10, 0x0000000000001000, 8, x1, 32, x2)

# rs1==x4, rd==x26, rs1_val == 8192, 
# opcode: srliw ; op1:x4; dest:x26; op1val:0x0000000000002000;  immval:5
TEST_IMM_OP( srliw, x26, x4, 0x100, 0x0000000000002000, 5, x1, 40, x2)

# rs1==x17, rs1_val == 16384, 
# opcode: srliw ; op1:x17; dest:x9; op1val:0x0000000000004000;  immval:0
TEST_IMM_OP( srliw, x9, x17, 0x4000, 0x0000000000004000, 0, x1, 48, x2)

# rd==x17, rs1_val == 32768, 
# opcode: srliw ; op1:x5; dest:x17; op1val:0x0000000000008000;  immval:23
TEST_IMM_OP( srliw, x17, x5, 0x0, 0x0000000000008000, 23, x1, 56, x2)

# rs1_val == 65536, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x80, 0x0000000000010000, 9, x1, 64, x2)

# rs1_val == 131072, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x20000, 0x0000000000020000, 0, x1, 72, x2)

# rs1_val == 262144, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x8, 0x0000000000040000, 15, x1, 80, x2)

# rs1_val == 524288, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x2, 0x0000000000080000, 18, x1, 88, x2)

# rs1_val == 1048576, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000100000, 29, x1, 96, x2)

# rs1_val == 2097152, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x400, 0x0000000000200000, 11, x1, 104, x2)

# rs1_val == 4194304, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x400, 0x0000000000400000, 12, x1, 112, x2)

# rs1_val == 8388608, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x200000, 0x0000000000800000, 2, x1, 120, x2)

# rs1_val == 16777216, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x10000, 0x0000000001000000, 8, x1, 128, x2)

# rs1_val == 33554432, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0x200, 0x0000000002000000, 16, x1, 136, x2)

# rs1_val == 134217728, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x200, 0x0000000008000000, 18, x1, 144, x2)

# rs1_val == 268435456, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000010000000, 29, x1, 152, x2)

# rs1_val == 536870912, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x80000, 0x0000000020000000, 10, x1, 160, x2)

# rs1_val == 1073741824, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x8000, 0x0000000040000000, 15, x1, 168, x2)

# rs1_val == 2147483648, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1000, 0x0000000080000000, 19, x1, 176, x2)

# rs1_val == 4294967296, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000100000000, 27, x1, 184, x2)

# rs1_val == 8589934592, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000200000000, 4, x1, 192, x2)

# rs1_val == 34359738368, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000800000000, 14, x1, 200, x2)

# rs1_val == 68719476736, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000001000000000, 31, x1, 208, x2)

# rs1_val == 137438953472, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000002000000000, 17, x1, 216, x2)

# rs1_val == 549755813888, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000008000000000, 16, x1, 224, x2)

# rs1_val == 1099511627776, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000010000000000, 18, x1, 232, x2)

# rs1_val == 2199023255552, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000020000000000, 18, x1, 240, x2)

# rs1_val == 8796093022208, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000080000000000, 14, x1, 248, x2)

# rs1_val == 17592186044416, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000100000000000, 2, x1, 256, x2)

# rs1_val == 35184372088832, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000200000000000, 29, x1, 264, x2)

# rs1_val == 70368744177664, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000400000000000, 16, x1, 272, x2)

# rs1_val == 140737488355328, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000800000000000, 14, x1, 280, x2)

# rs1_val == 281474976710656, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0001000000000000, 30, x1, 288, x2)

# rs1_val == 562949953421312, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0002000000000000, 5, x1, 296, x2)

# rs1_val == 1125899906842624, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0004000000000000, 10, x1, 304, x2)

# rs1_val == 4503599627370496, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0010000000000000, 15, x1, 312, x2)

# rs1_val == 9007199254740992, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0020000000000000, 14, x1, 320, x2)

# rs1_val == 18014398509481984, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0040000000000000, 17, x1, 328, x2)

# rs1_val == 36028797018963968, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0080000000000000, 1, x1, 336, x2)

# rs1_val == 72057594037927936, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0100000000000000, 27, x1, 344, x2)

# rs1_val == 144115188075855872, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0200000000000000, 5, x1, 352, x2)

# rs1_val == -2199023255553, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3fffffff, 0xfffffdffffffffff, 2, x1, 360, x2)

# rs1_val == -4398046511105, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xfffffbffffffffff, 19, x1, 368, x2)

# rs1_val == -8796093022209, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xfffff7ffffffffff, 6, x1, 376, x2)

# rs1_val == -35184372088833, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1ffff, 0xffffdfffffffffff, 15, x1, 384, x2)

# rs1_val == -70368744177665, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xffffbfffffffffff, 19, x1, 392, x2)

# rs1_val == -140737488355329, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1ffff, 0xffff7fffffffffff, 15, x1, 400, x2)

# rs1_val == -281474976710657, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3fff, 0xfffeffffffffffff, 18, x1, 408, x2)

# rs1_val == -562949953421313, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3fff, 0xfffdffffffffffff, 18, x1, 416, x2)

# rs1_val == -1125899906842625, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3fffffff, 0xfffbffffffffffff, 2, x1, 424, x2)

# rs1_val == -2251799813685249, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xffffff, 0xfff7ffffffffffff, 8, x1, 432, x2)

# rs1_val == -9007199254740993, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7fff, 0xffdfffffffffffff, 17, x1, 440, x2)

# rs1_val == -18014398509481985, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x1, 0xffbfffffffffffff, 31, x1, 448, x2)

# rs1_val == -36028797018963969, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ffff, 0xff7fffffffffffff, 13, x1, 456, x2)

# rs1_val == -72057594037927937, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xfeffffffffffffff, 4, x1, 464, x2)

# rs1_val == -144115188075855873, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xfdffffffffffffff, 6, x1, 472, x2)

# rs1_val == -288230376151711745, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x1fffffff, 0xfbffffffffffffff, 3, x1, 480, x2)

# rs1_val == -576460752303423489, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1ffff, 0xf7ffffffffffffff, 15, x1, 488, x2)

# rs1_val == -1152921504606846977, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xefffffffffffffff, 21, x1, 496, x2)

# rs1_val == -2305843009213693953, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ffff, 0xdfffffffffffffff, 13, x1, 504, x2)

# rs1_val == 6148914691236517205, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x55555555, 0x5555555555555555, 0, x1, 512, x2)

# rs1_val == -6148914691236517206, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1555555, 0xaaaaaaaaaaaaaaaa, 7, x1, 520, x2)

# rs1_val == 288230376151711744, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0400000000000000, 17, x1, 528, x2)

# rs1_val == 576460752303423488, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0800000000000000, 29, x1, 536, x2)

# rs1_val == 1152921504606846976, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x1000000000000000, 23, x1, 544, x2)

# rs1_val == 2305843009213693952, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x2000000000000000, 1, x1, 552, x2)

# rs1_val == 4611686018427387904, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x4000000000000000, 23, x1, 560, x2)

# rs1_val == -2, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ffff, 0xfffffffffffffffe, 13, x1, 568, x2)

# rs1_val == -3, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xfffffffffffffffd, 21, x1, 576, x2)

# rs1_val == -5, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xfffffffb, 0xfffffffffffffffb, 0, x1, 584, x2)

# rs1_val == -9, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xfffff, 0xfffffffffffffff7, 12, x1, 592, x2)

# rs1_val == -17, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xffffffffffffffef, 11, x1, 600, x2)

# rs1_val == -33, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xffffffffffffffdf, 19, x1, 608, x2)

# rs1_val == -65, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xffffffffffffffbf, 14, x1, 616, x2)

# rs1_val == -129, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xffffffffffffff7f, 14, x1, 624, x2)

# rs1_val == -257, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x7, 0xfffffffffffffeff, 29, x1, 632, x2)

# rs1_val == -513, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7ffffef, 0xfffffffffffffdff, 5, x1, 640, x2)

# rs1_val == -1025, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ffff, 0xfffffffffffffbff, 13, x1, 648, x2)

# rs1_val == -2049, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xfffff7, 0xfffffffffffff7ff, 8, x1, 656, x2)

# rs1_val == -4097, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xffffffffffffefff, 27, x1, 664, x2)

# rs1_val == -8193, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0xffff, 0xffffffffffffdfff, 16, x1, 672, x2)

# rs1_val == -16385, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3fff, 0xffffffffffffbfff, 18, x1, 680, x2)

# rs1_val == -32769, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xffffffffffff7fff, 19, x1, 688, x2)

# rs1_val == -65537, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3fff, 0xfffffffffffeffff, 18, x1, 696, x2)

# rs1_val == -262145, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xfffbffff, 0xfffffffffffbffff, 0, x1, 704, x2)

# rs1_val == -524289, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffdfff, 0xfffffffffff7ffff, 6, x1, 712, x2)

# rs1_val == -1048577, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0xffef, 0xffffffffffefffff, 16, x1, 720, x2)

# rs1_val == -2097153, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1ffb, 0xffffffffffdfffff, 19, x1, 728, x2)

# rs1_val == -4194305, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1ff7, 0xffffffffffbfffff, 19, x1, 736, x2)

# rs1_val == -16777217, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1fdff, 0xfffffffffeffffff, 15, x1, 744, x2)

# rs1_val == -33554433, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3f7ff, 0xfffffffffdffffff, 14, x1, 752, x2)

# rs1_val == -67108865, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1f7fff, 0xfffffffffbffffff, 11, x1, 760, x2)

# rs1_val == -134217729, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3dffffff, 0xfffffffff7ffffff, 2, x1, 768, x2)

# rs1_val == -536870913, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1bff, 0xffffffffdfffffff, 19, x1, 776, x2)

# rs1_val == -1073741825, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x17fffff, 0xffffffffbfffffff, 7, x1, 784, x2)

# rs1_val == -2147483649, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x7fffff, 0xffffffff7fffffff, 8, x1, 792, x2)

# rs1_val == -4294967297, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xfffffffeffffffff, 11, x1, 800, x2)

# rs1_val == -8589934593, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xfffff, 0xfffffffdffffffff, 12, x1, 808, x2)

# rs1_val == -17179869185, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xfffff, 0xfffffffbffffffff, 12, x1, 816, x2)

# rs1_val == -68719476737, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x7fffff, 0xffffffefffffffff, 9, x1, 824, x2)

# rs1_val == -137438953473, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3fff, 0xffffffdfffffffff, 18, x1, 832, x2)

# rs1_val == -274877906945, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x3, 0xffffffbfffffffff, 30, x1, 840, x2)

# rs1_val == -549755813889, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xffffff7fffffffff, 23, x1, 848, x2)

# rs1_val == -1099511627777, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xfffffeffffffffff, 27, x1, 856, x2)

# rs1_val < 0 and imm_val > 0 and imm_val < 32, rs1_val == -17592186044417
# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xffffefffffffffff, 11, x1, 864, x2)

# imm_val == 21, rs1_val == -34359738369
# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xfffffff7ffffffff, 21, x1, 872, x2)

# rs1_val == 4096, 
# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x10, 0x0000000000001000, 8, x1, 880, x2)
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

signature_x14_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x14_1:
    .fill 25*(XLEN/32),4,0xdeadbeef


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
