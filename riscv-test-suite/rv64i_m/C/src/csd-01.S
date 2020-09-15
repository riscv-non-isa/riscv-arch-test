
#This assembly file tests the c.sd instruction of the RISC-V C extension for the csd covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",csd)

la x1,signature_x1_1

#opcode:c.sd; op1:x15; op2:x12; op2val:0xfffffffffffffff9; immval: 104
TEST_STORE(x1,x2,0,x15,x12,0xfffffffffffffff9,104,0,c.sd,0)

#opcode:c.sd; op1:x12; op2:x10; op2val:0x0000200000000000; immval: 0
TEST_STORE(x1,x2,0,x12,x10,0x0000200000000000,0,8,c.sd,0)

#opcode:c.sd; op1:x14; op2:x13; op2val:0x8000000000000000; immval: 72
TEST_STORE(x1,x2,0,x14,x13,0x8000000000000000,72,16,c.sd,0)

#opcode:c.sd; op1:x8; op2:x15; op2val:0x0000000000000000; immval: 64
TEST_STORE(x1,x2,0,x8,x15,0x0000000000000000,64,24,c.sd,0)

#opcode:c.sd; op1:x9; op2:x8; op2val:0x7fffffffffffffff; immval: 136
TEST_STORE(x1,x2,0,x9,x8,0x7fffffffffffffff,136,32,c.sd,0)

#opcode:c.sd; op1:x13; op2:x9; op2val:0x0000000000000001; immval: 128
TEST_STORE(x1,x2,0,x13,x9,0x0000000000000001,128,40,c.sd,0)

#opcode:c.sd; op1:x11; op2:x14; op2val:0xc000000000000000; immval: 8
TEST_STORE(x1,x2,0,x11,x14,0xc000000000000000,8,48,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffdfffffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xffffffffdfffffff,16,56,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfdffffffffffffff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xfdffffffffffffff,32,64,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffdffffffffffff; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0xfffdffffffffffff,240,72,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000400000000; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0x0000000400000000,232,80,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000004000000000; immval: 216
TEST_STORE(x1,x2,0,x10,x11,0x0000004000000000,216,88,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffe; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffe,184,96,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000001000000000; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0x0000001000000000,120,104,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000800; immval: 168
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000800,168,112,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000001000000; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0x0000000001000000,80,120,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000002; immval: 248
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000002,248,128,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000004; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000004,56,136,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000008; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000008,240,144,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000010; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000010,8,152,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000020; immval: 248
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000020,248,160,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000040; immval: 128
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000040,128,168,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000080; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000080,16,176,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000100; immval: 144
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000100,144,184,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000200; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000200,16,192,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000000400; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0x0000000000000400,80,200,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000001000; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0x0000000000001000,0,208,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000002000; immval: 144
TEST_STORE(x1,x2,0,x10,x11,0x0000000000002000,144,216,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000004000; immval: 216
TEST_STORE(x1,x2,0,x10,x11,0x0000000000004000,216,224,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000008000; immval: 112
TEST_STORE(x1,x2,0,x10,x11,0x0000000000008000,112,232,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000010000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0000000000010000,48,240,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000020000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000020000,32,248,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000040000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x0000000000040000,48,256,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000080000; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0x0000000000080000,240,264,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000100000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000000000100000,56,272,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000200000; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0x0000000000200000,240,280,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000400000; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0x0000000000400000,0,288,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000000800000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x0000000000800000,32,296,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000002000000; immval: 216
TEST_STORE(x1,x2,0,x10,x11,0x0000000002000000,216,304,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000004000000; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0x0000000004000000,184,312,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000008000000; immval: 88
TEST_STORE(x1,x2,0,x10,x11,0x0000000008000000,88,320,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000010000000; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0x0000000010000000,0,328,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000020000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000000020000000,56,336,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000040000000; immval: 152
TEST_STORE(x1,x2,0,x10,x11,0x0000000040000000,152,344,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000080000000; immval: 112
TEST_STORE(x1,x2,0,x10,x11,0x0000000080000000,112,352,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000100000000; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0x0000000100000000,232,360,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000200000000; immval: 136
TEST_STORE(x1,x2,0,x10,x11,0x0000000200000000,136,368,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000000800000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x0000000800000000,56,376,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000002000000000; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0x0000002000000000,240,384,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000008000000000; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0x0000008000000000,120,392,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000010000000000; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0000010000000000,64,400,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000020000000000; immval: 136
TEST_STORE(x1,x2,0,x10,x11,0x0000020000000000,136,408,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000040000000000; immval: 104
TEST_STORE(x1,x2,0,x10,x11,0x0000040000000000,104,416,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000080000000000; immval: 104
TEST_STORE(x1,x2,0,x10,x11,0x0000080000000000,104,424,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000100000000000; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0x0000100000000000,240,432,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000400000000000; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0x0000400000000000,184,440,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0000800000000000; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0x0000800000000000,0,448,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0001000000000000; immval: 96
TEST_STORE(x1,x2,0,x10,x11,0x0001000000000000,96,456,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0002000000000000; immval: 104
TEST_STORE(x1,x2,0,x10,x11,0x0002000000000000,104,464,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0004000000000000; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0x0004000000000000,232,472,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0008000000000000; immval: 168
TEST_STORE(x1,x2,0,x10,x11,0x0008000000000000,168,480,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0010000000000000; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0x0010000000000000,184,488,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0020000000000000; immval: 216
TEST_STORE(x1,x2,0,x10,x11,0x0020000000000000,216,496,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0040000000000000; immval: 96
TEST_STORE(x1,x2,0,x10,x11,0x0040000000000000,96,504,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0080000000000000; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x0080000000000000,64,512,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0100000000000000; immval: 136
TEST_STORE(x1,x2,0,x10,x11,0x0100000000000000,136,520,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0200000000000000; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0x0200000000000000,232,528,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0400000000000000; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0x0400000000000000,16,536,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x0800000000000000; immval: 136
TEST_STORE(x1,x2,0,x10,x11,0x0800000000000000,136,544,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x1000000000000000; immval: 136
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,136,552,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffff7fffffffffff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xffff7fffffffffff,32,560,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffeffffffffffff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xfffeffffffffffff,32,568,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffbffffffffffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xfffbffffffffffff,16,576,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfff7ffffffffffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffffffffffff,8,584,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffefffffffffffff; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0xffefffffffffffff,80,592,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffdfffffffffffff; immval: 128
TEST_STORE(x1,x2,0,x10,x11,0xffdfffffffffffff,128,600,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffbfffffffffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffbfffffffffffff,56,608,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xff7fffffffffffff; immval: 136
TEST_STORE(x1,x2,0,x10,x11,0xff7fffffffffffff,136,616,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfeffffffffffffff; immval: 168
TEST_STORE(x1,x2,0,x10,x11,0xfeffffffffffffff,168,624,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfbffffffffffffff; immval: 232
TEST_STORE(x1,x2,0,x10,x11,0xfbffffffffffffff,232,632,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xf7ffffffffffffff; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffffffffffff,72,640,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xefffffffffffffff; immval: 168
TEST_STORE(x1,x2,0,x10,x11,0xefffffffffffffff,168,648,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xdfffffffffffffff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xdfffffffffffffff,48,656,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xbfffffffffffffff; immval: 88
TEST_STORE(x1,x2,0,x10,x11,0xbfffffffffffffff,88,664,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x5555555555555555; immval: 88
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,88,672,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xaaaaaaaaaaaaaaaa; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaaaaaaaaaa,0,680,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x2000000000000000; immval: 144
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,144,688,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0x4000000000000000; immval: 152
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,152,696,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffd; immval: 96
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffd,96,704,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffffb; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffffb,24,712,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffff7; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffff7,48,720,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffef; immval: 136
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffef,136,728,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffdf; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffdf,184,736,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffffbf; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffffbf,80,744,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffff7f; immval: 216
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffff7f,216,752,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffeff; immval: 104
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffeff,104,760,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffdff; immval: 128
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffdff,128,768,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffffbff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffffbff,16,776,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffff7ff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffff7ff,120,784,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffefff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffefff,40,792,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffdfff; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffdfff,24,800,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffffbfff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffffbfff,16,808,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffff7fff; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffff7fff,184,816,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffeffff; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffeffff,64,824,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffdffff; immval: 88
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffdffff,88,832,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffffbffff; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffffbffff,24,840,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffff7ffff; immval: 216
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffff7ffff,216,848,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffefffff; immval: 80
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffefffff,80,856,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffdfffff; immval: 144
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffdfffff,144,864,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffffbfffff; immval: 0
TEST_STORE(x1,x2,0,x10,x11,0xffffffffffbfffff,0,872,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffff7fffff; immval: 184
TEST_STORE(x1,x2,0,x10,x11,0xffffffffff7fffff,184,880,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffeffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffeffffff,40,888,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffdffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffdffffff,56,896,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffffbffffff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xfffffffffbffffff,120,904,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffff7ffffff; immval: 240
TEST_STORE(x1,x2,0,x10,x11,0xfffffffff7ffffff,240,912,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffefffffff; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0xffffffffefffffff,24,920,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffffbfffffff; immval: 96
TEST_STORE(x1,x2,0,x10,x11,0xffffffffbfffffff,96,928,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffff7fffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffffff7fffffff,40,936,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffeffffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xfffffffeffffffff,40,944,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffdffffffff; immval: 96
TEST_STORE(x1,x2,0,x10,x11,0xfffffffdffffffff,96,952,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffffbffffffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xfffffffbffffffff,16,960,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffff7ffffffff; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7ffffffff,72,968,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffefffffffff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xffffffefffffffff,120,976,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffdfffffffff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xffffffdfffffffff,48,984,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffffbfffffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffffffbfffffffff,56,992,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffff7fffffffff; immval: 104
TEST_STORE(x1,x2,0,x10,x11,0xffffff7fffffffff,104,1000,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffeffffffffff; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xfffffeffffffffff,16,1008,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffdffffffffff; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xfffffdffffffffff,72,1016,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffffbffffffffff; immval: 112
TEST_STORE(x1,x2,0,x10,x11,0xfffffbffffffffff,112,1024,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xfffff7ffffffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ffffffffff,56,1032,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffefffffffffff; immval: 88
TEST_STORE(x1,x2,0,x10,x11,0xffffefffffffffff,88,1040,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffdfffffffffff; immval: 216
TEST_STORE(x1,x2,0,x10,x11,0xffffdfffffffffff,216,1048,c.sd,0)

#opcode:c.sd; op1:x10; op2:x11; op2val:0xffffbfffffffffff; immval: 248
TEST_STORE(x1,x2,0,x10,x11,0xffffbfffffffffff,248,1056,c.sd,0)
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
