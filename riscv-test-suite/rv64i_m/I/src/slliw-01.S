
#This assembly file tests the slliw instruction of the RISC-V I extension for the slliw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",slliw)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 == rd, rs1==x23, rd==x23, rs1_val < 0 and imm_val > 0 and imm_val < 32, rs1_val == -262145, rs1_val < 0 and imm_val == 31
# opcode: slliw ; op1:x23; dest:x23; op1val:0xfffffffffffbffff;  immval:31
TEST_IMM_OP( slliw, x23, x23, 0xfffdffff80000000, 0xfffffffffffbffff, 31, x1, 0, x3)

# rs1 != rd, rs1==x0, rd==x6, rs1_val > 0 and imm_val > 0 and imm_val < 32, imm_val == 23, rs1_val == 36028797018963968
# opcode: slliw ; op1:x0; dest:x6; op1val:0x0080000000000000;  immval:23
TEST_IMM_OP( slliw, x6, x0, 0x0, 0x0080000000000000, 23, x1, 8, x3)

# rs1==x10, rd==x4, rs1_val < 0 and imm_val == 0, rs1_val == -18014398509481985
# opcode: slliw ; op1:x10; dest:x4; op1val:0xffbfffffffffffff;  immval:0
TEST_IMM_OP( slliw, x4, x10, 0xffbfffffffffffff, 0xffbfffffffffffff, 0, x1, 16, x3)

# rs1==x17, rd==x19, rs1_val > 0 and imm_val == 0, rs1_val == 4611686018427387904
# opcode: slliw ; op1:x17; dest:x19; op1val:0x4000000000000000;  immval:0
TEST_IMM_OP( slliw, x19, x17, 0x4000000000000000, 0x4000000000000000, 0, x1, 24, x3)

# rs1==x5, rd==x27, rs1_val > 0 and imm_val == 31, rs1_val == 2048
# opcode: slliw ; op1:x5; dest:x27; op1val:0x0000000000000800;  immval:31
TEST_IMM_OP( slliw, x27, x5, 0x40000000000, 0x0000000000000800, 31, x1, 32, x3)

# rs1==x29, rd==x8, rs1_val == imm_val and imm_val > 0 and imm_val < 32, rs1_val == 8, imm_val == 8
# opcode: slliw ; op1:x29; dest:x8; op1val:0x0000000000000008;  immval:8
TEST_IMM_OP( slliw, x8, x29, 0x800, 0x0000000000000008, 8, x1, 40, x3)

# rs1==x20, rd==x25, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32, rs1_val == -9223372036854775808
# opcode: slliw ; op1:x20; dest:x25; op1val:0x8000000000000000;  immval:7
TEST_IMM_OP( slliw, x25, x20, 0x0, 0x8000000000000000, 7, x1, 48, x3)

# rs1==x4, rd==x14, rs1_val == 0 and imm_val >= 0 and imm_val < 32, 
# opcode: slliw ; op1:x4; dest:x14; op1val:0x0000000000000000;  immval:11
TEST_IMM_OP( slliw, x14, x4, 0x0, 0x0000000000000000, 11, x1, 56, x3)

# rs1==x9, rd==x7, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32, imm_val == 29, rs1_val == 9223372036854775807
# opcode: slliw ; op1:x9; dest:x7; op1val:0x7fffffffffffffff;  immval:29
TEST_IMM_OP( slliw, x7, x9, 0xffffffffe0000000, 0x7fffffffffffffff, 29, x1, 64, x3)

# rs1==x14, rd==x15, rs1_val == 1 and imm_val >= 0 and imm_val < 32, rs1_val == 1
# opcode: slliw ; op1:x14; dest:x15; op1val:0x0000000000000001;  immval:6
TEST_IMM_OP( slliw, x15, x14, 0x40, 0x0000000000000001, 6, x1, 72, x3)

# rs1==x6, rd==x20, imm_val == 1, rs1_val == 18014398509481984
# opcode: slliw ; op1:x6; dest:x20; op1val:0x0040000000000000;  immval:1
TEST_IMM_OP( slliw, x20, x6, 0x80000000000000, 0x0040000000000000, 1, x1, 80, x3)

# rs1==x11, rd==x13, imm_val == 2, rs1_val == -33
# opcode: slliw ; op1:x11; dest:x13; op1val:0xffffffffffffffdf;  immval:2
TEST_IMM_OP( slliw, x13, x11, 0xffffffffffffff7c, 0xffffffffffffffdf, 2, x1, 88, x3)

# rs1==x26, rd==x24, imm_val == 4, rs1_val == 32
# opcode: slliw ; op1:x26; dest:x24; op1val:0x0000000000000020;  immval:4
TEST_IMM_OP( slliw, x24, x26, 0x200, 0x0000000000000020, 4, x1, 96, x3)

# rs1==x2, rd==x22, imm_val == 16, 
# opcode: slliw ; op1:x2; dest:x22; op1val:0x0080000000000000;  immval:16
TEST_IMM_OP( slliw, x22, x2, 0x0, 0x0080000000000000, 16, x1, 104, x3)

# rs1==x19, rd==x10, imm_val == 30, rs1_val == 140737488355328
# opcode: slliw ; op1:x19; dest:x10; op1val:0x0000800000000000;  immval:30
TEST_IMM_OP( slliw, x10, x19, 0x0, 0x0000800000000000, 30, x1, 112, x3)

# rs1==x12, rd==x26, imm_val == 27, rs1_val == -9
# opcode: slliw ; op1:x12; dest:x26; op1val:0xfffffffffffffff7;  immval:27
TEST_IMM_OP( slliw, x26, x12, 0xffffffffb8000000, 0xfffffffffffffff7, 27, x1, 120, x3)

# rs1==x31, rd==x28, imm_val == 15, rs1_val == -6148914691236517206
# opcode: slliw ; op1:x31; dest:x28; op1val:0xaaaaaaaaaaaaaaaa;  immval:15
TEST_IMM_OP( slliw, x28, x31, 0x5555555555550000, 0xaaaaaaaaaaaaaaaa, 15, x1, 128, x3)

# rs1==x30, rd==x21, imm_val == 21, 
# opcode: slliw ; op1:x30; dest:x21; op1val:0xffbfffffffffffff;  immval:21
TEST_IMM_OP( slliw, x21, x30, 0xffffffffffe00000, 0xffbfffffffffffff, 21, x1, 136, x3)

# rs1==x24, rd==x11, imm_val == 10, rs1_val == -2251799813685249
# opcode: slliw ; op1:x24; dest:x11; op1val:0xfff7ffffffffffff;  immval:10
TEST_IMM_OP( slliw, x11, x24, 0xdffffffffffffc00, 0xfff7ffffffffffff, 10, x1, 144, x6)

# rs1==x27, rd==x16, rs1_val == 2, 
# opcode: slliw ; op1:x27; dest:x16; op1val:0x0000000000000002;  immval:15
TEST_IMM_OP( slliw, x16, x27, 0x10000, 0x0000000000000002, 15, x1, 152, x6)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x18, rd==x12, rs1_val == 4, 
# opcode: slliw ; op1:x18; dest:x12; op1val:0x0000000000000004;  immval:29
TEST_IMM_OP( slliw, x12, x18, 0x80000000, 0x0000000000000004, 29, x4, 0, x6)

# rs1==x15, rd==x0, rs1_val == 16, 
# opcode: slliw ; op1:x15; dest:x0; op1val:0x0000000000000010;  immval:12
TEST_IMM_OP( slliw, x0, x15, 0x10000, 0x0000000000000010, 12, x4, 8, x6)

# rs1==x7, rd==x18, rs1_val == 64, 
# opcode: slliw ; op1:x7; dest:x18; op1val:0x0000000000000040;  immval:23
TEST_IMM_OP( slliw, x18, x7, 0x20000000, 0x0000000000000040, 23, x4, 16, x6)

# rs1==x16, rd==x1, rs1_val == 128, 
# opcode: slliw ; op1:x16; dest:x1; op1val:0x0000000000000080;  immval:0
TEST_IMM_OP( slliw, x1, x16, 0x80, 0x0000000000000080, 0, x4, 24, x6)

# rs1==x21, rd==x29, rs1_val == 256, 
# opcode: slliw ; op1:x21; dest:x29; op1val:0x0000000000000100;  immval:31
TEST_IMM_OP( slliw, x29, x21, 0x8000000000, 0x0000000000000100, 31, x4, 32, x6)

# rs1==x25, rd==x3, rs1_val == 512, 
# opcode: slliw ; op1:x25; dest:x3; op1val:0x0000000000000200;  immval:0
TEST_IMM_OP( slliw, x3, x25, 0x200, 0x0000000000000200, 0, x4, 40, x6)

# rs1==x1, rd==x9, rs1_val == 1024, 
# opcode: slliw ; op1:x1; dest:x9; op1val:0x0000000000000400;  immval:4
TEST_IMM_OP( slliw, x9, x1, 0x4000, 0x0000000000000400, 4, x4, 48, x6)

# rs1==x3, rd==x17, rs1_val == 4096, 
# opcode: slliw ; op1:x3; dest:x17; op1val:0x0000000000001000;  immval:27
TEST_IMM_OP( slliw, x17, x3, 0x8000000000, 0x0000000000001000, 27, x4, 56, x6)

# rs1==x13, rd==x31, rs1_val == 8192, 
# opcode: slliw ; op1:x13; dest:x31; op1val:0x0000000000002000;  immval:9
TEST_IMM_OP( slliw, x31, x13, 0x400000, 0x0000000000002000, 9, x4, 64, x6)

# rs1==x8, rd==x30, rs1_val == 16384, 
# opcode: slliw ; op1:x8; dest:x30; op1val:0x0000000000004000;  immval:2
TEST_IMM_OP( slliw, x30, x8, 0x10000, 0x0000000000004000, 2, x4, 72, x6)

# rs1==x28, rd==x5, rs1_val == 32768, 
# opcode: slliw ; op1:x28; dest:x5; op1val:0x0000000000008000;  immval:31
TEST_IMM_OP( slliw, x5, x28, 0x400000000000, 0x0000000000008000, 31, x4, 80, x6)

# rs1==x22, rd==x2, rs1_val == 65536, 
# opcode: slliw ; op1:x22; dest:x2; op1val:0x0000000000010000;  immval:5
TEST_IMM_OP( slliw, x2, x22, 0x200000, 0x0000000000010000, 5, x4, 88, x6)

# rs1_val == 131072, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0x4000000000, 0x0000000000020000, 21, x4, 96, x6)

# rs1_val == 262144, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0x40000000, 0x0000000000040000, 12, x4, 104, x6)

# rs1_val == 524288, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0x800000000, 0x0000000000080000, 16, x4, 112, x6)

# rs1_val == 1048576, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x80000000000, 0x0000000000100000, 23, x4, 120, x6)

# rs1_val == 2097152, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0x8000000000000, 0x0000000000200000, 30, x4, 128, x6)

# rs1_val == 4194304, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0x1000000000, 0x0000000000400000, 14, x4, 136, x6)

# rs1_val == 8388608, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0x20000000, 0x0000000000800000, 6, x4, 144, x6)

# rs1_val == 16777216, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0x400000000, 0x0000000001000000, 10, x4, 152, x6)

# rs1_val == 33554432, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0x400000000, 0x0000000002000000, 9, x4, 160, x6)

# rs1_val == 67108864, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0x800000000000, 0x0000000004000000, 21, x4, 168, x6)

# rs1_val == 134217728, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0x200000000, 0x0000000008000000, 6, x4, 176, x6)

# rs1_val == 268435456, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0x10000000, 0x0000000010000000, 0, x4, 184, x6)

# rs1_val == 536870912, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x800000000000, 0x0000000020000000, 18, x4, 192, x6)

# rs1_val == 1073741824, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:29
TEST_IMM_OP( slliw, x11, x10, 0x800000000000000, 0x0000000040000000, 29, x4, 200, x6)

# rs1_val == 2147483648, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0x1000000000, 0x0000000080000000, 5, x4, 208, x6)

# rs1_val == 4294967296, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0x100000000, 0x0000000100000000, 0, x4, 216, x6)

# rs1_val == 8589934592, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x8000000000000, 0x0000000200000000, 18, x4, 224, x6)

# rs1_val == 17179869184, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0x1000000000, 0x0000000400000000, 2, x4, 232, x6)

# rs1_val == 34359738368, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x400000000000000, 0x0000000800000000, 23, x4, 240, x6)

# rs1_val == 68719476736, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x40000000000000, 0x0000001000000000, 18, x4, 248, x6)

# rs1_val == 137438953472, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0000002000000000, 27, x4, 256, x6)

# rs1_val == 274877906944, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0x2000000000000, 0x0000004000000000, 11, x4, 264, x6)

# rs1_val == 549755813888, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0x20000000000, 0x0000008000000000, 2, x4, 272, x6)

# rs1_val == 1099511627776, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x400000000000000, 0x0000010000000000, 18, x4, 280, x6)

# rs1_val == 2199023255552, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0000020000000000, 23, x4, 288, x6)

# rs1_val == 4398046511104, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0000040000000000, 31, x4, 296, x6)

# rs1_val == 8796093022208, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0x800000000000000, 0x0000080000000000, 16, x4, 304, x6)

# rs1_val == 17592186044416, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0x400000000000, 0x0000100000000000, 2, x4, 312, x6)

# rs1_val == 35184372088832, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0x40000000000000, 0x0000200000000000, 9, x4, 320, x6)

# rs1_val == 70368744177664, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0x2000000000000000, 0x0000400000000000, 15, x4, 328, x6)

# rs1_val == 281474976710656, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0x4000000000000, 0x0001000000000000, 2, x4, 336, x6)

# rs1_val == 562949953421312, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x10000000000000, 0x0002000000000000, 3, x4, 344, x6)

# rs1_val == 1125899906842624, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0004000000000000, 30, x4, 352, x6)

# rs1_val == 2251799813685248, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0008000000000000, 13, x4, 360, x6)

# rs1_val == 4503599627370496, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0010000000000000, 15, x4, 368, x6)

# rs1_val == 9007199254740992, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0x1000000000000000, 0x0020000000000000, 7, x4, 376, x6)

# rs1_val == 72057594037927936, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0100000000000000, 9, x4, 384, x6)

# rs1_val == 144115188075855872, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0200000000000000, 19, x4, 392, x6)

# rs1_val == -2199023255553, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xff7fffffffffc000, 0xfffffdffffffffff, 14, x4, 400, x6)

# rs1_val == -4398046511105, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xfbffffffffff0000, 0xfffffbffffffffff, 16, x4, 408, x6)

# rs1_val == -8796093022209, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0xfffeffffffffffe0, 0xfffff7ffffffffff, 5, x4, 416, x6)

# rs1_val == -17592186044417, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0xfffdffffffffffe0, 0xffffefffffffffff, 5, x4, 424, x6)

# rs1_val == -35184372088833, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0xfffdfffffffffff0, 0xffffdfffffffffff, 4, x4, 432, x6)

# rs1_val == -70368744177665, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0xffbfffffffffff00, 0xffffbfffffffffff, 8, x4, 440, x6)

# rs1_val == -140737488355329, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0xffbfffffffffff80, 0xffff7fffffffffff, 7, x4, 448, x6)

# rs1_val == -281474976710657, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0x7fffffffffff8000, 0xfffeffffffffffff, 15, x4, 456, x6)

# rs1_val == -562949953421313, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0xf7fffffffffffc00, 0xfffdffffffffffff, 10, x4, 464, x6)

# rs1_val == -1125899906842625, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff0000, 0xfffbffffffffffff, 16, x4, 472, x6)

# rs1_val == -4503599627370497, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xfbffffffffffffc0, 0xffefffffffffffff, 6, x4, 480, x6)

# rs1_val == -9007199254740993, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffc0000, 0xffdfffffffffffff, 18, x4, 488, x6)

# rs1_val == -36028797018963969, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0xbfffffffffffff80, 0xff7fffffffffffff, 7, x4, 496, x6)

# rs1_val == -72057594037927937, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffff000, 0xfeffffffffffffff, 12, x4, 504, x6)

# rs1_val == -144115188075855873, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffe00000, 0xfdffffffffffffff, 21, x4, 512, x6)

# rs1_val == -288230376151711745, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xffffffffc0000000, 0xfbffffffffffffff, 30, x4, 520, x6)

# rs1_val == -576460752303423489, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff0000, 0xf7ffffffffffffff, 16, x4, 528, x6)

# rs1_val == -1152921504606846977, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff8000, 0xefffffffffffffff, 15, x4, 536, x6)

# rs1_val == -2305843009213693953, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffffc0, 0xdfffffffffffffff, 6, x4, 544, x6)

# rs1_val == -4611686018427387905, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xffffffffc0000000, 0xbfffffffffffffff, 30, x4, 552, x6)

# rs1_val == 6148914691236517205, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xaaaaaaaa80000000, 0x5555555555555555, 31, x4, 560, x6)

# rs1_val == 288230376151711744, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x800000000000000, 0x0400000000000000, 1, x4, 568, x6)

# rs1_val == 576460752303423488, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0800000000000000, 13, x4, 576, x6)

# rs1_val == 1152921504606846976, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x1000000000000000, 8, x4, 584, x6)

# rs1_val == 2305843009213693952, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x2000000000000000, 23, x4, 592, x6)

# rs1_val == -2, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffffe0, 0xfffffffffffffffe, 4, x4, 600, x6)

# rs1_val == -3, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffe80000, 0xfffffffffffffffd, 19, x4, 608, x6)

# rs1_val == -5, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffffd8, 0xfffffffffffffffb, 3, x4, 616, x6)

# rs1_val == -17, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xfffffff780000000, 0xffffffffffffffef, 31, x4, 624, x6)

# rs1_val == -65, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xffffffdf80000000, 0xffffffffffffffbf, 31, x4, 632, x6)

# rs1_val == -129, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffffbf8, 0xffffffffffffff7f, 3, x4, 640, x6)

# rs1_val == -257, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffeff000, 0xfffffffffffffeff, 12, x4, 648, x6)

# rs1_val == -513, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffdff0000, 0xfffffffffffffdff, 16, x4, 656, x6)

# rs1_val == -1025, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffdff8, 0xfffffffffffffbff, 3, x4, 664, x6)

# rs1_val == -2049, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:29
TEST_IMM_OP( slliw, x11, x10, 0xfffffeffe0000000, 0xfffffffffffff7ff, 29, x4, 672, x6)

# rs1_val == -4097, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffdffe00, 0xffffffffffffefff, 9, x4, 680, x6)

# rs1_val == -8193, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffefff8, 0xffffffffffffdfff, 3, x4, 688, x6)

# rs1_val == -16385, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xfffffffefffc0000, 0xffffffffffffbfff, 18, x4, 696, x6)

# rs1_val == -32769, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffefffe, 0xffffffffffff7fff, 1, x4, 704, x6)

# rs1_val == -65537, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0xfffffffff7fff800, 0xfffffffffffeffff, 11, x4, 712, x6)

# rs1_val == -131073, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffdffff, 0xfffffffffffdffff, 0, x4, 720, x6)

# rs1_val == -524289, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0xfffffffff7ffff00, 0xfffffffffff7ffff, 8, x4, 728, x6)

# rs1_val == -1048577, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xfffffffbffffc000, 0xffffffffffefffff, 14, x4, 736, x6)

# rs1_val == -2097153, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xffffff7ffffc0000, 0xffffffffffdfffff, 18, x4, 744, x6)

# rs1_val == -4194305, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xfffff7ffffe00000, 0xffffffffffbfffff, 21, x4, 752, x6)

# rs1_val == -8388609, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0xffffffffbfffff80, 0xffffffffff7fffff, 7, x4, 760, x6)

# rs1_val == -16777217, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0xfffffffff7fffff8, 0xfffffffffeffffff, 3, x4, 768, x6)

# rs1_val == -33554433, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xfeffffff80000000, 0xfffffffffdffffff, 31, x4, 776, x6)

# rs1_val == -67108865, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xfdffffff80000000, 0xfffffffffbffffff, 31, x4, 784, x6)

# rs1_val == -134217729, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xfffffffff7ffffff, 0xfffffffff7ffffff, 0, x4, 792, x6)

# rs1_val == -268435457, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xfffffffbffffffc0, 0xffffffffefffffff, 6, x4, 800, x6)

# rs1_val == -536870913, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0xffffffffbffffffe, 0xffffffffdfffffff, 1, x4, 808, x6)

# rs1_val == -1073741825, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0xfffdfffffff80000, 0xffffffffbfffffff, 19, x4, 816, x6)

# rs1_val == -2147483649, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0xffffffbfffffff80, 0xffffffff7fffffff, 7, x4, 824, x6)

# rs1_val == -4294967297, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xfffffffeffffffff, 0xfffffffeffffffff, 0, x4, 832, x6)

# rs1_val == -8589934593, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xffffffff80000000, 0xfffffffdffffffff, 31, x4, 840, x6)

# rs1_val == -17179869185, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xfdffffffff800000, 0xfffffffbffffffff, 23, x4, 848, x6)

# rs1_val == -34359738369, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xfffffdffffffffc0, 0xfffffff7ffffffff, 6, x4, 856, x6)

# rs1_val == -68719476737, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xffffdffffffffe00, 0xffffffefffffffff, 9, x4, 864, x6)

# rs1_val == -137438953473, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0xffffefffffffff80, 0xffffffdfffffffff, 7, x4, 872, x6)

# rs1_val == -274877906945, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xffefffffffffc000, 0xffffffbfffffffff, 14, x4, 880, x6)

# rs1_val == -549755813889, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0xfffff7fffffffff0, 0xffffff7fffffffff, 4, x4, 888, x6)

# rs1_val == -1099511627777, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0xffff7fffffffff80, 0xfffffeffffffffff, 7, x4, 896, x6)

# rs1_val < 0 and imm_val > 0 and imm_val < 32, rs1_val == -262145, rs1_val < 0 and imm_val == 31
# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xfffdffff80000000, 0xfffffffffffbffff, 31, x4, 904, x6)

# rs1_val > 0 and imm_val > 0 and imm_val < 32, imm_val == 23, rs1_val == 36028797018963968
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0080000000000000, 23, x4, 912, x6)

# rs1_val == 16, 
# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000000010;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0x10000, 0x0000000000000010, 12, x4, 920, x6)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


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
