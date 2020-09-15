
#This assembly file tests the sb instruction of the RISC-V I extension for the sb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sb-align)

la x15,signature_x15_1

# opcode: sb; op1:x6; op2:x24; op2val:0xffefffffffffffff; immval: -1024; align:0
TEST_STORE(x15,x12,0,x6,x24,0xffefffffffffffff,-1024,0,sb,0)

# opcode: sb; op1:x24; op2:x7; op2val:0xfffffffff7ffffff; immval: 5; align:0
TEST_STORE(x15,x12,0,x24,x7,0xfffffffff7ffffff,5,8,sb,0)

# opcode: sb; op1:x4; op2:x19; op2val:0xfffffff7ffffffff; immval: 2; align:0
TEST_STORE(x15,x12,0,x4,x19,0xfffffff7ffffffff,2,16,sb,0)

# opcode: sb; op1:x28; op2:x30; op2val:0xdfffffffffffffff; immval: -17; align:0
TEST_STORE(x15,x12,0,x28,x30,0xdfffffffffffffff,-17,24,sb,0)

# opcode: sb; op1:x16; op2:x10; op2val:0x0000008000000000; immval: -1024; align:2
TEST_STORE(x15,x12,0,x16,x10,0x0000008000000000,-1024,32,sb,2)

# opcode: sb; op1:x31; op2:x2; op2val:0xfffffffffffffffc; immval: -3; align:2
TEST_STORE(x15,x12,0,x31,x2,0xfffffffffffffffc,-3,40,sb,2)

# opcode: sb; op1:x26; op2:x28; op2val:0x0000080000000000; immval: 2; align:2
TEST_STORE(x15,x12,0,x26,x28,0x0000080000000000,2,48,sb,2)

# opcode: sb; op1:x25; op2:x5; op2val:0x0000001000000000; immval: -513; align:2
TEST_STORE(x15,x12,0,x25,x5,0x0000001000000000,-513,56,sb,2)

# opcode: sb; op1:x7; op2:x25; op2val:0xfffbffffffffffff; immval: -4; align:1
TEST_STORE(x15,x12,0,x7,x25,0xfffbffffffffffff,-4,64,sb,1)

# opcode: sb; op1:x2; op2:x4; op2val:0x0000000100000000; immval: 9; align:1
TEST_STORE(x15,x12,0,x2,x4,0x0000000100000000,9,72,sb,1)

# opcode: sb; op1:x9; op2:x0; op2val:0x0040000000000000; immval: 6; align:1
TEST_STORE(x15,x12,0,x9,x0,0x0040000000000000,6,80,sb,1)

# opcode: sb; op1:x21; op2:x23; op2val:0x0000100000000000; immval: -129; align:1
TEST_STORE(x15,x12,0,x21,x23,0x0000100000000000,-129,88,sb,1)

# opcode: sb; op1:x18; op2:x1; op2val:0x0000000000008000; immval: 1024; align:3
TEST_STORE(x15,x12,0,x18,x1,0x0000000000008000,1024,96,sb,3)

# opcode: sb; op1:x8; op2:x29; op2val:0xfff7ffffffffffff; immval: 1; align:3
TEST_STORE(x15,x12,0,x8,x29,0xfff7ffffffffffff,1,104,sb,3)

# opcode: sb; op1:x27; op2:x3; op2val:0x0000000000000009; immval: -2; align:3
TEST_STORE(x15,x12,0,x27,x3,0x0000000000000009,-2,112,sb,3)

# opcode: sb; op1:x3; op2:x6; op2val:0x0000002000000000; immval: -1; align:3
TEST_STORE(x15,x12,0,x3,x6,0x0000002000000000,-1,120,sb,3)

# opcode: sb; op1:x20; op2:x26; op2val:0x0000000000000005; immval: 0; align:0
TEST_STORE(x15,x12,0,x20,x26,0x0000000000000005,0,128,sb,0)

# opcode: sb; op1:x10; op2:x18; op2val:0x8000000000000000; immval: 8; align:0
TEST_STORE(x15,x12,0,x10,x18,0x8000000000000000,8,136,sb,0)

# opcode: sb; op1:x30; op2:x13; op2val:0x0000000000000000; immval: -3; align:0
TEST_STORE(x15,x12,0,x30,x13,0x0000000000000000,-3,144,sb,0)

# opcode: sb; op1:x14; op2:x11; op2val:0x7fffffffffffffff; immval: 1; align:0
TEST_STORE(x15,x12,0,x14,x11,0x7fffffffffffffff,1,152,sb,0)

# opcode: sb; op1:x23; op2:x12; op2val:0x0000000000000001; immval: 1; align:0
TEST_STORE(x15,x3,0,x23,x12,0x0000000000000001,1,160,sb,0)
la x2,signature_x2_0

# opcode: sb; op1:x11; op2:x27; op2val:0x0000000000000002; immval: 1365; align:0
TEST_STORE(x2,x3,0,x11,x27,0x0000000000000002,1365,0,sb,0)

# opcode: sb; op1:x5; op2:x14; op2val:0x0000000000000004; immval: -2048; align:0
TEST_STORE(x2,x3,0,x5,x14,0x0000000000000004,-2048,8,sb,0)

# opcode: sb; op1:x13; op2:x15; op2val:0x0000000000000008; immval: 5; align:0
TEST_STORE(x2,x3,0,x13,x15,0x0000000000000008,5,16,sb,0)

# opcode: sb; op1:x19; op2:x22; op2val:0x0000000000000010; immval: 1365; align:0
TEST_STORE(x2,x3,0,x19,x22,0x0000000000000010,1365,24,sb,0)

# opcode: sb; op1:x12; op2:x21; op2val:0x0000000000000020; immval: 8; align:0
TEST_STORE(x2,x3,0,x12,x21,0x0000000000000020,8,32,sb,0)

# opcode: sb; op1:x1; op2:x16; op2val:0x0000000000000040; immval: 1365; align:0
TEST_STORE(x2,x3,0,x1,x16,0x0000000000000040,1365,40,sb,0)

# opcode: sb; op1:x17; op2:x8; op2val:0x0000000000000080; immval: 1023; align:0
TEST_STORE(x2,x3,0,x17,x8,0x0000000000000080,1023,48,sb,0)

# opcode: sb; op1:x22; op2:x17; op2val:0x0000000000000100; immval: -6; align:0
TEST_STORE(x2,x3,0,x22,x17,0x0000000000000100,-6,56,sb,0)

# opcode: sb; op1:x15; op2:x20; op2val:0x0000000000000200; immval: 1; align:0
TEST_STORE(x2,x3,0,x15,x20,0x0000000000000200,1,64,sb,0)

# opcode: sb; op1:x29; op2:x31; op2val:0x0000000000000400; immval: -4; align:0
TEST_STORE(x2,x3,0,x29,x31,0x0000000000000400,-4,72,sb,0)

# opcode: sb; op1:x20; op2:x9; op2val:0x0000000000000800; immval: 32; align:0
TEST_STORE(x2,x3,0,x20,x9,0x0000000000000800,32,80,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000001000; immval: -4; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000001000,-4,88,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000002000; immval: 32; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000002000,32,96,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000004000; immval: -33; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000004000,-33,104,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000010000; immval: 0; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000010000,0,112,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000020000; immval: 1365; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000020000,1365,120,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000040000; immval: -257; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000040000,-257,128,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000080000; immval: 9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000080000,9,136,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000100000; immval: -1025; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000100000,-1025,144,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000200000; immval: 4; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000200000,4,152,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000400000; immval: -17; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000400000,-17,160,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000000800000; immval: -7; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000000800000,-7,168,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000001000000; immval: 4; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000001000000,4,176,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000002000000; immval: 1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000002000000,1023,184,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000004000000; immval: -129; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000004000000,-129,192,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 2047; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000008000000,2047,200,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000010000000; immval: -4; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000010000000,-4,208,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000020000000; immval: 256; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000020000000,256,216,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000040000000; immval: -2048; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000040000000,-2048,224,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000080000000; immval: 1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000080000000,1023,232,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000200000000; immval: 3; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000200000000,3,240,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000400000000; immval: 2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000400000000,2,248,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000000800000000; immval: 512; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000000800000000,512,256,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000004000000000; immval: -2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000004000000000,-2,264,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 32; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000010000000000,32,272,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 1; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000020000000000,1,280,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000040000000000; immval: -8; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000040000000000,-8,288,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000200000000000; immval: 3; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000200000000000,3,296,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000400000000000; immval: 128; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000400000000000,128,304,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0000800000000000; immval: 16; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0000800000000000,16,312,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 8; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0001000000000000,8,320,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0002000000000000; immval: 256; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0002000000000000,256,328,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0004000000000000; immval: -1025; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0004000000000000,-1025,336,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0008000000000000; immval: -1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0008000000000000,-1024,344,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0010000000000000; immval: 256; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0010000000000000,256,352,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0020000000000000,9,360,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0080000000000000,2,368,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0100000000000000; immval: -9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0100000000000000,-9,376,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0200000000000000; immval: -2; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0200000000000000,-2,384,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0400000000000000; immval: 1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0400000000000000,1024,392,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: -513; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffbffffffffff,-513,400,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: -513; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffff7ffffffffff,-513,408,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: 64; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffefffffffffff,64,416,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: 6; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffdfffffffffff,6,424,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: -8; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffbfffffffffff,-8,432,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: -257; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffff7fffffffffff,-257,440,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: -3; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffeffffffffffff,-3,448,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: -129; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffdffffffffffff,-129,456,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: 2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffdfffffffffffff,2,464,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: -9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffbfffffffffffff,-9,472,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: 1023; align:0
TEST_STORE(x2,x3,0,x10,x11,0xff7fffffffffffff,1023,480,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: -2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfeffffffffffffff,-2,488,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: -1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfdffffffffffffff,-1,496,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: -129; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfbffffffffffffff,-129,504,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 512; align:0
TEST_STORE(x2,x3,0,x10,x11,0xf7ffffffffffffff,512,512,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: 8; align:0
TEST_STORE(x2,x3,0,x10,x11,0xefffffffffffffff,8,520,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 0; align:0
TEST_STORE(x2,x3,0,x10,x11,0xbfffffffffffffff,0,528,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x5555555555555555; immval: -33; align:0
TEST_STORE(x2,x3,0,x10,x11,0x5555555555555555,-33,536,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: -2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xaaaaaaaaaaaaaaaa,-2,544,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0800000000000000; immval: 5; align:0
TEST_STORE(x2,x3,0,x10,x11,0x0800000000000000,5,552,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x1000000000000000; immval: 8; align:0
TEST_STORE(x2,x3,0,x10,x11,0x1000000000000000,8,560,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x2000000000000000; immval: 3; align:0
TEST_STORE(x2,x3,0,x10,x11,0x2000000000000000,3,568,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x4000000000000000; immval: -9; align:0
TEST_STORE(x2,x3,0,x10,x11,0x4000000000000000,-9,576,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 1365; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffffe,1365,584,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: 2047; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffffd,2047,592,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: 6; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffffb,6,600,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: -10; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffff7,-10,608,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: 5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffffef,5,616,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: 5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffffdf,5,624,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: -8; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffffbf,-8,632,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: -513; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffff7f,-513,640,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: -17; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffeff,-17,648,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: -4; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffdff,-4,656,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: -257; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffffbff,-257,664,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: -1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffff7ff,-1024,672,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 512; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffefff,512,680,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: 5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffdfff,5,688,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffffbfff,7,696,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: -1025; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffff7fff,-1025,704,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: 9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffeffff,9,712,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: -1366; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffdffff,-1366,720,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: -2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffffbffff,-2,728,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: 2; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffff7ffff,2,736,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval: -6; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffefffff,-6,744,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: 64; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffdfffff,64,752,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: -1366; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffffbfffff,-1366,760,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: -10; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffff7fffff,-10,768,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: -6; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffeffffff,-6,776,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: 1365; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffdffffff,1365,784,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 7; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffffbffffff,7,792,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: -129; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffefffffff,-129,800,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 256; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffdfffffff,256,808,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: -5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffffbfffffff,-5,816,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: 512; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffff7fffffff,512,824,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: 1024; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffeffffffff,1024,832,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: 32; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffdffffffff,32,840,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 1; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffffbffffffff,1,848,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: 1365; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffefffffffff,1365,856,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: -5; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffdfffffffff,-5,864,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: -9; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffffbfffffffff,-9,872,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: -6; align:0
TEST_STORE(x2,x3,0,x10,x11,0xffffff7fffffffff,-6,880,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: -3; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffeffffffffff,-3,888,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: -17; align:0
TEST_STORE(x2,x3,0,x10,x11,0xfffffdffffffffff,-17,896,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x0040000000000000; immval: 6; align:1
TEST_STORE(x2,x3,0,x10,x11,0x0040000000000000,6,904,sb,1)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x15_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 114*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
