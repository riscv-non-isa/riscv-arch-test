
#This assembly file tests the c.sw instruction of the RISC-V C extension for the csw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csw)

la x1,signature_x1_1

#opcode:c.sw; op1:x15; op2:x14; op2val:0x0000000000000200; immval: 32
TEST_STORE(x1,x2,0,x15,x14,0x0000000000000200,32,0,c.sw,0)

#opcode:c.sw; op1:x12; op2:x11; op2val:0x0000000000000001; immval: 0
TEST_STORE(x1,x2,0,x12,x11,0x0000000000000001,0,8,c.sw,0)

#opcode:c.sw; op1:x13; op2:x12; op2val:0x8000000000000000; immval: 84
TEST_STORE(x1,x2,0,x13,x12,0x8000000000000000,84,16,c.sw,0)

#opcode:c.sw; op1:x11; op2:x8; op2val:0x0000000000000000; immval: 120
TEST_STORE(x1,x2,0,x11,x8,0x0000000000000000,120,24,c.sw,0)

#opcode:c.sw; op1:x9; op2:x13; op2val:0x7fffffffffffffff; immval: 84
TEST_STORE(x1,x2,0,x9,x13,0x7fffffffffffffff,84,32,c.sw,0)

#opcode:c.sw; op1:x14; op2:x9; op2val:0xfffffffffff7ffff; immval: 4
TEST_STORE(x1,x2,0,x14,x9,0xfffffffffff7ffff,4,40,c.sw,0)

#opcode:c.sw; op1:x8; op2:x10; op2val:0x0000020000000000; immval: 8
TEST_STORE(x1,x2,0,x8,x10,0x0000020000000000,8,48,c.sw,0)

#opcode:c.sw; op1:x10; op2:x15; op2val:0x0000000080000000; immval: 16
TEST_STORE(x1,x2,0,x10,x15,0x0000000080000000,16,56,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,64,64,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000007; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000007,116,72,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,108,80,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000800000000000; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,92,88,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000800000000000; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,60,96,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,40,104,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000002; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000002,28,112,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000004; immval: 12
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000004,12,120,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000008; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000008,20,128,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000010; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000010,72,136,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000020; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000020,68,144,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000040; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000040,16,152,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000080; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000080,40,160,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000100; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000100,32,168,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000400; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000400,32,176,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000000800; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000800,16,184,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000001000; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0000000000001000,64,192,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000002000; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0x0000000000002000,0,200,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000004000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000004000,40,208,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000008000; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0x0000000000008000,44,216,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000010000; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x0000000000010000,84,224,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000020000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000020000,32,232,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000040000; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x0000000000040000,116,240,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000080000; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0x0000000000080000,120,248,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000100000; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0000000000100000,64,256,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000200000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000000000200000,56,264,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000400000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,40,272,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000000800000; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x0000000000800000,84,280,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000001000000; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,84,288,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000002000000; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,124,296,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000004000000; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0x0000000004000000,68,304,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,52,312,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000010000000; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,0,320,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000020000000; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,116,328,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000040000000; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,60,336,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000100000000; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,68,344,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000200000000; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x0000000200000000,108,352,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000400000000; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,60,360,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000000800000000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,40,368,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000001000000000; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,124,376,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000002000000000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,40,384,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000004000000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,56,392,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000008000000000; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,4,400,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,52,408,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000040000000000; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,76,416,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000080000000000; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,124,424,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000100000000000; immval: 12
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,12,432,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000200000000000; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,84,440,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0000400000000000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,48,448,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0x0001000000000000,44,456,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0002000000000000; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,76,464,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0004000000000000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,48,472,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0008000000000000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0008000000000000,48,480,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0010000000000000; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,0,488,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,116,496,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0040000000000000; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,116,504,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,40,512,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0100000000000000; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,4,520,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0200000000000000; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,4,528,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0400000000000000; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0x0400000000000000,124,536,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x0800000000000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,56,544,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x1000000000000000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,48,552,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,32,560,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,20,568,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,120,576,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,68,584,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,92,592,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,56,600,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,84,608,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,44,616,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,72,624,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0xfdffffffffffffff,24,632,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,72,640,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,92,648,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xdfffffffffffffff,8,656,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xbfffffffffffffff,8,664,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x5555555555555555; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,40,672,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,4,680,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x2000000000000000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,32,688,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x4000000000000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,56,696,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,44,704,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,84,712,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,72,720,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,52,728,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,52,736,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffdf,64,744,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,48,752,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffff7f,64,760,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,108,768,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffdff,120,776,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,68,784,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,52,792,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,24,800,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,28,808,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffff7fff,32,816,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,116,824,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,108,832,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffbffff,32,840,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,40,848,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,120,856,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffbfffff,120,864,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,64,872,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,56,880,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,44,888,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,8,896,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,84,904,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffffffffefffffff,56,912,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,68,920,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,28,928,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,4,936,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,56,944,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,124,952,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xfffffffbffffffff,16,960,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,84,968,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,48,976,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,8,984,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffffbfffffffff,40,992,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffff7fffffffff,40,1000,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0xfffffeffffffffff,124,1008,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,52,1016,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0xfffffbffffffffff,28,1024,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,124,1032,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,48,1040,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,108,1048,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: 36
TEST_STORE(x1,x2,0,x10,x11,0xffffbfffffffffff,36,1056,c.sw,0)
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
    .fill 133*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
