
#This assembly file tests the c.sdsp instruction of the RISC-V C extension for the csdsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",csdsp)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs2==x21, imm_val > 0, rs2_val == -17592186044417
# opcode:c.sdsp; op1:x2; op2:x21; op2val:0xffffefffffffffff; immval:136
TEST_STORE(x3,x4,0,x2,x21,0xffffefffffffffff,136,0,c.sdsp,0)

# rs2==x10, imm_val == 0, rs2_val == 9007199254740992
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0020000000000000; immval:0
TEST_STORE(x3,x4,0,x2,x10,0x0020000000000000,0,8,c.sdsp,0)

# rs2==x29, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode:c.sdsp; op1:x2; op2:x29; op2val:0x8000000000000000; immval:144
TEST_STORE(x3,x4,0,x2,x29,0x8000000000000000,144,16,c.sdsp,0)

# rs2==x22, rs2_val == 0, imm_val == 128
# opcode:c.sdsp; op1:x2; op2:x22; op2val:0x0000000000000000; immval:128
TEST_STORE(x3,x4,0,x2,x22,0x0000000000000000,128,24,c.sdsp,0)

# rs2==x18, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode:c.sdsp; op1:x2; op2:x18; op2val:0x7fffffffffffffff; immval:72
TEST_STORE(x3,x4,0,x2,x18,0x7fffffffffffffff,72,32,c.sdsp,0)

# rs2==x15, rs2_val == 1, 
# opcode:c.sdsp; op1:x2; op2:x15; op2val:0x0000000000000001; immval:136
TEST_STORE(x3,x4,0,x2,x15,0x0000000000000001,136,40,c.sdsp,0)

# rs2==x30, imm_val == 8, rs2_val == -131073
# opcode:c.sdsp; op1:x2; op2:x30; op2val:0xfffffffffffdffff; immval:8
TEST_STORE(x3,x4,0,x2,x30,0xfffffffffffdffff,8,48,c.sdsp,0)

# rs2==x20, imm_val == 16, rs2_val == 8388608
# opcode:c.sdsp; op1:x2; op2:x20; op2val:0x0000000000800000; immval:16
TEST_STORE(x3,x4,0,x2,x20,0x0000000000800000,16,56,c.sdsp,0)

# rs2==x31, imm_val == 32, rs2_val == -1025
# opcode:c.sdsp; op1:x2; op2:x31; op2val:0xfffffffffffffbff; immval:32
TEST_STORE(x3,x4,0,x2,x31,0xfffffffffffffbff,32,64,c.sdsp,0)

# rs2==x12, imm_val == 64, rs2_val == -17
# opcode:c.sdsp; op1:x2; op2:x12; op2val:0xffffffffffffffef; immval:64
TEST_STORE(x3,x4,0,x2,x12,0xffffffffffffffef,64,72,c.sdsp,0)

# rs2==x0, imm_val == 256, rs2_val == -524289
# opcode:c.sdsp; op1:x2; op2:x0; op2val:0xfffffffffff7ffff; immval:256
TEST_STORE(x3,x4,0,x2,x0,0xfffffffffff7ffff,256,80,c.sdsp,0)

# rs2==x28, imm_val == 496, 
# opcode:c.sdsp; op1:x2; op2:x28; op2val:0x0000000000000006; immval:496
TEST_STORE(x3,x4,0,x2,x28,0x0000000000000006,496,88,c.sdsp,0)

# rs2==x8, imm_val == 488, rs2_val == 18014398509481984
# opcode:c.sdsp; op1:x2; op2:x8; op2val:0x0040000000000000; immval:488
TEST_STORE(x3,x4,0,x2,x8,0x0040000000000000,488,96,c.sdsp,0)

# rs2==x11, imm_val == 472, rs2_val == 36028797018963968
# opcode:c.sdsp; op1:x2; op2:x11; op2val:0x0080000000000000; immval:472
TEST_STORE(x3,x4,0,x2,x11,0x0080000000000000,472,104,c.sdsp,0)

# rs2==x25, imm_val == 440, rs2_val == 8589934592
# opcode:c.sdsp; op1:x2; op2:x25; op2val:0x0000000200000000; immval:440
TEST_STORE(x3,x4,0,x2,x25,0x0000000200000000,440,112,c.sdsp,0)

# rs2==x17, imm_val == 376, rs2_val == -262145
# opcode:c.sdsp; op1:x2; op2:x17; op2val:0xfffffffffffbffff; immval:376
TEST_STORE(x3,x4,0,x2,x17,0xfffffffffffbffff,376,120,c.sdsp,0)

# rs2==x16, imm_val == 248, rs2_val == -33
# opcode:c.sdsp; op1:x2; op2:x16; op2val:0xffffffffffffffdf; immval:248
TEST_STORE(x3,x4,0,x2,x16,0xffffffffffffffdf,248,128,c.sdsp,0)

# rs2==x26, imm_val == 168, rs2_val == 1024
# opcode:c.sdsp; op1:x2; op2:x26; op2val:0x0000000000000400; immval:168
TEST_STORE(x3,x4,0,x2,x26,0x0000000000000400,168,136,c.sdsp,0)

# rs2==x5, imm_val == 336, 
# opcode:c.sdsp; op1:x2; op2:x5; op2val:0x0000000000000003; immval:336
TEST_STORE(x3,x4,0,x2,x5,0x0000000000000003,336,144,c.sdsp,0)

# rs2==x19, rs2_val == 2, 
# opcode:c.sdsp; op1:x2; op2:x19; op2val:0x0000000000000002; immval:128
TEST_STORE(x3,x4,0,x2,x19,0x0000000000000002,128,152,c.sdsp,0)

# rs2==x6, rs2_val == 4, 
# opcode:c.sdsp; op1:x2; op2:x6; op2val:0x0000000000000004; immval:128
TEST_STORE(x3,x4,0,x2,x6,0x0000000000000004,128,160,c.sdsp,0)

# rs2==x13, rs2_val == 8, 
# opcode:c.sdsp; op1:x2; op2:x13; op2val:0x0000000000000008; immval:128
TEST_STORE(x3,x4,0,x2,x13,0x0000000000000008,128,168,c.sdsp,0)

# rs2==x24, rs2_val == 16, 
# opcode:c.sdsp; op1:x2; op2:x24; op2val:0x0000000000000010; immval:96
TEST_STORE(x3,x4,0,x2,x24,0x0000000000000010,96,176,c.sdsp,0)

# rs2==x7, rs2_val == 32, 
# opcode:c.sdsp; op1:x2; op2:x7; op2val:0x0000000000000020; immval:0
TEST_STORE(x3,x4,0,x2,x7,0x0000000000000020,0,184,c.sdsp,0)

# rs2==x23, rs2_val == 64, 
# opcode:c.sdsp; op1:x2; op2:x23; op2val:0x0000000000000040; immval:168
TEST_STORE(x3,x4,0,x2,x23,0x0000000000000040,168,192,c.sdsp,0)

# rs2==x1, rs2_val == 128, 
# opcode:c.sdsp; op1:x2; op2:x1; op2val:0x0000000000000080; immval:128
TEST_STORE(x3,x4,0,x2,x1,0x0000000000000080,128,200,c.sdsp,0)

# rs2==x27, rs2_val == 256, 
# opcode:c.sdsp; op1:x2; op2:x27; op2val:0x0000000000000100; immval:72
TEST_STORE(x3,x4,0,x2,x27,0x0000000000000100,72,208,c.sdsp,0)

# rs2==x4, rs2_val == 512, 
# opcode:c.sdsp; op1:x2; op2:x4; op2val:0x0000000000000200; immval:168
TEST_STORE(x3,x5,0,x2,x4,0x0000000000000200,168,216,c.sdsp,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs2==x2, rs2_val == 2048, 
# opcode:c.sdsp; op1:x2; op2:x2; op2val:0x0000000000000800; immval:472
TEST_STORE(x1,x5,0,x2,x2,0x0000000000000800,472,0,c.sdsp,0)

# rs2==x14, rs2_val == 4096, 
# opcode:c.sdsp; op1:x2; op2:x14; op2val:0x0000000000001000; immval:120
TEST_STORE(x1,x5,0,x2,x14,0x0000000000001000,120,8,c.sdsp,0)

# rs2==x3, rs2_val == 8192, 
# opcode:c.sdsp; op1:x2; op2:x3; op2val:0x0000000000002000; immval:168
TEST_STORE(x1,x5,0,x2,x3,0x0000000000002000,168,16,c.sdsp,0)

# rs2==x9, rs2_val == 16384, 
# opcode:c.sdsp; op1:x2; op2:x9; op2val:0x0000000000004000; immval:48
TEST_STORE(x1,x5,0,x2,x9,0x0000000000004000,48,24,c.sdsp,0)

# rs2_val == 32768, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000008000; immval:48
TEST_STORE(x1,x5,0,x2,x10,0x0000000000008000,48,32,c.sdsp,0)

# rs2_val == 65536, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000010000; immval:112
TEST_STORE(x1,x5,0,x2,x10,0x0000000000010000,112,40,c.sdsp,0)

# rs2_val == 131072, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000020000; immval:104
TEST_STORE(x1,x5,0,x2,x10,0x0000000000020000,104,48,c.sdsp,0)

# rs2_val == 262144, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000040000; immval:472
TEST_STORE(x1,x5,0,x2,x10,0x0000000000040000,472,56,c.sdsp,0)

# rs2_val == 524288, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000080000; immval:504
TEST_STORE(x1,x5,0,x2,x10,0x0000000000080000,504,64,c.sdsp,0)

# rs2_val == 1048576, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000100000; immval:376
TEST_STORE(x1,x5,0,x2,x10,0x0000000000100000,376,72,c.sdsp,0)

# rs2_val == 2097152, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000200000; immval:440
TEST_STORE(x1,x5,0,x2,x10,0x0000000000200000,440,80,c.sdsp,0)

# rs2_val == 4194304, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000400000; immval:256
TEST_STORE(x1,x5,0,x2,x10,0x0000000000400000,256,88,c.sdsp,0)

# rs2_val == 16777216, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000001000000; immval:104
TEST_STORE(x1,x5,0,x2,x10,0x0000000001000000,104,96,c.sdsp,0)

# rs2_val == 33554432, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000002000000; immval:112
TEST_STORE(x1,x5,0,x2,x10,0x0000000002000000,112,104,c.sdsp,0)

# rs2_val == 67108864, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000004000000; immval:40
TEST_STORE(x1,x5,0,x2,x10,0x0000000004000000,40,112,c.sdsp,0)

# rs2_val == 134217728, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000008000000; immval:104
TEST_STORE(x1,x5,0,x2,x10,0x0000000008000000,104,120,c.sdsp,0)

# rs2_val == 268435456, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000010000000; immval:472
TEST_STORE(x1,x5,0,x2,x10,0x0000000010000000,472,128,c.sdsp,0)

# rs2_val == 536870912, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000020000000; immval:0
TEST_STORE(x1,x5,0,x2,x10,0x0000000020000000,0,136,c.sdsp,0)

# rs2_val == 1073741824, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000040000000; immval:248
TEST_STORE(x1,x5,0,x2,x10,0x0000000040000000,248,144,c.sdsp,0)

# rs2_val == 2147483648, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000080000000; immval:136
TEST_STORE(x1,x5,0,x2,x10,0x0000000080000000,136,152,c.sdsp,0)

# rs2_val == 4294967296, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000100000000; immval:8
TEST_STORE(x1,x5,0,x2,x10,0x0000000100000000,8,160,c.sdsp,0)

# rs2_val == 17179869184, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000400000000; immval:152
TEST_STORE(x1,x5,0,x2,x10,0x0000000400000000,152,168,c.sdsp,0)

# rs2_val == 34359738368, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000800000000; immval:64
TEST_STORE(x1,x5,0,x2,x10,0x0000000800000000,64,176,c.sdsp,0)

# rs2_val == 68719476736, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000001000000000; immval:80
TEST_STORE(x1,x5,0,x2,x10,0x0000001000000000,80,184,c.sdsp,0)

# rs2_val == 137438953472, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000002000000000; immval:376
TEST_STORE(x1,x5,0,x2,x10,0x0000002000000000,376,192,c.sdsp,0)

# rs2_val == 274877906944, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000004000000000; immval:152
TEST_STORE(x1,x5,0,x2,x10,0x0000004000000000,152,200,c.sdsp,0)

# rs2_val == 549755813888, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000008000000000; immval:8
TEST_STORE(x1,x5,0,x2,x10,0x0000008000000000,8,208,c.sdsp,0)

# rs2_val == 1099511627776, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000010000000000; immval:8
TEST_STORE(x1,x5,0,x2,x10,0x0000010000000000,8,216,c.sdsp,0)

# rs2_val == 2199023255552, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000020000000000; immval:96
TEST_STORE(x1,x5,0,x2,x10,0x0000020000000000,96,224,c.sdsp,0)

# rs2_val == 4398046511104, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000040000000000; immval:248
TEST_STORE(x1,x5,0,x2,x10,0x0000040000000000,248,232,c.sdsp,0)

# rs2_val == 8796093022208, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000080000000000; immval:152
TEST_STORE(x1,x5,0,x2,x10,0x0000080000000000,152,240,c.sdsp,0)

# rs2_val == 17592186044416, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000100000000000; immval:336
TEST_STORE(x1,x5,0,x2,x10,0x0000100000000000,336,248,c.sdsp,0)

# rs2_val == 35184372088832, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000200000000000; immval:64
TEST_STORE(x1,x5,0,x2,x10,0x0000200000000000,64,256,c.sdsp,0)

# rs2_val == 70368744177664, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000400000000000; immval:24
TEST_STORE(x1,x5,0,x2,x10,0x0000400000000000,24,264,c.sdsp,0)

# rs2_val == 140737488355328, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000800000000000; immval:488
TEST_STORE(x1,x5,0,x2,x10,0x0000800000000000,488,272,c.sdsp,0)

# rs2_val == 281474976710656, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0001000000000000; immval:248
TEST_STORE(x1,x5,0,x2,x10,0x0001000000000000,248,280,c.sdsp,0)

# rs2_val == 562949953421312, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0002000000000000; immval:128
TEST_STORE(x1,x5,0,x2,x10,0x0002000000000000,128,288,c.sdsp,0)

# rs2_val == 1125899906842624, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0004000000000000; immval:256
TEST_STORE(x1,x5,0,x2,x10,0x0004000000000000,256,296,c.sdsp,0)

# rs2_val == 2251799813685248, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0008000000000000; immval:40
TEST_STORE(x1,x5,0,x2,x10,0x0008000000000000,40,304,c.sdsp,0)

# rs2_val == 4503599627370496, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0010000000000000; immval:8
TEST_STORE(x1,x5,0,x2,x10,0x0010000000000000,8,312,c.sdsp,0)

# rs2_val == 72057594037927936, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0100000000000000; immval:504
TEST_STORE(x1,x5,0,x2,x10,0x0100000000000000,504,320,c.sdsp,0)

# rs2_val == 144115188075855872, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0200000000000000; immval:96
TEST_STORE(x1,x5,0,x2,x10,0x0200000000000000,96,328,c.sdsp,0)

# rs2_val == -35184372088833, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffdfffffffffff; immval:32
TEST_STORE(x1,x5,0,x2,x10,0xffffdfffffffffff,32,336,c.sdsp,0)

# rs2_val == -70368744177665, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffbfffffffffff; immval:56
TEST_STORE(x1,x5,0,x2,x10,0xffffbfffffffffff,56,344,c.sdsp,0)

# rs2_val == -140737488355329, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffff7fffffffffff; immval:104
TEST_STORE(x1,x5,0,x2,x10,0xffff7fffffffffff,104,352,c.sdsp,0)

# rs2_val == -281474976710657, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffeffffffffffff; immval:88
TEST_STORE(x1,x5,0,x2,x10,0xfffeffffffffffff,88,360,c.sdsp,0)

# rs2_val == -562949953421313, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffdffffffffffff; immval:472
TEST_STORE(x1,x5,0,x2,x10,0xfffdffffffffffff,472,368,c.sdsp,0)

# rs2_val == -1125899906842625, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffbffffffffffff; immval:248
TEST_STORE(x1,x5,0,x2,x10,0xfffbffffffffffff,248,376,c.sdsp,0)

# rs2_val == -2251799813685249, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfff7ffffffffffff; immval:112
TEST_STORE(x1,x5,0,x2,x10,0xfff7ffffffffffff,112,384,c.sdsp,0)

# rs2_val == -4503599627370497, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffefffffffffffff; immval:0
TEST_STORE(x1,x5,0,x2,x10,0xffefffffffffffff,0,392,c.sdsp,0)

# rs2_val == -9007199254740993, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffdfffffffffffff; immval:152
TEST_STORE(x1,x5,0,x2,x10,0xffdfffffffffffff,152,400,c.sdsp,0)

# rs2_val == -18014398509481985, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffbfffffffffffff; immval:64
TEST_STORE(x1,x5,0,x2,x10,0xffbfffffffffffff,64,408,c.sdsp,0)

# rs2_val == -36028797018963969, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xff7fffffffffffff; immval:120
TEST_STORE(x1,x5,0,x2,x10,0xff7fffffffffffff,120,416,c.sdsp,0)

# rs2_val == -72057594037927937, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfeffffffffffffff; immval:40
TEST_STORE(x1,x5,0,x2,x10,0xfeffffffffffffff,40,424,c.sdsp,0)

# rs2_val == -144115188075855873, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfdffffffffffffff; immval:376
TEST_STORE(x1,x5,0,x2,x10,0xfdffffffffffffff,376,432,c.sdsp,0)

# rs2_val == -288230376151711745, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfbffffffffffffff; immval:112
TEST_STORE(x1,x5,0,x2,x10,0xfbffffffffffffff,112,440,c.sdsp,0)

# rs2_val == -576460752303423489, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xf7ffffffffffffff; immval:88
TEST_STORE(x1,x5,0,x2,x10,0xf7ffffffffffffff,88,448,c.sdsp,0)

# rs2_val == -1152921504606846977, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xefffffffffffffff; immval:48
TEST_STORE(x1,x5,0,x2,x10,0xefffffffffffffff,48,456,c.sdsp,0)

# rs2_val == -2305843009213693953, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xdfffffffffffffff; immval:128
TEST_STORE(x1,x5,0,x2,x10,0xdfffffffffffffff,128,464,c.sdsp,0)

# rs2_val == -4611686018427387905, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xbfffffffffffffff; immval:376
TEST_STORE(x1,x5,0,x2,x10,0xbfffffffffffffff,376,472,c.sdsp,0)

# rs2_val == 6148914691236517205, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x5555555555555555; immval:472
TEST_STORE(x1,x5,0,x2,x10,0x5555555555555555,472,480,c.sdsp,0)

# rs2_val == -6148914691236517206, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xaaaaaaaaaaaaaaaa; immval:104
TEST_STORE(x1,x5,0,x2,x10,0xaaaaaaaaaaaaaaaa,104,488,c.sdsp,0)

# rs2_val == 288230376151711744, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0400000000000000; immval:48
TEST_STORE(x1,x5,0,x2,x10,0x0400000000000000,48,496,c.sdsp,0)

# rs2_val == 576460752303423488, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0800000000000000; immval:56
TEST_STORE(x1,x5,0,x2,x10,0x0800000000000000,56,504,c.sdsp,0)

# rs2_val == 1152921504606846976, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x1000000000000000; immval:40
TEST_STORE(x1,x5,0,x2,x10,0x1000000000000000,40,512,c.sdsp,0)

# rs2_val == 2305843009213693952, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x2000000000000000; immval:32
TEST_STORE(x1,x5,0,x2,x10,0x2000000000000000,32,520,c.sdsp,0)

# rs2_val == 4611686018427387904, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x4000000000000000; immval:88
TEST_STORE(x1,x5,0,x2,x10,0x4000000000000000,88,528,c.sdsp,0)

# rs2_val == -2, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffffe; immval:440
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffffffffe,440,536,c.sdsp,0)

# rs2_val == -3, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffffd; immval:472
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffffffffd,472,544,c.sdsp,0)

# rs2_val == -5, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffffb; immval:376
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffffffffb,376,552,c.sdsp,0)

# rs2_val == -9, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffff7; immval:0
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffffffff7,0,560,c.sdsp,0)

# rs2_val == -65, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffffbf; immval:104
TEST_STORE(x1,x5,0,x2,x10,0xffffffffffffffbf,104,568,c.sdsp,0)

# rs2_val == -129, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffff7f; immval:104
TEST_STORE(x1,x5,0,x2,x10,0xffffffffffffff7f,104,576,c.sdsp,0)

# rs2_val == -257, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffeff; immval:336
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffffffeff,336,584,c.sdsp,0)

# rs2_val == -513, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffdff; immval:120
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffffffdff,120,592,c.sdsp,0)

# rs2_val == -2049, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffff7ff; immval:376
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffffff7ff,376,600,c.sdsp,0)

# rs2_val == -4097, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffefff; immval:96
TEST_STORE(x1,x5,0,x2,x10,0xffffffffffffefff,96,608,c.sdsp,0)

# rs2_val == -8193, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffdfff; immval:336
TEST_STORE(x1,x5,0,x2,x10,0xffffffffffffdfff,336,616,c.sdsp,0)

# rs2_val == -16385, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffbfff; immval:336
TEST_STORE(x1,x5,0,x2,x10,0xffffffffffffbfff,336,624,c.sdsp,0)

# rs2_val == -32769, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffff7fff; immval:504
TEST_STORE(x1,x5,0,x2,x10,0xffffffffffff7fff,504,632,c.sdsp,0)

# rs2_val == -65537, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffeffff; immval:168
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffffeffff,168,640,c.sdsp,0)

# rs2_val == -1048577, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffefffff; immval:16
TEST_STORE(x1,x5,0,x2,x10,0xffffffffffefffff,16,648,c.sdsp,0)

# rs2_val == -2097153, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffdfffff; immval:40
TEST_STORE(x1,x5,0,x2,x10,0xffffffffffdfffff,40,656,c.sdsp,0)

# rs2_val == -4194305, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffbfffff; immval:0
TEST_STORE(x1,x5,0,x2,x10,0xffffffffffbfffff,0,664,c.sdsp,0)

# rs2_val == -8388609, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffff7fffff; immval:56
TEST_STORE(x1,x5,0,x2,x10,0xffffffffff7fffff,56,672,c.sdsp,0)

# rs2_val == -16777217, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffeffffff; immval:504
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffeffffff,504,680,c.sdsp,0)

# rs2_val == -33554433, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffdffffff; immval:56
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffdffffff,56,688,c.sdsp,0)

# rs2_val == -67108865, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffbffffff; immval:96
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffbffffff,96,696,c.sdsp,0)

# rs2_val == -134217729, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffff7ffffff; immval:0
TEST_STORE(x1,x5,0,x2,x10,0xfffffffff7ffffff,0,704,c.sdsp,0)

# rs2_val == -268435457, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffefffffff; immval:168
TEST_STORE(x1,x5,0,x2,x10,0xffffffffefffffff,168,712,c.sdsp,0)

# rs2_val == -536870913, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffdfffffff; immval:120
TEST_STORE(x1,x5,0,x2,x10,0xffffffffdfffffff,120,720,c.sdsp,0)

# rs2_val == -1073741825, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffbfffffff; immval:0
TEST_STORE(x1,x5,0,x2,x10,0xffffffffbfffffff,0,728,c.sdsp,0)

# rs2_val == -2147483649, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffff7fffffff; immval:88
TEST_STORE(x1,x5,0,x2,x10,0xffffffff7fffffff,88,736,c.sdsp,0)

# rs2_val == -4294967297, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffeffffffff; immval:168
TEST_STORE(x1,x5,0,x2,x10,0xfffffffeffffffff,168,744,c.sdsp,0)

# rs2_val == -8589934593, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffdffffffff; immval:136
TEST_STORE(x1,x5,0,x2,x10,0xfffffffdffffffff,136,752,c.sdsp,0)

# rs2_val == -17179869185, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffbffffffff; immval:496
TEST_STORE(x1,x5,0,x2,x10,0xfffffffbffffffff,496,760,c.sdsp,0)

# rs2_val == -34359738369, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffff7ffffffff; immval:56
TEST_STORE(x1,x5,0,x2,x10,0xfffffff7ffffffff,56,768,c.sdsp,0)

# rs2_val == -68719476737, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffefffffffff; immval:24
TEST_STORE(x1,x5,0,x2,x10,0xffffffefffffffff,24,776,c.sdsp,0)

# rs2_val == -137438953473, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffdfffffffff; immval:152
TEST_STORE(x1,x5,0,x2,x10,0xffffffdfffffffff,152,784,c.sdsp,0)

# rs2_val == -274877906945, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffbfffffffff; immval:16
TEST_STORE(x1,x5,0,x2,x10,0xffffffbfffffffff,16,792,c.sdsp,0)

# rs2_val == -549755813889, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffff7fffffffff; immval:248
TEST_STORE(x1,x5,0,x2,x10,0xffffff7fffffffff,248,800,c.sdsp,0)

# rs2_val == -1099511627777, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffeffffffffff; immval:80
TEST_STORE(x1,x5,0,x2,x10,0xfffffeffffffffff,80,808,c.sdsp,0)

# rs2_val == -2199023255553, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffdffffffffff; immval:168
TEST_STORE(x1,x5,0,x2,x10,0xfffffdffffffffff,168,816,c.sdsp,0)

# rs2_val == -4398046511105, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffbffffffffff; immval:48
TEST_STORE(x1,x5,0,x2,x10,0xfffffbffffffffff,48,824,c.sdsp,0)

# rs2_val == -8796093022209, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffff7ffffffffff; immval:48
TEST_STORE(x1,x5,0,x2,x10,0xfffff7ffffffffff,48,832,c.sdsp,0)

# imm_val == 256, rs2_val == -524289
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffff7ffff; immval:256
TEST_STORE(x1,x5,0,x2,x10,0xfffffffffff7ffff,256,840,c.sdsp,0)

# rs2_val == 2048, 
# opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000000800; immval:472
TEST_STORE(x1,x5,0,x2,x10,0x0000000000000800,472,848,c.sdsp,0)
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
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 107*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
