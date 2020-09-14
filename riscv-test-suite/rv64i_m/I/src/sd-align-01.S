
#This assembly file tests the sd instruction of the RISC-V I extension for the sd-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sd-align)

la x7,signature_x7_1

# opcode: sd; op1:x15; op2:x18; op2val:0x0000000800000000; immval: 256; align:0
TEST_STORE(x7,x8,0,x15,x18,0x0000000800000000,256,0,sd,0)

# opcode: sd; op1:x31; op2:x2; op2val:0xfffffeffffffffff; immval: -7; align:0
TEST_STORE(x7,x8,0,x31,x2,0xfffffeffffffffff,-7,8,sd,0)

# opcode: sd; op1:x2; op2:x16; op2val:0xffffffffffff7fff; immval: 2; align:0
TEST_STORE(x7,x8,0,x2,x16,0xffffffffffff7fff,2,16,sd,0)

# opcode: sd; op1:x1; op2:x12; op2val:0x0008000000000000; immval: -5; align:0
TEST_STORE(x7,x8,0,x1,x12,0x0008000000000000,-5,24,sd,0)

# opcode: sd; op1:x14; op2:x5; op2val:0x0000000004000000; immval: -4; align:0
TEST_STORE(x7,x8,0,x14,x5,0x0000000004000000,-4,32,sd,0)

# opcode: sd; op1:x23; op2:x10; op2val:0xffffffbfffffffff; immval: 5; align:0
TEST_STORE(x7,x8,0,x23,x10,0xffffffbfffffffff,5,40,sd,0)

# opcode: sd; op1:x25; op2:x28; op2val:0x0000000000000200; immval: 6; align:0
TEST_STORE(x7,x8,0,x25,x28,0x0000000000000200,6,48,sd,0)

# opcode: sd; op1:x16; op2:x21; op2val:0xdfffffffffffffff; immval: -65; align:0
TEST_STORE(x7,x8,0,x16,x21,0xdfffffffffffffff,-65,56,sd,0)

# opcode: sd; op1:x21; op2:x6; op2val:0x0000800000000000; immval: 0; align:0
TEST_STORE(x7,x8,0,x21,x6,0x0000800000000000,0,64,sd,0)

# opcode: sd; op1:x6; op2:x19; op2val:0x8000000000000000; immval: 9; align:0
TEST_STORE(x7,x8,0,x6,x19,0x8000000000000000,9,72,sd,0)

# opcode: sd; op1:x11; op2:x24; op2val:0x0000000000000000; immval: -17; align:0
TEST_STORE(x7,x8,0,x11,x24,0x0000000000000000,-17,80,sd,0)

# opcode: sd; op1:x10; op2:x0; op2val:0x7fffffffffffffff; immval: -5; align:0
TEST_STORE(x7,x8,0,x10,x0,0x7fffffffffffffff,-5,88,sd,0)

# opcode: sd; op1:x5; op2:x1; op2val:0x0000000000000001; immval: 2; align:0
TEST_STORE(x7,x8,0,x5,x1,0x0000000000000001,2,96,sd,0)

# opcode: sd; op1:x26; op2:x25; op2val:0x0000000000000002; immval: 1023; align:0
TEST_STORE(x7,x8,0,x26,x25,0x0000000000000002,1023,104,sd,0)

# opcode: sd; op1:x29; op2:x30; op2val:0x0000000000000004; immval: 256; align:0
TEST_STORE(x7,x8,0,x29,x30,0x0000000000000004,256,112,sd,0)

# opcode: sd; op1:x20; op2:x14; op2val:0x0000000000000008; immval: 6; align:0
TEST_STORE(x7,x8,0,x20,x14,0x0000000000000008,6,120,sd,0)

# opcode: sd; op1:x22; op2:x29; op2val:0x0000000000000010; immval: 7; align:0
TEST_STORE(x7,x8,0,x22,x29,0x0000000000000010,7,128,sd,0)

# opcode: sd; op1:x4; op2:x9; op2val:0x0000000000000020; immval: 32; align:0
TEST_STORE(x7,x8,0,x4,x9,0x0000000000000020,32,136,sd,0)

# opcode: sd; op1:x9; op2:x26; op2val:0x0000000000000040; immval: -65; align:0
TEST_STORE(x7,x8,0,x9,x26,0x0000000000000040,-65,144,sd,0)

# opcode: sd; op1:x24; op2:x31; op2val:0x0000000000000080; immval: 64; align:0
TEST_STORE(x7,x8,0,x24,x31,0x0000000000000080,64,152,sd,0)

# opcode: sd; op1:x27; op2:x23; op2val:0x0000000000000100; immval: 3; align:0
TEST_STORE(x7,x8,0,x27,x23,0x0000000000000100,3,160,sd,0)

# opcode: sd; op1:x19; op2:x20; op2val:0x0000000000000400; immval: 2; align:0
TEST_STORE(x7,x8,0,x19,x20,0x0000000000000400,2,168,sd,0)

# opcode: sd; op1:x18; op2:x27; op2val:0x0000000000000800; immval: 7; align:0
TEST_STORE(x7,x8,0,x18,x27,0x0000000000000800,7,176,sd,0)

# opcode: sd; op1:x3; op2:x22; op2val:0x0000000000001000; immval: -33; align:0
TEST_STORE(x7,x8,0,x3,x22,0x0000000000001000,-33,184,sd,0)

# opcode: sd; op1:x28; op2:x8; op2val:0x0000000000002000; immval: 1; align:0
TEST_STORE(x7,x2,0,x28,x8,0x0000000000002000,1,192,sd,0)
la x1,signature_x1_0

# opcode: sd; op1:x17; op2:x4; op2val:0x0000000000004000; immval: 4; align:0
TEST_STORE(x1,x2,0,x17,x4,0x0000000000004000,4,0,sd,0)

# opcode: sd; op1:x12; op2:x11; op2val:0x0000000000008000; immval: -5; align:0
TEST_STORE(x1,x2,0,x12,x11,0x0000000000008000,-5,8,sd,0)

# opcode: sd; op1:x7; op2:x17; op2val:0x0000000000010000; immval: -65; align:0
TEST_STORE(x1,x2,0,x7,x17,0x0000000000010000,-65,16,sd,0)

# opcode: sd; op1:x8; op2:x13; op2val:0x0000000000020000; immval: 2047; align:0
TEST_STORE(x1,x2,0,x8,x13,0x0000000000020000,2047,24,sd,0)

# opcode: sd; op1:x13; op2:x3; op2val:0x0000000000040000; immval: -1; align:0
TEST_STORE(x1,x2,0,x13,x3,0x0000000000040000,-1,32,sd,0)

# opcode: sd; op1:x30; op2:x7; op2val:0x0000000000080000; immval: -9; align:0
TEST_STORE(x1,x2,0,x30,x7,0x0000000000080000,-9,40,sd,0)

# opcode: sd; op1:x8; op2:x15; op2val:0x0000000000100000; immval: 2; align:0
TEST_STORE(x1,x2,0,x8,x15,0x0000000000100000,2,48,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000200000; immval: -3; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000000200000,-3,56,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000400000; immval: 32; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,32,64,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000000800000; immval: -1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000000800000,-1024,72,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000001000000; immval: 256; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,256,80,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000002000000; immval: -9; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,-9,88,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 7; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,7,96,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000010000000; immval: -129; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,-129,104,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000020000000; immval: -513; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,-513,112,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000040000000; immval: 16; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,16,120,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000080000000; immval: -257; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000080000000,-257,128,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000100000000; immval: 128; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,128,136,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000200000000; immval: 512; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000200000000,512,144,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000000400000000; immval: 3; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,3,152,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000001000000000; immval: 9; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,9,160,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000002000000000; immval: -65; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,-65,168,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000004000000000; immval: 9; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,9,176,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000008000000000; immval: -257; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,-257,184,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 2; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,2,192,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 1365; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000020000000000,1365,200,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000040000000000; immval: -7; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,-7,208,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000080000000000; immval: 3; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,3,216,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000100000000000; immval: 7; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,7,224,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000200000000000; immval: -1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,-1024,232,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0000400000000000; immval: -9; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,-9,240,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 7; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0001000000000000,7,248,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0002000000000000; immval: 2047; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,2047,256,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0004000000000000; immval: -2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,-2048,264,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0010000000000000; immval: 1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,1024,272,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 7; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,7,280,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0040000000000000; immval: -3; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,-3,288,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 2047; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,2047,296,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0100000000000000; immval: 0; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,0,304,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0200000000000000; immval: 8; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,8,312,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0400000000000000; immval: -33; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0400000000000000,-33,320,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x0800000000000000; immval: 4; align:0
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,4,328,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x1000000000000000; immval: 4; align:0
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,4,336,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 1; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,1,344,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,3,352,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: 64; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,64,360,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: 1365; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,1365,368,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: 256; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,256,376,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: -129; align:0
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,-129,384,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: -129; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,-129,392,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: -129; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfdffffffffffffff,-129,400,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: -6; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,-6,408,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,2,416,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: -6; align:0
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,-6,424,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 1023; align:0
TEST_STORE(x1,x2,0,x10,x11,0xbfffffffffffffff,1023,432,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x5555555555555555; immval: 1; align:0
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,1,440,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: 3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,3,448,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x2000000000000000; immval: 32; align:0
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,32,456,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x4000000000000000; immval: -1366; align:0
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,-1366,464,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 9; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,9,472,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: 32; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,32,480,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: 1365; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,1365,488,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: 8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,8,496,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: -1366; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,-1366,504,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: -1; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffdf,-1,512,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: -4; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,-4,520,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: 2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffff7f,2,528,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: -2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,-2048,536,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 6; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffdff,6,544,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: -257; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,-257,552,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: -2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,-2048,560,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 1365; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,1365,568,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: -1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,-1024,576,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,8,584,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: -3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,-3,592,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: 5; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,5,600,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: -10; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffbffff,-10,608,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: -8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,-8,616,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval: -65; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,-65,624,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: 8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,8,632,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: -65; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffbfffff,-65,640,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: 1; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,1,648,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: 9; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,9,656,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: -1366; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,-1366,664,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: -17; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,-17,672,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: 32; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,32,680,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: 2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffefffffff,2,688,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 0; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,0,696,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: -2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,-2,704,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: 2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,2,712,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: 2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,2,720,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: -5; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,-5,728,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 0; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffbffffffff,0,736,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: -2; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,-2,744,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: 128; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,128,752,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: -65; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,-65,760,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: 8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffff7fffffffff,8,768,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: 3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,3,776,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: -3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffbffffffffff,-3,784,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: 4; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,4,792,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: -129; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,-129,800,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: 8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,8,808,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: -513; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffbfffffffffff,-513,816,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: -8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,-8,824,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,1024,832,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: -9; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,-9,840,sd,0)

# opcode: sd; op1:x10; op2:x11; op2val:0x7fffffffffffffff; immval: -5; align:0
TEST_STORE(x1,x2,0,x10,x11,0x7fffffffffffffff,-5,848,sd,0)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x7_1:
    .fill 25*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 107*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
