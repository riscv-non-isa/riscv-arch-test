
#This assembly file tests the sraiw instruction of the RISC-V I extension for the sraiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sraiw)

RVTEST_SIGBASE( x6,signature_x6_1)

# rs1 != rd, rs1==x0, rd==x19, rs1_val < 0 and imm_val > 0 and imm_val < 32, imm_val == 29, rs1_val == -549755813889
# opcode: sraiw ; op1:x0; dest:x19; op1val:0xffffff7fffffffff;  immval:29
TEST_IMM_OP( sraiw, x19, x0, 0x7, 0xffffff7fffffffff, 29, x6, 0, x13)

# rs1 == rd, rs1==x17, rd==x17, rs1_val > 0 and imm_val > 0 and imm_val < 32, 
# opcode: sraiw ; op1:x17; dest:x17; op1val:0x0000000000000005;  immval:9
TEST_IMM_OP( sraiw, x17, x17, 0x0, 0x0000000000000005, 9, x6, 8, x13)

# rs1==x10, rd==x16, rs1_val < 0 and imm_val == 0, rs1_val == -134217729
# opcode: sraiw ; op1:x10; dest:x16; op1val:0xfffffffff7ffffff;  immval:0
TEST_IMM_OP( sraiw, x16, x10, 0xf7ffffff, 0xfffffffff7ffffff, 0, x6, 16, x13)

# rs1==x7, rd==x11, rs1_val > 0 and imm_val == 0, rs1_val == 281474976710656
# opcode: sraiw ; op1:x7; dest:x11; op1val:0x0001000000000000;  immval:0
TEST_IMM_OP( sraiw, x11, x7, 0x0, 0x0001000000000000, 0, x6, 24, x13)

# rs1==x2, rd==x30, rs1_val < 0 and imm_val == 31, 
# opcode: sraiw ; op1:x2; dest:x30; op1val:0xffffffffffffffff;  immval:31
TEST_IMM_OP( sraiw, x30, x2, 0x1, 0xffffffffffffffff, 31, x6, 32, x13)

# rs1==x29, rd==x1, rs1_val > 0 and imm_val == 31, rs1_val == 65536
# opcode: sraiw ; op1:x29; dest:x1; op1val:0x0000000000010000;  immval:31
TEST_IMM_OP( sraiw, x1, x29, 0x0, 0x0000000000010000, 31, x6, 40, x13)

# rs1==x30, rd==x8, rs1_val == imm_val and imm_val > 0 and imm_val < 32, 
# opcode: sraiw ; op1:x30; dest:x8; op1val:0x0000000000000005;  immval:5
TEST_IMM_OP( sraiw, x8, x30, 0x0, 0x0000000000000005, 5, x6, 48, x13)

# rs1==x15, rd==x14, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32, rs1_val == -9223372036854775808
# opcode: sraiw ; op1:x15; dest:x14; op1val:0x8000000000000000;  immval:7
TEST_IMM_OP( sraiw, x14, x15, 0x0, 0x8000000000000000, 7, x6, 56, x13)

# rs1==x23, rd==x26, rs1_val == 0 and imm_val >= 0 and imm_val < 32, 
# opcode: sraiw ; op1:x23; dest:x26; op1val:0x0000000000000000;  immval:6
TEST_IMM_OP( sraiw, x26, x23, 0x0, 0x0000000000000000, 6, x6, 64, x13)

# rs1==x27, rd==x22, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32, rs1_val == 9223372036854775807
# opcode: sraiw ; op1:x27; dest:x22; op1val:0x7fffffffffffffff;  immval:7
TEST_IMM_OP( sraiw, x22, x27, 0x1ffffff, 0x7fffffffffffffff, 7, x6, 72, x13)

# rs1==x1, rd==x28, rs1_val == 1 and imm_val >= 0 and imm_val < 32, rs1_val == 1
# opcode: sraiw ; op1:x1; dest:x28; op1val:0x0000000000000001;  immval:29
TEST_IMM_OP( sraiw, x28, x1, 0x0, 0x0000000000000001, 29, x6, 80, x13)

# rs1==x9, rd==x21, imm_val == 1, rs1_val == -1073741825
# opcode: sraiw ; op1:x9; dest:x21; op1val:0xffffffffbfffffff;  immval:1
TEST_IMM_OP( sraiw, x21, x9, 0x5fffffff, 0xffffffffbfffffff, 1, x6, 88, x13)

# rs1==x22, rd==x31, imm_val == 2, rs1_val == 8796093022208
# opcode: sraiw ; op1:x22; dest:x31; op1val:0x0000080000000000;  immval:2
TEST_IMM_OP( sraiw, x31, x22, 0x0, 0x0000080000000000, 2, x6, 96, x13)

# rs1==x5, rd==x29, imm_val == 4, rs1_val == 2199023255552
# opcode: sraiw ; op1:x5; dest:x29; op1val:0x0000020000000000;  immval:4
TEST_IMM_OP( sraiw, x29, x5, 0x0, 0x0000020000000000, 4, x6, 104, x13)

# rs1==x28, rd==x0, imm_val == 8, rs1_val == -65
# opcode: sraiw ; op1:x28; dest:x0; op1val:0xffffffffffffffbf;  immval:8
TEST_IMM_OP( sraiw, x0, x28, 0xffffff, 0xffffffffffffffbf, 8, x6, 112, x13)

# rs1==x12, rd==x18, imm_val == 16, rs1_val == -4398046511105
# opcode: sraiw ; op1:x12; dest:x18; op1val:0xfffffbffffffffff;  immval:16
TEST_IMM_OP( sraiw, x18, x12, 0xffff, 0xfffffbffffffffff, 16, x6, 120, x13)

# rs1==x4, rd==x12, imm_val == 30, rs1_val == 18014398509481984
# opcode: sraiw ; op1:x4; dest:x12; op1val:0x0040000000000000;  immval:30
TEST_IMM_OP( sraiw, x12, x4, 0x0, 0x0040000000000000, 30, x6, 128, x13)

# rs1==x16, rd==x9, imm_val == 27, rs1_val == 512
# opcode: sraiw ; op1:x16; dest:x9; op1val:0x0000000000000200;  immval:27
TEST_IMM_OP( sraiw, x9, x16, 0x0, 0x0000000000000200, 27, x6, 136, x13)

# rs1==x14, rd==x3, imm_val == 23, rs1_val == -2
# opcode: sraiw ; op1:x14; dest:x3; op1val:0xfffffffffffffffe;  immval:23
TEST_IMM_OP( sraiw, x3, x14, 0x1ff, 0xfffffffffffffffe, 23, x6, 144, x13)

# rs1==x25, rd==x23, imm_val == 15, 
# opcode: sraiw ; op1:x25; dest:x23; op1val:0xfffffffff7ffffff;  immval:15
TEST_IMM_OP( sraiw, x23, x25, 0x1efff, 0xfffffffff7ffffff, 15, x6, 152, x13)

# rs1==x21, rd==x13, imm_val == 21, 
# opcode: sraiw ; op1:x21; dest:x13; op1val:0xfffffffffffffffc;  immval:21
TEST_IMM_OP( sraiw, x13, x21, 0x7ff, 0xfffffffffffffffc, 21, x6, 160, x9)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x6, rd==x24, imm_val == 10, rs1_val == -6148914691236517206
# opcode: sraiw ; op1:x6; dest:x24; op1val:0xaaaaaaaaaaaaaaaa;  immval:10
TEST_IMM_OP( sraiw, x24, x6, 0x2aaaaa, 0xaaaaaaaaaaaaaaaa, 10, x1, 0, x9)

# rs1==x18, rd==x10, rs1_val == 2, 
# opcode: sraiw ; op1:x18; dest:x10; op1val:0x0000000000000002;  immval:30
TEST_IMM_OP( sraiw, x10, x18, 0x0, 0x0000000000000002, 30, x1, 8, x9)

# rs1==x11, rd==x6, rs1_val == 4, 
# opcode: sraiw ; op1:x11; dest:x6; op1val:0x0000000000000004;  immval:3
TEST_IMM_OP( sraiw, x6, x11, 0x0, 0x0000000000000004, 3, x1, 16, x9)

# rs1==x8, rd==x7, rs1_val == 8, 
# opcode: sraiw ; op1:x8; dest:x7; op1val:0x0000000000000008;  immval:9
TEST_IMM_OP( sraiw, x7, x8, 0x0, 0x0000000000000008, 9, x1, 24, x9)

# rs1==x26, rd==x5, rs1_val == 16, 
# opcode: sraiw ; op1:x26; dest:x5; op1val:0x0000000000000010;  immval:29
TEST_IMM_OP( sraiw, x5, x26, 0x0, 0x0000000000000010, 29, x1, 32, x9)

# rs1==x19, rd==x2, rs1_val == 32, 
# opcode: sraiw ; op1:x19; dest:x2; op1val:0x0000000000000020;  immval:27
TEST_IMM_OP( sraiw, x2, x19, 0x0, 0x0000000000000020, 27, x1, 40, x9)

# rs1==x13, rd==x20, rs1_val == 64, 
# opcode: sraiw ; op1:x13; dest:x20; op1val:0x0000000000000040;  immval:27
TEST_IMM_OP( sraiw, x20, x13, 0x0, 0x0000000000000040, 27, x1, 48, x9)

# rs1==x20, rd==x25, rs1_val == 128, 
# opcode: sraiw ; op1:x20; dest:x25; op1val:0x0000000000000080;  immval:31
TEST_IMM_OP( sraiw, x25, x20, 0x0, 0x0000000000000080, 31, x1, 56, x9)

# rs1==x24, rd==x4, rs1_val == 256, 
# opcode: sraiw ; op1:x24; dest:x4; op1val:0x0000000000000100;  immval:16
TEST_IMM_OP( sraiw, x4, x24, 0x0, 0x0000000000000100, 16, x1, 64, x9)

# rs1==x3, rd==x27, rs1_val == 1024, 
# opcode: sraiw ; op1:x3; dest:x27; op1val:0x0000000000000400;  immval:13
TEST_IMM_OP( sraiw, x27, x3, 0x0, 0x0000000000000400, 13, x1, 72, x9)

# rs1==x31, rd==x15, rs1_val == 2048, 
# opcode: sraiw ; op1:x31; dest:x15; op1val:0x0000000000000800;  immval:16
TEST_IMM_OP( sraiw, x15, x31, 0x0, 0x0000000000000800, 16, x1, 80, x9)

# rs1_val == 4096, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x20, 0x0000000000001000, 7, x1, 88, x9)

# rs1_val == 8192, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000002000, 31, x1, 96, x9)

# rs1_val == 16384, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0x0000000000004000, 14, x1, 104, x9)

# rs1_val == 32768, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x4000, 0x0000000000008000, 1, x1, 112, x9)

# rs1_val == 131072, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x20000, 0x0000000000020000, 0, x1, 120, x9)

# rs1_val == 262144, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000040000, 23, x1, 128, x9)

# rs1_val == 524288, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0x800, 0x0000000000080000, 8, x1, 136, x9)

# rs1_val == 1048576, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x10, 0x0000000000100000, 16, x1, 144, x9)

# rs1_val == 2097152, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x200, 0x0000000000200000, 12, x1, 152, x9)

# rs1_val == 4194304, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x400, 0x0000000000400000, 12, x1, 160, x9)

# rs1_val == 8388608, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000800000, 31, x1, 168, x9)

# rs1_val == 16777216, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0x100000, 0x0000000001000000, 4, x1, 176, x9)

# rs1_val == 33554432, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x80000, 0x0000000002000000, 6, x1, 184, x9)

# rs1_val == 67108864, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x1000, 0x0000000004000000, 14, x1, 192, x9)

# rs1_val == 134217728, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x200, 0x0000000008000000, 18, x1, 200, x9)

# rs1_val == 268435456, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:15
TEST_IMM_OP( sraiw, x11, x10, 0x2000, 0x0000000010000000, 15, x1, 208, x9)

# rs1_val == 536870912, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x20000, 0x0000000020000000, 12, x1, 216, x9)

# rs1_val == 1073741824, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x80000, 0x0000000040000000, 11, x1, 224, x9)

# rs1_val == 2147483648, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x10000000, 0x0000000080000000, 3, x1, 232, x9)

# rs1_val == 4294967296, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000100000000, 9, x1, 240, x9)

# rs1_val == 8589934592, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000200000000, 7, x1, 248, x9)

# rs1_val == 17179869184, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000400000000, 30, x1, 256, x9)

# rs1_val == 34359738368, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000800000000, 0, x1, 264, x9)

# rs1_val == 68719476736, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000001000000000, 21, x1, 272, x9)

# rs1_val == 137438953472, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000002000000000, 3, x1, 280, x9)

# rs1_val == 274877906944, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000004000000000, 19, x1, 288, x9)

# rs1_val == 549755813888, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000008000000000, 9, x1, 296, x9)

# rs1_val == 1099511627776, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000010000000000, 11, x1, 304, x9)

# rs1_val == 4398046511104, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000040000000000, 14, x1, 312, x9)

# rs1_val == 17592186044416, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000100000000000, 29, x1, 320, x9)

# rs1_val == 35184372088832, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000200000000000, 29, x1, 328, x9)

# rs1_val == 70368744177664, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000400000000000, 5, x1, 336, x9)

# rs1_val == 140737488355328, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000800000000000, 12, x1, 344, x9)

# rs1_val == 562949953421312, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0002000000000000, 6, x1, 352, x9)

# rs1_val == 1125899906842624, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0004000000000000, 16, x1, 360, x9)

# rs1_val == 2251799813685248, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0008000000000000, 21, x1, 368, x9)

# rs1_val == 4503599627370496, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0010000000000000, 4, x1, 376, x9)

# rs1_val == 9007199254740992, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0020000000000000, 30, x1, 384, x9)

# rs1_val == 36028797018963968, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0080000000000000, 29, x1, 392, x9)

# rs1_val == 72057594037927936, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0100000000000000, 6, x1, 400, x9)

# rs1_val == 144115188075855872, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0200000000000000, 12, x1, 408, x9)

# rs1_val == -2199023255553, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xfffffdffffffffff, 27, x1, 416, x9)

# rs1_val == -8796093022209, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x1fffffff, 0xfffff7ffffffffff, 3, x1, 424, x9)

# rs1_val == -17592186044417, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xffffefffffffffff, 5, x1, 432, x9)

# rs1_val == -35184372088833, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xffffdfffffffffff, 11, x1, 440, x9)

# rs1_val == -70368744177665, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xffffbfffffffffff, 31, x1, 448, x9)

# rs1_val == -140737488355329, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x3ffffff, 0xffff7fffffffffff, 6, x1, 456, x9)

# rs1_val == -281474976710657, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xfffeffffffffffff, 10, x1, 464, x9)

# rs1_val == -562949953421313, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x7fffff, 0xfffdffffffffffff, 9, x1, 472, x9)

# rs1_val == -1125899906842625, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x3fffffff, 0xfffbffffffffffff, 2, x1, 480, x9)

# rs1_val == -2251799813685249, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x1ffffff, 0xfff7ffffffffffff, 7, x1, 488, x9)

# rs1_val == -4503599627370497, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xffefffffffffffff, 10, x1, 496, x9)

# rs1_val == -9007199254740993, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x7ff, 0xffdfffffffffffff, 21, x1, 504, x9)

# rs1_val == -18014398509481985, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3fff, 0xffbfffffffffffff, 18, x1, 512, x9)

# rs1_val == -36028797018963969, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x7fffff, 0xff7fffffffffffff, 9, x1, 520, x9)

# rs1_val == -72057594037927937, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xfeffffffffffffff, 16, x1, 528, x9)

# rs1_val == -144115188075855873, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x3fffffff, 0xfdffffffffffffff, 2, x1, 536, x9)

# rs1_val == -288230376151711745, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3fff, 0xfbffffffffffffff, 18, x1, 544, x9)

# rs1_val == -576460752303423489, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3fff, 0xf7ffffffffffffff, 18, x1, 552, x9)

# rs1_val == -1152921504606846977, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xefffffffffffffff, 12, x1, 560, x9)

# rs1_val == -2305843009213693953, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xdfffffffffffffff, 12, x1, 568, x9)

# rs1_val == -4611686018427387905, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x1ff, 0xbfffffffffffffff, 23, x1, 576, x9)

# rs1_val == 6148914691236517205, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x2aaa, 0x5555555555555555, 17, x1, 584, x9)

# rs1_val == 288230376151711744, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0400000000000000, 8, x1, 592, x9)

# rs1_val == 576460752303423488, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0800000000000000, 16, x1, 600, x9)

# rs1_val == 1152921504606846976, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x1000000000000000, 0, x1, 608, x9)

# rs1_val == 2305843009213693952, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x2000000000000000, 6, x1, 616, x9)

# rs1_val == 4611686018427387904, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x4000000000000000, 11, x1, 624, x9)

# rs1_val == -3, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff, 0xfffffffffffffffd, 14, x1, 632, x9)

# rs1_val == -5, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xfffffffffffffffb, 11, x1, 640, x9)

# rs1_val == -9, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xfffffffffffffff7, 4, x1, 648, x9)

# rs1_val == -17, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xffffffffffffffef, 19, x1, 656, x9)

# rs1_val == -33, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xffffffffffffffdf, 30, x1, 664, x9)

# rs1_val == -129, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xffffff7f, 0xffffffffffffff7f, 0, x1, 672, x9)

# rs1_val == -257, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7fffff7f, 0xfffffffffffffeff, 1, x1, 680, x9)

# rs1_val == -513, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xfffffffffffffdff, 31, x1, 688, x9)

# rs1_val == -1025, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x7ff, 0xfffffffffffffbff, 21, x1, 696, x9)

# rs1_val == -2049, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff, 0xfffffffffffff7ff, 13, x1, 704, x9)

# rs1_val == -4097, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xffffffffffffefff, 16, x1, 712, x9)

# rs1_val == -8193, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x1ff, 0xffffffffffffdfff, 23, x1, 720, x9)

# rs1_val == -16385, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x3fffeff, 0xffffffffffffbfff, 6, x1, 728, x9)

# rs1_val == -32769, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xffffffffffff7fff, 16, x1, 736, x9)

# rs1_val == -65537, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xfffffffffffeffff, 31, x1, 744, x9)

# rs1_val == -131073, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffbf, 0xfffffffffffdffff, 11, x1, 752, x9)

# rs1_val == -262145, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xfffffffffffbffff, 31, x1, 760, x9)

# rs1_val == -524289, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffbfff, 0xfffffffffff7ffff, 5, x1, 768, x9)

# rs1_val == -1048577, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xffeff, 0xffffffffffefffff, 12, x1, 776, x9)

# rs1_val == -2097153, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1ffb, 0xffffffffffdfffff, 19, x1, 784, x9)

# rs1_val == -4194305, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7fdffff, 0xffffffffffbfffff, 5, x1, 792, x9)

# rs1_val == -8388609, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fdfff, 0xffffffffff7fffff, 10, x1, 800, x9)

# rs1_val == -16777217, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7f7f, 0xfffffffffeffffff, 17, x1, 808, x9)

# rs1_val == -33554433, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xfdffffff, 0xfffffffffdffffff, 0, x1, 816, x9)

# rs1_val == -67108865, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3effff, 0xfffffffffbffffff, 10, x1, 824, x9)

# rs1_val == -268435457, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x77ff, 0xffffffffefffffff, 17, x1, 832, x9)

# rs1_val == -536870913, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x6, 0xffffffffdfffffff, 29, x1, 840, x9)

# rs1_val == -2147483649, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff, 0xffffffff7fffffff, 12, x1, 848, x9)

# rs1_val == -4294967297, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xfffffffeffffffff, 5, x1, 856, x9)

# rs1_val == -8589934593, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x3fffffff, 0xfffffffdffffffff, 2, x1, 864, x9)

# rs1_val == -17179869185, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xfffffffbffffffff, 12, x1, 872, x9)

# rs1_val == -34359738369, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7fff, 0xfffffff7ffffffff, 17, x1, 880, x9)

# rs1_val == -68719476737, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xffffffefffffffff, 31, x1, 888, x9)

# rs1_val == -137438953473, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xffffffdfffffffff, 12, x1, 896, x9)

# rs1_val == -274877906945, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xffffffbfffffffff, 5, x1, 904, x9)

# rs1_val == -1099511627777, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xfffffeffffffffff, 11, x1, 912, x9)

# rs1_val < 0 and imm_val > 0 and imm_val < 32, imm_val == 29, rs1_val == -549755813889
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x7, 0xffffff7fffffffff, 29, x1, 920, x9)

# rs1_val > 0 and imm_val > 0 and imm_val < 32, 
# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000000005;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000000005, 9, x1, 928, x9)

# imm_val == 8, rs1_val == -65
# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xffffff, 0xffffffffffffffbf, 8, x1, 936, x9)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x6_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 118*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
