
#This assembly file tests the sw instruction of the RISC-V I extension for the sw-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sw-align)

la x8,signature_x8_1

# opcode: sw; op1:x1; op2:x17; op2val:0x2000000000000000; immval: 128; align:0
TEST_STORE(x8,x19,0,x1,x17,0x2000000000000000,128,0,sw,0)

# opcode: sw; op1:x7; op2:x25; op2val:0xaaaaaaaaaaaaaaaa; immval: -3; align:0
TEST_STORE(x8,x19,0,x7,x25,0xaaaaaaaaaaaaaaaa,-3,8,sw,0)

# opcode: sw; op1:x17; op2:x12; op2val:0x0000000000000200; immval: -10; align:0
TEST_STORE(x8,x19,0,x17,x12,0x0000000000000200,-10,16,sw,0)

# opcode: sw; op1:x10; op2:x18; op2val:0xffffffffffefffff; immval: -65; align:0
TEST_STORE(x8,x19,0,x10,x18,0xffffffffffefffff,-65,24,sw,0)

# opcode: sw; op1:x22; op2:x15; op2val:0xfffffffff7ffffff; immval: 0; align:0
TEST_STORE(x8,x19,0,x22,x15,0xfffffffff7ffffff,0,32,sw,0)

# opcode: sw; op1:x31; op2:x4; op2val:0x8000000000000000; immval: -9; align:0
TEST_STORE(x8,x19,0,x31,x4,0x8000000000000000,-9,40,sw,0)

# opcode: sw; op1:x18; op2:x0; op2val:0x0000000000000000; immval: 64; align:0
TEST_STORE(x8,x19,0,x18,x0,0x0000000000000000,64,48,sw,0)

# opcode: sw; op1:x15; op2:x7; op2val:0x7fffffffffffffff; immval: 5; align:0
TEST_STORE(x8,x19,0,x15,x7,0x7fffffffffffffff,5,56,sw,0)

# opcode: sw; op1:x2; op2:x31; op2val:0x0000000000000001; immval: 512; align:0
TEST_STORE(x8,x19,0,x2,x31,0x0000000000000001,512,64,sw,0)

# opcode: sw; op1:x16; op2:x20; op2val:0x0000000000000002; immval: -10; align:0
TEST_STORE(x8,x19,0,x16,x20,0x0000000000000002,-10,72,sw,0)

# opcode: sw; op1:x28; op2:x6; op2val:0x0000000000000004; immval: -17; align:0
TEST_STORE(x8,x19,0,x28,x6,0x0000000000000004,-17,80,sw,0)

# opcode: sw; op1:x12; op2:x27; op2val:0x0000000000000008; immval: -8; align:0
TEST_STORE(x8,x19,0,x12,x27,0x0000000000000008,-8,88,sw,0)

# opcode: sw; op1:x21; op2:x14; op2val:0x0000000000000010; immval: 0; align:0
TEST_STORE(x8,x19,0,x21,x14,0x0000000000000010,0,96,sw,0)

# opcode: sw; op1:x9; op2:x26; op2val:0x0000000000000020; immval: 4; align:0
TEST_STORE(x8,x19,0,x9,x26,0x0000000000000020,4,104,sw,0)

# opcode: sw; op1:x5; op2:x16; op2val:0x0000000000000040; immval: 5; align:0
TEST_STORE(x8,x19,0,x5,x16,0x0000000000000040,5,112,sw,0)

# opcode: sw; op1:x26; op2:x3; op2val:0x0000000000000080; immval: -6; align:0
TEST_STORE(x8,x19,0,x26,x3,0x0000000000000080,-6,120,sw,0)

# opcode: sw; op1:x30; op2:x9; op2val:0x0000000000000100; immval: 9; align:0
TEST_STORE(x8,x19,0,x30,x9,0x0000000000000100,9,128,sw,0)

# opcode: sw; op1:x29; op2:x30; op2val:0x0000000000000400; immval: -65; align:0
TEST_STORE(x8,x19,0,x29,x30,0x0000000000000400,-65,136,sw,0)

# opcode: sw; op1:x11; op2:x2; op2val:0x0000000000000800; immval: 16; align:0
TEST_STORE(x8,x19,0,x11,x2,0x0000000000000800,16,144,sw,0)

# opcode: sw; op1:x3; op2:x22; op2val:0x0000000000001000; immval: 2; align:0
TEST_STORE(x8,x19,0,x3,x22,0x0000000000001000,2,152,sw,0)

# opcode: sw; op1:x14; op2:x28; op2val:0x0000000000002000; immval: -1025; align:0
TEST_STORE(x8,x19,0,x14,x28,0x0000000000002000,-1025,160,sw,0)

# opcode: sw; op1:x13; op2:x5; op2val:0x0000000000004000; immval: 1; align:0
TEST_STORE(x8,x19,0,x13,x5,0x0000000000004000,1,168,sw,0)

# opcode: sw; op1:x23; op2:x11; op2val:0x0000000000008000; immval: -10; align:0
TEST_STORE(x8,x3,0,x23,x11,0x0000000000008000,-10,176,sw,0)
la x2,signature_x2_0

# opcode: sw; op1:x20; op2:x23; op2val:0x0000000000010000; immval: -65; align:0
TEST_STORE(x2,x3,0,x20,x23,0x0000000000010000,-65,0,sw,0)

# opcode: sw; op1:x25; op2:x1; op2val:0x0000000000020000; immval: -1366; align:0
TEST_STORE(x2,x3,0,x25,x1,0x0000000000020000,-1366,8,sw,0)

# opcode: sw; op1:x19; op2:x13; op2val:0x0000000000040000; immval: -17; align:0
TEST_STORE(x2,x3,0,x19,x13,0x0000000000040000,-17,16,sw,0)

# opcode: sw; op1:x24; op2:x29; op2val:0x0000000000080000; immval: -2048; align:0
TEST_STORE(x2,x3,0,x24,x29,0x0000000000080000,-2048,24,sw,0)

# opcode: sw; op1:x27; op2:x21; op2val:0x0000000000100000; immval: -3; align:0
TEST_STORE(x2,x3,0,x27,x21,0x0000000000100000,-3,32,sw,0)

# opcode: sw; op1:x6; op2:x24; op2val:0x0000000000200000; immval: 4; align:0
TEST_STORE(x2,x3,0,x6,x24,0x0000000000200000,4,40,sw,0)

# opcode: sw; op1:x8; op2:x10; op2val:0x0000000000400000; immval: -17; align:0
TEST_STORE(x2,x3,0,x8,x10,0x0000000000400000,-17,48,sw,0)

# opcode: sw; op1:x4; op2:x8; op2val:0x0000000000800000; immval: -2048; align:0
TEST_STORE(x2,x3,0,x4,x8,0x0000000000800000,-2048,56,sw,0)

# opcode: sw; op1:x10; op2:x19; op2val:0x0000000001000000; immval: -4; align:0
TEST_STORE(x2,x3,0,x10,x19,0x0000000001000000,-4,64,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000002000000; immval: -4; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000002000000,-4,72,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000004000000; immval: -2048; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000004000000,-2048,80,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 0; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000008000000,0,88,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000010000000; immval: 9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000010000000,9,96,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000020000000; immval: -17; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000020000000,-17,104,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000040000000; immval: -8; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000040000000,-8,112,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000080000000; immval: 32; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000080000000,32,120,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000100000000; immval: 9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000100000000,9,128,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000200000000; immval: 6; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000200000000,6,136,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000400000000; immval: 6; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000400000000,6,144,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000800000000; immval: -257; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000800000000,-257,152,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000001000000000; immval: 0; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000001000000000,0,160,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000002000000000; immval: -9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000002000000000,-9,168,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000004000000000; immval: -6; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000004000000000,-6,176,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000008000000000; immval: -2048; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000008000000000,-2048,184,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 512; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000010000000000,512,192,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 32; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000020000000000,32,200,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000040000000000; immval: -65; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000040000000000,-65,208,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000080000000000; immval: 1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000080000000000,1024,216,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000100000000000; immval: -8; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000100000000000,-8,224,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000200000000000; immval: 2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000200000000000,2,232,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000400000000000; immval: 4; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000400000000000,4,240,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000800000000000; immval: -10; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000800000000000,-10,248,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 512; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0001000000000000,512,256,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0002000000000000; immval: -513; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0002000000000000,-513,264,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0004000000000000; immval: -7; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0004000000000000,-7,272,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0008000000000000; immval: -17; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0008000000000000,-17,280,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0010000000000000; immval: 1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0010000000000000,1024,288,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 0; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0020000000000000,0,296,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0040000000000000; immval: -9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0040000000000000,-9,304,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0080000000000000; immval: -33; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0080000000000000,-33,312,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0100000000000000; immval: 4; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0100000000000000,4,320,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0200000000000000; immval: 2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0200000000000000,2,328,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0400000000000000; immval: -2048; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0400000000000000,-2048,336,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0800000000000000; immval: 3; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0800000000000000,3,344,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x1000000000000000; immval: 0; align:0
TEST_STORE(x2,x3,0,x10,x11,0x1000000000000000,0,352,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: -7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffbfffffffffffff,-7,360,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: -4; align:0
TEST_STORE(x2,x3,0,x10,x11,0xff7fffffffffffff,-4,368,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: 1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfeffffffffffffff,1023,376,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: 6; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfdffffffffffffff,6,384,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: -9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfbffffffffffffff,-9,392,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xf7ffffffffffffff,1,400,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: -7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xefffffffffffffff,-7,408,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: 1365; align:0
TEST_STORE(x2,x3,0,x10,x11,0xdfffffffffffffff,1365,416,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xbfffffffffffffff,9,424,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x5555555555555555; immval: 2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x5555555555555555,2,432,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x4000000000000000; immval: -257; align:0
TEST_STORE(x2,x3,0,x10,x11,0x4000000000000000,-257,440,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffffe,1,448,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: -257; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffffd,-257,456,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: 1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffffb,1023,464,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: -1025; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffff7,-1025,472,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: -2048; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffffef,-2048,480,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: 256; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffffdf,256,488,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: -65; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffffbf,-65,496,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: 4; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffff7f,4,504,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: -129; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffeff,-129,512,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 8; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffdff,8,520,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: -1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffbff,-1024,528,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: -1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffff7ff,-1024,536,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 64; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffefff,64,544,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: -5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffdfff,-5,552,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: -2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffbfff,-2,560,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: -17; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffff7fff,-17,568,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: 16; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffeffff,16,576,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: -129; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffdffff,-129,584,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: 0; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffbffff,0,592,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: -33; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffff7ffff,-33,600,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: -5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffdfffff,-5,608,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: -513; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffbfffff,-513,616,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: 1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffff7fffff,1023,624,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: -2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffeffffff,-2,632,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: -129; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffdffffff,-129,640,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffbffffff,5,648,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: 256; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffefffffff,256,656,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 2047; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffdfffffff,2047,664,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: 64; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffbfffffff,64,672,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: 9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffff7fffffff,9,680,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: 256; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffeffffffff,256,688,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: -9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffdffffffff,-9,696,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: -4; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffbffffffff,-4,704,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: 1365; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffff7ffffffff,1365,712,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: 8; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffefffffffff,8,720,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: -2048; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffdfffffffff,-2048,728,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: -2048; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffbfffffffff,-2048,736,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: 32; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffff7fffffffff,32,744,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: -3; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffeffffffffff,-3,752,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: -65; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffdffffffffff,-65,760,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: 5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffbffffffffff,5,768,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: 2047; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffff7ffffffffff,2047,776,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: -2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffefffffffffff,-2,784,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: 5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffdfffffffffff,5,792,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: -7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffbfffffffffff,-7,800,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: -65; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffff7fffffffffff,-65,808,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffeffffffffffff,2,816,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: 4; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffdffffffffffff,4,824,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 512; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffbffffffffffff,512,832,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfff7ffffffffffff,7,840,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: 512; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffefffffffffffff,512,848,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: 256; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffdfffffffffffff,256,856,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x0000000000000000; immval: 64; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000000000,64,864,sw,0)
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
    .fill 23*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 109*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
