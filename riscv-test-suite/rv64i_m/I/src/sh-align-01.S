
#This assembly file tests the sh instruction of the RISC-V I extension for the sh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sh-align)

la x2,signature_x2_1

# opcode: sh; op1:x19; op2:x26; op2val:0xffffffffffffffbf; immval: -8; align:0
TEST_STORE(x2,x10,0,x19,x26,0xffffffffffffffbf,-8,0,sh,0)

# opcode: sh; op1:x15; op2:x12; op2val:0x0000000000004000; immval: 1365; align:0
TEST_STORE(x2,x10,0,x15,x12,0x0000000000004000,1365,8,sh,0)

# opcode: sh; op1:x22; op2:x16; op2val:0x0000000000000002; immval: -2; align:0
TEST_STORE(x2,x10,0,x22,x16,0x0000000000000002,-2,16,sh,0)

# opcode: sh; op1:x4; op2:x3; op2val:0x5555555555555555; immval: 2047; align:0
TEST_STORE(x2,x10,0,x4,x3,0x5555555555555555,2047,24,sh,0)

# opcode: sh; op1:x11; op2:x14; op2val:0x0000000004000000; immval: 512; align:2
TEST_STORE(x2,x10,0,x11,x14,0x0000000004000000,512,32,sh,2)

# opcode: sh; op1:x12; op2:x8; op2val:0xffffffffffefffff; immval: -3; align:2
TEST_STORE(x2,x10,0,x12,x8,0xffffffffffefffff,-3,40,sh,2)

# opcode: sh; op1:x28; op2:x17; op2val:0x0000000000002000; immval: -6; align:2
TEST_STORE(x2,x10,0,x28,x17,0x0000000000002000,-6,48,sh,2)

# opcode: sh; op1:x3; op2:x31; op2val:0x0000080000000000; immval: 1023; align:2
TEST_STORE(x2,x10,0,x3,x31,0x0000080000000000,1023,56,sh,2)

# opcode: sh; op1:x1; op2:x21; op2val:0x0000000000000009; immval: 0; align:0
TEST_STORE(x2,x10,0,x1,x21,0x0000000000000009,0,64,sh,0)

# opcode: sh; op1:x24; op2:x28; op2val:0x8000000000000000; immval: 8; align:0
TEST_STORE(x2,x10,0,x24,x28,0x8000000000000000,8,72,sh,0)

# opcode: sh; op1:x7; op2:x29; op2val:0x0000000000000000; immval: 7; align:0
TEST_STORE(x2,x10,0,x7,x29,0x0000000000000000,7,80,sh,0)

# opcode: sh; op1:x27; op2:x23; op2val:0x7fffffffffffffff; immval: 512; align:0
TEST_STORE(x2,x10,0,x27,x23,0x7fffffffffffffff,512,88,sh,0)

# opcode: sh; op1:x6; op2:x30; op2val:0x0000000000000001; immval: -129; align:0
TEST_STORE(x2,x10,0,x6,x30,0x0000000000000001,-129,96,sh,0)

# opcode: sh; op1:x29; op2:x5; op2val:0x0000000000000004; immval: -1024; align:0
TEST_STORE(x2,x10,0,x29,x5,0x0000000000000004,-1024,104,sh,0)

# opcode: sh; op1:x30; op2:x18; op2val:0x0000000000000008; immval: -17; align:0
TEST_STORE(x2,x10,0,x30,x18,0x0000000000000008,-17,112,sh,0)

# opcode: sh; op1:x9; op2:x20; op2val:0x0000000000000010; immval: 4; align:0
TEST_STORE(x2,x10,0,x9,x20,0x0000000000000010,4,120,sh,0)

# opcode: sh; op1:x14; op2:x27; op2val:0x0000000000000020; immval: -9; align:0
TEST_STORE(x2,x12,0,x14,x27,0x0000000000000020,-9,128,sh,0)

# opcode: sh; op1:x13; op2:x0; op2val:0x0000000000000040; immval: -10; align:0
TEST_STORE(x2,x12,0,x13,x0,0x0000000000000040,-10,136,sh,0)
la x3,signature_x3_0

# opcode: sh; op1:x23; op2:x9; op2val:0x0000000000000080; immval: 7; align:0
TEST_STORE(x3,x12,0,x23,x9,0x0000000000000080,7,0,sh,0)

# opcode: sh; op1:x5; op2:x25; op2val:0x0000000000000100; immval: 512; align:0
TEST_STORE(x3,x12,0,x5,x25,0x0000000000000100,512,8,sh,0)

# opcode: sh; op1:x10; op2:x2; op2val:0x0000000000000200; immval: -2048; align:0
TEST_STORE(x3,x12,0,x10,x2,0x0000000000000200,-2048,16,sh,0)

# opcode: sh; op1:x21; op2:x7; op2val:0x0000000000000400; immval: 2; align:0
TEST_STORE(x3,x12,0,x21,x7,0x0000000000000400,2,24,sh,0)

# opcode: sh; op1:x26; op2:x24; op2val:0x0000000000000800; immval: -3; align:0
TEST_STORE(x3,x12,0,x26,x24,0x0000000000000800,-3,32,sh,0)

# opcode: sh; op1:x25; op2:x10; op2val:0x0000000000001000; immval: 1; align:0
TEST_STORE(x3,x12,0,x25,x10,0x0000000000001000,1,40,sh,0)

# opcode: sh; op1:x17; op2:x22; op2val:0x0000000000008000; immval: -8; align:0
TEST_STORE(x3,x12,0,x17,x22,0x0000000000008000,-8,48,sh,0)

# opcode: sh; op1:x18; op2:x4; op2val:0x0000000000010000; immval: -2048; align:0
TEST_STORE(x3,x12,0,x18,x4,0x0000000000010000,-2048,56,sh,0)

# opcode: sh; op1:x31; op2:x15; op2val:0x0000000000020000; immval: 5; align:0
TEST_STORE(x3,x12,0,x31,x15,0x0000000000020000,5,64,sh,0)

# opcode: sh; op1:x20; op2:x19; op2val:0x0000000000040000; immval: -2; align:0
TEST_STORE(x3,x12,0,x20,x19,0x0000000000040000,-2,72,sh,0)

# opcode: sh; op1:x8; op2:x11; op2val:0x0000000000080000; immval: 5; align:0
TEST_STORE(x3,x12,0,x8,x11,0x0000000000080000,5,80,sh,0)

# opcode: sh; op1:x2; op2:x6; op2val:0x0000000000100000; immval: 3; align:0
TEST_STORE(x3,x12,0,x2,x6,0x0000000000100000,3,88,sh,0)

# opcode: sh; op1:x16; op2:x1; op2val:0x0000000000200000; immval: 8; align:0
TEST_STORE(x3,x12,0,x16,x1,0x0000000000200000,8,96,sh,0)

# opcode: sh; op1:x21; op2:x13; op2val:0x0000000000400000; immval: 3; align:0
TEST_STORE(x3,x12,0,x21,x13,0x0000000000400000,3,104,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000000800000; immval: -4; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000000800000,-4,112,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000001000000; immval: -10; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000001000000,-10,120,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000002000000; immval: -9; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000002000000,-9,128,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 64; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000008000000,64,136,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000010000000; immval: 1365; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000010000000,1365,144,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000020000000; immval: -33; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000020000000,-33,152,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000040000000; immval: -2048; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000040000000,-2048,160,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000080000000; immval: -2; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000080000000,-2,168,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000100000000; immval: 6; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000100000000,6,176,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000200000000; immval: 2; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000200000000,2,184,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000400000000; immval: 8; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000400000000,8,192,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000800000000; immval: -1024; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000800000000,-1024,200,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000001000000000; immval: 3; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000001000000000,3,208,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000002000000000; immval: 64; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000002000000000,64,216,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000004000000000; immval: -1024; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000004000000000,-1024,224,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000008000000000; immval: -1; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000008000000000,-1,232,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000010000000000; immval: -1; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000010000000000,-1,240,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 32; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000020000000000,32,248,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000040000000000; immval: 512; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000040000000000,512,256,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000100000000000; immval: -10; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000100000000000,-10,264,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000200000000000; immval: 7; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000200000000000,7,272,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000400000000000; immval: -6; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000400000000000,-6,280,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000800000000000; immval: 16; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000800000000000,16,288,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 32; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0001000000000000,32,296,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0002000000000000; immval: 16; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0002000000000000,16,304,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0004000000000000; immval: 7; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0004000000000000,7,312,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0008000000000000; immval: 9; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0008000000000000,9,320,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0010000000000000; immval: -1366; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0010000000000000,-1366,328,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0020000000000000; immval: -7; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0020000000000000,-7,336,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0040000000000000; immval: -2048; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0040000000000000,-2048,344,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 1365; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0080000000000000,1365,352,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0100000000000000; immval: -10; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0100000000000000,-10,360,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0200000000000000; immval: -10; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0200000000000000,-10,368,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0400000000000000; immval: 8; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0400000000000000,8,376,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0800000000000000; immval: -6; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0800000000000000,-6,384,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x1000000000000000; immval: -33; align:0
TEST_STORE(x3,x12,0,x10,x11,0x1000000000000000,-33,392,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x2000000000000000; immval: 512; align:0
TEST_STORE(x3,x12,0,x10,x11,0x2000000000000000,512,400,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 0; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffbffffffffffff,0,408,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 2; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfff7ffffffffffff,2,416,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: 32; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffefffffffffffff,32,424,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: 64; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffdfffffffffffff,64,432,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: 1365; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffbfffffffffffff,1365,440,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: 2047; align:0
TEST_STORE(x3,x12,0,x10,x11,0xff7fffffffffffff,2047,448,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: 0; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfeffffffffffffff,0,456,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: -10; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfdffffffffffffff,-10,464,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: 128; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfbffffffffffffff,128,472,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 7; align:0
TEST_STORE(x3,x12,0,x10,x11,0xf7ffffffffffffff,7,480,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: 1; align:0
TEST_STORE(x3,x12,0,x10,x11,0xefffffffffffffff,1,488,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: -4; align:0
TEST_STORE(x3,x12,0,x10,x11,0xdfffffffffffffff,-4,496,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: -257; align:0
TEST_STORE(x3,x12,0,x10,x11,0xbfffffffffffffff,-257,504,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: 0; align:0
TEST_STORE(x3,x12,0,x10,x11,0xaaaaaaaaaaaaaaaa,0,512,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x4000000000000000; immval: -8; align:0
TEST_STORE(x3,x12,0,x10,x11,0x4000000000000000,-8,520,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 256; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffffffe,256,528,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: -5; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffffffd,-5,536,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: 4; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffffffb,4,544,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: 3; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffffff7,3,552,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: -5; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffffffffef,-5,560,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: -33; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffffffffdf,-33,568,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: -1; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffffffff7f,-1,576,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: 3; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffffeff,3,584,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 2047; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffffdff,2047,592,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: -33; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffffbff,-33,600,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: 256; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffff7ff,256,608,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 3; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffffffefff,3,616,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: 5; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffffffdfff,5,624,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 64; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffffffbfff,64,632,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: -1; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffffff7fff,-1,640,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: -1025; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffeffff,-1025,648,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: -3; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffdffff,-3,656,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: -1025; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffffbffff,-1025,664,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: -1366; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffff7ffff,-1366,672,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: -1; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffffdfffff,-1,680,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: 512; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffffbfffff,512,688,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: -5; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffff7fffff,-5,696,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: 0; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffeffffff,0,704,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: 16; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffdffffff,16,712,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: -2; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffffbffffff,-2,720,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: 0; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffff7ffffff,0,728,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: 9; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffefffffff,9,736,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 1023; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffdfffffff,1023,744,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: 1; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffffbfffffff,1,752,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: -33; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffff7fffffff,-33,760,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: 3; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffeffffffff,3,768,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: 256; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffdffffffff,256,776,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: -1; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffffbffffffff,-1,784,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: -7; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffff7ffffffff,-7,792,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: -1024; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffefffffffff,-1024,800,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: 16; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffdfffffffff,16,808,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: 8; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffffbfffffffff,8,816,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: 128; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffff7fffffffff,128,824,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: -65; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffeffffffffff,-65,832,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: -129; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffdffffffffff,-129,840,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: -5; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffffbffffffffff,-5,848,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: -1024; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffff7ffffffffff,-1024,856,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: -17; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffefffffffffff,-17,864,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: -65; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffdfffffffffff,-65,872,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: -2; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffffbfffffffffff,-2,880,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: 0; align:0
TEST_STORE(x3,x12,0,x10,x11,0xffff7fffffffffff,0,888,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 128; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffeffffffffffff,128,896,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: -65; align:0
TEST_STORE(x3,x12,0,x10,x11,0xfffdffffffffffff,-65,904,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000000000040; immval: -10; align:0
TEST_STORE(x3,x12,0,x10,x11,0x0000000000000040,-10,912,sh,0)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 18*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 115*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
