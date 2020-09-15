
#This assembly file tests the sh instruction of the RISC-V I extension for the sh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sh-align)

la x13,signature_x13_1

# opcode: sh; op1:x6; op2:x25; op2val:0x0000000000000006; immval: 128; align:0
TEST_STORE(x13,x17,0,x6,x25,0x0000000000000006,128,0,sh,0)

# opcode: sh; op1:x14; op2:x7; op2val:0x0400000000000000; immval: -7; align:0
TEST_STORE(x13,x17,0,x14,x7,0x0400000000000000,-7,8,sh,0)

# opcode: sh; op1:x24; op2:x20; op2val:0xffffefffffffffff; immval: -6; align:0
TEST_STORE(x13,x17,0,x24,x20,0xffffefffffffffff,-6,16,sh,0)

# opcode: sh; op1:x30; op2:x0; op2val:0x0000000000000004; immval: -129; align:0
TEST_STORE(x13,x17,0,x30,x0,0x0000000000000004,-129,24,sh,0)

# opcode: sh; op1:x19; op2:x30; op2val:0x0040000000000000; immval: -2048; align:2
TEST_STORE(x13,x17,0,x19,x30,0x0040000000000000,-2048,32,sh,2)

# opcode: sh; op1:x11; op2:x3; op2val:0xfffffdffffffffff; immval: 1; align:2
TEST_STORE(x13,x17,0,x11,x3,0xfffffdffffffffff,1,40,sh,2)

# opcode: sh; op1:x18; op2:x4; op2val:0x0000000000000080; immval: -6; align:2
TEST_STORE(x13,x17,0,x18,x4,0x0000000000000080,-6,48,sh,2)

# opcode: sh; op1:x8; op2:x1; op2val:0x0400000000000000; immval: 7; align:2
TEST_STORE(x13,x17,0,x8,x1,0x0400000000000000,7,56,sh,2)

# opcode: sh; op1:x29; op2:x9; op2val:0x0004000000000000; immval: 0; align:0
TEST_STORE(x13,x17,0,x29,x9,0x0004000000000000,0,64,sh,0)

# opcode: sh; op1:x2; op2:x11; op2val:0x8000000000000000; immval: 1365; align:0
TEST_STORE(x13,x17,0,x2,x11,0x8000000000000000,1365,72,sh,0)

# opcode: sh; op1:x26; op2:x16; op2val:0x0000000000000000; immval: -7; align:0
TEST_STORE(x13,x17,0,x26,x16,0x0000000000000000,-7,80,sh,0)

# opcode: sh; op1:x20; op2:x6; op2val:0x7fffffffffffffff; immval: -9; align:0
TEST_STORE(x13,x17,0,x20,x6,0x7fffffffffffffff,-9,88,sh,0)

# opcode: sh; op1:x5; op2:x29; op2val:0x0000000000000001; immval: -17; align:0
TEST_STORE(x13,x17,0,x5,x29,0x0000000000000001,-17,96,sh,0)

# opcode: sh; op1:x7; op2:x22; op2val:0x0000000000000002; immval: 9; align:0
TEST_STORE(x13,x17,0,x7,x22,0x0000000000000002,9,104,sh,0)

# opcode: sh; op1:x28; op2:x15; op2val:0x0000000000000008; immval: -6; align:0
TEST_STORE(x13,x17,0,x28,x15,0x0000000000000008,-6,112,sh,0)

# opcode: sh; op1:x4; op2:x27; op2val:0x0000000000000010; immval: -5; align:0
TEST_STORE(x13,x17,0,x4,x27,0x0000000000000010,-5,120,sh,0)

# opcode: sh; op1:x31; op2:x26; op2val:0x0000000000000020; immval: 1365; align:0
TEST_STORE(x13,x17,0,x31,x26,0x0000000000000020,1365,128,sh,0)

# opcode: sh; op1:x9; op2:x12; op2val:0x0000000000000040; immval: 32; align:0
TEST_STORE(x13,x17,0,x9,x12,0x0000000000000040,32,136,sh,0)

# opcode: sh; op1:x10; op2:x19; op2val:0x0000000000000100; immval: -65; align:0
TEST_STORE(x13,x17,0,x10,x19,0x0000000000000100,-65,144,sh,0)

# opcode: sh; op1:x25; op2:x31; op2val:0x0000000000000200; immval: -2; align:0
TEST_STORE(x13,x6,0,x25,x31,0x0000000000000200,-2,152,sh,0)

# opcode: sh; op1:x17; op2:x5; op2val:0x0000000000000400; immval: -513; align:0
TEST_STORE(x13,x6,0,x17,x5,0x0000000000000400,-513,160,sh,0)
la x4,signature_x4_0

# opcode: sh; op1:x27; op2:x21; op2val:0x0000000000000800; immval: 4; align:0
TEST_STORE(x4,x6,0,x27,x21,0x0000000000000800,4,0,sh,0)

# opcode: sh; op1:x3; op2:x28; op2val:0x0000000000001000; immval: 1365; align:0
TEST_STORE(x4,x6,0,x3,x28,0x0000000000001000,1365,8,sh,0)

# opcode: sh; op1:x1; op2:x17; op2val:0x0000000000002000; immval: -513; align:0
TEST_STORE(x4,x6,0,x1,x17,0x0000000000002000,-513,16,sh,0)

# opcode: sh; op1:x23; op2:x14; op2val:0x0000000000004000; immval: -3; align:0
TEST_STORE(x4,x6,0,x23,x14,0x0000000000004000,-3,24,sh,0)

# opcode: sh; op1:x22; op2:x10; op2val:0x0000000000008000; immval: 4; align:0
TEST_STORE(x4,x6,0,x22,x10,0x0000000000008000,4,32,sh,0)

# opcode: sh; op1:x21; op2:x24; op2val:0x0000000000010000; immval: -33; align:0
TEST_STORE(x4,x6,0,x21,x24,0x0000000000010000,-33,40,sh,0)

# opcode: sh; op1:x16; op2:x13; op2val:0x0000000000020000; immval: 5; align:0
TEST_STORE(x4,x6,0,x16,x13,0x0000000000020000,5,48,sh,0)

# opcode: sh; op1:x13; op2:x8; op2val:0x0000000000040000; immval: 8; align:0
TEST_STORE(x4,x6,0,x13,x8,0x0000000000040000,8,56,sh,0)

# opcode: sh; op1:x12; op2:x2; op2val:0x0000000000080000; immval: -1; align:0
TEST_STORE(x4,x6,0,x12,x2,0x0000000000080000,-1,64,sh,0)

# opcode: sh; op1:x15; op2:x18; op2val:0x0000000000100000; immval: 1365; align:0
TEST_STORE(x4,x6,0,x15,x18,0x0000000000100000,1365,72,sh,0)

# opcode: sh; op1:x10; op2:x23; op2val:0x0000000000200000; immval: -65; align:0
TEST_STORE(x4,x6,0,x10,x23,0x0000000000200000,-65,80,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000000400000; immval: 256; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000000400000,256,88,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000000800000; immval: -9; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000000800000,-9,96,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000001000000; immval: 32; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000001000000,32,104,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000002000000; immval: 5; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000002000000,5,112,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000004000000; immval: -5; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000004000000,-5,120,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 1024; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000008000000,1024,128,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000010000000; immval: -5; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000010000000,-5,136,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000020000000; immval: 1; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000020000000,1,144,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000040000000; immval: 1024; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000040000000,1024,152,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000080000000; immval: -8; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000080000000,-8,160,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000100000000; immval: -8; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000100000000,-8,168,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000200000000; immval: -65; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000200000000,-65,176,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000400000000; immval: -6; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000400000000,-6,184,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000800000000; immval: 1024; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000800000000,1024,192,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000001000000000; immval: -513; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000001000000000,-513,200,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000002000000000; immval: -7; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000002000000000,-7,208,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000004000000000; immval: 512; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000004000000000,512,216,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000008000000000; immval: -1; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000008000000000,-1,224,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 7; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000010000000000,7,232,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000020000000000; immval: -1025; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000020000000000,-1025,240,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000040000000000; immval: -8; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000040000000000,-8,248,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000080000000000; immval: 5; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000080000000000,5,256,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000100000000000; immval: -65; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000100000000000,-65,264,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000200000000000; immval: -2; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000200000000000,-2,272,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000400000000000; immval: -17; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000400000000000,-17,280,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000800000000000; immval: 512; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000800000000000,512,288,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 128; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0001000000000000,128,296,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0002000000000000; immval: -1025; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0002000000000000,-1025,304,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0008000000000000; immval: -257; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0008000000000000,-257,312,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0010000000000000; immval: -8; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0010000000000000,-8,320,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 1365; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0020000000000000,1365,328,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0080000000000000; immval: -5; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0080000000000000,-5,336,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0100000000000000; immval: 2; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0100000000000000,2,344,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0200000000000000; immval: 1023; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0200000000000000,1023,352,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0800000000000000; immval: -513; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0800000000000000,-513,360,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x1000000000000000; immval: 3; align:0
TEST_STORE(x4,x6,0,x10,x11,0x1000000000000000,3,368,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x2000000000000000; immval: 8; align:0
TEST_STORE(x4,x6,0,x10,x11,0x2000000000000000,8,376,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x4000000000000000; immval: 6; align:0
TEST_STORE(x4,x6,0,x10,x11,0x4000000000000000,6,384,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 6; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffbffffffffffff,6,392,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 128; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfff7ffffffffffff,128,400,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: 6; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffefffffffffffff,6,408,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: -1025; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffdfffffffffffff,-1025,416,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: 1023; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffbfffffffffffff,1023,424,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: -6; align:0
TEST_STORE(x4,x6,0,x10,x11,0xff7fffffffffffff,-6,432,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: 7; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfeffffffffffffff,7,440,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: 0; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfdffffffffffffff,0,448,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: -1024; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfbffffffffffffff,-1024,456,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: -129; align:0
TEST_STORE(x4,x6,0,x10,x11,0xf7ffffffffffffff,-129,464,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: -129; align:0
TEST_STORE(x4,x6,0,x10,x11,0xefffffffffffffff,-129,472,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: -10; align:0
TEST_STORE(x4,x6,0,x10,x11,0xdfffffffffffffff,-10,480,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 6; align:0
TEST_STORE(x4,x6,0,x10,x11,0xbfffffffffffffff,6,488,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x5555555555555555; immval: -17; align:0
TEST_STORE(x4,x6,0,x10,x11,0x5555555555555555,-17,496,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: 8; align:0
TEST_STORE(x4,x6,0,x10,x11,0xaaaaaaaaaaaaaaaa,8,504,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 4; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffffffe,4,512,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: 4; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffffffd,4,520,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: -1366; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffffffb,-1366,528,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: -2; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffffff7,-2,536,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: -257; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffffffef,-257,544,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: -9; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffffffdf,-9,552,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: 2047; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffffffbf,2047,560,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: -257; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffffff7f,-257,568,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: 2; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffffeff,2,576,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 1; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffffdff,1,584,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: -3; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffffbff,-3,592,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: -2; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffff7ff,-2,600,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 0; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffffefff,0,608,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: 1365; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffffdfff,1365,616,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 128; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffffbfff,128,624,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: -7; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffff7fff,-7,632,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: -1366; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffeffff,-1366,640,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: -2; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffdffff,-2,648,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: -10; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffffbffff,-10,656,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: 64; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffff7ffff,64,664,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval: -2; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffefffff,-2,672,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: 0; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffdfffff,0,680,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: 2047; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffffbfffff,2047,688,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: -257; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffff7fffff,-257,696,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: 7; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffeffffff,7,704,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: 6; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffdffffff,6,712,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 0; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffffbffffff,0,720,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: 9; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffff7ffffff,9,728,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: 0; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffefffffff,0,736,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 4; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffdfffffff,4,744,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: 9; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffffbfffffff,9,752,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: -2; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffff7fffffff,-2,760,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: -33; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffeffffffff,-33,768,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: -6; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffdffffffff,-6,776,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 2; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffffbffffffff,2,784,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: -8; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffff7ffffffff,-8,792,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: 1023; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffefffffffff,1023,800,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: 0; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffdfffffffff,0,808,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: -2048; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffffbfffffffff,-2048,816,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: 5; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffff7fffffffff,5,824,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: -8; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffeffffffffff,-8,832,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: 3; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffffbffffffffff,3,840,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: 7; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffff7ffffffffff,7,848,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: -1366; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffdfffffffffff,-1366,856,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: 6; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffffbfffffffffff,6,864,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: -1024; align:0
TEST_STORE(x4,x6,0,x10,x11,0xffff7fffffffffff,-1024,872,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 2047; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffeffffffffffff,2047,880,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: -3; align:0
TEST_STORE(x4,x6,0,x10,x11,0xfffdffffffffffff,-3,888,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x0000000000000004; immval: -129; align:0
TEST_STORE(x4,x6,0,x10,x11,0x0000000000000004,-129,896,sh,0)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x13_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 113*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
