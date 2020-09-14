
#This assembly file tests the c.swsp instruction of the RISC-V C extension for the cswsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cswsp)

la x12,signature_x12_1

#opcode:c.swsp; op1:x2; op2:x28; op2val:0xffffffffffffffbf; immval:76
TEST_STORE(x12,x18,0,x2,x28,0xffffffffffffffbf,76,0,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x3; op2val:0xffffffdfffffffff; immval:0
TEST_STORE(x12,x18,0,x2,x3,0xffffffdfffffffff,0,8,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x8; op2val:0x8000000000000000; immval:64
TEST_STORE(x12,x18,0,x2,x8,0x8000000000000000,64,16,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x1; op2val:0x0000000000000000; immval:48
TEST_STORE(x12,x18,0,x2,x1,0x0000000000000000,48,24,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x21; op2val:0x7fffffffffffffff; immval:252
TEST_STORE(x12,x18,0,x2,x21,0x7fffffffffffffff,252,32,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x7; op2val:0x0000000000000001; immval:28
TEST_STORE(x12,x18,0,x2,x7,0x0000000000000001,28,40,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x30; op2val:0xffffffffbfffffff; immval:4
TEST_STORE(x12,x18,0,x2,x30,0xffffffffbfffffff,4,48,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x16; op2val:0xffffffff7fffffff; immval:8
TEST_STORE(x12,x18,0,x2,x16,0xffffffff7fffffff,8,56,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x0; op2val:0xfffffffff7ffffff; immval:16
TEST_STORE(x12,x18,0,x2,x0,0xfffffffff7ffffff,16,64,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x20; op2val:0x0000000800000000; immval:32
TEST_STORE(x12,x18,0,x2,x20,0x0000000800000000,32,72,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x5; op2val:0x0000000000008000; immval:128
TEST_STORE(x12,x18,0,x2,x5,0x0000000000008000,128,80,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0400000000000000; immval:248
TEST_STORE(x12,x18,0,x2,x10,0x0400000000000000,248,88,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x6; op2val:0x0000000000001000; immval:244
TEST_STORE(x12,x18,0,x2,x6,0x0000000000001000,244,96,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x9; op2val:0x0000000001000000; immval:236
TEST_STORE(x12,x18,0,x2,x9,0x0000000001000000,236,104,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x13; op2val:0x7fffffffffffffff; immval:220
TEST_STORE(x12,x18,0,x2,x13,0x7fffffffffffffff,220,112,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x26; op2val:0xffffffdfffffffff; immval:188
TEST_STORE(x12,x18,0,x2,x26,0xffffffdfffffffff,188,120,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x31; op2val:0x0000000200000000; immval:124
TEST_STORE(x12,x18,0,x2,x31,0x0000000200000000,124,128,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x24; op2val:0xffffdfffffffffff; immval:84
TEST_STORE(x12,x18,0,x2,x24,0xffffdfffffffffff,84,136,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x14; op2val:0x0040000000000000; immval:168
TEST_STORE(x12,x18,0,x2,x14,0x0040000000000000,168,144,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x11; op2val:0x0000000000000002; immval:236
TEST_STORE(x12,x18,0,x2,x11,0x0000000000000002,236,152,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x15; op2val:0x0000000000000004; immval:12
TEST_STORE(x12,x18,0,x2,x15,0x0000000000000004,12,160,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x23; op2val:0x0000000000000008; immval:20
TEST_STORE(x12,x18,0,x2,x23,0x0000000000000008,20,168,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x4; op2val:0x0000000000000010; immval:52
TEST_STORE(x12,x18,0,x2,x4,0x0000000000000010,52,176,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x2; op2val:0x0000000000000020; immval:68
TEST_STORE(x12,x18,0,x2,x2,0x0000000000000020,68,184,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x25; op2val:0x0000000000000040; immval:4
TEST_STORE(x12,x18,0,x2,x25,0x0000000000000040,4,192,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x17; op2val:0x0000000000000080; immval:0
TEST_STORE(x12,x18,0,x2,x17,0x0000000000000080,0,200,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x19; op2val:0x0000000000000100; immval:48
TEST_STORE(x12,x18,0,x2,x19,0x0000000000000100,48,208,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x27; op2val:0x0000000000000200; immval:248
TEST_STORE(x12,x18,0,x2,x27,0x0000000000000200,248,216,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x29; op2val:0x0000000000000400; immval:248
TEST_STORE(x12,x3,0,x2,x29,0x0000000000000400,248,224,c.swsp,0)
la x1,signature_x1_0

#opcode:c.swsp; op1:x2; op2:x12; op2val:0x0000000000000800; immval:56
TEST_STORE(x1,x3,0,x2,x12,0x0000000000000800,56,0,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x18; op2val:0x0000000000002000; immval:188
TEST_STORE(x1,x3,0,x2,x18,0x0000000000002000,188,8,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x22; op2val:0x0000000000004000; immval:76
TEST_STORE(x1,x3,0,x2,x22,0x0000000000004000,76,16,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000010000; immval:168
TEST_STORE(x1,x3,0,x2,x10,0x0000000000010000,168,24,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000020000; immval:252
TEST_STORE(x1,x3,0,x2,x10,0x0000000000020000,252,32,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000040000; immval:188
TEST_STORE(x1,x3,0,x2,x10,0x0000000000040000,188,40,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000080000; immval:16
TEST_STORE(x1,x3,0,x2,x10,0x0000000000080000,16,48,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000100000; immval:24
TEST_STORE(x1,x3,0,x2,x10,0x0000000000100000,24,56,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000200000; immval:16
TEST_STORE(x1,x3,0,x2,x10,0x0000000000200000,16,64,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000400000; immval:12
TEST_STORE(x1,x3,0,x2,x10,0x0000000000400000,12,72,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000800000; immval:36
TEST_STORE(x1,x3,0,x2,x10,0x0000000000800000,36,80,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000002000000; immval:32
TEST_STORE(x1,x3,0,x2,x10,0x0000000002000000,32,88,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000004000000; immval:76
TEST_STORE(x1,x3,0,x2,x10,0x0000000004000000,76,96,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000008000000; immval:128
TEST_STORE(x1,x3,0,x2,x10,0x0000000008000000,128,104,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000010000000; immval:68
TEST_STORE(x1,x3,0,x2,x10,0x0000000010000000,68,112,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000020000000; immval:36
TEST_STORE(x1,x3,0,x2,x10,0x0000000020000000,36,120,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000040000000; immval:44
TEST_STORE(x1,x3,0,x2,x10,0x0000000040000000,44,128,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000080000000; immval:52
TEST_STORE(x1,x3,0,x2,x10,0x0000000080000000,52,136,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000100000000; immval:16
TEST_STORE(x1,x3,0,x2,x10,0x0000000100000000,16,144,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000400000000; immval:16
TEST_STORE(x1,x3,0,x2,x10,0x0000000400000000,16,152,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000001000000000; immval:60
TEST_STORE(x1,x3,0,x2,x10,0x0000001000000000,60,160,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000002000000000; immval:52
TEST_STORE(x1,x3,0,x2,x10,0x0000002000000000,52,168,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000004000000000; immval:52
TEST_STORE(x1,x3,0,x2,x10,0x0000004000000000,52,176,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000008000000000; immval:20
TEST_STORE(x1,x3,0,x2,x10,0x0000008000000000,20,184,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000010000000000; immval:168
TEST_STORE(x1,x3,0,x2,x10,0x0000010000000000,168,192,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000020000000000; immval:124
TEST_STORE(x1,x3,0,x2,x10,0x0000020000000000,124,200,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000040000000000; immval:244
TEST_STORE(x1,x3,0,x2,x10,0x0000040000000000,244,208,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000080000000000; immval:68
TEST_STORE(x1,x3,0,x2,x10,0x0000080000000000,68,216,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000100000000000; immval:12
TEST_STORE(x1,x3,0,x2,x10,0x0000100000000000,12,224,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000200000000000; immval:20
TEST_STORE(x1,x3,0,x2,x10,0x0000200000000000,20,232,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000400000000000; immval:44
TEST_STORE(x1,x3,0,x2,x10,0x0000400000000000,44,240,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000800000000000; immval:68
TEST_STORE(x1,x3,0,x2,x10,0x0000800000000000,68,248,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0001000000000000; immval:48
TEST_STORE(x1,x3,0,x2,x10,0x0001000000000000,48,256,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0002000000000000; immval:128
TEST_STORE(x1,x3,0,x2,x10,0x0002000000000000,128,264,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0004000000000000; immval:188
TEST_STORE(x1,x3,0,x2,x10,0x0004000000000000,188,272,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0008000000000000; immval:48
TEST_STORE(x1,x3,0,x2,x10,0x0008000000000000,48,280,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0010000000000000; immval:248
TEST_STORE(x1,x3,0,x2,x10,0x0010000000000000,248,288,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0020000000000000; immval:24
TEST_STORE(x1,x3,0,x2,x10,0x0020000000000000,24,296,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0080000000000000; immval:248
TEST_STORE(x1,x3,0,x2,x10,0x0080000000000000,248,304,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0100000000000000; immval:60
TEST_STORE(x1,x3,0,x2,x10,0x0100000000000000,60,312,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0200000000000000; immval:16
TEST_STORE(x1,x3,0,x2,x10,0x0200000000000000,16,320,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffbfffffffffff; immval:48
TEST_STORE(x1,x3,0,x2,x10,0xffffbfffffffffff,48,328,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffff7fffffffffff; immval:128
TEST_STORE(x1,x3,0,x2,x10,0xffff7fffffffffff,128,336,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffeffffffffffff; immval:64
TEST_STORE(x1,x3,0,x2,x10,0xfffeffffffffffff,64,344,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffdffffffffffff; immval:36
TEST_STORE(x1,x3,0,x2,x10,0xfffdffffffffffff,36,352,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffbffffffffffff; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xfffbffffffffffff,44,360,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfff7ffffffffffff; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xfff7ffffffffffff,44,368,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffefffffffffffff; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xffefffffffffffff,28,376,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffdfffffffffffff; immval:128
TEST_STORE(x1,x3,0,x2,x10,0xffdfffffffffffff,128,384,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffbfffffffffffff; immval:4
TEST_STORE(x1,x3,0,x2,x10,0xffbfffffffffffff,4,392,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xff7fffffffffffff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xff7fffffffffffff,0,400,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfeffffffffffffff; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xfeffffffffffffff,252,408,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfdffffffffffffff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xfdffffffffffffff,0,416,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfbffffffffffffff; immval:40
TEST_STORE(x1,x3,0,x2,x10,0xfbffffffffffffff,40,424,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xf7ffffffffffffff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xf7ffffffffffffff,0,432,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xefffffffffffffff; immval:60
TEST_STORE(x1,x3,0,x2,x10,0xefffffffffffffff,60,440,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xdfffffffffffffff; immval:72
TEST_STORE(x1,x3,0,x2,x10,0xdfffffffffffffff,72,448,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xbfffffffffffffff; immval:32
TEST_STORE(x1,x3,0,x2,x10,0xbfffffffffffffff,32,456,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x5555555555555555; immval:36
TEST_STORE(x1,x3,0,x2,x10,0x5555555555555555,36,464,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xaaaaaaaaaaaaaaaa; immval:188
TEST_STORE(x1,x3,0,x2,x10,0xaaaaaaaaaaaaaaaa,188,472,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0800000000000000; immval:56
TEST_STORE(x1,x3,0,x2,x10,0x0800000000000000,56,480,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x1000000000000000; immval:28
TEST_STORE(x1,x3,0,x2,x10,0x1000000000000000,28,488,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x2000000000000000; immval:76
TEST_STORE(x1,x3,0,x2,x10,0x2000000000000000,76,496,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x4000000000000000; immval:36
TEST_STORE(x1,x3,0,x2,x10,0x4000000000000000,36,504,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffffe; immval:124
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffe,124,512,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffffd; immval:244
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffd,244,520,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffffb; immval:124
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffb,124,528,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffff7; immval:20
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffff7,20,536,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffffef; immval:236
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffef,236,544,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffffdf; immval:24
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffdf,24,552,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffff7f; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffff7f,52,560,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffeff; immval:236
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffeff,236,568,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffdff; immval:236
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffdff,236,576,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffffbff; immval:12
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffbff,12,584,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffff7ff; immval:24
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffff7ff,24,592,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffefff; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffefff,0,600,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffdfff; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffdfff,28,608,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffffbfff; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffbfff,28,616,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffff7fff; immval:8
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffff7fff,8,624,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffeffff; immval:60
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffeffff,60,632,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffdffff; immval:8
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffdffff,8,640,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffffbffff; immval:16
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffbffff,16,648,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffff7ffff; immval:84
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffff7ffff,84,656,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffefffff; immval:32
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffefffff,32,664,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffdfffff; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffdfffff,44,672,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffffbfffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffbfffff,52,680,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffff7fffff; immval:16
TEST_STORE(x1,x3,0,x2,x10,0xffffffffff7fffff,16,688,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffeffffff; immval:32
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffeffffff,32,696,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffdffffff; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffdffffff,28,704,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffffbffffff; immval:188
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffbffffff,188,712,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffefffffff; immval:244
TEST_STORE(x1,x3,0,x2,x10,0xffffffffefffffff,244,720,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffffdfffffff; immval:44
TEST_STORE(x1,x3,0,x2,x10,0xffffffffdfffffff,44,728,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffeffffffff; immval:76
TEST_STORE(x1,x3,0,x2,x10,0xfffffffeffffffff,76,736,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffdffffffff; immval:248
TEST_STORE(x1,x3,0,x2,x10,0xfffffffdffffffff,248,744,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffbffffffff; immval:220
TEST_STORE(x1,x3,0,x2,x10,0xfffffffbffffffff,220,752,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffff7ffffffff; immval:244
TEST_STORE(x1,x3,0,x2,x10,0xfffffff7ffffffff,244,760,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffefffffffff; immval:8
TEST_STORE(x1,x3,0,x2,x10,0xffffffefffffffff,8,768,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffbfffffffff; immval:32
TEST_STORE(x1,x3,0,x2,x10,0xffffffbfffffffff,32,776,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffff7fffffffff; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xffffff7fffffffff,252,784,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffeffffffffff; immval:48
TEST_STORE(x1,x3,0,x2,x10,0xfffffeffffffffff,48,792,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffdffffffffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xfffffdffffffffff,52,800,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffbffffffffff; immval:220
TEST_STORE(x1,x3,0,x2,x10,0xfffffbffffffffff,220,808,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffff7ffffffffff; immval:244
TEST_STORE(x1,x3,0,x2,x10,0xfffff7ffffffffff,244,816,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffefffffffffff; immval:188
TEST_STORE(x1,x3,0,x2,x10,0xffffefffffffffff,188,824,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffff7ffffff; immval:16
TEST_STORE(x1,x3,0,x2,x10,0xfffffffff7ffffff,16,832,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x0000000000000020; immval:68
TEST_STORE(x1,x3,0,x2,x10,0x0000000000000020,68,840,c.swsp,0)
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
