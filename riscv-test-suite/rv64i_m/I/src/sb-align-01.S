
#This assembly file tests the sb instruction of the RISC-V I extension for the sb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sb-align)

la x7,signature_x7_1

# opcode: sb; op1:x21; op2:x30; op2val:0x0000200000000000; immval: -1024; align:0
TEST_STORE(x7,x14,0,x21,x30,0x0000200000000000,-1024,0,sb,0)

# opcode: sb; op1:x9; op2:x3; op2val:0x0400000000000000; immval: -3; align:0
TEST_STORE(x7,x14,0,x9,x3,0x0400000000000000,-3,8,sb,0)

# opcode: sb; op1:x10; op2:x23; op2val:0xffffffffefffffff; immval: -6; align:0
TEST_STORE(x7,x14,0,x10,x23,0xffffffffefffffff,-6,16,sb,0)

# opcode: sb; op1:x15; op2:x9; op2val:0x0000000000020000; immval: 7; align:0
TEST_STORE(x7,x14,0,x15,x9,0x0000000000020000,7,24,sb,0)

# opcode: sb; op1:x8; op2:x29; op2val:0xffdfffffffffffff; immval: 8; align:2
TEST_STORE(x7,x14,0,x8,x29,0xffdfffffffffffff,8,32,sb,2)

# opcode: sb; op1:x27; op2:x24; op2val:0xffefffffffffffff; immval: 1; align:2
TEST_STORE(x7,x14,0,x27,x24,0xffefffffffffffff,1,40,sb,2)

# opcode: sb; op1:x23; op2:x5; op2val:0x0000000000000005; immval: 2; align:2
TEST_STORE(x7,x14,0,x23,x5,0x0000000000000005,2,48,sb,2)

# opcode: sb; op1:x6; op2:x2; op2val:0x0000200000000000; immval: -65; align:2
TEST_STORE(x7,x14,0,x6,x2,0x0000200000000000,-65,56,sb,2)

# opcode: sb; op1:x13; op2:x21; op2val:0xfffffdffffffffff; immval: 128; align:1
TEST_STORE(x7,x14,0,x13,x21,0xfffffdffffffffff,128,64,sb,1)

# opcode: sb; op1:x30; op2:x26; op2val:0xfffffffffffffff9; immval: -7; align:1
TEST_STORE(x7,x14,0,x30,x26,0xfffffffffffffff9,-7,72,sb,1)

# opcode: sb; op1:x22; op2:x6; op2val:0xffffffffffffefff; immval: 2; align:1
TEST_STORE(x7,x14,0,x22,x6,0xffffffffffffefff,2,80,sb,1)

# opcode: sb; op1:x29; op2:x16; op2val:0xfffffffffffffffd; immval: -33; align:1
TEST_STORE(x7,x14,0,x29,x16,0xfffffffffffffffd,-33,88,sb,1)

# opcode: sb; op1:x24; op2:x1; op2val:0xfffffffeffffffff; immval: -4; align:3
TEST_STORE(x7,x14,0,x24,x1,0xfffffffeffffffff,-4,96,sb,3)

# opcode: sb; op1:x20; op2:x22; op2val:0xfffffffffffffffb; immval: 9; align:3
TEST_STORE(x7,x14,0,x20,x22,0xfffffffffffffffb,9,104,sb,3)

# opcode: sb; op1:x28; op2:x15; op2val:0xffffffefffffffff; immval: 6; align:3
TEST_STORE(x7,x14,0,x28,x15,0xffffffefffffffff,6,112,sb,3)

# opcode: sb; op1:x4; op2:x10; op2val:0x0000000000000007; immval: 7; align:3
TEST_STORE(x7,x14,0,x4,x10,0x0000000000000007,7,120,sb,3)

# opcode: sb; op1:x31; op2:x11; op2val:0x0000000000001000; immval: 0; align:0
TEST_STORE(x7,x14,0,x31,x11,0x0000000000001000,0,128,sb,0)

# opcode: sb; op1:x26; op2:x19; op2val:0x8000000000000000; immval: -9; align:0
TEST_STORE(x7,x14,0,x26,x19,0x8000000000000000,-9,136,sb,0)

# opcode: sb; op1:x12; op2:x28; op2val:0x0000000000000000; immval: 1365; align:0
TEST_STORE(x7,x14,0,x12,x28,0x0000000000000000,1365,144,sb,0)

# opcode: sb; op1:x18; op2:x27; op2val:0x7fffffffffffffff; immval: -5; align:0
TEST_STORE(x7,x14,0,x18,x27,0x7fffffffffffffff,-5,152,sb,0)

# opcode: sb; op1:x14; op2:x20; op2val:0x0000000000000001; immval: 1; align:0
TEST_STORE(x7,x9,0,x14,x20,0x0000000000000001,1,160,sb,0)
la x6,signature_x6_0

# opcode: sb; op1:x5; op2:x12; op2val:0x0000000000000002; immval: -5; align:0
TEST_STORE(x6,x9,0,x5,x12,0x0000000000000002,-5,0,sb,0)

# opcode: sb; op1:x17; op2:x8; op2val:0x0000000000000004; immval: 2047; align:0
TEST_STORE(x6,x9,0,x17,x8,0x0000000000000004,2047,8,sb,0)

# opcode: sb; op1:x1; op2:x18; op2val:0x0000000000000008; immval: -8; align:0
TEST_STORE(x6,x9,0,x1,x18,0x0000000000000008,-8,16,sb,0)

# opcode: sb; op1:x16; op2:x4; op2val:0x0000000000000010; immval: 64; align:0
TEST_STORE(x6,x9,0,x16,x4,0x0000000000000010,64,24,sb,0)

# opcode: sb; op1:x25; op2:x7; op2val:0x0000000000000020; immval: -6; align:0
TEST_STORE(x6,x9,0,x25,x7,0x0000000000000020,-6,32,sb,0)

# opcode: sb; op1:x2; op2:x14; op2val:0x0000000000000040; immval: 2047; align:0
TEST_STORE(x6,x9,0,x2,x14,0x0000000000000040,2047,40,sb,0)

# opcode: sb; op1:x11; op2:x13; op2val:0x0000000000000080; immval: -1366; align:0
TEST_STORE(x6,x9,0,x11,x13,0x0000000000000080,-1366,48,sb,0)

# opcode: sb; op1:x3; op2:x31; op2val:0x0000000000000100; immval: 128; align:0
TEST_STORE(x6,x9,0,x3,x31,0x0000000000000100,128,56,sb,0)

# opcode: sb; op1:x7; op2:x0; op2val:0x0000000000000200; immval: 512; align:0
TEST_STORE(x6,x9,0,x7,x0,0x0000000000000200,512,64,sb,0)

# opcode: sb; op1:x19; op2:x17; op2val:0x0000000000000400; immval: -1; align:0
TEST_STORE(x6,x9,0,x19,x17,0x0000000000000400,-1,72,sb,0)

# opcode: sb; op1:x16; op2:x25; op2val:0x0000000000000800; immval: 256; align:0
TEST_STORE(x6,x9,0,x16,x25,0x0000000000000800,256,80,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000002000; immval: -4; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000002000,-4,88,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000004000; immval: -257; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000004000,-257,96,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000008000; immval: -2; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000008000,-2,104,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000010000; immval: 5; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000010000,5,112,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000040000; immval: -17; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000040000,-17,120,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000080000; immval: -7; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000080000,-7,128,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000100000; immval: -5; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000100000,-5,136,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000200000; immval: -1025; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000200000,-1025,144,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000400000; immval: 256; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000400000,256,152,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000800000; immval: -8; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000800000,-8,160,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000001000000; immval: -1024; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000001000000,-1024,168,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000002000000; immval: 2; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000002000000,2,176,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000004000000; immval: 128; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000004000000,128,184,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000008000000; immval: -4; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000008000000,-4,192,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000010000000; immval: -65; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000010000000,-65,200,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000020000000; immval: -65; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000020000000,-65,208,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000040000000; immval: 0; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000040000000,0,216,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000080000000; immval: -33; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000080000000,-33,224,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000100000000; immval: -1366; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000100000000,-1366,232,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000200000000; immval: 6; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000200000000,6,240,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000400000000; immval: 512; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000400000000,512,248,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000800000000; immval: 1024; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000800000000,1024,256,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000001000000000; immval: 3; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000001000000000,3,264,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000002000000000; immval: -65; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000002000000000,-65,272,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000004000000000; immval: 256; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000004000000000,256,280,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000008000000000; immval: 5; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000008000000000,5,288,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 8; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000010000000000,8,296,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 32; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000020000000000,32,304,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000040000000000; immval: 512; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000040000000000,512,312,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000080000000000; immval: 256; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000080000000000,256,320,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000100000000000; immval: 256; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000100000000000,256,328,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000400000000000; immval: 1; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000400000000000,1,336,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000800000000000; immval: -65; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000800000000000,-65,344,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 2; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0001000000000000,2,352,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0002000000000000; immval: 2047; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0002000000000000,2047,360,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0004000000000000; immval: -257; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0004000000000000,-257,368,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0008000000000000; immval: -5; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0008000000000000,-5,376,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0010000000000000; immval: 1023; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0010000000000000,1023,384,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0020000000000000; immval: -4; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0020000000000000,-4,392,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0040000000000000; immval: -10; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0040000000000000,-10,400,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: -2; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffbffffffffff,-2,408,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: -1366; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffff7ffffffffff,-1366,416,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: 2047; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffefffffffffff,2047,424,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: -65; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffdfffffffffff,-65,432,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: -2048; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffbfffffffffff,-2048,440,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: -2; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffff7fffffffffff,-2,448,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: -6; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffeffffffffffff,-6,456,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: -17; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffdffffffffffff,-17,464,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: -9; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffbffffffffffff,-9,472,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 6; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfff7ffffffffffff,6,480,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: -65; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffbfffffffffffff,-65,488,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: -513; align:0
TEST_STORE(x6,x9,0,x10,x11,0xff7fffffffffffff,-513,496,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: -8; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfeffffffffffffff,-8,504,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: -129; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfdffffffffffffff,-129,512,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: -3; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfbffffffffffffff,-3,520,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 1365; align:0
TEST_STORE(x6,x9,0,x10,x11,0xf7ffffffffffffff,1365,528,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: 2047; align:0
TEST_STORE(x6,x9,0,x10,x11,0xefffffffffffffff,2047,536,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: 8; align:0
TEST_STORE(x6,x9,0,x10,x11,0xdfffffffffffffff,8,544,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 32; align:0
TEST_STORE(x6,x9,0,x10,x11,0xbfffffffffffffff,32,552,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x5555555555555555; immval: -33; align:0
TEST_STORE(x6,x9,0,x10,x11,0x5555555555555555,-33,560,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: 6; align:0
TEST_STORE(x6,x9,0,x10,x11,0xaaaaaaaaaaaaaaaa,6,568,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 1023; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0080000000000000,1023,576,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0100000000000000; immval: 0; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0100000000000000,0,584,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0200000000000000; immval: -513; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0200000000000000,-513,592,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0800000000000000; immval: 8; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0800000000000000,8,600,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x1000000000000000; immval: -9; align:0
TEST_STORE(x6,x9,0,x10,x11,0x1000000000000000,-9,608,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x2000000000000000; immval: 9; align:0
TEST_STORE(x6,x9,0,x10,x11,0x2000000000000000,9,616,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x4000000000000000; immval: 2047; align:0
TEST_STORE(x6,x9,0,x10,x11,0x4000000000000000,2047,624,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: -10; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffffffffe,-10,632,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: 5; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffffffff7,5,640,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: -7; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffffffef,-7,648,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: -10; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffffffdf,-10,656,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: 2; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffffffbf,2,664,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: -257; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffffff7f,-257,672,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: 6; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffffffeff,6,680,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: -1; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffffffdff,-1,688,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: -1; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffffffbff,-1,696,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: 128; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffffff7ff,128,704,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: 64; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffffdfff,64,712,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: -257; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffffbfff,-257,720,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: -1024; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffff7fff,-1024,728,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: 32; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffffeffff,32,736,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: 9; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffffdffff,9,744,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: -257; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffffbffff,-257,752,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: -8; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffff7ffff,-8,760,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval: 1024; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffefffff,1024,768,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: -10; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffdfffff,-10,776,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: 8; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffffbfffff,8,784,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: -17; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffff7fffff,-17,792,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: -1025; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffeffffff,-1025,800,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: 256; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffdffffff,256,808,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 64; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffffbffffff,64,816,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: -1366; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffff7ffffff,-1366,824,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 512; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffdfffffff,512,832,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: -1; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffffbfffffff,-1,840,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: 512; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffff7fffffff,512,848,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: 5; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffdffffffff,5,856,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 32; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffffbffffffff,32,864,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: 3; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffff7ffffffff,3,872,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: 128; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffdfffffffff,128,880,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: 256; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffffbfffffffff,256,888,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: -1; align:0
TEST_STORE(x6,x9,0,x10,x11,0xffffff7fffffffff,-1,896,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: -1025; align:0
TEST_STORE(x6,x9,0,x10,x11,0xfffffeffffffffff,-1025,904,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000000200; immval: 512; align:0
TEST_STORE(x6,x9,0,x10,x11,0x0000000000000200,512,912,sb,0)
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
    .fill 21*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 115*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
