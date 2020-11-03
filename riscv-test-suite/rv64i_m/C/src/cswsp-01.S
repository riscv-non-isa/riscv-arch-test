
#This assembly file tests the c.swsp instruction of the RISC-V C extension for the cswsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cswsp)

RVTEST_SIGBASE( x10,signature_x10_1)

# rs2==x29, imm_val > 0, imm_val == 32, rs2_val == -3
# opcode:c.swsp; op1:x2; op2:x29; op2val:0xfffffffffffffffd; immval:32
TEST_STORE(x10,x16,0,x2,x29,0xfffffffffffffffd,32,0,c.swsp,0)

# rs2==x12, imm_val == 0, rs2_val == 2097152
# opcode:c.swsp; op1:x2; op2:x12; op2val:0x0000000000200000; immval:0
TEST_STORE(x10,x16,0,x2,x12,0x0000000000200000,0,8,c.swsp,0)

# rs2==x24, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode:c.swsp; op1:x2; op2:x24; op2val:0x8000000000000000; immval:252
TEST_STORE(x10,x16,0,x2,x24,0x8000000000000000,252,16,c.swsp,0)

# rs2==x11, rs2_val == 0, imm_val == 220
# opcode:c.swsp; op1:x2; op2:x11; op2val:0x0000000000000000; immval:220
TEST_STORE(x10,x16,0,x2,x11,0x0000000000000000,220,24,c.swsp,0)

# rs2==x13, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode:c.swsp; op1:x2; op2:x13; op2val:0x7fffffffffffffff; immval:220
TEST_STORE(x10,x16,0,x2,x13,0x7fffffffffffffff,220,32,c.swsp,0)

# rs2==x15, rs2_val == 1, 
# opcode:c.swsp; op1:x2; op2:x15; op2val:0x0000000000000001; immval:220
TEST_STORE(x10,x16,0,x2,x15,0x0000000000000001,220,40,c.swsp,0)

# rs2==x9, imm_val == 4, rs2_val == 33554432
# opcode:c.swsp; op1:x2; op2:x9; op2val:0x0000000002000000; immval:4
TEST_STORE(x10,x16,0,x2,x9,0x0000000002000000,4,48,c.swsp,0)

# rs2==x28, imm_val == 8, rs2_val == 16384
# opcode:c.swsp; op1:x2; op2:x28; op2val:0x0000000000004000; immval:8
TEST_STORE(x10,x16,0,x2,x28,0x0000000000004000,8,56,c.swsp,0)

# rs2==x2, imm_val == 16, rs2_val == -17592186044417
# opcode:c.swsp; op1:x2; op2:x2; op2val:0xffffefffffffffff; immval:16
TEST_STORE(x10,x16,0,x2,x2,0xffffefffffffffff,16,64,c.swsp,0)

# rs2==x22, imm_val == 64, rs2_val == 144115188075855872
# opcode:c.swsp; op1:x2; op2:x22; op2val:0x0200000000000000; immval:64
TEST_STORE(x10,x16,0,x2,x22,0x0200000000000000,64,72,c.swsp,0)

# rs2==x3, imm_val == 128, rs2_val == 137438953472
# opcode:c.swsp; op1:x2; op2:x3; op2val:0x0000002000000000; immval:128
TEST_STORE(x10,x16,0,x2,x3,0x0000002000000000,128,80,c.swsp,0)

# rs2==x18, imm_val == 248, rs2_val == -549755813889
# opcode:c.swsp; op1:x2; op2:x18; op2val:0xffffff7fffffffff; immval:248
TEST_STORE(x10,x16,0,x2,x18,0xffffff7fffffffff,248,88,c.swsp,0)

# rs2==x25, imm_val == 244, rs2_val == 512
# opcode:c.swsp; op1:x2; op2:x25; op2val:0x0000000000000200; immval:244
TEST_STORE(x10,x16,0,x2,x25,0x0000000000000200,244,96,c.swsp,0)

# rs2==x31, imm_val == 236, 
# opcode:c.swsp; op1:x2; op2:x31; op2val:0x0000000000000003; immval:236
TEST_STORE(x10,x16,0,x2,x31,0x0000000000000003,236,104,c.swsp,0)

# rs2==x26, imm_val == 188, 
# opcode:c.swsp; op1:x2; op2:x26; op2val:0xffffff7fffffffff; immval:188
TEST_STORE(x10,x16,0,x2,x26,0xffffff7fffffffff,188,112,c.swsp,0)

# rs2==x8, imm_val == 124, rs2_val == 67108864
# opcode:c.swsp; op1:x2; op2:x8; op2val:0x0000000004000000; immval:124
TEST_STORE(x10,x16,0,x2,x8,0x0000000004000000,124,120,c.swsp,0)

# rs2==x14, imm_val == 84, rs2_val == 9007199254740992
# opcode:c.swsp; op1:x2; op2:x14; op2val:0x0020000000000000; immval:84
TEST_STORE(x10,x16,0,x2,x14,0x0020000000000000,84,128,c.swsp,0)

# rs2==x19, imm_val == 168, rs2_val == -268435457
# opcode:c.swsp; op1:x2; op2:x19; op2val:0xffffffffefffffff; immval:168
TEST_STORE(x10,x16,0,x2,x19,0xffffffffefffffff,168,136,c.swsp,0)

# rs2==x27, rs2_val == 2, 
# opcode:c.swsp; op1:x2; op2:x27; op2val:0x0000000000000002; immval:32
TEST_STORE(x10,x16,0,x2,x27,0x0000000000000002,32,144,c.swsp,0)

# rs2==x5, rs2_val == 4, 
# opcode:c.swsp; op1:x2; op2:x5; op2val:0x0000000000000004; immval:64
TEST_STORE(x10,x16,0,x2,x5,0x0000000000000004,64,152,c.swsp,0)

# rs2==x0, rs2_val == 8, 
# opcode:c.swsp; op1:x2; op2:x0; op2val:0x0000000000000008; immval:236
TEST_STORE(x10,x16,0,x2,x0,0x0000000000000008,236,160,c.swsp,0)

# rs2==x1, rs2_val == 16, 
# opcode:c.swsp; op1:x2; op2:x1; op2val:0x0000000000000010; immval:76
TEST_STORE(x10,x16,0,x2,x1,0x0000000000000010,76,168,c.swsp,0)

# rs2==x6, rs2_val == 32, 
# opcode:c.swsp; op1:x2; op2:x6; op2val:0x0000000000000020; immval:128
TEST_STORE(x10,x16,0,x2,x6,0x0000000000000020,128,176,c.swsp,0)

# rs2==x4, rs2_val == 64, 
# opcode:c.swsp; op1:x2; op2:x4; op2val:0x0000000000000040; immval:48
TEST_STORE(x10,x16,0,x2,x4,0x0000000000000040,48,184,c.swsp,0)

# rs2==x23, rs2_val == 128, 
# opcode:c.swsp; op1:x2; op2:x23; op2val:0x0000000000000080; immval:244
TEST_STORE(x10,x16,0,x2,x23,0x0000000000000080,244,192,c.swsp,0)

# rs2==x17, rs2_val == 256, 
# opcode:c.swsp; op1:x2; op2:x17; op2val:0x0000000000000100; immval:44
TEST_STORE(x10,x16,0,x2,x17,0x0000000000000100,44,200,c.swsp,0)

# rs2==x30, rs2_val == 1024, 
# opcode:c.swsp; op1:x2; op2:x30; op2val:0x0000000000000400; immval:24
TEST_STORE(x10,x16,0,x2,x30,0x0000000000000400,24,208,c.swsp,0)

# rs2==x7, rs2_val == 2048, 
# opcode:c.swsp; op1:x2; op2:x7; op2val:0x0000000000000800; immval:128
TEST_STORE(x10,x16,0,x2,x7,0x0000000000000800,128,216,c.swsp,0)

# rs2==x21, rs2_val == 4096, 
# opcode:c.swsp; op1:x2; op2:x21; op2val:0x0000000000001000; immval:244
TEST_STORE(x10,x3,0,x2,x21,0x0000000000001000,244,224,c.swsp,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs2==x20, rs2_val == 8192, 
# opcode:c.swsp; op1:x2; op2:x20; op2val:0x0000000000002000; immval:44
TEST_STORE(x1,x3,0,x2,x20,0x0000000000002000,44,0,c.swsp,0)

# rs2==x16, rs2_val == 32768, 
# opcode:c.swsp; op1:x2; op2:x16; op2val:0x0000000000008000; immval:8
TEST_STORE(x1,x3,0,x2,x16,0x0000000000008000,8,8,c.swsp,0)

# rs2==x10, rs2_val == 65536, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000010000; immval:4
TEST_STORE(x1,x3,0,x2,x10,0x0000000000010000,4,16,c.swsp,0)

# rs2_val == 131072, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000020000; immval:48
TEST_STORE(x1,x3,0,x2,x10,0x0000000000020000,48,24,c.swsp,0)

# rs2_val == 262144, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000040000; immval:20
TEST_STORE(x1,x3,0,x2,x10,0x0000000000040000,20,32,c.swsp,0)

# rs2_val == 524288, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000080000; immval:236
TEST_STORE(x1,x3,0,x2,x10,0x0000000000080000,236,40,c.swsp,0)

# rs2_val == 1048576, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000100000; immval:76
TEST_STORE(x1,x3,0,x2,x10,0x0000000000100000,76,48,c.swsp,0)

# rs2_val == 4194304, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000400000; immval:48
TEST_STORE(x1,x3,0,x2,x10,0x0000000000400000,48,56,c.swsp,0)

# rs2_val == 8388608, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000800000; immval:24
TEST_STORE(x1,x3,0,x2,x10,0x0000000000800000,24,64,c.swsp,0)

# rs2_val == 16777216, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000001000000; immval:84
TEST_STORE(x1,x3,0,x2,x10,0x0000000001000000,84,72,c.swsp,0)

# rs2_val == 134217728, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000008000000; immval:60
TEST_STORE(x1,x3,0,x2,x10,0x0000000008000000,60,80,c.swsp,0)

# rs2_val == 268435456, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000010000000; immval:36
TEST_STORE(x1,x3,0,x2,x10,0x0000000010000000,36,88,c.swsp,0)

# rs2_val == 536870912, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000020000000; immval:220
TEST_STORE(x1,x3,0,x2,x10,0x0000000020000000,220,96,c.swsp,0)

# rs2_val == 1073741824, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000040000000; immval:248
TEST_STORE(x1,x3,0,x2,x10,0x0000000040000000,248,104,c.swsp,0)

# rs2_val == 2147483648, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000080000000; immval:8
TEST_STORE(x1,x3,0,x2,x10,0x0000000080000000,8,112,c.swsp,0)

# rs2_val == 4294967296, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000100000000; immval:36
TEST_STORE(x1,x3,0,x2,x10,0x0000000100000000,36,120,c.swsp,0)

# rs2_val == 8589934592, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000200000000; immval:124
TEST_STORE(x1,x3,0,x2,x10,0x0000000200000000,124,128,c.swsp,0)

# rs2_val == 17179869184, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000400000000; immval:60
TEST_STORE(x1,x3,0,x2,x10,0x0000000400000000,60,136,c.swsp,0)

# rs2_val == 34359738368, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000800000000; immval:4
TEST_STORE(x1,x3,0,x2,x10,0x0000000800000000,4,144,c.swsp,0)

# rs2_val == 68719476736, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000001000000000; immval:4
TEST_STORE(x1,x3,0,x2,x10,0x0000001000000000,4,152,c.swsp,0)

# rs2_val == 274877906944, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000004000000000; immval:52
TEST_STORE(x1,x3,0,x2,x10,0x0000004000000000,52,160,c.swsp,0)

# rs2_val == 549755813888, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000008000000000; immval:20
TEST_STORE(x1,x3,0,x2,x10,0x0000008000000000,20,168,c.swsp,0)

# rs2_val == 1099511627776, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000010000000000; immval:4
TEST_STORE(x1,x3,0,x2,x10,0x0000010000000000,4,176,c.swsp,0)

# rs2_val == 2199023255552, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000020000000000; immval:248
TEST_STORE(x1,x3,0,x2,x10,0x0000020000000000,248,184,c.swsp,0)

# rs2_val == 4398046511104, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000040000000000; immval:252
TEST_STORE(x1,x3,0,x2,x10,0x0000040000000000,252,192,c.swsp,0)

# rs2_val == 8796093022208, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000080000000000; immval:72
TEST_STORE(x1,x3,0,x2,x10,0x0000080000000000,72,200,c.swsp,0)

# rs2_val == 17592186044416, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000100000000000; immval:60
TEST_STORE(x1,x3,0,x2,x10,0x0000100000000000,60,208,c.swsp,0)

# rs2_val == 35184372088832, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000200000000000; immval:52
TEST_STORE(x1,x3,0,x2,x10,0x0000200000000000,52,216,c.swsp,0)

# rs2_val == 70368744177664, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000400000000000; immval:44
TEST_STORE(x1,x3,0,x2,x10,0x0000400000000000,44,224,c.swsp,0)

# rs2_val == 140737488355328, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000800000000000; immval:24
TEST_STORE(x1,x3,0,x2,x10,0x0000800000000000,24,232,c.swsp,0)

# rs2_val == 281474976710656, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0001000000000000; immval:68
TEST_STORE(x1,x3,0,x2,x10,0x0001000000000000,68,240,c.swsp,0)

# rs2_val == 562949953421312, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0002000000000000; immval:32
TEST_STORE(x1,x3,0,x2,x10,0x0002000000000000,32,248,c.swsp,0)

# rs2_val == 1125899906842624, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0004000000000000; immval:40
TEST_STORE(x1,x3,0,x2,x10,0x0004000000000000,40,256,c.swsp,0)

# rs2_val == 2251799813685248, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0008000000000000; immval:20
TEST_STORE(x1,x3,0,x2,x10,0x0008000000000000,20,264,c.swsp,0)

# rs2_val == 4503599627370496, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0010000000000000; immval:4
TEST_STORE(x1,x3,0,x2,x10,0x0010000000000000,4,272,c.swsp,0)

# rs2_val == 18014398509481984, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0040000000000000; immval:168
TEST_STORE(x1,x3,0,x2,x10,0x0040000000000000,168,280,c.swsp,0)

# rs2_val == 36028797018963968, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0080000000000000; immval:0
TEST_STORE(x1,x3,0,x2,x10,0x0080000000000000,0,288,c.swsp,0)

# rs2_val == 72057594037927936, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0100000000000000; immval:84
TEST_STORE(x1,x3,0,x2,x10,0x0100000000000000,84,296,c.swsp,0)

# rs2_val == 288230376151711744, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0400000000000000; immval:44
TEST_STORE(x1,x3,0,x2,x10,0x0400000000000000,44,304,c.swsp,0)

# rs2_val == 576460752303423488, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0800000000000000; immval:84
TEST_STORE(x1,x3,0,x2,x10,0x0800000000000000,84,312,c.swsp,0)

# rs2_val == 1152921504606846976, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x1000000000000000; immval:48
TEST_STORE(x1,x3,0,x2,x10,0x1000000000000000,48,320,c.swsp,0)

# rs2_val == -35184372088833, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffdfffffffffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xffffdfffffffffff,52,328,c.swsp,0)

# rs2_val == -70368744177665, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffbfffffffffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xffffbfffffffffff,52,336,c.swsp,0)

# rs2_val == -140737488355329, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffff7fffffffffff; immval:124
TEST_STORE(x1,x3,0,x2,x10,0xffff7fffffffffff,124,344,c.swsp,0)

# rs2_val == -281474976710657, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffeffffffffffff; immval:60
TEST_STORE(x1,x3,0,x2,x10,0xfffeffffffffffff,60,352,c.swsp,0)

# rs2_val == -562949953421313, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffdffffffffffff; immval:36
TEST_STORE(x1,x3,0,x2,x10,0xfffdffffffffffff,36,360,c.swsp,0)

# rs2_val == -1125899906842625, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffbffffffffffff; immval:244
TEST_STORE(x1,x3,0,x2,x10,0xfffbffffffffffff,244,368,c.swsp,0)

# rs2_val == -2251799813685249, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfff7ffffffffffff; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xfff7ffffffffffff,252,376,c.swsp,0)

# rs2_val == -4503599627370497, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffefffffffffffff; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xffefffffffffffff,252,384,c.swsp,0)

# rs2_val == -9007199254740993, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffdfffffffffffff; immval:72
TEST_STORE(x1,x3,0,x2,x10,0xffdfffffffffffff,72,392,c.swsp,0)

# rs2_val == -18014398509481985, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffbfffffffffffff; immval:248
TEST_STORE(x1,x3,0,x2,x10,0xffbfffffffffffff,248,400,c.swsp,0)

# rs2_val == -36028797018963969, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xff7fffffffffffff; immval:68
TEST_STORE(x1,x3,0,x2,x10,0xff7fffffffffffff,68,408,c.swsp,0)

# rs2_val == -72057594037927937, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfeffffffffffffff; immval:48
TEST_STORE(x1,x3,0,x2,x10,0xfeffffffffffffff,48,416,c.swsp,0)

# rs2_val == -144115188075855873, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfdffffffffffffff; immval:124
TEST_STORE(x1,x3,0,x2,x10,0xfdffffffffffffff,124,424,c.swsp,0)

# rs2_val == -288230376151711745, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfbffffffffffffff; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xfbffffffffffffff,252,432,c.swsp,0)

# rs2_val == -576460752303423489, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xf7ffffffffffffff; immval:168
TEST_STORE(x1,x3,0,x2,x10,0xf7ffffffffffffff,168,440,c.swsp,0)

# rs2_val == -1152921504606846977, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xefffffffffffffff; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xefffffffffffffff,44,448,c.swsp,0)

# rs2_val == -2305843009213693953, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xdfffffffffffffff; immval:40
TEST_STORE(x1,x3,0,x2,x10,0xdfffffffffffffff,40,456,c.swsp,0)

# rs2_val == -4611686018427387905, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xbfffffffffffffff; immval:36
TEST_STORE(x1,x3,0,x2,x10,0xbfffffffffffffff,36,464,c.swsp,0)

# rs2_val == 6148914691236517205, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x5555555555555555; immval:56
TEST_STORE(x1,x3,0,x2,x10,0x5555555555555555,56,472,c.swsp,0)

# rs2_val == -6148914691236517206, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xaaaaaaaaaaaaaaaa; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xaaaaaaaaaaaaaaaa,28,480,c.swsp,0)

# rs2_val == 2305843009213693952, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x2000000000000000; immval:84
TEST_STORE(x1,x3,0,x2,x10,0x2000000000000000,84,488,c.swsp,0)

# rs2_val == 4611686018427387904, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x4000000000000000; immval:84
TEST_STORE(x1,x3,0,x2,x10,0x4000000000000000,84,496,c.swsp,0)

# rs2_val == -2, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffffe; immval:188
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffe,188,504,c.swsp,0)

# rs2_val == -5, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffffb; immval:56
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffb,56,512,c.swsp,0)

# rs2_val == -9, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffff7; immval:124
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffff7,124,520,c.swsp,0)

# rs2_val == -17, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffffef; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffef,44,528,c.swsp,0)

# rs2_val == -33, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffffdf; immval:24
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffdf,24,536,c.swsp,0)

# rs2_val == -65, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffffbf; immval:84
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffbf,84,544,c.swsp,0)

# rs2_val == -129, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffff7f; immval:4
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffff7f,4,552,c.swsp,0)

# rs2_val == -257, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffeff; immval:20
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffeff,20,560,c.swsp,0)

# rs2_val == -513, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffdff; immval:76
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffdff,76,568,c.swsp,0)

# rs2_val == -1025, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffbff; immval:76
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffbff,76,576,c.swsp,0)

# rs2_val == -2049, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffff7ff; immval:128
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffff7ff,128,584,c.swsp,0)

# rs2_val == -4097, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffefff; immval:128
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffefff,128,592,c.swsp,0)

# rs2_val == -8193, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffdfff; immval:76
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffdfff,76,600,c.swsp,0)

# rs2_val == -16385, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffbfff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffbfff,0,608,c.swsp,0)

# rs2_val == -32769, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffff7fff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffff7fff,52,616,c.swsp,0)

# rs2_val == -65537, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffeffff; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffeffff,252,624,c.swsp,0)

# rs2_val == -131073, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffdffff; immval:56
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffdffff,56,632,c.swsp,0)

# rs2_val == -262145, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffbffff; immval:84
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffbffff,84,640,c.swsp,0)

# rs2_val == -524289, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffff7ffff; immval:56
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffff7ffff,56,648,c.swsp,0)

# rs2_val == -1048577, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffefffff; immval:68
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffefffff,68,656,c.swsp,0)

# rs2_val == -2097153, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffdfffff; immval:220
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffdfffff,220,664,c.swsp,0)

# rs2_val == -4194305, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffbfffff; immval:68
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffbfffff,68,672,c.swsp,0)

# rs2_val == -8388609, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffff7fffff; immval:4
TEST_STORE(x1,x3,0,x2,x10,0xffffffffff7fffff,4,680,c.swsp,0)

# rs2_val == -16777217, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffeffffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffeffffff,52,688,c.swsp,0)

# rs2_val == -33554433, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffdffffff; immval:248
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffdffffff,248,696,c.swsp,0)

# rs2_val == -67108865, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffbffffff; immval:220
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffbffffff,220,704,c.swsp,0)

# rs2_val == -134217729, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffff7ffffff; immval:40
TEST_STORE(x1,x3,0,x2,x10,0xfffffffff7ffffff,40,712,c.swsp,0)

# rs2_val == -536870913, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffdfffffff; immval:168
TEST_STORE(x1,x3,0,x2,x10,0xffffffffdfffffff,168,720,c.swsp,0)

# rs2_val == -1073741825, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffbfffffff; immval:64
TEST_STORE(x1,x3,0,x2,x10,0xffffffffbfffffff,64,728,c.swsp,0)

# rs2_val == -2147483649, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffff7fffffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xffffffff7fffffff,52,736,c.swsp,0)

# rs2_val == -4294967297, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffeffffffff; immval:124
TEST_STORE(x1,x3,0,x2,x10,0xfffffffeffffffff,124,744,c.swsp,0)

# rs2_val == -8589934593, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffdffffffff; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xfffffffdffffffff,28,752,c.swsp,0)

# rs2_val == -17179869185, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffbffffffff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xfffffffbffffffff,0,760,c.swsp,0)

# rs2_val == -34359738369, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffff7ffffffff; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xfffffff7ffffffff,44,768,c.swsp,0)

# rs2_val == -68719476737, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffefffffffff; immval:64
TEST_STORE(x1,x3,0,x2,x10,0xffffffefffffffff,64,776,c.swsp,0)

# rs2_val == -137438953473, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffdfffffffff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xffffffdfffffffff,0,784,c.swsp,0)

# rs2_val == -274877906945, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffbfffffffff; immval:128
TEST_STORE(x1,x3,0,x2,x10,0xffffffbfffffffff,128,792,c.swsp,0)

# rs2_val == -1099511627777, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffeffffffffff; immval:40
TEST_STORE(x1,x3,0,x2,x10,0xfffffeffffffffff,40,800,c.swsp,0)

# rs2_val == -2199023255553, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffdffffffffff; immval:24
TEST_STORE(x1,x3,0,x2,x10,0xfffffdffffffffff,24,808,c.swsp,0)

# rs2_val == -4398046511105, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffbffffffffff; immval:12
TEST_STORE(x1,x3,0,x2,x10,0xfffffbffffffffff,12,816,c.swsp,0)

# rs2_val == -8796093022209, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffff7ffffffffff; immval:84
TEST_STORE(x1,x3,0,x2,x10,0xfffff7ffffffffff,84,824,c.swsp,0)

# imm_val == 16, rs2_val == -17592186044417
# opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffefffffffffff; immval:16
TEST_STORE(x1,x3,0,x2,x10,0xffffefffffffffff,16,832,c.swsp,0)

# rs2_val == 8, 
# opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000000008; immval:236
TEST_STORE(x1,x3,0,x2,x10,0x0000000000000008,236,840,c.swsp,0)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 106*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
