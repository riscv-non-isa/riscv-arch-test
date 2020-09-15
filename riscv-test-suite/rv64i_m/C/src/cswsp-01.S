
#This assembly file tests the c.swsp instruction of the RISC-V C extension for the cswsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cswsp)

la x12,signature_x12_1

#opcode:c.swsp; op1:x2; op2:x13; op2val:0xfffffffffdffffff; immval:64
TEST_STORE(x12,x17,0,x2,x13,0xfffffffffdffffff,64,0,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x5; op2val:0x0000000000000004; immval:0
TEST_STORE(x12,x17,0,x2,x5,0x0000000000000004,0,8,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x16; op2val:0x8000000000000000; immval:28
TEST_STORE(x12,x17,0,x2,x16,0x8000000000000000,28,16,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x25; op2val:0x0000000000000000; immval:52
TEST_STORE(x12,x17,0,x2,x25,0x0000000000000000,52,24,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x21; op2val:0x7fffffffffffffff; immval:236
TEST_STORE(x12,x17,0,x2,x21,0x7fffffffffffffff,236,32,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x1; op2val:0x0000000000000001; immval:8
TEST_STORE(x12,x17,0,x2,x1,0x0000000000000001,8,40,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x30; op2val:0x0000000000002000; immval:4
TEST_STORE(x12,x17,0,x2,x30,0x0000000000002000,4,48,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x19; op2val:0x0000000000000800; immval:16
TEST_STORE(x12,x17,0,x2,x19,0x0000000000000800,16,56,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x2; op2val:0x0000080000000000; immval:32
TEST_STORE(x12,x17,0,x2,x2,0x0000080000000000,32,64,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x8; op2val:0x0000000020000000; immval:128
TEST_STORE(x12,x17,0,x2,x8,0x0000000020000000,128,72,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x0; op2val:0xffffffffffffffff; immval:248
TEST_STORE(x12,x17,0,x2,x0,0xffffffffffffffff,248,80,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x11; op2val:0xffffffffffffefff; immval:244
TEST_STORE(x12,x17,0,x2,x11,0xffffffffffffefff,244,88,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x23; op2val:0x0000000000000800; immval:220
TEST_STORE(x12,x17,0,x2,x23,0x0000000000000800,220,96,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x20; op2val:0xfffffffffeffffff; immval:188
TEST_STORE(x12,x17,0,x2,x20,0xfffffffffeffffff,188,104,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x3; op2val:0x0002000000000000; immval:124
TEST_STORE(x12,x17,0,x2,x3,0x0002000000000000,124,112,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x26; op2val:0xfffffffffffeffff; immval:84
TEST_STORE(x12,x17,0,x2,x26,0xfffffffffffeffff,84,120,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffff7fff; immval:168
TEST_STORE(x12,x17,0,x2,x10,0xffffffffffff7fff,168,128,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x31; op2val:0x0000000000000002; immval:236
TEST_STORE(x12,x17,0,x2,x31,0x0000000000000002,236,136,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x29; op2val:0x0000000000000008; immval:244
TEST_STORE(x12,x17,0,x2,x29,0x0000000000000008,244,144,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x27; op2val:0x0000000000000010; immval:236
TEST_STORE(x12,x17,0,x2,x27,0x0000000000000010,236,152,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x6; op2val:0x0000000000000020; immval:252
TEST_STORE(x12,x17,0,x2,x6,0x0000000000000020,252,160,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x28; op2val:0x0000000000000040; immval:60
TEST_STORE(x12,x17,0,x2,x28,0x0000000000000040,60,168,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x9; op2val:0x0000000000000080; immval:8
TEST_STORE(x12,x17,0,x2,x9,0x0000000000000080,8,176,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x7; op2val:0x0000000000000100; immval:52
TEST_STORE(x12,x17,0,x2,x7,0x0000000000000100,52,184,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x14; op2val:0x0000000000000200; immval:244
TEST_STORE(x12,x17,0,x2,x14,0x0000000000000200,244,192,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x4; op2val:0x0000000000000400; immval:220
TEST_STORE(x12,x17,0,x2,x4,0x0000000000000400,220,200,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x22; op2val:0x0000000000001000; immval:248
TEST_STORE(x12,x17,0,x2,x22,0x0000000000001000,248,208,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x15; op2val:0x0000000000004000; immval:68
TEST_STORE(x12,x17,0,x2,x15,0x0000000000004000,68,216,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x24; op2val:0x0000000000008000; immval:124
TEST_STORE(x12,x3,0,x2,x24,0x0000000000008000,124,224,c.swsp,0)
la x1,signature_x1_0

#opcode:c.swsp; op1:x2; op2:x18; op2val:0x0000000000010000; immval:4
TEST_STORE(x1,x3,0,x2,x18,0x0000000000010000,4,0,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x12; op2val:0x0000000000020000; immval:0
TEST_STORE(x1,x3,0,x2,x12,0x0000000000020000,0,8,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x17; op2val:0x0000000000040000; immval:72
TEST_STORE(x1,x3,0,x2,x17,0x0000000000040000,72,16,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000080000; immval:60
TEST_STORE(x1,x3,0,x2,x10,0x0000000000080000,60,24,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000100000; immval:128
TEST_STORE(x1,x3,0,x2,x10,0x0000000000100000,128,32,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000200000; immval:244
TEST_STORE(x1,x3,0,x2,x10,0x0000000000200000,244,40,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000400000; immval:244
TEST_STORE(x1,x3,0,x2,x10,0x0000000000400000,244,48,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000800000; immval:84
TEST_STORE(x1,x3,0,x2,x10,0x0000000000800000,84,56,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000001000000; immval:64
TEST_STORE(x1,x3,0,x2,x10,0x0000000001000000,64,64,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000002000000; immval:20
TEST_STORE(x1,x3,0,x2,x10,0x0000000002000000,20,72,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000004000000; immval:48
TEST_STORE(x1,x3,0,x2,x10,0x0000000004000000,48,80,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000008000000; immval:248
TEST_STORE(x1,x3,0,x2,x10,0x0000000008000000,248,88,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000010000000; immval:4
TEST_STORE(x1,x3,0,x2,x10,0x0000000010000000,4,96,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000040000000; immval:36
TEST_STORE(x1,x3,0,x2,x10,0x0000000040000000,36,104,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000080000000; immval:24
TEST_STORE(x1,x3,0,x2,x10,0x0000000080000000,24,112,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000100000000; immval:0
TEST_STORE(x1,x3,0,x2,x10,0x0000000100000000,0,120,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000200000000; immval:56
TEST_STORE(x1,x3,0,x2,x10,0x0000000200000000,56,128,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000400000000; immval:168
TEST_STORE(x1,x3,0,x2,x10,0x0000000400000000,168,136,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000800000000; immval:8
TEST_STORE(x1,x3,0,x2,x10,0x0000000800000000,8,144,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000001000000000; immval:72
TEST_STORE(x1,x3,0,x2,x10,0x0000001000000000,72,152,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000002000000000; immval:40
TEST_STORE(x1,x3,0,x2,x10,0x0000002000000000,40,160,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000004000000000; immval:44
TEST_STORE(x1,x3,0,x2,x10,0x0000004000000000,44,168,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000008000000000; immval:124
TEST_STORE(x1,x3,0,x2,x10,0x0000008000000000,124,176,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000010000000000; immval:28
TEST_STORE(x1,x3,0,x2,x10,0x0000010000000000,28,184,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000020000000000; immval:24
TEST_STORE(x1,x3,0,x2,x10,0x0000020000000000,24,192,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000040000000000; immval:40
TEST_STORE(x1,x3,0,x2,x10,0x0000040000000000,40,200,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000100000000000; immval:24
TEST_STORE(x1,x3,0,x2,x10,0x0000100000000000,24,208,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000200000000000; immval:168
TEST_STORE(x1,x3,0,x2,x10,0x0000200000000000,168,216,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000400000000000; immval:0
TEST_STORE(x1,x3,0,x2,x10,0x0000400000000000,0,224,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000800000000000; immval:220
TEST_STORE(x1,x3,0,x2,x10,0x0000800000000000,220,232,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0001000000000000; immval:12
TEST_STORE(x1,x3,0,x2,x10,0x0001000000000000,12,240,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0004000000000000; immval:24
TEST_STORE(x1,x3,0,x2,x10,0x0004000000000000,24,248,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0008000000000000; immval:220
TEST_STORE(x1,x3,0,x2,x10,0x0008000000000000,220,256,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0010000000000000; immval:40
TEST_STORE(x1,x3,0,x2,x10,0x0010000000000000,40,264,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0020000000000000; immval:248
TEST_STORE(x1,x3,0,x2,x10,0x0020000000000000,248,272,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0040000000000000; immval:40
TEST_STORE(x1,x3,0,x2,x10,0x0040000000000000,40,280,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0080000000000000; immval:24
TEST_STORE(x1,x3,0,x2,x10,0x0080000000000000,24,288,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0100000000000000; immval:64
TEST_STORE(x1,x3,0,x2,x10,0x0100000000000000,64,296,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0200000000000000; immval:20
TEST_STORE(x1,x3,0,x2,x10,0x0200000000000000,20,304,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0400000000000000; immval:60
TEST_STORE(x1,x3,0,x2,x10,0x0400000000000000,60,312,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0800000000000000; immval:32
TEST_STORE(x1,x3,0,x2,x10,0x0800000000000000,32,320,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffdfffffffffff; immval:20
TEST_STORE(x1,x3,0,x2,x10,0xffffdfffffffffff,20,328,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffbfffffffffff; immval:236
TEST_STORE(x1,x3,0,x2,x10,0xffffbfffffffffff,236,336,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffff7fffffffffff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xffff7fffffffffff,0,344,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffeffffffffffff; immval:248
TEST_STORE(x1,x3,0,x2,x10,0xfffeffffffffffff,248,352,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffdffffffffffff; immval:24
TEST_STORE(x1,x3,0,x2,x10,0xfffdffffffffffff,24,360,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffbffffffffffff; immval:64
TEST_STORE(x1,x3,0,x2,x10,0xfffbffffffffffff,64,368,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfff7ffffffffffff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xfff7ffffffffffff,0,376,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffefffffffffffff; immval:36
TEST_STORE(x1,x3,0,x2,x10,0xffefffffffffffff,36,384,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffdfffffffffffff; immval:8
TEST_STORE(x1,x3,0,x2,x10,0xffdfffffffffffff,8,392,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffbfffffffffffff; immval:40
TEST_STORE(x1,x3,0,x2,x10,0xffbfffffffffffff,40,400,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xff7fffffffffffff; immval:68
TEST_STORE(x1,x3,0,x2,x10,0xff7fffffffffffff,68,408,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfeffffffffffffff; immval:72
TEST_STORE(x1,x3,0,x2,x10,0xfeffffffffffffff,72,416,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfdffffffffffffff; immval:56
TEST_STORE(x1,x3,0,x2,x10,0xfdffffffffffffff,56,424,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfbffffffffffffff; immval:128
TEST_STORE(x1,x3,0,x2,x10,0xfbffffffffffffff,128,432,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xf7ffffffffffffff; immval:68
TEST_STORE(x1,x3,0,x2,x10,0xf7ffffffffffffff,68,440,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xefffffffffffffff; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xefffffffffffffff,252,448,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xdfffffffffffffff; immval:244
TEST_STORE(x1,x3,0,x2,x10,0xdfffffffffffffff,244,456,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xbfffffffffffffff; immval:8
TEST_STORE(x1,x3,0,x2,x10,0xbfffffffffffffff,8,464,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x5555555555555555; immval:20
TEST_STORE(x1,x3,0,x2,x10,0x5555555555555555,20,472,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xaaaaaaaaaaaaaaaa; immval:12
TEST_STORE(x1,x3,0,x2,x10,0xaaaaaaaaaaaaaaaa,12,480,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x1000000000000000; immval:28
TEST_STORE(x1,x3,0,x2,x10,0x1000000000000000,28,488,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x2000000000000000; immval:68
TEST_STORE(x1,x3,0,x2,x10,0x2000000000000000,68,496,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x4000000000000000; immval:124
TEST_STORE(x1,x3,0,x2,x10,0x4000000000000000,124,504,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffffe; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffe,28,512,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffffd; immval:4
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffd,4,520,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffffb; immval:68
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffb,68,528,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffff7; immval:24
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffff7,24,536,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffffef; immval:16
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffef,16,544,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffffdf; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffdf,44,552,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffffbf; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffbf,52,560,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffff7f; immval:12
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffff7f,12,568,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffeff; immval:248
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffeff,248,576,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffdff; immval:12
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffdff,12,584,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffbff; immval:56
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffbff,56,592,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffff7ff; immval:124
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffff7ff,124,600,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffdfff; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffdfff,28,608,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffbfff; immval:236
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffbfff,236,616,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffdffff; immval:60
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffdffff,60,624,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffbffff; immval:244
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffbffff,244,632,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffff7ffff; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffff7ffff,252,640,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffefffff; immval:16
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffefffff,16,648,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffdfffff; immval:36
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffdfffff,36,656,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffbfffff; immval:64
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffbfffff,64,664,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffff7fffff; immval:4
TEST_STORE(x1,x3,0,x2,x10,0xffffffffff7fffff,4,672,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffbffffff; immval:56
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffbffffff,56,680,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffff7ffffff; immval:12
TEST_STORE(x1,x3,0,x2,x10,0xfffffffff7ffffff,12,688,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffefffffff; immval:76
TEST_STORE(x1,x3,0,x2,x10,0xffffffffefffffff,76,696,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffdfffffff; immval:56
TEST_STORE(x1,x3,0,x2,x10,0xffffffffdfffffff,56,704,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffbfffffff; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xffffffffbfffffff,44,712,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffff7fffffff; immval:8
TEST_STORE(x1,x3,0,x2,x10,0xffffffff7fffffff,8,720,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffeffffffff; immval:188
TEST_STORE(x1,x3,0,x2,x10,0xfffffffeffffffff,188,728,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffdffffffff; immval:72
TEST_STORE(x1,x3,0,x2,x10,0xfffffffdffffffff,72,736,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffbffffffff; immval:8
TEST_STORE(x1,x3,0,x2,x10,0xfffffffbffffffff,8,744,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffff7ffffffff; immval:60
TEST_STORE(x1,x3,0,x2,x10,0xfffffff7ffffffff,60,752,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffefffffffff; immval:8
TEST_STORE(x1,x3,0,x2,x10,0xffffffefffffffff,8,760,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffdfffffffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xffffffdfffffffff,52,768,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffbfffffffff; immval:72
TEST_STORE(x1,x3,0,x2,x10,0xffffffbfffffffff,72,776,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffff7fffffffff; immval:72
TEST_STORE(x1,x3,0,x2,x10,0xffffff7fffffffff,72,784,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffeffffffffff; immval:244
TEST_STORE(x1,x3,0,x2,x10,0xfffffeffffffffff,244,792,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffdffffffffff; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xfffffdffffffffff,44,800,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffbffffffffff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xfffffbffffffffff,0,808,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffff7ffffffffff; immval:20
TEST_STORE(x1,x3,0,x2,x10,0xfffff7ffffffffff,20,816,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffefffffffffff; immval:12
TEST_STORE(x1,x3,0,x2,x10,0xffffefffffffffff,12,824,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000080000000000; immval:32
TEST_STORE(x1,x3,0,x2,x10,0x0000080000000000,32,832,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffffff; immval:248
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffff,248,840,c.swsp,0)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x12_1:
    .fill 29*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 106*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
