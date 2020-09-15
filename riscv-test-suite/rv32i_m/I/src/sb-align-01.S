
#This assembly file tests the sb instruction of the RISC-V I extension for the sb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sb-align)

la x17,signature_x17_1

# opcode: sb; op1:x11; op2:x9; op2val:0xfffbffff; immval: 8; align:0
TEST_STORE(x17,x16,0,x11,x9,0xfffbffff,8,0,sb,0)

# opcode: sb; op1:x14; op2:x21; op2val:0x00000080; immval: 5; align:0
TEST_STORE(x17,x16,0,x14,x21,0x00000080,5,4,sb,0)

# opcode: sb; op1:x9; op2:x26; op2val:0xffffffdf; immval: -6; align:0
TEST_STORE(x17,x16,0,x9,x26,0xffffffdf,-6,8,sb,0)

# opcode: sb; op1:x21; op2:x28; op2val:0xfffffffe; immval: -1025; align:0
TEST_STORE(x17,x16,0,x21,x28,0xfffffffe,-1025,12,sb,0)

# opcode: sb; op1:x12; op2:x25; op2val:0x02000000; immval: 8; align:2
TEST_STORE(x17,x16,0,x12,x25,0x02000000,8,16,sb,2)

# opcode: sb; op1:x8; op2:x7; op2val:0xfbffffff; immval: 9; align:2
TEST_STORE(x17,x16,0,x8,x7,0xfbffffff,9,20,sb,2)

# opcode: sb; op1:x20; op2:x4; op2val:0xfffffff6; immval: -10; align:2
TEST_STORE(x17,x16,0,x20,x4,0xfffffff6,-10,24,sb,2)

# opcode: sb; op1:x30; op2:x19; op2val:0x80000000; immval: -5; align:2
TEST_STORE(x17,x16,0,x30,x19,0x80000000,-5,28,sb,2)

# opcode: sb; op1:x26; op2:x15; op2val:0xfffffeff; immval: 512; align:1
TEST_STORE(x17,x16,0,x26,x15,0xfffffeff,512,32,sb,1)

# opcode: sb; op1:x27; op2:x23; op2val:0xfdffffff; immval: 5; align:1
TEST_STORE(x17,x16,0,x27,x23,0xfdffffff,5,36,sb,1)

# opcode: sb; op1:x31; op2:x5; op2val:0x00000006; immval: 6; align:1
TEST_STORE(x17,x16,0,x31,x5,0x00000006,6,40,sb,1)

# opcode: sb; op1:x29; op2:x13; op2val:0x00000000; immval: 1023; align:1
TEST_STORE(x17,x16,0,x29,x13,0x00000000,1023,44,sb,1)

# opcode: sb; op1:x4; op2:x20; op2val:0x00001000; immval: 1024; align:3
TEST_STORE(x17,x16,0,x4,x20,0x00001000,1024,48,sb,3)

# opcode: sb; op1:x2; op2:x1; op2val:0xdfffffff; immval: -3; align:3
TEST_STORE(x17,x16,0,x2,x1,0xdfffffff,-3,52,sb,3)

# opcode: sb; op1:x13; op2:x2; op2val:0xefffffff; immval: 2; align:3
TEST_STORE(x17,x16,0,x13,x2,0xefffffff,2,56,sb,3)

# opcode: sb; op1:x22; op2:x3; op2val:0x02000000; immval: -9; align:3
TEST_STORE(x17,x16,0,x22,x3,0x02000000,-9,60,sb,3)

# opcode: sb; op1:x3; op2:x6; op2val:0xfffffffd; immval: 0; align:0
TEST_STORE(x17,x16,0,x3,x6,0xfffffffd,0,64,sb,0)

# opcode: sb; op1:x19; op2:x10; op2val:0x7fffffff; immval: 2; align:0
TEST_STORE(x17,x16,0,x19,x10,0x7fffffff,2,68,sb,0)

# opcode: sb; op1:x1; op2:x16; op2val:0x00000001; immval: 9; align:0
TEST_STORE(x17,x2,0,x1,x16,0x00000001,9,72,sb,0)
la x1,signature_x1_0

# opcode: sb; op1:x16; op2:x31; op2val:0x00000002; immval: 2; align:0
TEST_STORE(x1,x2,0,x16,x31,0x00000002,2,0,sb,0)

# opcode: sb; op1:x5; op2:x22; op2val:0x00000004; immval: -1025; align:0
TEST_STORE(x1,x2,0,x5,x22,0x00000004,-1025,4,sb,0)

# opcode: sb; op1:x24; op2:x8; op2val:0x00000008; immval: -1; align:0
TEST_STORE(x1,x2,0,x24,x8,0x00000008,-1,8,sb,0)

# opcode: sb; op1:x18; op2:x14; op2val:0x00000010; immval: 6; align:0
TEST_STORE(x1,x2,0,x18,x14,0x00000010,6,12,sb,0)

# opcode: sb; op1:x7; op2:x18; op2val:0x00000020; immval: -5; align:0
TEST_STORE(x1,x2,0,x7,x18,0x00000020,-5,16,sb,0)

# opcode: sb; op1:x15; op2:x27; op2val:0x00000040; immval: 16; align:0
TEST_STORE(x1,x2,0,x15,x27,0x00000040,16,20,sb,0)

# opcode: sb; op1:x23; op2:x24; op2val:0x00000100; immval: 512; align:0
TEST_STORE(x1,x2,0,x23,x24,0x00000100,512,24,sb,0)

# opcode: sb; op1:x25; op2:x29; op2val:0x00000200; immval: 1; align:0
TEST_STORE(x1,x2,0,x25,x29,0x00000200,1,28,sb,0)

# opcode: sb; op1:x28; op2:x30; op2val:0x00000400; immval: -5; align:0
TEST_STORE(x1,x2,0,x28,x30,0x00000400,-5,32,sb,0)

# opcode: sb; op1:x17; op2:x0; op2val:0x00000800; immval: 2047; align:0
TEST_STORE(x1,x2,0,x17,x0,0x00000800,2047,36,sb,0)

# opcode: sb; op1:x10; op2:x12; op2val:0x00002000; immval: 9; align:0
TEST_STORE(x1,x2,0,x10,x12,0x00002000,9,40,sb,0)

# opcode: sb; op1:x6; op2:x17; op2val:0x00004000; immval: 64; align:0
TEST_STORE(x1,x2,0,x6,x17,0x00004000,64,44,sb,0)

# opcode: sb; op1:x25; op2:x11; op2val:0x00008000; immval: -129; align:0
TEST_STORE(x1,x2,0,x25,x11,0x00008000,-129,48,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x00010000; immval: 9; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00010000,9,52,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x00020000; immval: 2; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00020000,2,56,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x00040000; immval: -1025; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00040000,-1025,60,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x00080000; immval: 256; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00080000,256,64,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x00100000; immval: -6; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00100000,-6,68,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x00200000; immval: 1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00200000,1024,72,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x00400000; immval: 1; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00400000,1,76,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffbff; immval: 7; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffbff,7,80,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffff7ff; immval: -1025; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ff,-1025,84,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffefff; immval: -257; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffefff,-257,88,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffdfff; immval: -8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffdfff,-8,92,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffbfff; immval: -1; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffbfff,-1,96,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffff7fff; immval: -2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffff7fff,-2048,100,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffeffff; immval: -33; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffeffff,-33,104,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffdffff; immval: 128; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffdffff,128,108,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfff7ffff; immval: -2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffff,-2048,112,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffefffff; immval: 64; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffefffff,64,116,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffdfffff; immval: 9; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffdfffff,9,120,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffbfffff; immval: -5; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffbfffff,-5,124,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xff7fffff; immval: 1023; align:0
TEST_STORE(x1,x2,0,x10,x11,0xff7fffff,1023,128,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfeffffff; immval: 1; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfeffffff,1,132,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xf7ffffff; immval: -1025; align:0
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffff,-1025,136,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xbfffffff; immval: -65; align:0
TEST_STORE(x1,x2,0,x10,x11,0xbfffffff,-65,140,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x00800000; immval: 128; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00800000,128,144,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x01000000; immval: -6; align:0
TEST_STORE(x1,x2,0,x10,x11,0x01000000,-6,148,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x04000000; immval: -3; align:0
TEST_STORE(x1,x2,0,x10,x11,0x04000000,-3,152,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x08000000; immval: 256; align:0
TEST_STORE(x1,x2,0,x10,x11,0x08000000,256,156,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x10000000; immval: -65; align:0
TEST_STORE(x1,x2,0,x10,x11,0x10000000,-65,160,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x20000000; immval: -8; align:0
TEST_STORE(x1,x2,0,x10,x11,0x20000000,-8,164,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x40000000; immval: 1; align:0
TEST_STORE(x1,x2,0,x10,x11,0x40000000,1,168,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x55555555; immval: -8; align:0
TEST_STORE(x1,x2,0,x10,x11,0x55555555,-8,172,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xaaaaaaaa; immval: 2047; align:0
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaa,2047,176,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffffb; immval: -10; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffb,-10,180,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffff7; immval: 7; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7,7,184,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffef; immval: 3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffef,3,188,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffffbf; immval: 2047; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffbf,2047,192,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xffffff7f; immval: 128; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffff7f,128,196,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0xfffffdff; immval: -5; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffdff,-5,200,sb,0)

# opcode: sb; op1:x10; op2:x11; op2val:0x00000800; immval: 2047; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00000800,2047,204,sb,0)
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

signature_x17_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x17_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 52*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
