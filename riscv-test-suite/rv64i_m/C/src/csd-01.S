
#This assembly file tests the c.sd instruction of the RISC-V C extension for the csd covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",csd)

la x1,signature_x1_1

#opcode:c.sd; op1:x8; op2:x12; op2val:0xfffffbffffffffff; immval: 56
TEST_STORE(x1,x2,0,x8,x12,0xfffffbffffffffff,56,0,c.sd,0)

#opcode:c.sd; op1:x12; op2:x8; op2val:0xffffffffffffff7f; immval: 0
TEST_STORE(x1,x2,0,x12,x8,0xffffffffffffff7f,0,8,c.sd,0)

#opcode:c.sd; op1:x13; op2:x9; op2val:0x8000000000000000; immval: 88
TEST_STORE(x1,x2,0,x13,x9,0x8000000000000000,88,16,c.sd,0)

#opcode:c.sd; op1:x11; op2:x15; op2val:0x0000000000000000; immval: 8
TEST_STORE(x1,x2,0,x11,x15,0x0000000000000000,8,24,c.sd,0)

#opcode:c.sd; op1:x15; op2:x10; op2val:0x7fffffffffffffff; immval: 184
TEST_STORE(x1,x2,0,x15,x10,0x7fffffffffffffff,184,32,c.sd,0)

#opcode:c.sd; op1:x9; op2:x14; op2val:0x0000000000000001; immval: 120
TEST_STORE(x1,x2,0,x9,x14,0x0000000000000001,120,40,c.sd,0)

#opcode:c.sd; op1:x14; op2:x11; op2val:0xfdffffffffffffff; immval: 16
TEST_STORE(x1,x2,0,x14,x11,0xfdffffffffffffff,16,48,c.sd,0)

#opcode:c.sd; op1:x10; op2:x13; op2val:0x0000000200000000; immval: 32
TEST_STORE(x1,x2,0,x10,x13,0x0000000200000000,32,56,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,64,64,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0040000000000000; immval: 128
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,128,72,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xc000000000000000; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0xc000000000000000,240,80,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000040000; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0x0000000000040000,232,88,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: 216
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,216,96,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: 168
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffff7fff,168,104,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000080000000; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0x0000000080000000,80,112,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000002; immval: 168
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000002,168,120,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000004; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000004,184,128,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000008; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000008,48,136,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000010; immval: 248
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000010,248,144,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000020; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000020,0,152,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000040; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000040,72,160,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000080; immval: 152
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000080,152,168,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000100; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000100,8,176,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000200; immval: 128
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000200,128,184,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000400; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000400,80,192,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000800; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000800,64,200,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000001000; immval: 168
TEST_STORE(x1,x2,0,x10,x11,0x0000000000001000,168,208,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000002000; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0x0000000000002000,232,216,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000004000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000004000,32,224,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000008000; immval: 112
TEST_STORE(x1,x2,0,x10,x11,0x0000000000008000,112,232,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000010000; immval: 88
TEST_STORE(x1,x2,0,x10,x11,0x0000000000010000,88,240,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000020000; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0x0000000000020000,24,248,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000080000; immval: 96
TEST_STORE(x1,x2,0,x10,x11,0x0000000000080000,96,256,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000100000; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0000000000100000,8,264,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000200000; immval: 96
TEST_STORE(x1,x2,0,x10,x11,0x0000000000200000,96,272,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000400000; immval: 112
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,112,280,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000800000; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0000000000800000,8,288,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000001000000; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,64,296,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000002000000; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,8,304,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000004000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000000004000000,56,312,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,24,320,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000010000000; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,184,328,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000020000000; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,72,336,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000040000000; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,232,344,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000100000000; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,72,352,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000400000000; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,24,360,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000800000000; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,232,368,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000001000000000; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,0,376,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000002000000000; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,24,384,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000004000000000; immval: 112
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,112,392,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000008000000000; immval: 112
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,112,400,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,40,408,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 168
TEST_STORE(x1,x2,0,x10,x11,0x0000020000000000,168,416,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000040000000000; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,72,424,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000080000000000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,40,432,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000100000000000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,32,440,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000200000000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000200000000000,56,448,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000400000000000; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,80,456,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000800000000000; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,184,464,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x0001000000000000,40,472,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0002000000000000; immval: 152
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,152,480,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0004000000000000; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,240,488,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0008000000000000; immval: 96
TEST_STORE(x1,x2,0,x10,x11,0x0008000000000000,96,496,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0010000000000000; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,8,504,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,64,512,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,72,520,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0100000000000000; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,64,528,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0200000000000000; immval: 104
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,104,536,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0400000000000000; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0x0400000000000000,184,544,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,56,552,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,8,560,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,56,568,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,40,576,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,16,584,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,240,592,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,40,600,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,0,608,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: 144
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,144,616,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: 104
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,104,624,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,80,632,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: 216
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,216,640,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: 88
TEST_STORE(x1,x2,0,x10,x11,0xdfffffffffffffff,88,648,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0xbfffffffffffffff,184,656,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x5555555555555555; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,40,664,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,184,672,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0800000000000000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,48,680,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x1000000000000000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,48,688,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x2000000000000000; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,72,696,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x4000000000000000; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,120,704,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,32,712,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: 112
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,112,720,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: 128
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,128,728,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,32,736,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,56,744,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffdf,72,752,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: 168
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,168,760,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,32,768,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffdff,48,776,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,40,784,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,56,792,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,40,800,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,232,808,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,184,816,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,56,824,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,32,832,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: 112
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffbffff,112,840,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,48,848,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,80,856,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,40,864,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffbfffff,232,872,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,240,880,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,240,888,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,80,896,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,48,904,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,24,912,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: 104
TEST_STORE(x1,x2,0,x10,x11,0xffffffffefffffff,104,920,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,240,928,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,8,936,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,72,944,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,48,952,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,240,960,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffffffbffffffff,64,968,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: 104
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,104,976,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: 96
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,96,984,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xffffffbfffffffff,16,992,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffffff7fffffffff,56,1000,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xfffffeffffffffff,40,1008,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,64,1016,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,16,1024,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,184,1032,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,16,1040,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: 152
TEST_STORE(x1,x2,0,x10,x11,0xffffbfffffffffff,152,1048,c.sd,0)
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
    .fill 132*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
