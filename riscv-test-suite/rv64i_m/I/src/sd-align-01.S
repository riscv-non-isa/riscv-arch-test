
#This assembly file tests the sd instruction of the RISC-V I extension for the sd-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sd-align)

la x19,signature_x19_1

# opcode: sd; op1:x18; op2:x31; op2val:0xffffffffffefffff; immval: 0; align:0
TEST_STORE(x19,x3,0,x18,x31,0xffffffffffefffff,0,0,sd,0)

# opcode: sd; op1:x29; op2:x13; op2val:0xffffffff7fffffff; immval: 9; align:0
TEST_STORE(x19,x3,0,x29,x13,0xffffffff7fffffff,9,8,sd,0)

# opcode: sd; op1:x28; op2:x7; op2val:0xffffffffffefffff; immval: -1366; align:0
TEST_STORE(x19,x3,0,x28,x7,0xffffffffffefffff,-1366,16,sd,0)

# opcode: sd; op1:x12; op2:x5; op2val:0x2000000000000000; immval: -5; align:0
TEST_STORE(x19,x3,0,x12,x5,0x2000000000000000,-5,24,sd,0)

# opcode: sd; op1:x6; op2:x2; op2val:0x0000000000010000; immval: 4; align:0
TEST_STORE(x19,x3,0,x6,x2,0x0000000000010000,4,32,sd,0)

# opcode: sd; op1:x7; op2:x6; op2val:0x0000001000000000; immval: 1365; align:0
TEST_STORE(x19,x3,0,x7,x6,0x0000001000000000,1365,40,sd,0)

# opcode: sd; op1:x1; op2:x4; op2val:0x0000800000000000; immval: -10; align:0
TEST_STORE(x19,x3,0,x1,x4,0x0000800000000000,-10,48,sd,0)

# opcode: sd; op1:x21; op2:x12; op2val:0xfffffffffffffff8; immval: -129; align:0
TEST_STORE(x19,x3,0,x21,x12,0xfffffffffffffff8,-129,56,sd,0)

# opcode: sd; op1:x8; op2:x27; op2val:0x8000000000000000; immval: 5; align:0
TEST_STORE(x19,x3,0,x8,x27,0x8000000000000000,5,64,sd,0)

# opcode: sd; op1:x20; op2:x24; op2val:0x0000000000000000; immval: -1024; align:0
TEST_STORE(x19,x3,0,x20,x24,0x0000000000000000,-1024,72,sd,0)

# opcode: sd; op1:x10; op2:x25; op2val:0x7fffffffffffffff; immval: 5; align:0
TEST_STORE(x19,x3,0,x10,x25,0x7fffffffffffffff,5,80,sd,0)

# opcode: sd; op1:x4; op2:x16; op2val:0x0000000000000001; immval: 2; align:0
TEST_STORE(x19,x3,0,x4,x16,0x0000000000000001,2,88,sd,0)

# opcode: sd; op1:x22; op2:x29; op2val:0x0000000000000002; immval: -2; align:0
TEST_STORE(x19,x3,0,x22,x29,0x0000000000000002,-2,96,sd,0)

# opcode: sd; op1:x5; op2:x10; op2val:0x0000000000000004; immval: -17; align:0
TEST_STORE(x19,x3,0,x5,x10,0x0000000000000004,-17,104,sd,0)

# opcode: sd; op1:x11; op2:x14; op2val:0x0000000000000008; immval: 2; align:0
TEST_STORE(x19,x3,0,x11,x14,0x0000000000000008,2,112,sd,0)

# opcode: sd; op1:x25; op2:x18; op2val:0x0000000000000010; immval: 1023; align:0
TEST_STORE(x19,x3,0,x25,x18,0x0000000000000010,1023,120,sd,0)

# opcode: sd; op1:x9; op2:x28; op2val:0x0000000000000020; immval: -8; align:0
TEST_STORE(x19,x3,0,x9,x28,0x0000000000000020,-8,128,sd,0)

# opcode: sd; op1:x31; op2:x17; op2val:0x0000000000000040; immval: 2; align:0
TEST_STORE(x19,x3,0,x31,x17,0x0000000000000040,2,136,sd,0)

# opcode: sd; op1:x24; op2:x15; op2val:0x0000000000000080; immval: -17; align:0
TEST_STORE(x19,x3,0,x24,x15,0x0000000000000080,-17,144,sd,0)

# opcode: sd; op1:x13; op2:x1; op2val:0x0000000000000100; immval: -257; align:0
TEST_STORE(x19,x3,0,x13,x1,0x0000000000000100,-257,152,sd,0)

# opcode: sd; op1:x26; op2:x11; op2val:0x0000000000000200; immval: 7; align:0
TEST_STORE(x19,x3,0,x26,x11,0x0000000000000200,7,160,sd,0)

# opcode: sd; op1:x16; op2:x0; op2val:0x0000000000000400; immval: -6; align:0
TEST_STORE(x19,x4,0,x16,x0,0x0000000000000400,-6,168,sd,0)

# opcode: sd; op1:x27; op2:x20; op2val:0x0000000000000800; immval: -33; align:0
TEST_STORE(x19,x4,0,x27,x20,0x0000000000000800,-33,176,sd,0)

# opcode: sd; op1:x3; op2:x23; op2val:0x0000000000001000; immval: -2; align:0
TEST_STORE(x19,x4,0,x3,x23,0x0000000000001000,-2,184,sd,0)
la x1,signature_x1_0

# opcode: sd; op1:x19; op2:x8; op2val:0x0000000000002000; immval: -2048; align:0
TEST_STORE(x1,x4,0,x19,x8,0x0000000000002000,-2048,0,sd,0)

# opcode: sd; op1:x14; op2:x9; op2val:0x0000000000004000; immval: 512; align:0
TEST_STORE(x1,x4,0,x14,x9,0x0000000000004000,512,8,sd,0)

# opcode: sd; op1:x30; op2:x22; op2val:0x0000000000008000; immval: -33; align:0
TEST_STORE(x1,x4,0,x30,x22,0x0000000000008000,-33,16,sd,0)

# opcode: sd; op1:x2; op2:x3; op2val:0x0000000000020000; immval: 2047; align:0
TEST_STORE(x1,x4,0,x2,x3,0x0000000000020000,2047,24,sd,0)

# opcode: sd; op1:x17; op2:x26; op2val:0x0000000000040000; immval: -5; align:0
TEST_STORE(x1,x4,0,x17,x26,0x0000000000040000,-5,32,sd,0)

# opcode: sd; op1:x15; op2:x30; op2val:0x0000000000080000; immval: -1025; align:0
TEST_STORE(x1,x4,0,x15,x30,0x0000000000080000,-1025,40,sd,0)

# opcode: sd; op1:x23; op2:x21; op2val:0x0000000000100000; immval: 128; align:0
TEST_STORE(x1,x4,0,x23,x21,0x0000000000100000,128,48,sd,0)

# opcode: sd; op1:x10; op2:x19; op2val:0x0000000000200000; immval: 256; align:0
TEST_STORE(x1,x4,0,x10,x19,0x0000000000200000,256,56,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000400000; immval: 4; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000000400000,4,64,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000800000; immval: 7; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000000800000,7,72,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000001000000; immval: 6; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000001000000,6,80,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000002000000; immval: 512; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000002000000,512,88,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000004000000; immval: -2048; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000004000000,-2048,96,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 16; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000008000000,16,104,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000010000000; immval: 256; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000010000000,256,112,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000020000000; immval: -5; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000020000000,-5,120,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000040000000; immval: 64; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000040000000,64,128,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000080000000; immval: 1023; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000080000000,1023,136,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000100000000; immval: -17; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000100000000,-17,144,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000200000000; immval: -17; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000200000000,-17,152,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000400000000; immval: -10; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000400000000,-10,160,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000800000000; immval: -4; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000800000000,-4,168,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000002000000000; immval: 8; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000002000000000,8,176,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000004000000000; immval: 16; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000004000000000,16,184,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000008000000000; immval: 3; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000008000000000,3,192,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000010000000000; immval: -4; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000010000000000,-4,200,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 32; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000020000000000,32,208,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000040000000000; immval: 3; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000040000000000,3,216,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000080000000000; immval: 16; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000080000000000,16,224,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000100000000000; immval: 6; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000100000000000,6,232,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000200000000000; immval: 128; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000200000000000,128,240,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000400000000000; immval: -3; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000400000000000,-3,248,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 512; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0001000000000000,512,256,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0002000000000000; immval: 128; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0002000000000000,128,264,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0004000000000000; immval: 8; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0004000000000000,8,272,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0008000000000000; immval: -129; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0008000000000000,-129,280,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0010000000000000; immval: 6; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0010000000000000,6,288,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 2; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0020000000000000,2,296,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0040000000000000; immval: -2; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0040000000000000,-2,304,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 8; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0080000000000000,8,312,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0100000000000000; immval: 1023; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0100000000000000,1023,320,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0200000000000000; immval: -257; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0200000000000000,-257,328,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0400000000000000; immval: -33; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0400000000000000,-33,336,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0800000000000000; immval: -1; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0800000000000000,-1,344,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x1000000000000000; immval: -9; align:0
TEST_STORE(x1,x4,0,x10,x11,0x1000000000000000,-9,352,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x4000000000000000; immval: 3; align:0
TEST_STORE(x1,x4,0,x10,x11,0x4000000000000000,3,360,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 128; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffbffffffffffff,128,368,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 1; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfff7ffffffffffff,1,376,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: -2048; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffefffffffffffff,-2048,384,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: -7; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffdfffffffffffff,-7,392,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: -1366; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffbfffffffffffff,-1366,400,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: 16; align:0
TEST_STORE(x1,x4,0,x10,x11,0xff7fffffffffffff,16,408,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: 5; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfeffffffffffffff,5,416,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: -6; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfdffffffffffffff,-6,424,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: -33; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfbffffffffffffff,-33,432,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: -2; align:0
TEST_STORE(x1,x4,0,x10,x11,0xf7ffffffffffffff,-2,440,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: -2; align:0
TEST_STORE(x1,x4,0,x10,x11,0xefffffffffffffff,-2,448,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: 2; align:0
TEST_STORE(x1,x4,0,x10,x11,0xdfffffffffffffff,2,456,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 2047; align:0
TEST_STORE(x1,x4,0,x10,x11,0xbfffffffffffffff,2047,464,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x5555555555555555; immval: -129; align:0
TEST_STORE(x1,x4,0,x10,x11,0x5555555555555555,-129,472,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: -2048; align:0
TEST_STORE(x1,x4,0,x10,x11,0xaaaaaaaaaaaaaaaa,-2048,480,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 64; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffffffe,64,488,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: -1024; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffffffd,-1024,496,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: 8; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffffffb,8,504,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: -3; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffffff7,-3,512,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: 0; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffffffef,0,520,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: -1366; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffffffdf,-1366,528,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: -65; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffffffbf,-65,536,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: 6; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffffff7f,6,544,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: 64; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffffeff,64,552,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 2; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffffdff,2,560,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: 7; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffffbff,7,568,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: -2048; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffff7ff,-2048,576,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 6; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffffefff,6,584,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: 512; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffffdfff,512,592,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 8; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffffbfff,8,600,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: 8; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffff7fff,8,608,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: 2047; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffeffff,2047,616,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: 512; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffdffff,512,624,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: 64; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffffbffff,64,632,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: 1024; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffff7ffff,1024,640,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: 5; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffdfffff,5,648,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: -129; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffffbfffff,-129,656,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: 9; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffff7fffff,9,664,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: -5; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffeffffff,-5,672,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: -2; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffdffffff,-2,680,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 6; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffffbffffff,6,688,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: 4; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffff7ffffff,4,696,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: 1024; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffefffffff,1024,704,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: -9; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffdfffffff,-9,712,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: 1023; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffffbfffffff,1023,720,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: -10; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffeffffffff,-10,728,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: -3; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffdffffffff,-3,736,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 128; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffffbffffffff,128,744,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: 0; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffff7ffffffff,0,752,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: -1; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffefffffffff,-1,760,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: -513; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffdfffffffff,-513,768,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: 64; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffffbfffffffff,64,776,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: -1024; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffff7fffffffff,-1024,784,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: -33; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffeffffffffff,-33,792,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: -4; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffdffffffffff,-4,800,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: -1024; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffffbffffffffff,-1024,808,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: -1; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffff7ffffffffff,-1,816,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: 9; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffefffffffffff,9,824,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: 64; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffdfffffffffff,64,832,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: 256; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffffbfffffffffff,256,840,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: -7; align:0
TEST_STORE(x1,x4,0,x10,x11,0xffff7fffffffffff,-7,848,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 1; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffeffffffffffff,1,856,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: 1365; align:0
TEST_STORE(x1,x4,0,x10,x11,0xfffdffffffffffff,1365,864,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000000400; immval: -6; align:0
TEST_STORE(x1,x4,0,x10,x11,0x0000000000000400,-6,872,sd,0)
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

signature_x19_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x19_1:
    .fill 24*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 110*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
