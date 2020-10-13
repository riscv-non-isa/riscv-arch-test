
#This assembly file tests the c.slli instruction of the RISC-V C extension for the cslli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cslli)

RVTEST_SIGBASE( x1,signature_x1_1)

# rd==x8, rs1_val < 0 and imm_val < xlen, rs1_val == -8796093022209
# opcode:c.slli; op1:x8; dest:x8 op1val:0xfffff7ffffffffff; immval:5
TEST_CI_OP( c.slli, x8, 0x0000000000000000, 0xfffff7ffffffffff, 5, x1, 0, x2)

# rd==x9, rs1_val > 0 and imm_val < xlen, rs1_val == 2251799813685248, imm_val == 4
# opcode:c.slli; op1:x9; dest:x9 op1val:0x0008000000000000; immval:4
TEST_CI_OP( c.slli, x9, 0x0000000000000000, 0x0008000000000000, 4, x1, 8, x2)

# rd==x14, rs1_val == imm_val and imm_val != 0  and imm_val < xlen, rs1_val == 4
# opcode:c.slli; op1:x14; dest:x14 op1val:0x0000000000000004; immval:4
TEST_CI_OP( c.slli, x14, 0x0000000000000000, 0x0000000000000004, 4, x1, 16, x2)

# rd==x11, rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen, rs1_val == -9223372036854775808, imm_val == 62
# opcode:c.slli; op1:x11; dest:x11 op1val:0x8000000000000000; immval:62
TEST_CI_OP( c.slli, x11, 0x0000000000000000, 0x8000000000000000, 62, x1, 24, x2)

# rd==x10, rs1_val == 0 and imm_val != 0 and imm_val < xlen, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000000; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000000, 10, x1, 32, x2)

# rd==x12, rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen, rs1_val == 9223372036854775807
# opcode:c.slli; op1:x12; dest:x12 op1val:0x7fffffffffffffff; immval:9
TEST_CI_OP( c.slli, x12, 0x0000000000000000, 0x7fffffffffffffff, 9, x1, 40, x2)

# rd==x15, rs1_val == 1 and imm_val != 0 and imm_val < xlen, rs1_val == 1
# opcode:c.slli; op1:x15; dest:x15 op1val:0x0000000000000001; immval:17
TEST_CI_OP( c.slli, x15, 0x0000000000000000, 0x0000000000000001, 17, x1, 48, x2)

# rd==x13, imm_val == 1, rs1_val == 36028797018963968
# opcode:c.slli; op1:x13; dest:x13 op1val:0x0080000000000000; immval:1
TEST_CI_OP( c.slli, x13, 0x0000000000000000, 0x0080000000000000, 1, x1, 56, x2)

# imm_val == 2, rs1_val == 16384
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000004000; immval:2
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000004000, 2, x1, 64, x2)

# imm_val == 8, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffff6; immval:8
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffff6, 8, x1, 72, x2)

# imm_val == 16, rs1_val == 6148914691236517205
# opcode:c.slli; op1:x10; dest:x10 op1val:0x5555555555555555; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x5555555555555555, 16, x1, 80, x2)

# imm_val == 32, rs1_val == 1125899906842624
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0004000000000000; immval:32
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0004000000000000, 32, x1, 88, x2)

# imm_val == 61, rs1_val == 16
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000010; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000010, 61, x1, 96, x2)

# imm_val == 59, rs1_val == -1152921504606846977
# opcode:c.slli; op1:x10; dest:x10 op1val:0xefffffffffffffff; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xefffffffffffffff, 59, x1, 104, x2)

# imm_val == 55, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000006; immval:55
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000006, 55, x1, 112, x2)

# imm_val == 47, rs1_val == -257
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffeff; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffeff, 47, x1, 120, x2)

# imm_val == 31, rs1_val == 562949953421312
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0002000000000000; immval:31
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0002000000000000, 31, x1, 128, x2)

# imm_val == 21, rs1_val == 549755813888
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000008000000000; immval:21
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000008000000000, 21, x1, 136, x2)

# imm_val == 42, rs1_val == 1048576
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000100000; immval:42
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000100000, 42, x1, 144, x2)

# rs1_val == 2, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000002; immval:18
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000002, 18, x1, 152, x2)

# rs1_val == 8, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000008; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000008, 16, x1, 160, x2)

# rs1_val == 32, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000020; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000020, 61, x1, 168, x2)

# rs1_val == 64, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000040; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000040, 59, x1, 176, x2)

# rs1_val == 128, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000080; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000080, 47, x1, 184, x2)

# rs1_val == 256, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000100; immval:4
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000100, 4, x1, 192, x2)

# rs1_val == 512, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000200; immval:12
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000200, 12, x1, 200, x2)

# rs1_val == 1024, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000400; immval:15
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000400, 15, x1, 208, x2)

# rs1_val == 2048, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000800; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000800, 62, x1, 216, x2)

# rs1_val == 4096, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000001000; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000001000, 59, x1, 224, x2)

# rs1_val == 8192, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000002000; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000002000, 10, x1, 232, x2)

# rs1_val == 32768, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000008000; immval:55
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000008000, 55, x1, 240, x2)

# rs1_val == 65536, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000010000; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000010000, 61, x1, 248, x2)

# rs1_val == 131072, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000020000; immval:11
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000020000, 11, x1, 256, x2)

# rs1_val == 262144, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000040000; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000040000, 62, x1, 264, x2)

# rs1_val == 524288, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000080000; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000080000, 17, x1, 272, x2)

# rs1_val == 2097152, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000200000; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000200000, 13, x1, 280, x2)

# rs1_val == 4194304, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000400000; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000400000, 17, x1, 288, x2)

# rs1_val == 8388608, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000800000; immval:55
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000800000, 55, x1, 296, x2)

# rs1_val == 16777216, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000001000000; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000001000000, 61, x1, 304, x2)

# rs1_val == 33554432, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000002000000; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000002000000, 63, x1, 312, x2)

# rs1_val == 67108864, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000004000000; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000004000000, 9, x1, 320, x2)

# rs1_val == 134217728, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000008000000; immval:31
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000008000000, 31, x1, 328, x2)

# rs1_val == 268435456, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000010000000; immval:18
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000010000000, 18, x1, 336, x2)

# rs1_val == 536870912, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000020000000; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000020000000, 13, x1, 344, x2)

# rs1_val == 1073741824, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000040000000; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000040000000, 16, x1, 352, x2)

# rs1_val == 2147483648, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000080000000; immval:1
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000080000000, 1, x1, 360, x2)

# rs1_val == 4294967296, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000100000000; immval:2
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000100000000, 2, x1, 368, x2)

# rs1_val == 8589934592, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000200000000; immval:12
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000200000000, 12, x1, 376, x2)

# rs1_val == 17179869184, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000400000000; immval:6
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000400000000, 6, x1, 384, x2)

# rs1_val == 34359738368, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000800000000; immval:15
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000800000000, 15, x1, 392, x2)

# rs1_val == 68719476736, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000001000000000; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000001000000000, 61, x1, 400, x2)

# rs1_val == 137438953472, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000002000000000; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000002000000000, 59, x1, 408, x2)

# rs1_val == 274877906944, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000004000000000; immval:12
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000004000000000, 12, x1, 416, x2)

# rs1_val == 1099511627776, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000010000000000; immval:5
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000010000000000, 5, x1, 424, x2)

# rs1_val == 2199023255552, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000020000000000; immval:6
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000020000000000, 6, x1, 432, x2)

# rs1_val == 4398046511104, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000040000000000; immval:14
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000040000000000, 14, x1, 440, x2)

# rs1_val == 8796093022208, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000080000000000; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000080000000000, 16, x1, 448, x2)

# rs1_val == 17592186044416, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000100000000000; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000100000000000, 47, x1, 456, x2)

# rs1_val == 35184372088832, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000200000000000; immval:11
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000200000000000, 11, x1, 464, x2)

# rs1_val == 70368744177664, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000400000000000; immval:6
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000400000000000, 6, x1, 472, x2)

# rs1_val == 140737488355328, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0000800000000000; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000800000000000, 63, x1, 480, x2)

# rs1_val == 281474976710656, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0001000000000000; immval:55
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0001000000000000, 55, x1, 488, x2)

# rs1_val == 4503599627370496, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0010000000000000; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0010000000000000, 10, x1, 496, x2)

# rs1_val == 9007199254740992, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0020000000000000; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0020000000000000, 63, x1, 504, x2)

# rs1_val == 18014398509481984, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0040000000000000; immval:12
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0040000000000000, 12, x1, 512, x2)

# rs1_val == 72057594037927936, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0100000000000000; immval:15
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0100000000000000, 15, x1, 520, x2)

# rs1_val == 144115188075855872, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0200000000000000; immval:32
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0200000000000000, 32, x1, 528, x2)

# rs1_val == 288230376151711744, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0400000000000000; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0400000000000000, 9, x1, 536, x2)

# rs1_val == 576460752303423488, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x0800000000000000; immval:6
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0800000000000000, 6, x1, 544, x2)

# rs1_val == 1152921504606846976, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x1000000000000000; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x1000000000000000, 17, x1, 552, x2)

# rs1_val == -17592186044417, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffefffffffffff; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffefffffffffff, 63, x1, 560, x2)

# rs1_val == -35184372088833, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffdfffffffffff; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffdfffffffffff, 59, x1, 568, x2)

# rs1_val == -70368744177665, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffbfffffffffff; immval:3
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffbfffffffffff, 3, x1, 576, x2)

# rs1_val == -140737488355329, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffff7fffffffffff; immval:31
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffff7fffffffffff, 31, x1, 584, x2)

# rs1_val == -281474976710657, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffeffffffffffff; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffeffffffffffff, 13, x1, 592, x2)

# rs1_val == -562949953421313, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffdffffffffffff; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffdffffffffffff, 19, x1, 600, x2)

# rs1_val == -1125899906842625, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffbffffffffffff; immval:42
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffbffffffffffff, 42, x1, 608, x2)

# rs1_val == -2251799813685249, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfff7ffffffffffff; immval:8
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfff7ffffffffffff, 8, x1, 616, x2)

# rs1_val == -4503599627370497, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffefffffffffffff; immval:14
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffefffffffffffff, 14, x1, 624, x2)

# rs1_val == -9007199254740993, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffdfffffffffffff; immval:42
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffdfffffffffffff, 42, x1, 632, x2)

# rs1_val == -18014398509481985, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffbfffffffffffff; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffbfffffffffffff, 10, x1, 640, x2)

# rs1_val == -36028797018963969, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xff7fffffffffffff; immval:6
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xff7fffffffffffff, 6, x1, 648, x2)

# rs1_val == -72057594037927937, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfeffffffffffffff; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfeffffffffffffff, 61, x1, 656, x2)

# rs1_val == -144115188075855873, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfdffffffffffffff; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfdffffffffffffff, 17, x1, 664, x2)

# rs1_val == -288230376151711745, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfbffffffffffffff; immval:15
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfbffffffffffffff, 15, x1, 672, x2)

# rs1_val == -576460752303423489, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xf7ffffffffffffff; immval:14
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xf7ffffffffffffff, 14, x1, 680, x2)

# rs1_val == -2305843009213693953, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xdfffffffffffffff; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xdfffffffffffffff, 17, x1, 688, x2)

# rs1_val == -4611686018427387905, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xbfffffffffffffff; immval:55
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xbfffffffffffffff, 55, x1, 696, x2)

# rs1_val == -6148914691236517206, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xaaaaaaaaaaaaaaaa; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 9, x1, 704, x2)

# rs1_val == 2305843009213693952, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x2000000000000000; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x2000000000000000, 61, x1, 712, x2)

# rs1_val == 4611686018427387904, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0x4000000000000000; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x4000000000000000, 19, x1, 720, x2)

# rs1_val == -2, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffffe; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffffe, 19, x1, 728, x2)

# rs1_val == -3, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffffd; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffffd, 16, x1, 736, x2)

# rs1_val == -5, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffffb; immval:21
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffffb, 21, x1, 744, x2)

# rs1_val == -9, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffff7; immval:7
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffff7, 7, x1, 752, x2)

# rs1_val == -17, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffffef; immval:7
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffffef, 7, x1, 760, x2)

# rs1_val == -33, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffffdf; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffffdf, 62, x1, 768, x2)

# rs1_val == -65, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffffbf; immval:15
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffffbf, 15, x1, 776, x2)

# rs1_val == -129, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffff7f; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffff7f, 9, x1, 784, x2)

# rs1_val == -513, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffdff; immval:21
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffdff, 21, x1, 792, x2)

# rs1_val == -1025, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffbff; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffbff, 59, x1, 800, x2)

# rs1_val == -2049, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffff7ff; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffff7ff, 62, x1, 808, x2)

# rs1_val == -4097, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffefff; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffefff, 19, x1, 816, x2)

# rs1_val == -8193, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffdfff; immval:42
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffdfff, 42, x1, 824, x2)

# rs1_val == -16385, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffbfff; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffbfff, 17, x1, 832, x2)

# rs1_val == -32769, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffff7fff; immval:4
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffff7fff, 4, x1, 840, x2)

# rs1_val == -65537, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffeffff; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffeffff, 61, x1, 848, x2)

# rs1_val == -131073, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffdffff; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffdffff, 47, x1, 856, x2)

# rs1_val == -262145, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffbffff; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffbffff, 19, x1, 864, x2)

# rs1_val == -524289, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffff7ffff; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffff7ffff, 47, x1, 872, x2)

# rs1_val == -1048577, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffefffff; immval:31
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffefffff, 31, x1, 880, x2)

# rs1_val == -2097153, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffdfffff; immval:42
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffdfffff, 42, x1, 888, x2)

# rs1_val == -4194305, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffbfffff; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffbfffff, 9, x1, 896, x2)

# rs1_val == -8388609, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffff7fffff; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffff7fffff, 63, x1, 904, x2)

# rs1_val == -16777217, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffeffffff; immval:12
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffeffffff, 12, x1, 912, x2)

# rs1_val == -33554433, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffdffffff; immval:2
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffdffffff, 2, x1, 920, x2)

# rs1_val == -67108865, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffbffffff; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffbffffff, 16, x1, 928, x2)

# rs1_val == -134217729, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffff7ffffff; immval:3
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffff7ffffff, 3, x1, 936, x2)

# rs1_val == -268435457, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffefffffff; immval:3
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffefffffff, 3, x1, 944, x2)

# rs1_val == -536870913, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffdfffffff; immval:11
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffdfffffff, 11, x1, 952, x2)

# rs1_val == -1073741825, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffbfffffff; immval:1
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffbfffffff, 1, x1, 960, x2)

# rs1_val == -2147483649, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffff7fffffff; immval:5
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffff7fffffff, 5, x1, 968, x2)

# rs1_val == -4294967297, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffeffffffff; immval:55
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffeffffffff, 55, x1, 976, x2)

# rs1_val == -8589934593, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffdffffffff; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffdffffffff, 19, x1, 984, x2)

# rs1_val == -17179869185, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffbffffffff; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffbffffffff, 19, x1, 992, x2)

# rs1_val == -34359738369, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffff7ffffffff; immval:4
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffff7ffffffff, 4, x1, 1000, x2)

# rs1_val == -68719476737, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffefffffffff; immval:21
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffefffffffff, 21, x1, 1008, x2)

# rs1_val == -137438953473, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffdfffffffff; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffdfffffffff, 16, x1, 1016, x2)

# rs1_val == -274877906945, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffbfffffffff; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffbfffffffff, 63, x1, 1024, x2)

# rs1_val == -549755813889, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xffffff7fffffffff; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffff7fffffffff, 61, x1, 1032, x2)

# rs1_val == -1099511627777, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffeffffffffff; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffeffffffffff, 59, x1, 1040, x2)

# rs1_val == -2199023255553, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffdffffffffff; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffdffffffffff, 59, x1, 1048, x2)

# rs1_val == -4398046511105, 
# opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffbffffffffff; immval:32
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffbffffffffff, 32, x1, 1056, x2)
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
    .fill 133*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
