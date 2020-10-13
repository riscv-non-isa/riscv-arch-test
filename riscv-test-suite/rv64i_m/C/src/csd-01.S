
#This assembly file tests the c.sd instruction of the RISC-V C extension for the csd covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",csd)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rs2, rs1==x9, rs2==x14, imm_val > 0, imm_val == 128, rs2_val == -144115188075855873
# opcode:c.sd; op1:x9; op2:x14; op2val:0xfdffffffffffffff; immval:128
TEST_STORE(x1,x2,0,x9,x14,0xfdffffffffffffff,128,0,c.sd,0)

# rs1==x14, rs2==x10, imm_val == 0, rs2_val == -33
# opcode:c.sd; op1:x14; op2:x10; op2val:0xffffffffffffffdf; immval:0
TEST_STORE(x1,x2,0,x14,x10,0xffffffffffffffdf,0,8,c.sd,0)

# rs1==x12, rs2==x15, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode:c.sd; op1:x12; op2:x15; op2val:0x8000000000000000; immval:96
TEST_STORE(x1,x2,0,x12,x15,0x8000000000000000,96,16,c.sd,0)

# rs1==x8, rs2==x12, rs2_val == 0, 
# opcode:c.sd; op1:x8; op2:x12; op2val:0x0000000000000000; immval:48
TEST_STORE(x1,x2,0,x8,x12,0x0000000000000000,48,24,c.sd,0)

# rs1==x11, rs2==x9, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807, imm_val == 80
# opcode:c.sd; op1:x11; op2:x9; op2val:0x7fffffffffffffff; immval:80
TEST_STORE(x1,x2,0,x11,x9,0x7fffffffffffffff,80,32,c.sd,0)

# rs1==x13, rs2==x8, rs2_val == 1, imm_val == 240
# opcode:c.sd; op1:x13; op2:x8; op2val:0x0000000000000001; immval:240
TEST_STORE(x1,x2,0,x13,x8,0x0000000000000001,240,40,c.sd,0)

# rs1==x15, rs2==x13, imm_val == 8, rs2_val == -4194305
# opcode:c.sd; op1:x15; op2:x13; op2val:0xffffffffffbfffff; immval:8
TEST_STORE(x1,x2,0,x15,x13,0xffffffffffbfffff,8,48,c.sd,0)

# rs1==x10, rs2==x11, imm_val == 16, rs2_val == 6148914691236517205
# opcode:c.sd; op1:x10; op2:x11; op2val:0x5555555555555555; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,16,56,c.sd,0)

# imm_val == 32, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x8000000000000000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x8000000000000000,32,64,c.sd,0)

# imm_val == 64, rs2_val == 536870912
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000020000000; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,64,72,c.sd,0)

# imm_val == 232, rs2_val == -2147483649
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:232
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,232,80,c.sd,0)

# imm_val == 216, rs2_val == 134217728
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000008000000; immval:216
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,216,88,c.sd,0)

# imm_val == 184, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:184
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,184,96,c.sd,0)

# imm_val == 120, rs2_val == -4294967297
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,120,104,c.sd,0)

# imm_val == 168, rs2_val == 140737488355328
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000800000000000; immval:168
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,168,112,c.sd,0)

# rs2_val == 2, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000002; immval:152
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000002,152,120,c.sd,0)

# rs2_val == 4, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000004; immval:96
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000004,96,128,c.sd,0)

# rs2_val == 8, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000008; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000008,32,136,c.sd,0)

# rs2_val == 16, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000010; immval:248
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000010,248,144,c.sd,0)

# rs2_val == 32, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000020; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000020,104,152,c.sd,0)

# rs2_val == 64, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000040; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000040,240,160,c.sd,0)

# rs2_val == 128, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000080; immval:168
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000080,168,168,c.sd,0)

# rs2_val == 256, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000100; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000100,64,176,c.sd,0)

# rs2_val == 512, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000200; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000200,240,184,c.sd,0)

# rs2_val == 1024, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000400; immval:56
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000400,56,192,c.sd,0)

# rs2_val == 2048, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000800; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000800,104,200,c.sd,0)

# rs2_val == 4096, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000001000; immval:88
TEST_STORE(x1,x2,0,x10,x11,0x0000000000001000,88,208,c.sd,0)

# rs2_val == 8192, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000002000; immval:168
TEST_STORE(x1,x2,0,x10,x11,0x0000000000002000,168,216,c.sd,0)

# rs2_val == 16384, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000004000; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0000000000004000,104,224,c.sd,0)

# rs2_val == 32768, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000008000; immval:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000000008000,0,232,c.sd,0)

# rs2_val == 65536, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000010000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000010000,32,240,c.sd,0)

# rs2_val == 131072, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000020000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000020000,40,248,c.sd,0)

# rs2_val == 262144, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000040000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000040000,40,256,c.sd,0)

# rs2_val == 524288, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000080000; immval:216
TEST_STORE(x1,x2,0,x10,x11,0x0000000000080000,216,264,c.sd,0)

# rs2_val == 1048576, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000100000; immval:248
TEST_STORE(x1,x2,0,x10,x11,0x0000000000100000,248,272,c.sd,0)

# rs2_val == 2097152, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000200000; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x0000000000200000,72,280,c.sd,0)

# rs2_val == 4194304, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000400000; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,48,288,c.sd,0)

# rs2_val == 8388608, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000800000; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0000000000800000,104,296,c.sd,0)

# rs2_val == 16777216, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000001000000; immval:96
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,96,304,c.sd,0)

# rs2_val == 33554432, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000002000000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,240,312,c.sd,0)

# rs2_val == 67108864, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000004000000; immval:144
TEST_STORE(x1,x2,0,x10,x11,0x0000000004000000,144,320,c.sd,0)

# rs2_val == 268435456, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000010000000; immval:216
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,216,328,c.sd,0)

# rs2_val == 1073741824, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000040000000; immval:248
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,248,336,c.sd,0)

# rs2_val == 2147483648, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000080000000; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x0000000080000000,64,344,c.sd,0)

# rs2_val == 4294967296, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000100000000; immval:112
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,112,352,c.sd,0)

# rs2_val == 8589934592, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000200000000; immval:96
TEST_STORE(x1,x2,0,x10,x11,0x0000000200000000,96,360,c.sd,0)

# rs2_val == 17179869184, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000400000000; immval:64
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,64,368,c.sd,0)

# rs2_val == 34359738368, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000800000000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,32,376,c.sd,0)

# rs2_val == 68719476736, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000001000000000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,40,384,c.sd,0)

# rs2_val == 137438953472, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000002000000000; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,72,392,c.sd,0)

# rs2_val == 274877906944, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000004000000000; immval:80
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,80,400,c.sd,0)

# rs2_val == 549755813888, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000008000000000; immval:0
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,0,408,c.sd,0)

# rs2_val == 1099511627776, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000010000000000; immval:88
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,88,416,c.sd,0)

# rs2_val == 2199023255552, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000020000000000; immval:184
TEST_STORE(x1,x2,0,x10,x11,0x0000020000000000,184,424,c.sd,0)

# rs2_val == 4398046511104, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000040000000000; immval:184
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,184,432,c.sd,0)

# rs2_val == 8796093022208, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000080000000000; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,104,440,c.sd,0)

# rs2_val == 17592186044416, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000100000000000; immval:152
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,152,448,c.sd,0)

# rs2_val == 35184372088832, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000200000000000; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,104,456,c.sd,0)

# rs2_val == 70368744177664, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000400000000000; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,104,464,c.sd,0)

# rs2_val == 281474976710656, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0001000000000000; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0001000000000000,104,472,c.sd,0)

# rs2_val == 562949953421312, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0002000000000000; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,104,480,c.sd,0)

# rs2_val == 1125899906842624, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0004000000000000; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,48,488,c.sd,0)

# rs2_val == 2251799813685248, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0008000000000000; immval:184
TEST_STORE(x1,x2,0,x10,x11,0x0008000000000000,184,496,c.sd,0)

# rs2_val == 4503599627370496, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0010000000000000; immval:8
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,8,504,c.sd,0)

# rs2_val == 9007199254740992, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0020000000000000; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,72,512,c.sd,0)

# rs2_val == 18014398509481984, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0040000000000000; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,32,520,c.sd,0)

# rs2_val == 36028797018963968, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0080000000000000; immval:136
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,136,528,c.sd,0)

# rs2_val == 72057594037927936, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0100000000000000; immval:88
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,88,536,c.sd,0)

# rs2_val == 144115188075855872, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0200000000000000; immval:112
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,112,544,c.sd,0)

# rs2_val == 288230376151711744, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0400000000000000; immval:184
TEST_STORE(x1,x2,0,x10,x11,0x0400000000000000,184,552,c.sd,0)

# rs2_val == -140737488355329, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,72,560,c.sd,0)

# rs2_val == -281474976710657, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,40,568,c.sd,0)

# rs2_val == -562949953421313, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval:184
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,184,576,c.sd,0)

# rs2_val == -1125899906842625, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,56,584,c.sd,0)

# rs2_val == -2251799813685249, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,72,592,c.sd,0)

# rs2_val == -4503599627370497, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval:168
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,168,600,c.sd,0)

# rs2_val == -9007199254740993, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,0,608,c.sd,0)

# rs2_val == -18014398509481985, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval:216
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,216,616,c.sd,0)

# rs2_val == -36028797018963969, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval:248
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,248,624,c.sd,0)

# rs2_val == -72057594037927937, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval:80
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,80,632,c.sd,0)

# rs2_val == -288230376151711745, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,120,640,c.sd,0)

# rs2_val == -576460752303423489, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,40,648,c.sd,0)

# rs2_val == -1152921504606846977, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval:88
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,88,656,c.sd,0)

# rs2_val == -2305843009213693953, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval:104
TEST_STORE(x1,x2,0,x10,x11,0xdfffffffffffffff,104,664,c.sd,0)

# rs2_val == -4611686018427387905, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval:248
TEST_STORE(x1,x2,0,x10,x11,0xbfffffffffffffff,248,672,c.sd,0)

# rs2_val == -6148914691236517206, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval:80
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,80,680,c.sd,0)

# rs2_val == 576460752303423488, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0800000000000000; immval:112
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,112,688,c.sd,0)

# rs2_val == 1152921504606846976, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x1000000000000000; immval:248
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,248,696,c.sd,0)

# rs2_val == 2305843009213693952, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x2000000000000000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,240,704,c.sd,0)

# rs2_val == 4611686018427387904, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x4000000000000000; immval:96
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,96,712,c.sd,0)

# rs2_val == -2, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,72,720,c.sd,0)

# rs2_val == -3, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval:88
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,88,728,c.sd,0)

# rs2_val == -5, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval:88
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,88,736,c.sd,0)

# rs2_val == -9, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval:128
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,128,744,c.sd,0)

# rs2_val == -17, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval:88
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,88,752,c.sd,0)

# rs2_val == -65, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,48,760,c.sd,0)

# rs2_val == -129, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval:128
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffff7f,128,768,c.sd,0)

# rs2_val == -257, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,56,776,c.sd,0)

# rs2_val == -513, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffdff,72,784,c.sd,0)

# rs2_val == -1025, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval:96
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,96,792,c.sd,0)

# rs2_val == -2049, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval:216
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,216,800,c.sd,0)

# rs2_val == -4097, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval:112
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,112,808,c.sd,0)

# rs2_val == -8193, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval:232
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,232,816,c.sd,0)

# rs2_val == -16385, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval:128
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,128,824,c.sd,0)

# rs2_val == -32769, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffff7fff,120,832,c.sd,0)

# rs2_val == -65537, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,56,840,c.sd,0)

# rs2_val == -131073, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval:88
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,88,848,c.sd,0)

# rs2_val == -262145, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval:136
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffbffff,136,856,c.sd,0)

# rs2_val == -524289, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval:16
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,16,864,c.sd,0)

# rs2_val == -1048577, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval:216
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,216,872,c.sd,0)

# rs2_val == -2097153, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,24,880,c.sd,0)

# rs2_val == -8388609, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval:96
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,96,888,c.sd,0)

# rs2_val == -16777217, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval:248
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,248,896,c.sd,0)

# rs2_val == -33554433, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval:240
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,240,904,c.sd,0)

# rs2_val == -67108865, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,24,912,c.sd,0)

# rs2_val == -134217729, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval:104
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,104,920,c.sd,0)

# rs2_val == -268435457, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval:112
TEST_STORE(x1,x2,0,x10,x11,0xffffffffefffffff,112,928,c.sd,0)

# rs2_val == -536870913, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval:248
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,248,936,c.sd,0)

# rs2_val == -1073741825, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,64,944,c.sd,0)

# rs2_val == -8589934593, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,0,952,c.sd,0)

# rs2_val == -17179869185, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffbffffffff,0,960,c.sd,0)

# rs2_val == -34359738369, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,120,968,c.sd,0)

# rs2_val == -68719476737, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval:128
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,128,976,c.sd,0)

# rs2_val == -137438953473, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval:240
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,240,984,c.sd,0)

# rs2_val == -274877906945, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval:88
TEST_STORE(x1,x2,0,x10,x11,0xffffffbfffffffff,88,992,c.sd,0)

# rs2_val == -549755813889, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xffffff7fffffffff,72,1000,c.sd,0)

# rs2_val == -1099511627777, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval:80
TEST_STORE(x1,x2,0,x10,x11,0xfffffeffffffffff,80,1008,c.sd,0)

# rs2_val == -2199023255553, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,24,1016,c.sd,0)

# rs2_val == -4398046511105, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffbffffffffff,0,1024,c.sd,0)

# rs2_val == -8796093022209, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval:16
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,16,1032,c.sd,0)

# rs2_val == -17592186044417, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval:80
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,80,1040,c.sd,0)

# rs2_val == -35184372088833, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,40,1048,c.sd,0)

# rs2_val == -70368744177665, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval:104
TEST_STORE(x1,x2,0,x10,x11,0xffffbfffffffffff,104,1056,c.sd,0)
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
