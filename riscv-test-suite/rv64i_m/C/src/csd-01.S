
#This assembly file tests the c.sd instruction of the RISC-V C extension for the csd covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",csd)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rs2, rs1==x15, rs2==x13, imm_val > 0, rs2_val == -4611686018427387905
# opcode:c.sd; op1:x15; op2:x13; op2val:0xbfffffffffffffff; immval:112
TEST_STORE(x1,x2,0,x15,x13,0xbfffffffffffffff,112,0,c.sd,0)

# rs1==x11, rs2==x15, imm_val == 0, rs2_val == 4096
# opcode:c.sd; op1:x11; op2:x15; op2val:0x0000000000001000; immval:0
TEST_STORE(x1,x2,0,x11,x15,0x0000000000001000,0,8,c.sd,0)

# rs1==x13, rs2==x11, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, imm_val == 184
# opcode:c.sd; op1:x13; op2:x11; op2val:0x8000000000000000; immval:184
TEST_STORE(x1,x2,0,x13,x11,0x8000000000000000,184,16,c.sd,0)

# rs1==x8, rs2==x14, rs2_val == 0, 
# opcode:c.sd; op1:x8; op2:x14; op2val:0x0000000000000000; immval:96
TEST_STORE(x1,x2,0,x8,x14,0x0000000000000000,96,24,c.sd,0)

# rs1==x12, rs2==x9, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode:c.sd; op1:x12; op2:x9; op2val:0x7fffffffffffffff; immval:248
TEST_STORE(x1,x2,0,x12,x9,0x7fffffffffffffff,248,32,c.sd,0)

# rs1==x9, rs2==x12, rs2_val == 1, imm_val == 32
# opcode:c.sd; op1:x9; op2:x12; op2val:0x0000000000000001; immval:32
TEST_STORE(x1,x2,0,x9,x12,0x0000000000000001,32,40,c.sd,0)

# rs1==x10, rs2==x8, imm_val == 8, rs2_val == 281474976710656
# opcode:c.sd; op1:x10; op2:x8; op2val:0x0001000000000000; immval:8
TEST_STORE(x1,x2,0,x10,x8,0x0001000000000000,8,48,c.sd,0)

# rs1==x14, rs2==x10, imm_val == 16, rs2_val == -65
# opcode:c.sd; op1:x14; op2:x10; op2val:0xffffffffffffffbf; immval:16
TEST_STORE(x1,x2,0,x14,x10,0xffffffffffffffbf,16,56,c.sd,0)

# imm_val == 64, rs2_val == -4194305
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffbfffff,64,64,c.sd,0)

# imm_val == 128, rs2_val == 524288
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000080000; immval:128
TEST_STORE(x1,x2,0,x10,x11,0x0000000000080000,128,72,c.sd,0)

# imm_val == 240, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000001000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0000000000001000,240,80,c.sd,0)

# imm_val == 232, rs2_val == -65537
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval:232
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,232,88,c.sd,0)

# imm_val == 216, rs2_val == -257
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval:216
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,216,96,c.sd,0)

# imm_val == 120, rs2_val == -576460752303423489
# opcode:c.sd; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,120,104,c.sd,0)

# imm_val == 168, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffff6; immval:168
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff6,168,112,c.sd,0)

# imm_val == 80, rs2_val == 8
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000008; immval:80
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000008,80,120,c.sd,0)

# rs2_val == 2, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000002; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000002,24,128,c.sd,0)

# rs2_val == 4, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000004; immval:232
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000004,232,136,c.sd,0)

# rs2_val == 16, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000010; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000010,40,144,c.sd,0)

# rs2_val == 32, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000020; immval:216
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000020,216,152,c.sd,0)

# rs2_val == 64, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000040; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000040,40,160,c.sd,0)

# rs2_val == 128, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000080; immval:8
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000080,8,168,c.sd,0)

# rs2_val == 256, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000100; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000100,24,176,c.sd,0)

# rs2_val == 512, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000200; immval:32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000200,32,184,c.sd,0)

# rs2_val == 1024, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000400; immval:152
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000400,152,192,c.sd,0)

# rs2_val == 2048, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000800; immval:72
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000800,72,200,c.sd,0)

# rs2_val == 8192, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000002000; immval:184
TEST_STORE(x1,x2,0,x10,x11,0x0000000000002000,184,208,c.sd,0)

# rs2_val == 16384, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000004000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000004000,40,216,c.sd,0)

# rs2_val == 32768, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000008000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0000000000008000,240,224,c.sd,0)

# rs2_val == 65536, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000010000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0000000000010000,240,232,c.sd,0)

# rs2_val == 131072, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000020000; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0000000000020000,104,240,c.sd,0)

# rs2_val == 262144, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000040000; immval:128
TEST_STORE(x1,x2,0,x10,x11,0x0000000000040000,128,248,c.sd,0)

# rs2_val == 1048576, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000100000; immval:144
TEST_STORE(x1,x2,0,x10,x11,0x0000000000100000,144,256,c.sd,0)

# rs2_val == 2097152, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000200000; immval:136
TEST_STORE(x1,x2,0,x10,x11,0x0000000000200000,136,264,c.sd,0)

# rs2_val == 4194304, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000400000; immval:248
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,248,272,c.sd,0)

# rs2_val == 8388608, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000800000; immval:128
TEST_STORE(x1,x2,0,x10,x11,0x0000000000800000,128,280,c.sd,0)

# rs2_val == 16777216, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000001000000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,240,288,c.sd,0)

# rs2_val == 33554432, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000002000000; immval:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,0,296,c.sd,0)

# rs2_val == 67108864, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000004000000; immval:248
TEST_STORE(x1,x2,0,x10,x11,0x0000000004000000,248,304,c.sd,0)

# rs2_val == 134217728, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000008000000; immval:80
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,80,312,c.sd,0)

# rs2_val == 268435456, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000010000000; immval:112
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,112,320,c.sd,0)

# rs2_val == 536870912, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000020000000; immval:144
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,144,328,c.sd,0)

# rs2_val == 1073741824, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000040000000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,240,336,c.sd,0)

# rs2_val == 2147483648, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000080000000; immval:96
TEST_STORE(x1,x2,0,x10,x11,0x0000000080000000,96,344,c.sd,0)

# rs2_val == 4294967296, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000100000000; immval:120
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,120,352,c.sd,0)

# rs2_val == 8589934592, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000200000000; immval:232
TEST_STORE(x1,x2,0,x10,x11,0x0000000200000000,232,360,c.sd,0)

# rs2_val == 17179869184, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000400000000; immval:232
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,232,368,c.sd,0)

# rs2_val == 34359738368, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000800000000; immval:128
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,128,376,c.sd,0)

# rs2_val == 68719476736, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000001000000000; immval:112
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,112,384,c.sd,0)

# rs2_val == 137438953472, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000002000000000; immval:104
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,104,392,c.sd,0)

# rs2_val == 274877906944, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000004000000000; immval:88
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,88,400,c.sd,0)

# rs2_val == 549755813888, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000008000000000; immval:136
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,136,408,c.sd,0)

# rs2_val == 1099511627776, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000010000000000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,240,416,c.sd,0)

# rs2_val == 2199023255552, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000020000000000; immval:216
TEST_STORE(x1,x2,0,x10,x11,0x0000020000000000,216,424,c.sd,0)

# rs2_val == 4398046511104, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000040000000000; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,24,432,c.sd,0)

# rs2_val == 8796093022208, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000080000000000; immval:232
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,232,440,c.sd,0)

# rs2_val == 17592186044416, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000100000000000; immval:80
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,80,448,c.sd,0)

# rs2_val == 35184372088832, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000200000000000; immval:56
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,56,456,c.sd,0)

# rs2_val == 70368744177664, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000400000000000; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,24,464,c.sd,0)

# rs2_val == 140737488355328, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0000800000000000; immval:128
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,128,472,c.sd,0)

# rs2_val == 562949953421312, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0002000000000000; immval:168
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,168,480,c.sd,0)

# rs2_val == 1125899906842624, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0004000000000000; immval:40
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,40,488,c.sd,0)

# rs2_val == 2251799813685248, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0008000000000000; immval:120
TEST_STORE(x1,x2,0,x10,x11,0x0008000000000000,120,496,c.sd,0)

# rs2_val == 4503599627370496, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0010000000000000; immval:48
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,48,504,c.sd,0)

# rs2_val == 9007199254740992, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0020000000000000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,240,512,c.sd,0)

# rs2_val == 18014398509481984, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0040000000000000; immval:56
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,56,520,c.sd,0)

# rs2_val == 36028797018963968, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0080000000000000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,240,528,c.sd,0)

# rs2_val == 72057594037927936, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0100000000000000; immval:96
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,96,536,c.sd,0)

# rs2_val == 144115188075855872, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0200000000000000; immval:240
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,240,544,c.sd,0)

# rs2_val == 288230376151711744, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0400000000000000; immval:232
TEST_STORE(x1,x2,0,x10,x11,0x0400000000000000,232,552,c.sd,0)

# rs2_val == -140737488355329, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval:112
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,112,560,c.sd,0)

# rs2_val == -281474976710657, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval:88
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,88,568,c.sd,0)

# rs2_val == -562949953421313, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval:80
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,80,576,c.sd,0)

# rs2_val == -1125899906842625, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval:248
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,248,584,c.sd,0)

# rs2_val == -2251799813685249, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,64,592,c.sd,0)

# rs2_val == -4503599627370497, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval:144
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,144,600,c.sd,0)

# rs2_val == -9007199254740993, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval:112
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,112,608,c.sd,0)

# rs2_val == -18014398509481985, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,40,616,c.sd,0)

# rs2_val == -36028797018963969, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,0,624,c.sd,0)

# rs2_val == -72057594037927937, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,64,632,c.sd,0)

# rs2_val == -144115188075855873, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval:16
TEST_STORE(x1,x2,0,x10,x11,0xfdffffffffffffff,16,640,c.sd,0)

# rs2_val == -288230376151711745, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval:40
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,40,648,c.sd,0)

# rs2_val == -1152921504606846977, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval:104
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,104,656,c.sd,0)

# rs2_val == -2305843009213693953, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xdfffffffffffffff,72,664,c.sd,0)

# rs2_val == 6148914691236517205, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x5555555555555555; immval:16
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,16,672,c.sd,0)

# rs2_val == -6148914691236517206, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval:8
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,8,680,c.sd,0)

# rs2_val == 576460752303423488, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x0800000000000000; immval:128
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,128,688,c.sd,0)

# rs2_val == 1152921504606846976, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x1000000000000000; immval:216
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,216,696,c.sd,0)

# rs2_val == 2305843009213693952, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x2000000000000000; immval:24
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,24,704,c.sd,0)

# rs2_val == 4611686018427387904, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0x4000000000000000; immval:128
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,128,712,c.sd,0)

# rs2_val == -2, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,120,720,c.sd,0)

# rs2_val == -3, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval:32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,32,728,c.sd,0)

# rs2_val == -5, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval:8
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,8,736,c.sd,0)

# rs2_val == -9, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,56,744,c.sd,0)

# rs2_val == -17, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,48,752,c.sd,0)

# rs2_val == -33, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval:8
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffdf,8,760,c.sd,0)

# rs2_val == -129, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval:216
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffff7f,216,768,c.sd,0)

# rs2_val == -513, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval:24
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffdff,24,776,c.sd,0)

# rs2_val == -1025, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval:16
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,16,784,c.sd,0)

# rs2_val == -2049, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval:32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,32,792,c.sd,0)

# rs2_val == -4097, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval:64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,64,800,c.sd,0)

# rs2_val == -8193, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval:88
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,88,808,c.sd,0)

# rs2_val == -16385, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval:104
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,104,816,c.sd,0)

# rs2_val == -32769, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval:240
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffff7fff,240,824,c.sd,0)

# rs2_val == -131073, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval:168
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,168,832,c.sd,0)

# rs2_val == -262145, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval:216
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffbffff,216,840,c.sd,0)

# rs2_val == -524289, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval:80
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,80,848,c.sd,0)

# rs2_val == -1048577, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,0,856,c.sd,0)

# rs2_val == -2097153, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval:104
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,104,864,c.sd,0)

# rs2_val == -8388609, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval:72
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,72,872,c.sd,0)

# rs2_val == -16777217, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,56,880,c.sd,0)

# rs2_val == -33554433, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval:144
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,144,888,c.sd,0)

# rs2_val == -67108865, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval:48
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,48,896,c.sd,0)

# rs2_val == -134217729, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval:152
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,152,904,c.sd,0)

# rs2_val == -268435457, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval:248
TEST_STORE(x1,x2,0,x10,x11,0xffffffffefffffff,248,912,c.sd,0)

# rs2_val == -536870913, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval:184
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,184,920,c.sd,0)

# rs2_val == -1073741825, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval:120
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,120,928,c.sd,0)

# rs2_val == -2147483649, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval:168
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,168,936,c.sd,0)

# rs2_val == -4294967297, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval:136
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,136,944,c.sd,0)

# rs2_val == -8589934593, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval:112
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,112,952,c.sd,0)

# rs2_val == -17179869185, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval:32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffbffffffff,32,960,c.sd,0)

# rs2_val == -34359738369, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval:248
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,248,968,c.sd,0)

# rs2_val == -68719476737, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval:240
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,240,976,c.sd,0)

# rs2_val == -137438953473, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval:56
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,56,984,c.sd,0)

# rs2_val == -274877906945, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval:232
TEST_STORE(x1,x2,0,x10,x11,0xffffffbfffffffff,232,992,c.sd,0)

# rs2_val == -549755813889, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval:112
TEST_STORE(x1,x2,0,x10,x11,0xffffff7fffffffff,112,1000,c.sd,0)

# rs2_val == -1099511627777, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval:136
TEST_STORE(x1,x2,0,x10,x11,0xfffffeffffffffff,136,1008,c.sd,0)

# rs2_val == -2199023255553, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval:8
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,8,1016,c.sd,0)

# rs2_val == -4398046511105, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval:96
TEST_STORE(x1,x2,0,x10,x11,0xfffffbffffffffff,96,1024,c.sd,0)

# rs2_val == -8796093022209, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval:152
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,152,1032,c.sd,0)

# rs2_val == -17592186044417, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval:248
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,248,1040,c.sd,0)

# rs2_val == -35184372088833, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval:0
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,0,1048,c.sd,0)

# rs2_val == -70368744177665, 
# opcode:c.sd; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval:32
TEST_STORE(x1,x2,0,x10,x11,0xffffbfffffffffff,32,1056,c.sd,0)
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
