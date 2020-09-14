
#This assembly file tests the c.sw instruction of the RISC-V C extension for the csw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csw)

la x1,signature_x1_1

#opcode:c.sw; op1:x9; op2:x10; op2val:0x0000000000000004; immval: 48
TEST_STORE(x1,x2,0,x9,x10,0x0000000000000004,48,0,c.sw,0)

#opcode:c.sw; op1:x15; op2:x14; op2val:0xffffffffffffffdf; immval: 0
TEST_STORE(x1,x2,0,x15,x14,0xffffffffffffffdf,0,8,c.sw,0)

#opcode:c.sw; op1:x8; op2:x15; op2val:0x8000000000000000; immval: 48
TEST_STORE(x1,x2,0,x8,x15,0x8000000000000000,48,16,c.sw,0)

#opcode:c.sw; op1:x13; op2:x12; op2val:0x0000000000000000; immval: 8
TEST_STORE(x1,x2,0,x13,x12,0x0000000000000000,8,24,c.sw,0)

#opcode:c.sw; op1:x11; op2:x9; op2val:0x7fffffffffffffff; immval: 52
TEST_STORE(x1,x2,0,x11,x9,0x7fffffffffffffff,52,32,c.sw,0)

#opcode:c.sw; op1:x12; op2:x13; op2val:0x0000000000000001; immval: 48
TEST_STORE(x1,x2,0,x12,x13,0x0000000000000001,48,40,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,4,48,c.sw,0)

#opcode:c.sw; op1:x14; op2:x8; op2val:0xffffbfffffffffff; immval: 16
TEST_STORE(x1,x2,0,x14,x8,0xffffbfffffffffff,16,56,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,32,64,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000200000000; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0000000200000000,64,72,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,120,80,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,116,88,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,108,96,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,92,104,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000010; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000010,60,112,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x2000000000000000; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,84,120,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,40,128,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000002; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000002,84,136,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000008; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000008,44,144,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000020; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000020,92,152,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000040; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000040,108,160,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000080; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000080,120,168,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000100; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000100,92,176,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000200; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000200,28,184,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000400; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000400,24,192,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000800; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000800,8,200,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000001000; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x0000000000001000,108,208,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000002000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000002000,32,216,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000004000; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x0000000000004000,60,224,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000008000; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x0000000000008000,108,232,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000010000; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0x0000000000010000,68,240,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000020000; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0x0000000000020000,28,248,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000040000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000040000,32,256,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000080000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000080000,32,264,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000100000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000100000,32,272,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000200000; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x0000000000200000,108,280,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000400000; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,60,288,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000800000; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0x0000000000800000,20,296,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000001000000; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,120,304,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000002000000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,32,312,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000004000000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0000000004000000,48,320,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,84,328,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000010000000; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,76,336,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000020000000; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,28,344,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000040000000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,48,352,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000080000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000000080000000,56,360,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000100000000; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,116,368,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000400000000; immval: 36
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,36,376,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000800000000; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,8,384,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000001000000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,56,392,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000002000000000; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,4,400,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000004000000000; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,108,408,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000008000000000; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,76,416,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,40,424,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0000020000000000,8,432,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000040000000000; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,20,440,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000080000000000; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,28,448,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000100000000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,56,456,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000200000000000; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,64,464,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000400000000000; immval: 36
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,36,472,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000800000000000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,48,480,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x0001000000000000,116,488,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0002000000000000; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,76,496,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0004000000000000; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,8,504,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0008000000000000; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0x0008000000000000,4,512,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0010000000000000; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,68,520,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,60,528,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0040000000000000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,32,536,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,68,544,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,40,552,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,76,560,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,108,568,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,68,576,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,76,584,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,8,592,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,92,600,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0xfdffffffffffffff,68,608,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,84,616,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,84,624,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0xdfffffffffffffff,0,632,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0xbfffffffffffffff,24,640,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x5555555555555555; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,8,648,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,4,656,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,52,664,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0100000000000000; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,20,672,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0200000000000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,56,680,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0400000000000000; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x0400000000000000,108,688,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0800000000000000; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,108,696,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x1000000000000000; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,4,704,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x4000000000000000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,40,712,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,44,720,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,64,728,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,48,736,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,44,744,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,76,752,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,68,760,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffff7f,32,768,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,32,776,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffdff,4,784,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,120,792,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,56,800,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,8,808,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,120,816,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,52,824,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffff7fff,60,832,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,52,840,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: 36
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffbffff,36,848,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,16,856,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,8,864,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffbfffff,40,872,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,56,880,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,0,888,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,0,896,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,92,904,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,108,912,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffefffffff,64,920,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,8,928,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,48,936,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,0,944,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: 12
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,12,952,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0xfffffffbffffffff,52,960,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,56,968,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,4,976,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0xffffffbfffffffff,20,984,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xffffff7fffffffff,4,992,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0xfffffeffffffffff,52,1000,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,108,1008,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0xfffffbffffffffff,76,1016,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,4,1024,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,68,1032,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,28,1040,c.sw,0)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 131*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
