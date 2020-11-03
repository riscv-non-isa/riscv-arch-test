
#This assembly file tests the slliw instruction of the RISC-V I extension for the slliw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",slliw)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 == rd, rs1==x15, rd==x15, rs1_val < 0 and imm_val > 0 and imm_val < 32, rs1_val == -8589934593
# opcode: slliw ; op1:x15; dest:x15; op1val:0xfffffffdffffffff;  immval:11
TEST_IMM_OP( slliw, x15, x15, 0xffffeffffffff800, 0xfffffffdffffffff, 11, x3, 0, x1)

# rs1 != rd, rs1==x24, rd==x23, rs1_val > 0 and imm_val > 0 and imm_val < 32, 
# opcode: slliw ; op1:x24; dest:x23; op1val:0x0000000000000007;  immval:6
TEST_IMM_OP( slliw, x23, x24, 0x1c0, 0x0000000000000007, 6, x3, 8, x1)

# rs1==x31, rd==x0, rs1_val < 0 and imm_val == 0, rs1_val == -34359738369
# opcode: slliw ; op1:x31; dest:x0; op1val:0xfffffff7ffffffff;  immval:0
TEST_IMM_OP( slliw, x0, x31, 0xfffffff7ffffffff, 0xfffffff7ffffffff, 0, x3, 16, x1)

# rs1==x20, rd==x28, rs1_val > 0 and imm_val == 0, rs1_val == 8388608
# opcode: slliw ; op1:x20; dest:x28; op1val:0x0000000000800000;  immval:0
TEST_IMM_OP( slliw, x28, x20, 0x800000, 0x0000000000800000, 0, x3, 24, x1)

# rs1==x0, rd==x18, rs1_val < 0 and imm_val == 31, 
# opcode: slliw ; op1:x0; dest:x18; op1val:0xffffffffffffffff;  immval:31
TEST_IMM_OP( slliw, x18, x0, 0xffffffff80000000, 0xffffffffffffffff, 31, x3, 32, x1)

# rs1==x11, rd==x29, rs1_val > 0 and imm_val == 31, rs1_val == 32768
# opcode: slliw ; op1:x11; dest:x29; op1val:0x0000000000008000;  immval:31
TEST_IMM_OP( slliw, x29, x11, 0x400000000000, 0x0000000000008000, 31, x3, 40, x1)

# rs1==x5, rd==x27, rs1_val == imm_val and imm_val > 0 and imm_val < 32, rs1_val == 16, imm_val == 16
# opcode: slliw ; op1:x5; dest:x27; op1val:0x0000000000000010;  immval:16
TEST_IMM_OP( slliw, x27, x5, 0x100000, 0x0000000000000010, 16, x3, 48, x1)

# rs1==x22, rd==x7, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32, rs1_val == -9223372036854775808
# opcode: slliw ; op1:x22; dest:x7; op1val:0x8000000000000000;  immval:12
TEST_IMM_OP( slliw, x7, x22, 0x0, 0x8000000000000000, 12, x3, 56, x1)

# rs1==x29, rd==x12, rs1_val == 0 and imm_val >= 0 and imm_val < 32, 
# opcode: slliw ; op1:x29; dest:x12; op1val:0x0000000000000000;  immval:17
TEST_IMM_OP( slliw, x12, x29, 0x0, 0x0000000000000000, 17, x3, 64, x1)

# rs1==x6, rd==x2, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32, rs1_val == 9223372036854775807
# opcode: slliw ; op1:x6; dest:x2; op1val:0x7fffffffffffffff;  immval:31
TEST_IMM_OP( slliw, x2, x6, 0xffffffff80000000, 0x7fffffffffffffff, 31, x3, 72, x1)

# rs1==x28, rd==x19, rs1_val == 1 and imm_val >= 0 and imm_val < 32, rs1_val == 1
# opcode: slliw ; op1:x28; dest:x19; op1val:0x0000000000000001;  immval:19
TEST_IMM_OP( slliw, x19, x28, 0x80000, 0x0000000000000001, 19, x3, 80, x1)

# rs1==x14, rd==x5, imm_val == 1, 
# opcode: slliw ; op1:x14; dest:x5; op1val:0xc000000000000000;  immval:1
TEST_IMM_OP( slliw, x5, x14, 0x8000000000000000, 0xc000000000000000, 1, x3, 88, x1)

# rs1==x17, rd==x25, imm_val == 2, 
# opcode: slliw ; op1:x17; dest:x25; op1val:0xfffffffdffffffff;  immval:2
TEST_IMM_OP( slliw, x25, x17, 0xfffffff7fffffffc, 0xfffffffdffffffff, 2, x3, 96, x1)

# rs1==x16, rd==x8, imm_val == 4, rs1_val == 131072
# opcode: slliw ; op1:x16; dest:x8; op1val:0x0000000000020000;  immval:4
TEST_IMM_OP( slliw, x8, x16, 0x200000, 0x0000000000020000, 4, x3, 104, x1)

# rs1==x25, rd==x21, imm_val == 8, rs1_val == -140737488355329
# opcode: slliw ; op1:x25; dest:x21; op1val:0xffff7fffffffffff;  immval:8
TEST_IMM_OP( slliw, x21, x25, 0xff7fffffffffff00, 0xffff7fffffffffff, 8, x3, 112, x1)

# rs1==x4, rd==x24, imm_val == 30, rs1_val == -131073
# opcode: slliw ; op1:x4; dest:x24; op1val:0xfffffffffffdffff;  immval:30
TEST_IMM_OP( slliw, x24, x4, 0xffff7fffc0000000, 0xfffffffffffdffff, 30, x3, 120, x1)

# rs1==x26, rd==x16, imm_val == 29, 
# opcode: slliw ; op1:x26; dest:x16; op1val:0x0000000000000007;  immval:29
TEST_IMM_OP( slliw, x16, x26, 0xe0000000, 0x0000000000000007, 29, x3, 128, x1)

# rs1==x9, rd==x6, imm_val == 27, rs1_val == -134217729
# opcode: slliw ; op1:x9; dest:x6; op1val:0xfffffffff7ffffff;  immval:27
TEST_IMM_OP( slliw, x6, x9, 0xffbffffff8000000, 0xfffffffff7ffffff, 27, x3, 136, x1)

# rs1==x2, rd==x17, imm_val == 23, rs1_val == -129
# opcode: slliw ; op1:x2; dest:x17; op1val:0xffffffffffffff7f;  immval:23
TEST_IMM_OP( slliw, x17, x2, 0xffffffffbf800000, 0xffffffffffffff7f, 23, x3, 144, x1)

# rs1==x30, rd==x4, imm_val == 15, rs1_val == 137438953472
# opcode: slliw ; op1:x30; dest:x4; op1val:0x0000002000000000;  immval:15
TEST_IMM_OP( slliw, x4, x30, 0x10000000000000, 0x0000002000000000, 15, x3, 152, x1)

# rs1==x27, rd==x9, imm_val == 21, rs1_val == -4398046511105
# opcode: slliw ; op1:x27; dest:x9; op1val:0xfffffbffffffffff;  immval:21
TEST_IMM_OP( slliw, x9, x27, 0x7fffffffffe00000, 0xfffffbffffffffff, 21, x3, 160, x4)

# rs1==x19, rd==x31, imm_val == 10, rs1_val == -4503599627370497
# opcode: slliw ; op1:x19; dest:x31; op1val:0xffefffffffffffff;  immval:10
TEST_IMM_OP( slliw, x31, x19, 0xbffffffffffffc00, 0xffefffffffffffff, 10, x3, 168, x4)

# rs1==x1, rd==x26, rs1_val == 2, 
# opcode: slliw ; op1:x1; dest:x26; op1val:0x0000000000000002;  immval:1
TEST_IMM_OP( slliw, x26, x1, 0x4, 0x0000000000000002, 1, x3, 176, x4)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x7, rd==x1, rs1_val == 4, 
# opcode: slliw ; op1:x7; dest:x1; op1val:0x0000000000000004;  immval:27
TEST_IMM_OP( slliw, x1, x7, 0x20000000, 0x0000000000000004, 27, x2, 0, x4)

# rs1==x10, rd==x14, rs1_val == 8, 
# opcode: slliw ; op1:x10; dest:x14; op1val:0x0000000000000008;  immval:29
TEST_IMM_OP( slliw, x14, x10, 0x100000000, 0x0000000000000008, 29, x2, 8, x4)

# rs1==x3, rd==x11, rs1_val == 32, 
# opcode: slliw ; op1:x3; dest:x11; op1val:0x0000000000000020;  immval:1
TEST_IMM_OP( slliw, x11, x3, 0x40, 0x0000000000000020, 1, x2, 16, x4)

# rs1==x18, rd==x20, rs1_val == 64, 
# opcode: slliw ; op1:x18; dest:x20; op1val:0x0000000000000040;  immval:11
TEST_IMM_OP( slliw, x20, x18, 0x20000, 0x0000000000000040, 11, x2, 24, x4)

# rs1==x12, rd==x13, rs1_val == 128, 
# opcode: slliw ; op1:x12; dest:x13; op1val:0x0000000000000080;  immval:9
TEST_IMM_OP( slliw, x13, x12, 0x10000, 0x0000000000000080, 9, x2, 32, x4)

# rs1==x23, rd==x3, rs1_val == 256, 
# opcode: slliw ; op1:x23; dest:x3; op1val:0x0000000000000100;  immval:14
TEST_IMM_OP( slliw, x3, x23, 0x400000, 0x0000000000000100, 14, x2, 40, x4)

# rs1==x8, rd==x30, rs1_val == 512, 
# opcode: slliw ; op1:x8; dest:x30; op1val:0x0000000000000200;  immval:21
TEST_IMM_OP( slliw, x30, x8, 0x40000000, 0x0000000000000200, 21, x2, 48, x4)

# rs1==x13, rd==x22, rs1_val == 1024, 
# opcode: slliw ; op1:x13; dest:x22; op1val:0x0000000000000400;  immval:21
TEST_IMM_OP( slliw, x22, x13, 0x80000000, 0x0000000000000400, 21, x2, 56, x4)

# rs1==x21, rd==x10, rs1_val == 2048, 
# opcode: slliw ; op1:x21; dest:x10; op1val:0x0000000000000800;  immval:19
TEST_IMM_OP( slliw, x10, x21, 0x40000000, 0x0000000000000800, 19, x2, 64, x4)

# rs1_val == 4096, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0x40000000000, 0x0000000000001000, 30, x2, 72, x4)

# rs1_val == 8192, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0x100000000, 0x0000000000002000, 19, x2, 80, x4)

# rs1_val == 16384, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0x800000, 0x0000000000004000, 9, x2, 88, x4)

# rs1_val == 65536, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x1000000, 0x0000000000010000, 8, x2, 96, x4)

# rs1_val == 262144, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0x2000000, 0x0000000000040000, 7, x2, 104, x4)

# rs1_val == 524288, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0x2000000, 0x0000000000080000, 6, x2, 112, x4)

# rs1_val == 1048576, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0x2000000000, 0x0000000000100000, 17, x2, 120, x4)

# rs1_val == 2097152, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0x2000000, 0x0000000000200000, 4, x2, 128, x4)

# rs1_val == 4194304, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0x10000000, 0x0000000000400000, 6, x2, 136, x4)

# rs1_val == 16777216, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0x80000000, 0x0000000001000000, 7, x2, 144, x4)

# rs1_val == 33554432, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0x1000000000, 0x0000000002000000, 11, x2, 152, x4)

# rs1_val == 67108864, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x20000000, 0x0000000004000000, 3, x2, 160, x4)

# rs1_val == 134217728, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x800000000, 0x0000000008000000, 8, x2, 168, x4)

# rs1_val == 268435456, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0x20000000000, 0x0000000010000000, 13, x2, 176, x4)

# rs1_val == 536870912, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0x200000000000, 0x0000000020000000, 16, x2, 184, x4)

# rs1_val == 1073741824, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0x40000000, 0x0000000040000000, 0, x2, 192, x4)

# rs1_val == 2147483648, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0x2000000000, 0x0000000080000000, 6, x2, 200, x4)

# rs1_val == 4294967296, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x80000000000000, 0x0000000100000000, 23, x2, 208, x4)

# rs1_val == 8589934592, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0x800000000, 0x0000000200000000, 2, x2, 216, x4)

# rs1_val == 17179869184, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0x1000000000000, 0x0000000400000000, 14, x2, 224, x4)

# rs1_val == 34359738368, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0000000800000000, 30, x2, 232, x4)

# rs1_val == 68719476736, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0x10000000000, 0x0000001000000000, 4, x2, 240, x4)

# rs1_val == 274877906944, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0x8000000000000, 0x0000004000000000, 13, x2, 248, x4)

# rs1_val == 549755813888, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x10000000000, 0x0000008000000000, 1, x2, 256, x4)

# rs1_val == 1099511627776, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x1000000000000, 0x0000010000000000, 8, x2, 264, x4)

# rs1_val == 2199023255552, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x800000000000000, 0x0000020000000000, 18, x2, 272, x4)

# rs1_val == 4398046511104, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0000040000000000, 27, x2, 280, x4)

# rs1_val == 8796093022208, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0x80000000000, 0x0000080000000000, 0, x2, 288, x4)

# rs1_val == 17592186044416, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0x40000000000000, 0x0000100000000000, 10, x2, 296, x4)

# rs1_val == 35184372088832, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0x2000000000000, 0x0000200000000000, 4, x2, 304, x4)

# rs1_val == 70368744177664, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0x200000000000000, 0x0000400000000000, 11, x2, 312, x4)

# rs1_val == 140737488355328, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0x800000000000, 0x0000800000000000, 0, x2, 320, x4)

# rs1_val == 281474976710656, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x8000000000000, 0x0001000000000000, 3, x2, 328, x4)

# rs1_val == 562949953421312, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0x800000000000000, 0x0002000000000000, 10, x2, 336, x4)

# rs1_val == 1125899906842624, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0x1000000000000000, 0x0004000000000000, 10, x2, 344, x4)

# rs1_val == 2251799813685248, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0008000000000000, 31, x2, 352, x4)

# rs1_val == 4503599627370496, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0010000000000000, 27, x2, 360, x4)

# rs1_val == 9007199254740992, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x100000000000000, 0x0020000000000000, 3, x2, 368, x4)

# rs1_val == 18014398509481984, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:29
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0040000000000000, 29, x2, 376, x4)

# rs1_val == 36028797018963968, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0080000000000000, 13, x2, 384, x4)

# rs1_val == 72057594037927936, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0100000000000000, 10, x2, 392, x4)

# rs1_val == -2199023255553, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xffbfffffffffe000, 0xfffffdffffffffff, 13, x2, 400, x4)

# rs1_val == -8796093022209, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xfffdffffffffffc0, 0xfffff7ffffffffff, 6, x2, 408, x4)

# rs1_val == -17592186044417, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0xfffefffffffffff0, 0xffffefffffffffff, 4, x2, 416, x4)

# rs1_val == -35184372088833, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xffffffffff800000, 0xffffdfffffffffff, 23, x2, 424, x4)

# rs1_val == -70368744177665, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xffefffffffffffc0, 0xffffbfffffffffff, 6, x2, 432, x4)

# rs1_val == -281474976710657, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xfdfffffffffffe00, 0xfffeffffffffffff, 9, x2, 440, x4)

# rs1_val == -562949953421313, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0xfffbfffffffffffe, 0xfffdffffffffffff, 1, x2, 448, x4)

# rs1_val == -1125899906842625, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffe00000, 0xfffbffffffffffff, 21, x2, 456, x4)

# rs1_val == -2251799813685249, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffe00000, 0xfff7ffffffffffff, 21, x2, 464, x4)

# rs1_val == -9007199254740993, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffff000, 0xffdfffffffffffff, 12, x2, 472, x4)

# rs1_val == -18014398509481985, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0xfefffffffffffffc, 0xffbfffffffffffff, 2, x2, 480, x4)

# rs1_val == -36028797018963969, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffff000, 0xff7fffffffffffff, 12, x2, 488, x4)

# rs1_val == -72057594037927937, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff0000, 0xfeffffffffffffff, 16, x2, 496, x4)

# rs1_val == -144115188075855873, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffe0000, 0xfdffffffffffffff, 17, x2, 504, x4)

# rs1_val == -288230376151711745, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff8000, 0xfbffffffffffffff, 15, x2, 512, x4)

# rs1_val == -576460752303423489, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffff80000, 0xf7ffffffffffffff, 19, x2, 520, x4)

# rs1_val == -1152921504606846977, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffff80000, 0xefffffffffffffff, 19, x2, 528, x4)

# rs1_val == -2305843009213693953, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffffe0, 0xdfffffffffffffff, 5, x2, 536, x4)

# rs1_val == -4611686018427387905, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:29
TEST_IMM_OP( slliw, x11, x10, 0xffffffffe0000000, 0xbfffffffffffffff, 29, x2, 544, x4)

# rs1_val == 6148914691236517205, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xaaaaaaaaaaaaa000, 0x5555555555555555, 13, x2, 552, x4)

# rs1_val == -6148914691236517206, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xaaaaaaaa80000000, 0xaaaaaaaaaaaaaaaa, 30, x2, 560, x4)

# rs1_val == 144115188075855872, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0200000000000000, 7, x2, 568, x4)

# rs1_val == 288230376151711744, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0400000000000000, 9, x2, 576, x4)

# rs1_val == 576460752303423488, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0800000000000000, 18, x2, 584, x4)

# rs1_val == 1152921504606846976, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x1000000000000000, 30, x2, 592, x4)

# rs1_val == 2305843009213693952, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x2000000000000000, 9, x2, 600, x4)

# rs1_val == 4611686018427387904, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x4000000000000000, 19, x2, 608, x4)

# rs1_val == -2, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff8000, 0xfffffffffffffffe, 14, x2, 616, x4)

# rs1_val == -3, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffffd0, 0xfffffffffffffffd, 4, x2, 624, x4)

# rs1_val == -5, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffff60000, 0xfffffffffffffffb, 17, x2, 632, x4)

# rs1_val == -9, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffee000, 0xfffffffffffffff7, 13, x2, 640, x4)

# rs1_val == -17, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0xffffffff78000000, 0xffffffffffffffef, 27, x2, 648, x4)

# rs1_val == -33, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffff7c0, 0xffffffffffffffdf, 6, x2, 656, x4)

# rs1_val == -65, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffdf8000, 0xffffffffffffffbf, 15, x2, 664, x4)

# rs1_val == -257, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffeff000, 0xfffffffffffffeff, 12, x2, 672, x4)

# rs1_val == -513, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffffffbfe00000, 0xfffffffffffffdff, 21, x2, 680, x4)

# rs1_val == -1025, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xfffffffdff800000, 0xfffffffffffffbff, 23, x2, 688, x4)

# rs1_val == -2049, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffeffe000, 0xfffffffffffff7ff, 13, x2, 696, x4)

# rs1_val == -4097, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xffffffffbffc0000, 0xffffffffffffefff, 18, x2, 704, x4)

# rs1_val == -8193, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffdfff0, 0xffffffffffffdfff, 4, x2, 712, x4)

# rs1_val == -16385, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffbfff, 0xffffffffffffbfff, 0, x2, 720, x4)

# rs1_val == -32769, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xffffbfff80000000, 0xffffffffffff7fff, 31, x2, 728, x4)

# rs1_val == -65537, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xffffffffdfffe000, 0xfffffffffffeffff, 13, x2, 736, x4)

# rs1_val == -262145, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xfffeffffc0000000, 0xfffffffffffbffff, 30, x2, 744, x4)

# rs1_val == -524289, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xffffffff7ffff000, 0xfffffffffff7ffff, 12, x2, 752, x4)

# rs1_val == -1048577, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffdffffe0, 0xffffffffffefffff, 5, x2, 760, x4)

# rs1_val == -2097153, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xffffffffbffffe00, 0xffffffffffdfffff, 9, x2, 768, x4)

# rs1_val == -4194305, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xfffffff7ffffe000, 0xffffffffffbfffff, 13, x2, 776, x4)

# rs1_val == -8388609, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xfffffff7fffff000, 0xffffffffff7fffff, 12, x2, 784, x4)

# rs1_val == -16777217, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xff7fffff80000000, 0xfffffffffeffffff, 31, x2, 792, x4)

# rs1_val == -33554433, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0xfffffff7fffffc00, 0xfffffffffdffffff, 10, x2, 800, x4)

# rs1_val == -67108865, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0xffdffffff8000000, 0xfffffffffbffffff, 27, x2, 808, x4)

# rs1_val == -268435457, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xfbffffffc0000000, 0xffffffffefffffff, 30, x2, 816, x4)

# rs1_val == -536870913, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffffefffffff8000, 0xffffffffdfffffff, 15, x2, 824, x4)

# rs1_val == -1073741825, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xffffbfffffff0000, 0xffffffffbfffffff, 16, x2, 832, x4)

# rs1_val == -2147483649, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0xfbfffffff8000000, 0xffffffff7fffffff, 27, x2, 840, x4)

# rs1_val == -4294967297, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xffffbfffffffc000, 0xfffffffeffffffff, 14, x2, 848, x4)

# rs1_val == -17179869185, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xfdffffffff800000, 0xfffffffbffffffff, 23, x2, 856, x4)

# rs1_val == -68719476737, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0xffffffdffffffffe, 0xffffffefffffffff, 1, x2, 864, x4)

# rs1_val == -137438953473, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xff7ffffffffc0000, 0xffffffdfffffffff, 18, x2, 872, x4)

# rs1_val == -274877906945, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xfefffffffffc0000, 0xffffffbfffffffff, 18, x2, 880, x4)

# rs1_val == -549755813889, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xbfffffffff800000, 0xffffff7fffffffff, 23, x2, 888, x4)

# rs1_val == -1099511627777, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xfffdfffffffffe00, 0xfffffeffffffffff, 9, x2, 896, x4)

# rs1_val < 0 and imm_val == 0, rs1_val == -34359738369
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xfffffff7ffffffff, 0xfffffff7ffffffff, 0, x2, 904, x4)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x2_0:
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
