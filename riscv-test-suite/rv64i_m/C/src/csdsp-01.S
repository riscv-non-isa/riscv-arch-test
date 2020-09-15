
#This assembly file tests the c.sdsp instruction of the RISC-V C extension for the csdsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",csdsp)

la x8,signature_x8_1

#opcode:c.sdsp; op1:x2; op2:x3; op2val:0x0004000000000000; immval: 96
TEST_STORE(x8,x14,0,x2,x3,0x0004000000000000,96,0,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x12; op2val:0xfffffffffffffffd; immval: 0
TEST_STORE(x8,x14,0,x2,x12,0xfffffffffffffffd,0,8,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x0; op2val:0x8000000000000000; immval: 8
TEST_STORE(x8,x14,0,x2,x0,0x8000000000000000,8,16,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x9; op2val:0x0000000000000000; immval: 64
TEST_STORE(x8,x14,0,x2,x9,0x0000000000000000,64,24,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x17; op2val:0x7fffffffffffffff; immval: 136
TEST_STORE(x8,x14,0,x2,x17,0x7fffffffffffffff,136,32,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x31; op2val:0x0000000000000001; immval: 72
TEST_STORE(x8,x14,0,x2,x31,0x0000000000000001,72,40,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x30; op2val:0xfffffffffffffff7; immval: 16
TEST_STORE(x8,x14,0,x2,x30,0xfffffffffffffff7,16,48,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x4; op2val:0x2000000000000000; immval: 32
TEST_STORE(x8,x14,0,x2,x4,0x2000000000000000,32,56,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x29; op2val:0x0000000000000008; immval: 128
TEST_STORE(x8,x14,0,x2,x29,0x0000000000000008,128,64,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x15; op2val:0xfffffffffffffffd; immval: 256
TEST_STORE(x8,x14,0,x2,x15,0xfffffffffffffffd,256,72,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x24; op2val:0x0000000000000400; immval: 496
TEST_STORE(x8,x14,0,x2,x24,0x0000000000000400,496,80,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x1; op2val:0x0000001000000000; immval: 488
TEST_STORE(x8,x14,0,x2,x1,0x0000001000000000,488,88,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x26; op2val:0xfffffeffffffffff; immval: 472
TEST_STORE(x8,x14,0,x2,x26,0xfffffeffffffffff,472,96,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x23; op2val:0xffffffffff7fffff; immval: 440
TEST_STORE(x8,x14,0,x2,x23,0xffffffffff7fffff,440,104,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x27; op2val:0x0400000000000000; immval: 376
TEST_STORE(x8,x14,0,x2,x27,0x0400000000000000,376,112,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x22; op2val:0x0000000000100000; immval: 248
TEST_STORE(x8,x14,0,x2,x22,0x0000000000100000,248,120,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x7; op2val:0xfffffff7ffffffff; immval: 168
TEST_STORE(x8,x14,0,x2,x7,0xfffffff7ffffffff,168,128,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x2; op2val:0xfffeffffffffffff; immval: 336
TEST_STORE(x8,x14,0,x2,x2,0xfffeffffffffffff,336,136,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x11; op2val:0x0000000000000002; immval: 256
TEST_STORE(x8,x14,0,x2,x11,0x0000000000000002,256,144,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x16; op2val:0x0000000000000004; immval: 56
TEST_STORE(x8,x14,0,x2,x16,0x0000000000000004,56,152,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x20; op2val:0x0000000000000010; immval: 64
TEST_STORE(x8,x14,0,x2,x20,0x0000000000000010,64,160,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x18; op2val:0x0000000000000020; immval: 256
TEST_STORE(x8,x14,0,x2,x18,0x0000000000000020,256,168,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x13; op2val:0x0000000000000040; immval: 336
TEST_STORE(x8,x14,0,x2,x13,0x0000000000000040,336,176,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x6; op2val:0x0000000000000080; immval: 128
TEST_STORE(x8,x14,0,x2,x6,0x0000000000000080,128,184,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x21; op2val:0x0000000000000100; immval: 48
TEST_STORE(x8,x14,0,x2,x21,0x0000000000000100,48,192,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000000200; immval: 168
TEST_STORE(x8,x14,0,x2,x10,0x0000000000000200,168,200,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x28; op2val:0x0000000000000800; immval: 64
TEST_STORE(x8,x14,0,x2,x28,0x0000000000000800,64,208,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x5; op2val:0x0000000000001000; immval: 376
TEST_STORE(x8,x14,0,x2,x5,0x0000000000001000,376,216,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x25; op2val:0x0000000000002000; immval: 112
TEST_STORE(x8,x3,0,x2,x25,0x0000000000002000,112,224,c.sdsp,0)
la x1,signature_x1_0

#opcode:c.sdsp; op1:x2; op2:x8; op2val:0x0000000000004000; immval: 80
TEST_STORE(x1,x3,0,x2,x8,0x0000000000004000,80,0,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x19; op2val:0x0000000000008000; immval: 136
TEST_STORE(x1,x3,0,x2,x19,0x0000000000008000,136,8,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x14; op2val:0x0000000000010000; immval: 32
TEST_STORE(x1,x3,0,x2,x14,0x0000000000010000,32,16,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000020000; immval: 144
TEST_STORE(x1,x3,0,x2,x10,0x0000000000020000,144,24,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000040000; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0x0000000000040000,72,32,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000080000; immval: 144
TEST_STORE(x1,x3,0,x2,x10,0x0000000000080000,144,40,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000200000; immval: 16
TEST_STORE(x1,x3,0,x2,x10,0x0000000000200000,16,48,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000400000; immval: 112
TEST_STORE(x1,x3,0,x2,x10,0x0000000000400000,112,56,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000000800000; immval: 488
TEST_STORE(x1,x3,0,x2,x10,0x0000000000800000,488,64,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000001000000; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0x0000000001000000,376,72,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000002000000; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0x0000000002000000,72,80,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000004000000; immval: 504
TEST_STORE(x1,x3,0,x2,x10,0x0000000004000000,504,88,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000008000000; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0x0000000008000000,376,96,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000010000000; immval: 136
TEST_STORE(x1,x3,0,x2,x10,0x0000000010000000,136,104,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000020000000; immval: 440
TEST_STORE(x1,x3,0,x2,x10,0x0000000020000000,440,112,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000040000000; immval: 504
TEST_STORE(x1,x3,0,x2,x10,0x0000000040000000,504,120,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000080000000; immval: 80
TEST_STORE(x1,x3,0,x2,x10,0x0000000080000000,80,128,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000100000000; immval: 440
TEST_STORE(x1,x3,0,x2,x10,0x0000000100000000,440,136,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000200000000; immval: 152
TEST_STORE(x1,x3,0,x2,x10,0x0000000200000000,152,144,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000400000000; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0x0000000400000000,496,152,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000000800000000; immval: 248
TEST_STORE(x1,x3,0,x2,x10,0x0000000800000000,248,160,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000002000000000; immval: 32
TEST_STORE(x1,x3,0,x2,x10,0x0000002000000000,32,168,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000004000000000; immval: 96
TEST_STORE(x1,x3,0,x2,x10,0x0000004000000000,96,176,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000008000000000; immval: 472
TEST_STORE(x1,x3,0,x2,x10,0x0000008000000000,472,184,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000010000000000; immval: 16
TEST_STORE(x1,x3,0,x2,x10,0x0000010000000000,16,192,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000020000000000; immval: 48
TEST_STORE(x1,x3,0,x2,x10,0x0000020000000000,48,200,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000040000000000; immval: 336
TEST_STORE(x1,x3,0,x2,x10,0x0000040000000000,336,208,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000080000000000; immval: 256
TEST_STORE(x1,x3,0,x2,x10,0x0000080000000000,256,216,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000100000000000; immval: 256
TEST_STORE(x1,x3,0,x2,x10,0x0000100000000000,256,224,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000200000000000; immval: 16
TEST_STORE(x1,x3,0,x2,x10,0x0000200000000000,16,232,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000400000000000; immval: 120
TEST_STORE(x1,x3,0,x2,x10,0x0000400000000000,120,240,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0000800000000000; immval: 80
TEST_STORE(x1,x3,0,x2,x10,0x0000800000000000,80,248,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0001000000000000; immval: 504
TEST_STORE(x1,x3,0,x2,x10,0x0001000000000000,504,256,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0002000000000000; immval: 80
TEST_STORE(x1,x3,0,x2,x10,0x0002000000000000,80,264,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0008000000000000; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0x0008000000000000,496,272,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0010000000000000; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0x0010000000000000,376,280,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0020000000000000; immval: 504
TEST_STORE(x1,x3,0,x2,x10,0x0020000000000000,504,288,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0040000000000000; immval: 48
TEST_STORE(x1,x3,0,x2,x10,0x0040000000000000,48,296,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0080000000000000; immval: 112
TEST_STORE(x1,x3,0,x2,x10,0x0080000000000000,112,304,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0100000000000000; immval: 88
TEST_STORE(x1,x3,0,x2,x10,0x0100000000000000,88,312,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffdfffffffffff; immval: 504
TEST_STORE(x1,x3,0,x2,x10,0xffffdfffffffffff,504,320,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffbfffffffffff; immval: 0
TEST_STORE(x1,x3,0,x2,x10,0xffffbfffffffffff,0,328,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffff7fffffffffff; immval: 120
TEST_STORE(x1,x3,0,x2,x10,0xffff7fffffffffff,120,336,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffdffffffffffff; immval: 168
TEST_STORE(x1,x3,0,x2,x10,0xfffdffffffffffff,168,344,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffbffffffffffff; immval: 24
TEST_STORE(x1,x3,0,x2,x10,0xfffbffffffffffff,24,352,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfff7ffffffffffff; immval: 168
TEST_STORE(x1,x3,0,x2,x10,0xfff7ffffffffffff,168,360,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffefffffffffffff; immval: 24
TEST_STORE(x1,x3,0,x2,x10,0xffefffffffffffff,24,368,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffdfffffffffffff; immval: 112
TEST_STORE(x1,x3,0,x2,x10,0xffdfffffffffffff,112,376,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffbfffffffffffff; immval: 88
TEST_STORE(x1,x3,0,x2,x10,0xffbfffffffffffff,88,384,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xff7fffffffffffff; immval: 64
TEST_STORE(x1,x3,0,x2,x10,0xff7fffffffffffff,64,392,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfeffffffffffffff; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0xfeffffffffffffff,496,400,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfdffffffffffffff; immval: 56
TEST_STORE(x1,x3,0,x2,x10,0xfdffffffffffffff,56,408,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfbffffffffffffff; immval: 336
TEST_STORE(x1,x3,0,x2,x10,0xfbffffffffffffff,336,416,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xf7ffffffffffffff; immval: 24
TEST_STORE(x1,x3,0,x2,x10,0xf7ffffffffffffff,24,424,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xefffffffffffffff; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0xefffffffffffffff,376,432,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xdfffffffffffffff; immval: 144
TEST_STORE(x1,x3,0,x2,x10,0xdfffffffffffffff,144,440,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xbfffffffffffffff; immval: 16
TEST_STORE(x1,x3,0,x2,x10,0xbfffffffffffffff,16,448,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x5555555555555555; immval: 256
TEST_STORE(x1,x3,0,x2,x10,0x5555555555555555,256,456,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xaaaaaaaaaaaaaaaa; immval: 72
TEST_STORE(x1,x3,0,x2,x10,0xaaaaaaaaaaaaaaaa,72,464,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0200000000000000; immval: 0
TEST_STORE(x1,x3,0,x2,x10,0x0200000000000000,0,472,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x0800000000000000; immval: 80
TEST_STORE(x1,x3,0,x2,x10,0x0800000000000000,80,480,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x1000000000000000; immval: 440
TEST_STORE(x1,x3,0,x2,x10,0x1000000000000000,440,488,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x4000000000000000; immval: 152
TEST_STORE(x1,x3,0,x2,x10,0x4000000000000000,152,496,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffffe; immval: 496
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffe,496,504,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffffb; immval: 48
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffffb,48,512,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffffef; immval: 96
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffef,96,520,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffffdf; immval: 80
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffdf,80,528,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffffbf; immval: 112
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffffbf,112,536,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffff7f; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffff7f,376,544,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffeff; immval: 0
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffeff,0,552,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffdff; immval: 32
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffdff,32,560,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffffbff; immval: 32
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffffbff,32,568,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffff7ff; immval: 136
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffff7ff,136,576,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffefff; immval: 104
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffefff,104,584,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffdfff; immval: 248
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffdfff,248,592,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffffbfff; immval: 104
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffffbfff,104,600,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffff7fff; immval: 168
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffff7fff,168,608,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffeffff; immval: 104
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffeffff,104,616,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffdffff; immval: 40
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffdffff,40,624,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffffbffff; immval: 376
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffffbffff,376,632,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffff7ffff; immval: 248
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffff7ffff,248,640,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffefffff; immval: 0
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffefffff,0,648,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffdfffff; immval: 248
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffdfffff,248,656,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffffbfffff; immval: 168
TEST_STORE(x1,x3,0,x2,x10,0xffffffffffbfffff,168,664,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffeffffff; immval: 24
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffeffffff,24,672,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffdffffff; immval: 48
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffdffffff,48,680,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffffbffffff; immval: 136
TEST_STORE(x1,x3,0,x2,x10,0xfffffffffbffffff,136,688,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffff7ffffff; immval: 16
TEST_STORE(x1,x3,0,x2,x10,0xfffffffff7ffffff,16,696,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffefffffff; immval: 256
TEST_STORE(x1,x3,0,x2,x10,0xffffffffefffffff,256,704,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffdfffffff; immval: 64
TEST_STORE(x1,x3,0,x2,x10,0xffffffffdfffffff,64,712,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffffbfffffff; immval: 152
TEST_STORE(x1,x3,0,x2,x10,0xffffffffbfffffff,152,720,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffff7fffffff; immval: 96
TEST_STORE(x1,x3,0,x2,x10,0xffffffff7fffffff,96,728,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffeffffffff; immval: 144
TEST_STORE(x1,x3,0,x2,x10,0xfffffffeffffffff,144,736,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffdffffffff; immval: 336
TEST_STORE(x1,x3,0,x2,x10,0xfffffffdffffffff,336,744,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffffbffffffff; immval: 40
TEST_STORE(x1,x3,0,x2,x10,0xfffffffbffffffff,40,752,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffefffffffff; immval: 40
TEST_STORE(x1,x3,0,x2,x10,0xffffffefffffffff,40,760,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffdfffffffff; immval: 120
TEST_STORE(x1,x3,0,x2,x10,0xffffffdfffffffff,120,768,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffffbfffffffff; immval: 8
TEST_STORE(x1,x3,0,x2,x10,0xffffffbfffffffff,8,776,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffff7fffffffff; immval: 440
TEST_STORE(x1,x3,0,x2,x10,0xffffff7fffffffff,440,784,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffdffffffffff; immval: 48
TEST_STORE(x1,x3,0,x2,x10,0xfffffdffffffffff,48,792,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffffbffffffffff; immval: 136
TEST_STORE(x1,x3,0,x2,x10,0xfffffbffffffffff,136,800,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffff7ffffffffff; immval: 144
TEST_STORE(x1,x3,0,x2,x10,0xfffff7ffffffffff,144,808,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xffffefffffffffff; immval: 48
TEST_STORE(x1,x3,0,x2,x10,0xffffefffffffffff,48,816,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0x8000000000000000; immval: 8
TEST_STORE(x1,x3,0,x2,x10,0x8000000000000000,8,824,c.sdsp,0)

#opcode:c.sdsp; op1:x2; op2:x10; op2val:0xfffeffffffffffff; immval: 336
TEST_STORE(x1,x3,0,x2,x10,0xfffeffffffffffff,336,832,c.sdsp,0)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x8_1:
    .fill 29*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 105*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
