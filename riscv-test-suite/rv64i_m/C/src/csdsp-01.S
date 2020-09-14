
#This assembly file tests the c.sdsp instruction of the RISC-V C extension for the csdsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",csdsp)

la x6,signature_x6_1

#opcode:c.sdsp; op1:x2; op2:x17; op2val:0x0000000040000000; immval: 472
TEST_STORE(x6,x8,0,x2,x17,0x0000000040000000,472,0,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x11; op2val:0x0000000000000003; immval: 0
TEST_STORE(x6,x8,0,x2,x11,0x0000000000000003,0,8,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x5; op2val:0x8000000000000000; immval: 152
TEST_STORE(x6,x8,0,x2,x5,0x8000000000000000,152,16,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x15; op2val:0x0000000000000000; immval: 104
TEST_STORE(x6,x8,0,x2,x15,0x0000000000000000,104,24,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x20; op2val:0x7fffffffffffffff; immval: 168
TEST_STORE(x6,x8,0,x2,x20,0x7fffffffffffffff,168,32,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x7; op2val:0x0000000000000001; immval: 472
TEST_STORE(x6,x8,0,x2,x7,0x0000000000000001,472,40,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x28; op2val:0xfffffffffffffffd; immval: 8
TEST_STORE(x6,x8,0,x2,x28,0xfffffffffffffffd,8,48,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000004000000000; immval: 16
TEST_STORE(x6,x8,0,x2,x10,0x0000004000000000,16,56,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x24; op2val:0xffffffffffbfffff; immval: 32
TEST_STORE(x6,x8,0,x2,x24,0xffffffffffbfffff,32,64,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x3; op2val:0x0000000000000400; immval: 64
TEST_STORE(x6,x8,0,x2,x3,0x0000000000000400,64,72,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x26; op2val:0xffffffffffffff7f; immval: 128
TEST_STORE(x6,x8,0,x2,x26,0xffffffffffffff7f,128,80,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x14; op2val:0x0000000000000004; immval: 256
TEST_STORE(x6,x8,0,x2,x14,0x0000000000000004,256,88,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x0; op2val:0xfffffffffffffff8; immval: 496
TEST_STORE(x6,x8,0,x2,x0,0xfffffffffffffff8,496,96,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x16; op2val:0xfeffffffffffffff; immval: 488
TEST_STORE(x6,x8,0,x2,x16,0xfeffffffffffffff,488,104,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x21; op2val:0xfffffffffffffffb; immval: 440
TEST_STORE(x6,x8,0,x2,x21,0xfffffffffffffffb,440,112,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x13; op2val:0xfffffffffffff7ff; immval: 376
TEST_STORE(x6,x8,0,x2,x13,0xfffffffffffff7ff,376,120,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x30; op2val:0xfffffdffffffffff; immval: 248
TEST_STORE(x6,x8,0,x2,x30,0xfffffdffffffffff,248,128,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x12; op2val:0x0000000000400000; immval: 336
TEST_STORE(x6,x8,0,x2,x12,0x0000000000400000,336,136,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x27; op2val:0x0000000000000002; immval: 16
TEST_STORE(x6,x8,0,x2,x27,0x0000000000000002,16,144,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x4; op2val:0x0000000000000008; immval: 16
TEST_STORE(x6,x8,0,x2,x4,0x0000000000000008,16,152,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x1; op2val:0x0000000000000010; immval: 144
TEST_STORE(x6,x8,0,x2,x1,0x0000000000000010,144,160,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x19; op2val:0x0000000000000020; immval: 128
TEST_STORE(x6,x8,0,x2,x19,0x0000000000000020,128,168,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x23; op2val:0x0000000000000040; immval: 248
TEST_STORE(x6,x8,0,x2,x23,0x0000000000000040,248,176,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x31; op2val:0x0000000000000080; immval: 248
TEST_STORE(x6,x8,0,x2,x31,0x0000000000000080,248,184,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x29; op2val:0x0000000000000100; immval: 256
TEST_STORE(x6,x8,0,x2,x29,0x0000000000000100,256,192,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x22; op2val:0x0000000000000200; immval: 80
TEST_STORE(x6,x8,0,x2,x22,0x0000000000000200,80,200,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x9; op2val:0x0000000000000800; immval: 16
TEST_STORE(x6,x8,0,x2,x9,0x0000000000000800,16,208,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x18; op2val:0x0000000000001000; immval: 128
TEST_STORE(x6,x3,0,x2,x18,0x0000000000001000,128,216,c.sdsp,0)
la x1,signature_x1_0

#opcode:c.sdsp; op1:x2; op2:x25; op2val:0x0000000000002000; immval: 104
TEST_STORE(x1,x3,0,x2,x25,0x0000000000002000,104,0,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x6; op2val:0x0000000000004000; immval: 88
TEST_STORE(x1,x3,0,x2,x6,0x0000000000004000,88,8,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x2; op2val:0x0000000000008000; immval: 488
TEST_STORE(x1,x3,0,x2,x2,0x0000000000008000,488,16,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x8; op2val:0x0000000000010000; immval: 16
TEST_STORE(x1,x3,0,x2,x8,0x0000000000010000,16,24,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000020000; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0x0000000000020000,376,32,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000040000; immval: 80
TEST_STORE(x1,x3,0,x2,x10,0x0000000000040000,80,40,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000080000; immval: 40
TEST_STORE(x1,x3,0,x2,x10,0x0000000000080000,40,48,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000100000; immval: 440
TEST_STORE(x1,x3,0,x2,x10,0x0000000000100000,440,56,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000200000; immval: 64
TEST_STORE(x1,x3,0,x2,x10,0x0000000000200000,64,64,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000800000; immval: 248
TEST_STORE(x1,x3,0,x2,x10,0x0000000000800000,248,72,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000001000000; immval: 32
TEST_STORE(x1,x3,0,x2,x10,0x0000000001000000,32,80,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000002000000; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0x0000000002000000,72,88,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000004000000; immval: 16
TEST_STORE(x1,x3,0,x2,x10,0x0000000004000000,16,96,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000008000000; immval: 144
TEST_STORE(x1,x3,0,x2,x10,0x0000000008000000,144,104,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000010000000; immval: 32
TEST_STORE(x1,x3,0,x2,x10,0x0000000010000000,32,112,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000020000000; immval: 440
TEST_STORE(x1,x3,0,x2,x10,0x0000000020000000,440,120,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000080000000; immval: 0
TEST_STORE(x1,x3,0,x2,x10,0x0000000080000000,0,128,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000100000000; immval: 256
TEST_STORE(x1,x3,0,x2,x10,0x0000000100000000,256,136,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000200000000; immval: 144
TEST_STORE(x1,x3,0,x2,x10,0x0000000200000000,144,144,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000400000000; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0x0000000400000000,376,152,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000800000000; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0x0000000800000000,496,160,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000001000000000; immval: 88
TEST_STORE(x1,x3,0,x2,x10,0x0000001000000000,88,168,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000002000000000; immval: 32
TEST_STORE(x1,x3,0,x2,x10,0x0000002000000000,32,176,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000008000000000; immval: 336
TEST_STORE(x1,x3,0,x2,x10,0x0000008000000000,336,184,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000010000000000; immval: 136
TEST_STORE(x1,x3,0,x2,x10,0x0000010000000000,136,192,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000020000000000; immval: 128
TEST_STORE(x1,x3,0,x2,x10,0x0000020000000000,128,200,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000040000000000; immval: 168
TEST_STORE(x1,x3,0,x2,x10,0x0000040000000000,168,208,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000080000000000; immval: 248
TEST_STORE(x1,x3,0,x2,x10,0x0000080000000000,248,216,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000100000000000; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0x0000100000000000,72,224,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000200000000000; immval: 120
TEST_STORE(x1,x3,0,x2,x10,0x0000200000000000,120,232,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000400000000000; immval: 120
TEST_STORE(x1,x3,0,x2,x10,0x0000400000000000,120,240,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000800000000000; immval: 248
TEST_STORE(x1,x3,0,x2,x10,0x0000800000000000,248,248,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0001000000000000; immval: 488
TEST_STORE(x1,x3,0,x2,x10,0x0001000000000000,488,256,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0002000000000000; immval: 24
TEST_STORE(x1,x3,0,x2,x10,0x0002000000000000,24,264,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0004000000000000; immval: 24
TEST_STORE(x1,x3,0,x2,x10,0x0004000000000000,24,272,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0008000000000000; immval: 472
TEST_STORE(x1,x3,0,x2,x10,0x0008000000000000,472,280,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0010000000000000; immval: 472
TEST_STORE(x1,x3,0,x2,x10,0x0010000000000000,472,288,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0020000000000000; immval: 488
TEST_STORE(x1,x3,0,x2,x10,0x0020000000000000,488,296,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0040000000000000; immval: 112
TEST_STORE(x1,x3,0,x2,x10,0x0040000000000000,112,304,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0080000000000000; immval: 80
TEST_STORE(x1,x3,0,x2,x10,0x0080000000000000,80,312,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0100000000000000; immval: 64
TEST_STORE(x1,x3,0,x2,x10,0x0100000000000000,64,320,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0200000000000000; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0x0200000000000000,72,328,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffdfffffffffff; immval: 504
TEST_STORE(x1,x3,0,x2,x10,0xffffdfffffffffff,504,336,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffbfffffffffff; immval: 16
TEST_STORE(x1,x3,0,x2,x10,0xffffbfffffffffff,16,344,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffff7fffffffffff; immval: 24
TEST_STORE(x1,x3,0,x2,x10,0xffff7fffffffffff,24,352,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffeffffffffffff; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0xfffeffffffffffff,72,360,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffdffffffffffff; immval: 40
TEST_STORE(x1,x3,0,x2,x10,0xfffdffffffffffff,40,368,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffbffffffffffff; immval: 64
TEST_STORE(x1,x3,0,x2,x10,0xfffbffffffffffff,64,376,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfff7ffffffffffff; immval: 96
TEST_STORE(x1,x3,0,x2,x10,0xfff7ffffffffffff,96,384,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffefffffffffffff; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0xffefffffffffffff,376,392,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffdfffffffffffff; immval: 128
TEST_STORE(x1,x3,0,x2,x10,0xffdfffffffffffff,128,400,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffbfffffffffffff; immval: 40
TEST_STORE(x1,x3,0,x2,x10,0xffbfffffffffffff,40,408,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xff7fffffffffffff; immval: 440
TEST_STORE(x1,x3,0,x2,x10,0xff7fffffffffffff,440,416,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfdffffffffffffff; immval: 144
TEST_STORE(x1,x3,0,x2,x10,0xfdffffffffffffff,144,424,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfbffffffffffffff; immval: 472
TEST_STORE(x1,x3,0,x2,x10,0xfbffffffffffffff,472,432,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xf7ffffffffffffff; immval: 32
TEST_STORE(x1,x3,0,x2,x10,0xf7ffffffffffffff,32,440,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xefffffffffffffff; immval: 0
TEST_STORE(x1,x3,0,x2,x10,0xefffffffffffffff,0,448,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xdfffffffffffffff; immval: 336
TEST_STORE(x1,x3,0,x2,x10,0xdfffffffffffffff,336,456,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xbfffffffffffffff; immval: 256
TEST_STORE(x1,x3,0,x2,x10,0xbfffffffffffffff,256,464,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x5555555555555555; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0x5555555555555555,496,472,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xaaaaaaaaaaaaaaaa; immval: 8
TEST_STORE(x1,x3,0,x2,x10,0xaaaaaaaaaaaaaaaa,8,480,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0400000000000000; immval: 56
TEST_STORE(x1,x3,0,x2,x10,0x0400000000000000,56,488,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0800000000000000; immval: 336
TEST_STORE(x1,x3,0,x2,x10,0x0800000000000000,336,496,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x1000000000000000; immval: 136
TEST_STORE(x1,x3,0,x2,x10,0x1000000000000000,136,504,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x2000000000000000; immval: 488
TEST_STORE(x1,x3,0,x2,x10,0x2000000000000000,488,512,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x4000000000000000; immval: 440
TEST_STORE(x1,x3,0,x2,x10,0x4000000000000000,440,520,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffffe; immval: 144
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffe,144,528,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffff7; immval: 248
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffff7,248,536,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffffef; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffef,72,544,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffffdf; immval: 104
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffdf,104,552,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffffbf; immval: 472
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffbf,472,560,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffeff; immval: 24
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffeff,24,568,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffdff; immval: 80
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffdff,80,576,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffbff; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffbff,496,584,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffefff; immval: 88
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffefff,88,592,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffdfff; immval: 472
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffdfff,472,600,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffbfff; immval: 96
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffbfff,96,608,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffff7fff; immval: 88
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffff7fff,88,616,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffeffff; immval: 40
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffeffff,40,624,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffdffff; immval: 488
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffdffff,488,632,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffbffff; immval: 8
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffbffff,8,640,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffff7ffff; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffff7ffff,496,648,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffefffff; immval: 120
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffefffff,120,656,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffdfffff; immval: 40
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffdfffff,40,664,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffff7fffff; immval: 128
TEST_STORE(x1,x3,0,x2,x10,0xffffffffff7fffff,128,672,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffeffffff; immval: 64
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffeffffff,64,680,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffdffffff; immval: 24
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffdffffff,24,688,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffbffffff; immval: 112
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffbffffff,112,696,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffff7ffffff; immval: 256
TEST_STORE(x1,x3,0,x2,x10,0xfffffffff7ffffff,256,704,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffefffffff; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0xffffffffefffffff,496,712,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffdfffffff; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0xffffffffdfffffff,72,720,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffbfffffff; immval: 136
TEST_STORE(x1,x3,0,x2,x10,0xffffffffbfffffff,136,728,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffff7fffffff; immval: 104
TEST_STORE(x1,x3,0,x2,x10,0xffffffff7fffffff,104,736,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffeffffffff; immval: 168
TEST_STORE(x1,x3,0,x2,x10,0xfffffffeffffffff,168,744,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffdffffffff; immval: 40
TEST_STORE(x1,x3,0,x2,x10,0xfffffffdffffffff,40,752,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffbffffffff; immval: 440
TEST_STORE(x1,x3,0,x2,x10,0xfffffffbffffffff,440,760,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffff7ffffffff; immval: 336
TEST_STORE(x1,x3,0,x2,x10,0xfffffff7ffffffff,336,768,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffefffffffff; immval: 128
TEST_STORE(x1,x3,0,x2,x10,0xffffffefffffffff,128,776,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffdfffffffff; immval: 136
TEST_STORE(x1,x3,0,x2,x10,0xffffffdfffffffff,136,784,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffbfffffffff; immval: 8
TEST_STORE(x1,x3,0,x2,x10,0xffffffbfffffffff,8,792,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffff7fffffffff; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0xffffff7fffffffff,72,800,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffeffffffffff; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0xfffffeffffffffff,376,808,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffbffffffffff; immval: 80
TEST_STORE(x1,x3,0,x2,x10,0xfffffbffffffffff,80,816,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffff7ffffffffff; immval: 168
TEST_STORE(x1,x3,0,x2,x10,0xfffff7ffffffffff,168,824,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffefffffffffff; immval: 32
TEST_STORE(x1,x3,0,x2,x10,0xffffefffffffffff,32,832,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffff8; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffff8,496,840,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000008000; immval: 488
TEST_STORE(x1,x3,0,x2,x10,0x0000000000008000,488,848,c.sdsp,0)
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
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 28*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 107*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
