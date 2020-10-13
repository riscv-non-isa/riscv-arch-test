
#This assembly file tests the sltiu instruction of the RISC-V I extension for the sltiu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)

RVTEST_SIGBASE( x6,signature_x6_1)

# rs1 == rd, rs1==x25, rd==x25, rs1_val == imm_val and rs1_val > 0 and imm_val > 0, 
# opcode: sltiu ; op1:x25; dest:x25; op1val:0x0000000000000003;  immval:3
TEST_IMM_OP( sltiu, x25, x25, 0x0, 0x0000000000000003, 3, x6, 0, x7)

# rs1 != rd, rs1==x28, rd==x20, rs1_val != imm_val and rs1_val > 0 and imm_val > 0, 
# opcode: sltiu ; op1:x28; dest:x20; op1val:0x0000000000000003;  immval:6
TEST_IMM_OP( sltiu, x20, x28, 0x1, 0x0000000000000003, 6, x6, 8, x7)

# rs1==x20, rd==x16, rs1_val == 0, imm_val == 1
# opcode: sltiu ; op1:x20; dest:x16; op1val:0x0000000000000000;  immval:1
TEST_IMM_OP( sltiu, x16, x20, 0x1, 0x0000000000000000, 1, x6, 16, x7)

# rs1==x18, rd==x0, rs1_val == (2**(xlen)-1), 
# opcode: sltiu ; op1:x18; dest:x0; op1val:0xffffffffffffffff;  immval:1
TEST_IMM_OP( sltiu, x0, x18, 0x0, 0xffffffffffffffff, 1, x6, 24, x7)

# rs1==x1, rd==x10, rs1_val == 1, imm_val == 2
# opcode: sltiu ; op1:x1; dest:x10; op1val:0x0000000000000001;  immval:2
TEST_IMM_OP( sltiu, x10, x1, 0x1, 0x0000000000000001, 2, x6, 32, x7)

# rs1==x26, rd==x21, imm_val == 0, rs1_val == 131072
# opcode: sltiu ; op1:x26; dest:x21; op1val:0x0000000000020000;  immval:0
TEST_IMM_OP( sltiu, x21, x26, 0x0, 0x0000000000020000, 0, x6, 40, x7)

# rs1==x2, rd==x9, imm_val == (2**(12)-1), rs1_val == 144115188075855872
# opcode: sltiu ; op1:x2; dest:x9; op1val:0x0200000000000000;  immval:4095
TEST_IMM_OP( sltiu, x9, x2, 0x0, 0x0200000000000000, 4095, x6, 48, x7)

# rs1==x8, rd==x26, rs1_val == 2, 
# opcode: sltiu ; op1:x8; dest:x26; op1val:0x0000000000000002;  immval:6
TEST_IMM_OP( sltiu, x26, x8, 0x1, 0x0000000000000002, 6, x6, 56, x7)

# rs1==x29, rd==x13, rs1_val == 4, imm_val == 4093
# opcode: sltiu ; op1:x29; dest:x13; op1val:0x0000000000000004;  immval:4093
TEST_IMM_OP( sltiu, x13, x29, 0x1, 0x0000000000000004, 4093, x6, 64, x7)

# rs1==x15, rd==x14, rs1_val == 8, imm_val == 256
# opcode: sltiu ; op1:x15; dest:x14; op1val:0x0000000000000008;  immval:256
TEST_IMM_OP( sltiu, x14, x15, 0x1, 0x0000000000000008, 256, x6, 72, x7)

# rs1==x16, rd==x8, rs1_val == 16, imm_val == 4094
# opcode: sltiu ; op1:x16; dest:x8; op1val:0x0000000000000010;  immval:4094
TEST_IMM_OP( sltiu, x8, x16, 0x1, 0x0000000000000010, 4094, x6, 80, x7)

# rs1==x13, rd==x1, rs1_val == 32, imm_val == 2048
# opcode: sltiu ; op1:x13; dest:x1; op1val:0x0000000000000020;  immval:2048
TEST_IMM_OP( sltiu, x1, x13, 0x1, 0x0000000000000020, 2048, x6, 88, x7)

# rs1==x4, rd==x15, rs1_val == 64, imm_val == 1024
# opcode: sltiu ; op1:x4; dest:x15; op1val:0x0000000000000040;  immval:1024
TEST_IMM_OP( sltiu, x15, x4, 0x1, 0x0000000000000040, 1024, x6, 96, x7)

# rs1==x10, rd==x31, rs1_val == 128, imm_val == 1365
# opcode: sltiu ; op1:x10; dest:x31; op1val:0x0000000000000080;  immval:1365
TEST_IMM_OP( sltiu, x31, x10, 0x1, 0x0000000000000080, 1365, x6, 104, x7)

# rs1==x9, rd==x5, rs1_val == 256, imm_val == 16
# opcode: sltiu ; op1:x9; dest:x5; op1val:0x0000000000000100;  immval:16
TEST_IMM_OP( sltiu, x5, x9, 0x0, 0x0000000000000100, 16, x6, 112, x7)

# rs1==x22, rd==x18, rs1_val == 512, imm_val == 4091
# opcode: sltiu ; op1:x22; dest:x18; op1val:0x0000000000000200;  immval:4091
TEST_IMM_OP( sltiu, x18, x22, 0x1, 0x0000000000000200, 4091, x6, 120, x7)

# rs1==x12, rd==x3, rs1_val == 1024, 
# opcode: sltiu ; op1:x12; dest:x3; op1val:0x0000000000000400;  immval:13
TEST_IMM_OP( sltiu, x3, x12, 0x0, 0x0000000000000400, 13, x6, 128, x7)

# rs1==x23, rd==x30, rs1_val == 2048, 
# opcode: sltiu ; op1:x23; dest:x30; op1val:0x0000000000000800;  immval:19
TEST_IMM_OP( sltiu, x30, x23, 0x0, 0x0000000000000800, 19, x6, 136, x7)

# rs1==x24, rd==x11, rs1_val == 4096, imm_val == 8
# opcode: sltiu ; op1:x24; dest:x11; op1val:0x0000000000001000;  immval:8
TEST_IMM_OP( sltiu, x11, x24, 0x0, 0x0000000000001000, 8, x6, 144, x7)

# rs1==x19, rd==x4, rs1_val == 8192, imm_val == 4031
# opcode: sltiu ; op1:x19; dest:x4; op1val:0x0000000000002000;  immval:4031
TEST_IMM_OP( sltiu, x4, x19, 0x0, 0x0000000000002000, 4031, x6, 152, x7)

# rs1==x31, rd==x23, rs1_val == 16384, 
# opcode: sltiu ; op1:x31; dest:x23; op1val:0x0000000000004000;  immval:5
TEST_IMM_OP( sltiu, x23, x31, 0x0, 0x0000000000004000, 5, x6, 160, x4)

# rs1==x17, rd==x7, rs1_val == 32768, imm_val == 3839
# opcode: sltiu ; op1:x17; dest:x7; op1val:0x0000000000008000;  immval:3839
TEST_IMM_OP( sltiu, x7, x17, 0x0, 0x0000000000008000, 3839, x6, 168, x4)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x3, rd==x6, rs1_val == 65536, 
# opcode: sltiu ; op1:x3; dest:x6; op1val:0x0000000000010000;  immval:1
TEST_IMM_OP( sltiu, x6, x3, 0x0, 0x0000000000010000, 1, x1, 0, x4)

# rs1==x7, rd==x29, rs1_val == 262144, imm_val == 4063
# opcode: sltiu ; op1:x7; dest:x29; op1val:0x0000000000040000;  immval:4063
TEST_IMM_OP( sltiu, x29, x7, 0x0, 0x0000000000040000, 4063, x1, 8, x4)

# rs1==x0, rd==x27, rs1_val == 524288, 
# opcode: sltiu ; op1:x0; dest:x27; op1val:0x0000000000080000;  immval:3
TEST_IMM_OP( sltiu, x27, x0, 0x0, 0x0000000000080000, 3, x1, 16, x4)

# rs1==x5, rd==x24, rs1_val == 1048576, imm_val == 3583
# opcode: sltiu ; op1:x5; dest:x24; op1val:0x0000000000100000;  immval:3583
TEST_IMM_OP( sltiu, x24, x5, 0x0, 0x0000000000100000, 3583, x1, 24, x4)

# rs1==x11, rd==x19, rs1_val == 2097152, imm_val == 512
# opcode: sltiu ; op1:x11; dest:x19; op1val:0x0000000000200000;  immval:512
TEST_IMM_OP( sltiu, x19, x11, 0x0, 0x0000000000200000, 512, x1, 32, x4)

# rs1==x27, rd==x17, rs1_val == 4194304, 
# opcode: sltiu ; op1:x27; dest:x17; op1val:0x0000000000400000;  immval:4091
TEST_IMM_OP( sltiu, x17, x27, 0x0, 0x0000000000400000, 4091, x1, 40, x4)

# rs1==x6, rd==x12, rs1_val == 8388608, 
# opcode: sltiu ; op1:x6; dest:x12; op1val:0x0000000000800000;  immval:3583
TEST_IMM_OP( sltiu, x12, x6, 0x0, 0x0000000000800000, 3583, x1, 48, x4)

# rs1==x21, rd==x22, rs1_val == 16777216, 
# opcode: sltiu ; op1:x21; dest:x22; op1val:0x0000000001000000;  immval:4094
TEST_IMM_OP( sltiu, x22, x21, 0x0, 0x0000000001000000, 4094, x1, 56, x4)

# rs1==x14, rd==x2, rs1_val == 33554432, 
# opcode: sltiu ; op1:x14; dest:x2; op1val:0x0000000002000000;  immval:1365
TEST_IMM_OP( sltiu, x2, x14, 0x0, 0x0000000002000000, 1365, x1, 64, x4)

# rs1==x30, rd==x28, rs1_val == 67108864, imm_val == 4087
# opcode: sltiu ; op1:x30; dest:x28; op1val:0x0000000004000000;  immval:4087
TEST_IMM_OP( sltiu, x28, x30, 0x0, 0x0000000004000000, 4087, x1, 72, x4)

# rs1_val == 134217728, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000008000000, 18, x1, 80, x4)

# rs1_val == 268435456, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000010000000, 9, x1, 88, x4)

# rs1_val == 536870912, imm_val == 2730
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000020000000, 2730, x1, 96, x4)

# rs1_val == 1073741824, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000040000000, 2, x1, 104, x4)

# rs1_val == 2147483648, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000080000000, 4094, x1, 112, x4)

# rs1_val == 4294967296, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000100000000, 2, x1, 120, x4)

# rs1_val == 8589934592, imm_val == 128
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000200000000, 128, x1, 128, x4)

# rs1_val == 17179869184, imm_val == 3967
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000400000000, 3967, x1, 136, x4)

# rs1_val == 34359738368, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000800000000, 6, x1, 144, x4)

# rs1_val == 68719476736, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000001000000000, 4063, x1, 152, x4)

# rs1_val == 137438953472, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000002000000000, 7, x1, 160, x4)

# rs1_val == 274877906944, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000004000000000, 3839, x1, 168, x4)

# rs1_val == 549755813888, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000008000000000, 15, x1, 176, x4)

# rs1_val == 1099511627776, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000010000000000, 3583, x1, 184, x4)

# rs1_val == 2199023255552, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000020000000000, 0, x1, 192, x4)

# rs1_val == 4398046511104, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:0
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000040000000000, 0, x1, 200, x4)

# rs1_val == 8796093022208, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000080000000000, 4063, x1, 208, x4)

# rs1_val == 17592186044416, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000100000000000, 16, x1, 216, x4)

# rs1_val == 35184372088832, imm_val == 2047
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000200000000000, 2047, x1, 224, x4)

# rs1_val == 70368744177664, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000400000000000, 7, x1, 232, x4)

# rs1_val == 140737488355328, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000800000000000, 17, x1, 240, x4)

# rs1_val == 281474976710656, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0001000000000000, 5, x1, 248, x4)

# rs1_val == 562949953421312, imm_val == 32
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0002000000000000, 32, x1, 256, x4)

# rs1_val == 1125899906842624, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0004000000000000, 1024, x1, 264, x4)

# rs1_val == 2251799813685248, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0008000000000000, 3839, x1, 272, x4)

# rs1_val == 4503599627370496, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0010000000000000, 2047, x1, 280, x4)

# rs1_val == 9007199254740992, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:14
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0020000000000000, 14, x1, 288, x4)

# rs1_val == 18014398509481984, imm_val == 4079
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0040000000000000, 4079, x1, 296, x4)

# rs1_val == 36028797018963968, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0080000000000000, 18, x1, 304, x4)

# rs1_val == 72057594037927936, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0100000000000000, 32, x1, 312, x4)

# rs1_val == 288230376151711744, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0400000000000000, 4031, x1, 320, x4)

# rs1_val == 576460752303423488, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0800000000000000, 15, x1, 328, x4)

# rs1_val == 1152921504606846976, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:32
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x1000000000000000, 32, x1, 336, x4)

# rs1_val == 2305843009213693952, imm_val == 3071
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x2000000000000000, 3071, x1, 344, x4)

# rs1_val == 4611686018427387904, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x4000000000000000, 6, x1, 352, x4)

# rs1_val == 9223372036854775808, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x8000000000000000;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x8000000000000000, 15, x1, 360, x4)

# rs1_val == 18446744073709551614, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffe, 6, x1, 368, x4)

# rs1_val == 18446744073709551613, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffd, 4031, x1, 376, x4)

# rs1_val == 18446744073709551611, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:1024
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffffb, 1024, x1, 384, x4)

# rs1_val == 18446744073709551607, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffff7, 3071, x1, 392, x4)

# rs1_val == 18446744073709551599, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:11
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffef, 11, x1, 400, x4)

# rs1_val == 18302628885633695743, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:19
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfdffffffffffffff, 19, x1, 408, x4)

# rs1_val == 18158513697557839871, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:18
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfbffffffffffffff, 18, x1, 416, x4)

# rs1_val == 17870283321406128127, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xf7ffffffffffffff, 4095, x1, 424, x4)

# rs1_val == 17293822569102704639, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xefffffffffffffff, 13, x1, 432, x4)

# rs1_val == 16140901064495857663, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xdfffffffffffffff, 4079, x1, 440, x4)

# rs1_val == 13835058055282163711, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:17
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xbfffffffffffffff, 17, x1, 448, x4)

# rs1_val == 9223372036854775807, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x7fffffffffffffff;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x7fffffffffffffff, 128, x1, 456, x4)

# rs1_val == 6148914691236517205, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:4063
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x5555555555555555, 4063, x1, 464, x4)

# rs1_val == 12297829382473034410, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xaaaaaaaaaaaaaaaa, 7, x1, 472, x4)

# imm_val == 4, rs1_val == 18446708889337462783
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffdfffffffffff, 4, x1, 480, x4)

# imm_val == 64, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffff;  immval:64
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffff, 64, x1, 488, x4)

# rs1_val == 18446744073709551583, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:16
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffdf, 16, x1, 496, x4)

# rs1_val == 18446744073709551551, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffbf, 512, x1, 504, x4)

# rs1_val == 18446744073709551487, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffff7f, 1, x1, 512, x4)

# rs1_val == 18446744073709551359, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffeff, 10, x1, 520, x4)

# rs1_val == 18446744073709551103, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffdff, 4095, x1, 528, x4)

# rs1_val == 18446744073709550591, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffffbff, 1, x1, 536, x4)

# rs1_val == 18446744073709549567, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffff7ff, 4093, x1, 544, x4)

# rs1_val == 18446744073709547519, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffefff, 1, x1, 552, x4)

# rs1_val == 18446744073709543423, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffdfff, 3, x1, 560, x4)

# rs1_val == 18446744073709535231, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffbfff, 3583, x1, 568, x4)

# rs1_val == 18446744073709518847, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffff7fff, 512, x1, 576, x4)

# rs1_val == 18446744073709486079, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffeffff, 4031, x1, 584, x4)

# rs1_val == 18446744073709420543, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffdffff, 2730, x1, 592, x4)

# rs1_val == 18446744073709289471, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffffbffff, 7, x1, 600, x4)

# rs1_val == 18446744073709027327, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffff7ffff, 4093, x1, 608, x4)

# rs1_val == 18446744073708503039, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffefffff, 2047, x1, 616, x4)

# rs1_val == 18446744073707454463, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:10
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffdfffff, 10, x1, 624, x4)

# rs1_val == 18446744073705357311, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:3071
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffbfffff, 3071, x1, 632, x4)

# rs1_val == 18446744073701163007, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:512
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffff7fffff, 512, x1, 640, x4)

# rs1_val == 18446744073692774399, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:2047
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffeffffff, 2047, x1, 648, x4)

# rs1_val == 18446744073675997183, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffdffffff, 3839, x1, 656, x4)

# rs1_val == 18446744073642442751, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:2
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffffbffffff, 2, x1, 664, x4)

# rs1_val == 18446744073575333887, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:12
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffff7ffffff, 12, x1, 672, x4)

# rs1_val == 18446744073441116159, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffefffffff, 4079, x1, 680, x4)

# rs1_val == 18446744073172680703, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffdfffffff, 3583, x1, 688, x4)

# rs1_val == 18446744072635809791, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffbfffffff, 5, x1, 696, x4)

# rs1_val == 18446744071562067967, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffff7fffffff, 2730, x1, 704, x4)

# rs1_val == 18446744069414584319, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:15
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffeffffffff, 15, x1, 712, x4)

# rs1_val == 18446744065119617023, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:2730
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffdffffffff, 2730, x1, 720, x4)

# rs1_val == 18446744056529682431, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:256
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffffbffffffff, 256, x1, 728, x4)

# rs1_val == 18446744039349813247, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:3839
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffff7ffffffff, 3839, x1, 736, x4)

# rs1_val == 18446744004990074879, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:4095
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffefffffffff, 4095, x1, 744, x4)

# rs1_val == 18446743936270598143, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:3967
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffdfffffffff, 3967, x1, 752, x4)

# rs1_val == 18446743798831644671, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:9
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffbfffffffff, 9, x1, 760, x4)

# rs1_val == 18446743523953737727, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffff7fffffffff, 5, x1, 768, x4)

# rs1_val == 18446742974197923839, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffeffffffffff, 128, x1, 776, x4)

# rs1_val == 18446741874686296063, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:4093
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffdffffffffff, 4093, x1, 784, x4)

# rs1_val == 18446739675663040511, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:3583
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffffbffffffffff, 3583, x1, 792, x4)

# rs1_val == 18446735277616529407, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:5
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffff7ffffffffff, 5, x1, 800, x4)

# rs1_val == 18446726481523507199, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:6
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffefffffffffff, 6, x1, 808, x4)

# rs1_val == 18446673704965373951, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffbfffffffffff, 4031, x1, 816, x4)

# rs1_val == 18446603336221196287, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:4031
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffff7fffffffffff, 4031, x1, 824, x4)

# rs1_val == 18446462598732840959, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:4094
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffeffffffffffff, 4094, x1, 832, x4)

# rs1_val == 18446181123756130303, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffdffffffffffff, 4, x1, 840, x4)

# rs1_val == 18445618173802708991, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:7
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfffbffffffffffff, 7, x1, 848, x4)

# rs1_val == 18444492273895866367, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:19
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfff7ffffffffffff, 19, x1, 856, x4)

# rs1_val == 18442240474082181119, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:13
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffefffffffffffff, 13, x1, 864, x4)

# rs1_val == 18437736874454810623, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:4
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffdfffffffffffff, 4, x1, 872, x4)

# rs1_val == 18428729675200069631, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:128
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffbfffffffffffff, 128, x1, 880, x4)

# rs1_val == 18410715276690587647, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:2048
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xff7fffffffffffff, 2048, x1, 888, x4)

# rs1_val == 18374686479671623679, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:4079
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xfeffffffffffffff, 4079, x1, 896, x4)

# rs1_val == imm_val and rs1_val > 0 and imm_val > 0, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000000003;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000000000003, 3, x1, 904, x4)

# rs1_val == (2**(xlen)-1), 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0xffffffffffffffff;  immval:1
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0xffffffffffffffff, 1, x1, 912, x4)

# rs1_val == 524288, 
# opcode: sltiu ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:3
TEST_IMM_OP( sltiu, x11, x10, 0x0, 0x0000000000080000, 3, x1, 920, x4)
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
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
