
#This assembly file tests the sltiu instruction of the RISC-V I extension for the sltiu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)

RVTEST_SIGBASE( x6,signature_x6_1)

# rs1 == rd, rs1==x24, rd==x24, rs1_val == imm_val and rs1_val > 0 and imm_val > 0, rs1_val == 1, imm_val == 1
# opcode: sltiu ; op1:x24; dest:x24; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( sltiu, x24, x24, 0x0, 0x0000000000000001, 1, x6, 0, x13)

# rs1 != rd, rs1==x0, rd==x25, rs1_val != imm_val and rs1_val > 0 and imm_val > 0, rs1_val == 18446744073709420543
# opcode: sltiu ; op1:x0; dest:x25; op1val:0xfffffffffffdffff;  immval:5
TEST_IMM_OP( sltiu, x25, x0, 0x0, 0xfffffffffffdffff, 5, x6, 8, x13)

# rs1==x22, rd==x0, rs1_val == 0, imm_val == 2730
# opcode: sltiu ; op1:x22; dest:x0; op1val:0x0000000000000000;  immval:2730
TEST_IMM_OP( sltiu, x0, x22, 0x1, 0x0000000000000000, 2730, x6, 16, x13)

# rs1==x8, rd==x16, rs1_val == (2**(xlen)-1), 
# opcode: sltiu ; op1:x8; dest:x16; op1val:0xffffffffffffffff;  immval:5
TEST_IMM_OP( sltiu, x16, x8, 0x0, 0xffffffffffffffff, 5, x6, 24, x13)

# rs1==x12, rd==x10, imm_val == 0, rs1_val == 18446744073709486079
# opcode: sltiu ; op1:x12; dest:x10; op1val:0xfffffffffffeffff;  immval:0
TEST_IMM_OP( sltiu, x10, x12, 0x0, 0xfffffffffffeffff, 0, x6, 32, x13)

# rs1==x23, rd==x28, imm_val == (2**(12)-1), rs1_val == 8
# opcode: sltiu ; op1:x23; dest:x28; op1val:0x0000000000000008;  immval:4095
TEST_IMM_OP( sltiu, x28, x23, 0x1, 0x0000000000000008, 4095, x6, 40, x13)

# rs1==x17, rd==x26, rs1_val == 2, imm_val == 3967
# opcode: sltiu ; op1:x17; dest:x26; op1val:0x0000000000000002;  immval:3967
TEST_IMM_OP( sltiu, x26, x17, 0x1, 0x0000000000000002, 3967, x6, 48, x13)

# rs1==x2, rd==x5, rs1_val == 4, imm_val == 4094
# opcode: sltiu ; op1:x2; dest:x5; op1val:0x0000000000000004;  immval:4094
TEST_IMM_OP( sltiu, x5, x2, 0x1, 0x0000000000000004, 4094, x6, 56, x13)

# rs1==x31, rd==x7, rs1_val == 16, 
# opcode: sltiu ; op1:x31; dest:x7; op1val:0x0000000000000010;  immval:3
TEST_IMM_OP( sltiu, x7, x31, 0x0, 0x0000000000000010, 3, x6, 64, x13)

# rs1==x4, rd==x29, rs1_val == 32, imm_val == 4091
# opcode: sltiu ; op1:x4; dest:x29; op1val:0x0000000000000020;  immval:4091
TEST_IMM_OP( sltiu, x29, x4, 0x1, 0x0000000000000020, 4091, x6, 72, x13)

# rs1==x27, rd==x11, rs1_val == 64, 
# opcode: sltiu ; op1:x27; dest:x11; op1val:0x0000000000000040;  immval:3967
TEST_IMM_OP( sltiu, x11, x27, 0x1, 0x0000000000000040, 3967, x6, 80, x13)

# rs1==x26, rd==x14, rs1_val == 128, 
# opcode: sltiu ; op1:x26; dest:x14; op1val:0x0000000000000080;  immval:11
TEST_IMM_OP( sltiu, x14, x26, 0x0, 0x0000000000000080, 11, x6, 88, x13)

# rs1==x5, rd==x12, rs1_val == 256, imm_val == 2048
# opcode: sltiu ; op1:x5; dest:x12; op1val:0x0000000000000100;  immval:2048
TEST_IMM_OP( sltiu, x12, x5, 0x1, 0x0000000000000100, 2048, x6, 96, x13)

# rs1==x11, rd==x23, rs1_val == 512, imm_val == 8
# opcode: sltiu ; op1:x11; dest:x23; op1val:0x0000000000000200;  immval:8
TEST_IMM_OP( sltiu, x23, x11, 0x0, 0x0000000000000200, 8, x6, 104, x13)

# rs1==x15, rd==x20, rs1_val == 1024, 
# opcode: sltiu ; op1:x15; dest:x20; op1val:0x0000000000000400;  immval:4095
TEST_IMM_OP( sltiu, x20, x15, 0x1, 0x0000000000000400, 4095, x6, 112, x13)

# rs1==x9, rd==x19, rs1_val == 2048, 
# opcode: sltiu ; op1:x9; dest:x19; op1val:0x0000000000000800;  immval:3
TEST_IMM_OP( sltiu, x19, x9, 0x0, 0x0000000000000800, 3, x6, 120, x13)

# rs1==x3, rd==x1, rs1_val == 4096, 
# opcode: sltiu ; op1:x3; dest:x1; op1val:0x0000000000001000;  immval:3967
TEST_IMM_OP( sltiu, x1, x3, 0x0, 0x0000000000001000, 3967, x6, 128, x13)

# rs1==x29, rd==x18, rs1_val == 8192, 
# opcode: sltiu ; op1:x29; dest:x18; op1val:0x0000000000002000;  immval:10
TEST_IMM_OP( sltiu, x18, x29, 0x0, 0x0000000000002000, 10, x6, 136, x13)

# rs1==x7, rd==x30, rs1_val == 16384, 
# opcode: sltiu ; op1:x7; dest:x30; op1val:0x0000000000004000;  immval:1
TEST_IMM_OP( sltiu, x30, x7, 0x0, 0x0000000000004000, 1, x6, 144, x12)
RVTEST_SIGBASE( x5,signature_x5_0)

# rs1==x18, rd==x15, rs1_val == 32768, 
# opcode: sltiu ; op1:x18; dest:x15; op1val:0x0000000000008000;  immval:12
TEST_IMM_OP( sltiu, x15, x18, 0x0, 0x0000000000008000, 12, x5, 0, x12)

# rs1==x16, rd==x6, rs1_val == 65536, 
# opcode: sltiu ; op1:x16; dest:x6; op1val:0x0000000000010000;  immval:0
TEST_IMM_OP( sltiu, x6, x16, 0x0, 0x0000000000010000, 0, x5, 8, x12)

# rs1==x19, rd==x17, rs1_val == 131072, 
# opcode: sltiu ; op1:x19; dest:x17; op1val:0x0000000000020000;  immval:2048
TEST_IMM_OP( sltiu, x17, x19, 0x0, 0x0000000000020000, 2048, x5, 16, x12)

# rs1==x1, rd==x8, rs1_val == 262144, imm_val == 256
# opcode: sltiu ; op1:x1; dest:x8; op1val:0x0000000000040000;  immval:256
TEST_IMM_OP( sltiu, x8, x1, 0x0, 0x0000000000040000, 256, x5, 24, x12)

# rs1==x10, rd==x2, rs1_val == 524288, 
# opcode: sltiu ; op1:x10; dest:x2; op1val:0x0000000000080000;  immval:4095
TEST_IMM_OP( sltiu, x2, x10, 0x0, 0x0000000000080000, 4095, x5, 32, x12)

# rs1==x14, rd==x4, rs1_val == 1048576, 
# opcode: sltiu ; op1:x14; dest:x4; op1val:0x0000000000100000;  immval:18
TEST_IMM_OP( sltiu, x4, x14, 0x0, 0x0000000000100000, 18, x5, 40, x12)

# rs1==x13, rd==x3, rs1_val == 2097152, imm_val == 3071
# opcode: sltiu ; op1:x13; dest:x3; op1val:0x0000000000200000;  immval:3071
TEST_IMM_OP( sltiu, x3, x13, 0x0, 0x0000000000200000, 3071, x5, 48, x12)

# rs1==x6, rd==x31, rs1_val == 4194304, 
# opcode: sltiu ; op1:x6; dest:x31; op1val:0x0000000000400000;  immval:13
TEST_IMM_OP( sltiu, x31, x6, 0x0, 0x0000000000400000, 13, x5, 56, x12)

# rs1==x25, rd==x13, rs1_val == 8388608, 
# opcode: sltiu ; op1:x25; dest:x13; op1val:0x0000000000800000;  immval:10
TEST_IMM_OP( sltiu, x13, x25, 0x0, 0x0000000000800000, 10, x5, 64, x12)

# rs1==x30, rd==x21, rs1_val == 16777216, 
# opcode: sltiu ; op1:x30; dest:x21; op1val:0x0000000001000000;  immval:12
TEST_IMM_OP( sltiu, x21, x30, 0x0, 0x0000000001000000, 12, x5, 72, x12)

# rs1==x21, rd==x9, rs1_val == 33554432, 
# opcode: sltiu ; op1:x21; dest:x9; op1val:0x0000000002000000;  immval:9
TEST_IMM_OP( sltiu, x9, x21, 0x0, 0x0000000002000000, 9, x5, 80, x12)

# rs1==x20, rd==x27, rs1_val == 67108864, 
# opcode: sltiu ; op1:x20; dest:x27; op1val:0x0000000004000000;  immval:1
TEST_IMM_OP( sltiu, x27, x20, 0x0, 0x0000000004000000, 1, x5, 88, x12)

# rs1==x28, rd==x22, rs1_val == 134217728, 
# opcode: sltiu ; op1:x28; dest:x22; op1val:0x0000000008000000;  immval:14
TEST_IMM_OP( sltiu, x22, x28, 0x0, 0x0000000008000000, 14, x5, 96, x12)

# rs1_val == 268435456, imm_val == 1024
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000010000000, 1024, x5, 104, x12)

# rs1_val == 536870912, imm_val == 32
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000020000000, 32, x5, 112, x12)

# rs1_val == 1073741824, imm_val == 2
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000040000000, 2, x5, 120, x12)

# rs1_val == 2147483648, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000080000000, 256, x5, 128, x12)

# rs1_val == 4294967296, imm_val == 512
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000100000000, 512, x5, 136, x12)

# rs1_val == 8589934592, imm_val == 4079
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000200000000, 4079, x5, 144, x12)

# rs1_val == 17179869184, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000400000000, 5, x5, 152, x12)

# rs1_val == 34359738368, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000800000000, 15, x5, 160, x12)

# rs1_val == 68719476736, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000001000000000, 2, x5, 168, x12)

# rs1_val == 137438953472, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000002000000000, 14, x5, 176, x12)

# rs1_val == 274877906944, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000004000000000, 256, x5, 184, x12)

# rs1_val == 549755813888, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000008000000000, 256, x5, 192, x12)

# rs1_val == 1099511627776, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000010000000000, 8, x5, 200, x12)

# rs1_val == 2199023255552, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000020000000000, 3967, x5, 208, x12)

# rs1_val == 4398046511104, imm_val == 4063
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000040000000000, 4063, x5, 216, x12)

# rs1_val == 8796093022208, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000080000000000, 18, x5, 224, x12)

# rs1_val == 17592186044416, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000100000000000, 13, x5, 232, x12)

# rs1_val == 35184372088832, imm_val == 4
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000200000000000, 4, x5, 240, x12)

# rs1_val == 70368744177664, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000400000000000, 8, x5, 248, x12)

# rs1_val == 140737488355328, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000800000000000, 13, x5, 256, x12)

# rs1_val == 281474976710656, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0001000000000000, 17, x5, 264, x12)

# rs1_val == 562949953421312, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0002000000000000, 2730, x5, 272, x12)

# rs1_val == 1125899906842624, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0004000000000000, 5, x5, 280, x12)

# rs1_val == 2251799813685248, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0008000000000000, 4, x5, 288, x12)

# rs1_val == 4503599627370496, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0010000000000000, 0, x5, 296, x12)

# rs1_val == 9007199254740992, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0020000000000000, 1, x5, 304, x12)

# rs1_val == 18014398509481984, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0040000000000000, 6, x5, 312, x12)

# rs1_val == 36028797018963968, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0080000000000000, 5, x5, 320, x12)

# rs1_val == 72057594037927936, imm_val == 4087
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0100000000000000, 4087, x5, 328, x12)

# rs1_val == 144115188075855872, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0200000000000000, 4063, x5, 336, x12)

# rs1_val == 288230376151711744, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0400000000000000, 0, x5, 344, x12)

# rs1_val == 576460752303423488, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0800000000000000, 12, x5, 352, x12)

# rs1_val == 1152921504606846976, imm_val == 4031
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x1000000000000000, 4031, x5, 360, x12)

# rs1_val == 2305843009213693952, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x2000000000000000, 6, x5, 368, x12)

# rs1_val == 4611686018427387904, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x4000000000000000, 4095, x5, 376, x12)

# rs1_val == 9223372036854775808, imm_val == 1365
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x8000000000000000;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x8000000000000000, 1365, x5, 384, x12)

# rs1_val == 18446744073709551614, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffe, 4094, x5, 392, x12)

# rs1_val == 18446744073709551613, imm_val == 128
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffd, 128, x5, 400, x12)

# rs1_val == 18446744073709551611, imm_val == 3839
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffb, 3839, x5, 408, x12)

# rs1_val == 18446744073709551607, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffff7, 7, x5, 416, x12)

# rs1_val == 18446744073709551599, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffef, 4063, x5, 424, x12)

# rs1_val == 18446744073709551583, imm_val == 16
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffdf, 16, x5, 432, x12)

# rs1_val == 18302628885633695743, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:19
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfdffffffffffffff, 19, x5, 440, x12)

# rs1_val == 18158513697557839871, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffffffffffff, 4094, x5, 448, x12)

# rs1_val == 17870283321406128127, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xf7ffffffffffffff, 7, x5, 456, x12)

# rs1_val == 17293822569102704639, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xefffffffffffffff, 4, x5, 464, x12)

# rs1_val == 16140901064495857663, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xdfffffffffffffff, 3839, x5, 472, x12)

# rs1_val == 13835058055282163711, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xbfffffffffffffff, 18, x5, 480, x12)

# rs1_val == 9223372036854775807, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x7fffffffffffffff;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x7fffffffffffffff, 14, x5, 488, x12)

# rs1_val == 6148914691236517205, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x5555555555555555, 12, x5, 496, x12)

# rs1_val == 12297829382473034410, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xaaaaaaaaaaaaaaaa, 4, x5, 504, x12)

# imm_val == 64, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000000004;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x0000000000000004, 64, x5, 512, x12)

# imm_val == 4093, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0800000000000000, 4093, x5, 520, x12)

# imm_val == 3583, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000000400000, 3583, x5, 528, x12)

# imm_val == 2047, rs1_val == 18444492273895866367
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfff7ffffffffffff, 2047, x5, 536, x12)

# rs1_val == 18446744073709551551, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffbf, 4095, x5, 544, x12)

# rs1_val == 18446744073709551487, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffff7f, 10, x5, 552, x12)

# rs1_val == 18446744073709551359, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffeff, 4093, x5, 560, x12)

# rs1_val == 18446744073709551103, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffdff, 6, x5, 568, x12)

# rs1_val == 18446744073709550591, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffbff, 0, x5, 576, x12)

# rs1_val == 18446744073709549567, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffff7ff, 3967, x5, 584, x12)

# rs1_val == 18446744073709547519, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffefff, 8, x5, 592, x12)

# rs1_val == 18446744073709543423, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffdfff, 256, x5, 600, x12)

# rs1_val == 18446744073709535231, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffbfff, 9, x5, 608, x12)

# rs1_val == 18446744073709518847, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffff7fff, 2047, x5, 616, x12)

# rs1_val == 18446744073709289471, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:19
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffbffff, 19, x5, 624, x12)

# rs1_val == 18446744073709027327, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffff7ffff, 64, x5, 632, x12)

# rs1_val == 18446744073708503039, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffefffff, 4094, x5, 640, x12)

# rs1_val == 18446744073707454463, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffdfffff, 17, x5, 648, x12)

# rs1_val == 18446744073705357311, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffbfffff, 4091, x5, 656, x12)

# rs1_val == 18446744073701163007, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffff7fffff, 6, x5, 664, x12)

# rs1_val == 18446744073692774399, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffeffffff, 4063, x5, 672, x12)

# rs1_val == 18446744073675997183, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffdffffff, 64, x5, 680, x12)

# rs1_val == 18446744073642442751, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffbffffff, 4093, x5, 688, x12)

# rs1_val == 18446744073575333887, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffff7ffffff, 4091, x5, 696, x12)

# rs1_val == 18446744073441116159, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffefffffff, 16, x5, 704, x12)

# rs1_val == 18446744073172680703, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffdfffffff, 2048, x5, 712, x12)

# rs1_val == 18446744072635809791, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffbfffffff, 16, x5, 720, x12)

# rs1_val == 18446744071562067967, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:8
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffff7fffffff, 8, x5, 728, x12)

# rs1_val == 18446744069414584319, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffeffffffff, 4079, x5, 736, x12)

# rs1_val == 18446744065119617023, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffdffffffff, 18, x5, 744, x12)

# rs1_val == 18446744056529682431, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffbffffffff, 512, x5, 752, x12)

# rs1_val == 18446744039349813247, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7ffffffff, 4079, x5, 760, x12)

# rs1_val == 18446744004990074879, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffefffffffff, 17, x5, 768, x12)

# rs1_val == 18446743936270598143, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffdfffffffff, 64, x5, 776, x12)

# rs1_val == 18446743798831644671, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:4091
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbfffffffff, 4091, x5, 784, x12)

# rs1_val == 18446743523953737727, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:1365
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffff7fffffffff, 1365, x5, 792, x12)

# rs1_val == 18446742974197923839, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffeffffffffff, 10, x5, 800, x12)

# rs1_val == 18446741874686296063, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:4087
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffdffffffffff, 4087, x5, 808, x12)

# rs1_val == 18446739675663040511, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffbffffffffff, 4094, x5, 816, x12)

# rs1_val == 18446735277616529407, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffff7ffffffffff, 4093, x5, 824, x12)

# rs1_val == 18446726481523507199, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefffffffffff, 6, x5, 832, x12)

# rs1_val == 18446708889337462783, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffdfffffffffff, 512, x5, 840, x12)

# rs1_val == 18446673704965373951, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:11
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffbfffffffffff, 11, x5, 848, x12)

# rs1_val == 18446603336221196287, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffff7fffffffffff, 0, x5, 856, x12)

# rs1_val == 18446462598732840959, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffeffffffffffff, 14, x5, 864, x12)

# rs1_val == 18446181123756130303, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffdffffffffffff, 64, x5, 872, x12)

# rs1_val == 18445618173802708991, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffbffffffffffff, 1024, x5, 880, x12)

# rs1_val == 18442240474082181119, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffefffffffffffff, 4094, x5, 888, x12)

# rs1_val == 18437736874454810623, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffdfffffffffffff, 13, x5, 896, x12)

# rs1_val == 18428729675200069631, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffbfffffffffffff, 5, x5, 904, x12)

# rs1_val == 18410715276690587647, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xff7fffffffffffff, 64, x5, 912, x12)

# rs1_val == 18374686479671623679, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfeffffffffffffff, 32, x5, 920, x12)

# rs1_val != imm_val and rs1_val > 0 and imm_val > 0, rs1_val == 18446744073709420543
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffdffff, 5, x5, 928, x12)

# rs1_val == 0, imm_val == 2730
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000000000;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x1, 0x0000000000000000, 2730, x5, 936, x12)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x6_1:
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x5_0:
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
