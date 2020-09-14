
#This assembly file tests the sw instruction of the RISC-V I extension for the sw-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sw-align)

la x5,signature_x5_1

# opcode: sw; op1:x13; op2:x17; op2val:0xefffffffffffffff; immval: 64; align:0
TEST_STORE(x5,x6,0,x13,x17,0xefffffffffffffff,64,0,sw,0)

# opcode: sw; op1:x29; op2:x18; op2val:0xfffffffffffffffb; immval: -7; align:0
TEST_STORE(x5,x6,0,x29,x18,0xfffffffffffffffb,-7,8,sw,0)

# opcode: sw; op1:x28; op2:x13; op2val:0xffffffffffffdfff; immval: -10; align:0
TEST_STORE(x5,x6,0,x28,x13,0xffffffffffffdfff,-10,16,sw,0)

# opcode: sw; op1:x17; op2:x7; op2val:0xffdfffffffffffff; immval: -1; align:0
TEST_STORE(x5,x6,0,x17,x7,0xffdfffffffffffff,-1,24,sw,0)

# opcode: sw; op1:x12; op2:x23; op2val:0x0000000080000000; immval: 0; align:0
TEST_STORE(x5,x6,0,x12,x23,0x0000000080000000,0,32,sw,0)

# opcode: sw; op1:x26; op2:x4; op2val:0x8000000000000000; immval: 32; align:0
TEST_STORE(x5,x6,0,x26,x4,0x8000000000000000,32,40,sw,0)

# opcode: sw; op1:x27; op2:x2; op2val:0x0000000000000000; immval: 9; align:0
TEST_STORE(x5,x6,0,x27,x2,0x0000000000000000,9,48,sw,0)

# opcode: sw; op1:x24; op2:x30; op2val:0x7fffffffffffffff; immval: 8; align:0
TEST_STORE(x5,x6,0,x24,x30,0x7fffffffffffffff,8,56,sw,0)

# opcode: sw; op1:x31; op2:x29; op2val:0x0000000000000001; immval: -3; align:0
TEST_STORE(x5,x6,0,x31,x29,0x0000000000000001,-3,64,sw,0)

# opcode: sw; op1:x11; op2:x27; op2val:0x0000000000000002; immval: -257; align:0
TEST_STORE(x5,x6,0,x11,x27,0x0000000000000002,-257,72,sw,0)

# opcode: sw; op1:x1; op2:x19; op2val:0x0000000000000004; immval: -1025; align:0
TEST_STORE(x5,x6,0,x1,x19,0x0000000000000004,-1025,80,sw,0)

# opcode: sw; op1:x14; op2:x16; op2val:0x0000000000000008; immval: 32; align:0
TEST_STORE(x5,x6,0,x14,x16,0x0000000000000008,32,88,sw,0)

# opcode: sw; op1:x9; op2:x8; op2val:0x0000000000000010; immval: 1024; align:0
TEST_STORE(x5,x6,0,x9,x8,0x0000000000000010,1024,96,sw,0)

# opcode: sw; op1:x21; op2:x20; op2val:0x0000000000000020; immval: -1024; align:0
TEST_STORE(x5,x6,0,x21,x20,0x0000000000000020,-1024,104,sw,0)

# opcode: sw; op1:x23; op2:x22; op2val:0x0000000000000040; immval: 4; align:0
TEST_STORE(x5,x6,0,x23,x22,0x0000000000000040,4,112,sw,0)

# opcode: sw; op1:x18; op2:x3; op2val:0x0000000000000080; immval: -17; align:0
TEST_STORE(x5,x6,0,x18,x3,0x0000000000000080,-17,120,sw,0)

# opcode: sw; op1:x15; op2:x21; op2val:0x0000000000000100; immval: 512; align:0
TEST_STORE(x5,x6,0,x15,x21,0x0000000000000100,512,128,sw,0)

# opcode: sw; op1:x8; op2:x14; op2val:0x0000000000000200; immval: 1; align:0
TEST_STORE(x5,x13,0,x8,x14,0x0000000000000200,1,136,sw,0)

# opcode: sw; op1:x4; op2:x10; op2val:0x0000000000000400; immval: -8; align:0
TEST_STORE(x5,x13,0,x4,x10,0x0000000000000400,-8,144,sw,0)
la x4,signature_x4_0

# opcode: sw; op1:x3; op2:x12; op2val:0x0000000000000800; immval: 4; align:0
TEST_STORE(x4,x13,0,x3,x12,0x0000000000000800,4,0,sw,0)

# opcode: sw; op1:x30; op2:x24; op2val:0x0000000000001000; immval: -513; align:0
TEST_STORE(x4,x13,0,x30,x24,0x0000000000001000,-513,8,sw,0)

# opcode: sw; op1:x19; op2:x0; op2val:0x0000000000002000; immval: 512; align:0
TEST_STORE(x4,x13,0,x19,x0,0x0000000000002000,512,16,sw,0)

# opcode: sw; op1:x6; op2:x11; op2val:0x0000000000004000; immval: -513; align:0
TEST_STORE(x4,x13,0,x6,x11,0x0000000000004000,-513,24,sw,0)

# opcode: sw; op1:x16; op2:x15; op2val:0x0000000000008000; immval: -2048; align:0
TEST_STORE(x4,x13,0,x16,x15,0x0000000000008000,-2048,32,sw,0)

# opcode: sw; op1:x25; op2:x5; op2val:0x0000000000010000; immval: 4; align:0
TEST_STORE(x4,x13,0,x25,x5,0x0000000000010000,4,40,sw,0)

# opcode: sw; op1:x20; op2:x31; op2val:0x0000000000020000; immval: -9; align:0
TEST_STORE(x4,x13,0,x20,x31,0x0000000000020000,-9,48,sw,0)

# opcode: sw; op1:x7; op2:x1; op2val:0x0000000000040000; immval: -2048; align:0
TEST_STORE(x4,x13,0,x7,x1,0x0000000000040000,-2048,56,sw,0)

# opcode: sw; op1:x22; op2:x28; op2val:0x0000000000080000; immval: -4; align:0
TEST_STORE(x4,x13,0,x22,x28,0x0000000000080000,-4,64,sw,0)

# opcode: sw; op1:x5; op2:x25; op2val:0x0000000000100000; immval: 9; align:0
TEST_STORE(x4,x13,0,x5,x25,0x0000000000100000,9,72,sw,0)

# opcode: sw; op1:x10; op2:x9; op2val:0x0000000000200000; immval: 1023; align:0
TEST_STORE(x4,x13,0,x10,x9,0x0000000000200000,1023,80,sw,0)

# opcode: sw; op1:x2; op2:x26; op2val:0x0000000000400000; immval: -65; align:0
TEST_STORE(x4,x13,0,x2,x26,0x0000000000400000,-65,88,sw,0)

# opcode: sw; op1:x21; op2:x6; op2val:0x0000000000800000; immval: -1; align:0
TEST_STORE(x4,x13,0,x21,x6,0x0000000000800000,-1,96,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000001000000; immval: 1; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000001000000,1,104,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000002000000; immval: -17; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000002000000,-17,112,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000004000000; immval: -257; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000004000000,-257,120,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 2047; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000008000000,2047,128,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000010000000; immval: -17; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000010000000,-17,136,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000020000000; immval: -10; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000020000000,-10,144,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000040000000; immval: -1; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000040000000,-1,152,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000100000000; immval: 256; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000100000000,256,160,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000200000000; immval: 1; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000200000000,1,168,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000400000000; immval: -17; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000400000000,-17,176,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000800000000; immval: 32; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000800000000,32,184,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000001000000000; immval: -2; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000001000000000,-2,192,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000002000000000; immval: -8; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000002000000000,-8,200,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000004000000000; immval: 1; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000004000000000,1,208,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000008000000000; immval: -513; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000008000000000,-513,216,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 3; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000010000000000,3,224,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 0; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000020000000000,0,232,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000040000000000; immval: 9; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000040000000000,9,240,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000080000000000; immval: -129; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000080000000000,-129,248,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000100000000000; immval: 2047; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000100000000000,2047,256,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000200000000000; immval: 8; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000200000000000,8,264,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000400000000000; immval: 16; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000400000000000,16,272,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000800000000000; immval: -1024; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000800000000000,-1024,280,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 128; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0001000000000000,128,288,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0002000000000000; immval: -4; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0002000000000000,-4,296,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0004000000000000; immval: 1365; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0004000000000000,1365,304,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0008000000000000; immval: -2048; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0008000000000000,-2048,312,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0010000000000000; immval: -513; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0010000000000000,-513,320,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 1365; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0020000000000000,1365,328,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0040000000000000; immval: 32; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0040000000000000,32,336,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 128; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0080000000000000,128,344,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0100000000000000; immval: -6; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0100000000000000,-6,352,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0200000000000000; immval: -257; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0200000000000000,-257,360,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0400000000000000; immval: -4; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0400000000000000,-4,368,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0800000000000000; immval: -4; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0800000000000000,-4,376,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x1000000000000000; immval: -8; align:0
TEST_STORE(x4,x13,0,x10,x11,0x1000000000000000,-8,384,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: 1365; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffbfffffffffffff,1365,392,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: 128; align:0
TEST_STORE(x4,x13,0,x10,x11,0xff7fffffffffffff,128,400,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: -1; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfeffffffffffffff,-1,408,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: -6; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfdffffffffffffff,-6,416,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: 1; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfbffffffffffffff,1,424,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 64; align:0
TEST_STORE(x4,x13,0,x10,x11,0xf7ffffffffffffff,64,432,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: -10; align:0
TEST_STORE(x4,x13,0,x10,x11,0xdfffffffffffffff,-10,440,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: -1366; align:0
TEST_STORE(x4,x13,0,x10,x11,0xbfffffffffffffff,-1366,448,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x5555555555555555; immval: 1024; align:0
TEST_STORE(x4,x13,0,x10,x11,0x5555555555555555,1024,456,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: -1366; align:0
TEST_STORE(x4,x13,0,x10,x11,0xaaaaaaaaaaaaaaaa,-1366,464,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x2000000000000000; immval: -129; align:0
TEST_STORE(x4,x13,0,x10,x11,0x2000000000000000,-129,472,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x4000000000000000; immval: -33; align:0
TEST_STORE(x4,x13,0,x10,x11,0x4000000000000000,-33,480,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: -1024; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffffffe,-1024,488,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: 3; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffffffd,3,496,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: 6; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffffff7,6,504,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: 128; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffffffef,128,512,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: 128; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffffffdf,128,520,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: -2048; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffffffbf,-2048,528,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: 16; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffffff7f,16,536,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: -2; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffffeff,-2,544,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 0; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffffdff,0,552,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: -2048; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffffbff,-2048,560,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: 32; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffff7ff,32,568,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 16; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffffefff,16,576,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 1; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffffbfff,1,584,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: 1; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffff7fff,1,592,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: -7; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffeffff,-7,600,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: -1024; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffdffff,-1024,608,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: -257; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffffbffff,-257,616,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: 7; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffff7ffff,7,624,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval: -6; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffefffff,-6,632,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: 7; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffdfffff,7,640,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: -257; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffffbfffff,-257,648,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: 1; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffff7fffff,1,656,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: -1366; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffeffffff,-1366,664,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: -1025; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffdffffff,-1025,672,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 16; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffffbffffff,16,680,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: -1025; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffff7ffffff,-1025,688,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: -33; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffefffffff,-33,696,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: -4; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffdfffffff,-4,704,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: -2; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffffbfffffff,-2,712,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: -129; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffff7fffffff,-129,720,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: -7; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffeffffffff,-7,728,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: -6; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffdffffffff,-6,736,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 32; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffffbffffffff,32,744,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: 64; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffff7ffffffff,64,752,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: 4; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffefffffffff,4,760,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: -3; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffdfffffffff,-3,768,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: 16; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffffbfffffffff,16,776,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: -33; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffff7fffffffff,-33,784,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: -9; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffeffffffffff,-9,792,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: -4; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffdffffffffff,-4,800,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: -1366; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffffbffffffffff,-1366,808,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: -1025; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffff7ffffffffff,-1025,816,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: -129; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffefffffffffff,-129,824,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: 2047; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffdfffffffffff,2047,832,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: -4; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffffbfffffffffff,-4,840,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: -6; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffff7fffffffffff,-6,848,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 4; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffeffffffffffff,4,856,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: -2048; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffdffffffffffff,-2048,864,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 32; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfffbffffffffffff,32,872,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: -10; align:0
TEST_STORE(x4,x13,0,x10,x11,0xfff7ffffffffffff,-10,880,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: -129; align:0
TEST_STORE(x4,x13,0,x10,x11,0xffefffffffffffff,-129,888,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000000002000; immval: 512; align:0
TEST_STORE(x4,x13,0,x10,x11,0x0000000000002000,512,896,sw,0)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x5_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 113*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
