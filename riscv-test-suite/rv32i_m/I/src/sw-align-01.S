
#This assembly file tests the sw instruction of the RISC-V I extension for the sw-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sw-align)

la x7,signature_x7_1

# opcode: sw; op1:x24; op2:x16; op2val:0xbfffffff; immval: -2048; align:0
TEST_STORE(x7,x15,0,x24,x16,0xbfffffff,-2048,0,sw,0)

# opcode: sw; op1:x31; op2:x4; op2val:0xfffeffff; immval: 9; align:0
TEST_STORE(x7,x15,0,x31,x4,0xfffeffff,9,4,sw,0)

# opcode: sw; op1:x9; op2:x21; op2val:0xfeffffff; immval: 2; align:0
TEST_STORE(x7,x15,0,x9,x21,0xfeffffff,2,8,sw,0)

# opcode: sw; op1:x14; op2:x31; op2val:0xffffdfff; immval: 7; align:0
TEST_STORE(x7,x15,0,x14,x31,0xffffdfff,7,12,sw,0)

# opcode: sw; op1:x20; op2:x29; op2val:0x7fffffff; immval: 0; align:0
TEST_STORE(x7,x15,0,x20,x29,0x7fffffff,0,16,sw,0)

# opcode: sw; op1:x19; op2:x5; op2val:0x80000000; immval: -7; align:0
TEST_STORE(x7,x15,0,x19,x5,0x80000000,-7,20,sw,0)

# opcode: sw; op1:x13; op2:x25; op2val:0x00000000; immval: 16; align:0
TEST_STORE(x7,x15,0,x13,x25,0x00000000,16,24,sw,0)

# opcode: sw; op1:x18; op2:x17; op2val:0x00000001; immval: 256; align:0
TEST_STORE(x7,x15,0,x18,x17,0x00000001,256,28,sw,0)

# opcode: sw; op1:x21; op2:x23; op2val:0x00000002; immval: -4; align:0
TEST_STORE(x7,x15,0,x21,x23,0x00000002,-4,32,sw,0)

# opcode: sw; op1:x28; op2:x9; op2val:0x00000004; immval: -7; align:0
TEST_STORE(x7,x15,0,x28,x9,0x00000004,-7,36,sw,0)

# opcode: sw; op1:x1; op2:x24; op2val:0x00000008; immval: -65; align:0
TEST_STORE(x7,x15,0,x1,x24,0x00000008,-65,40,sw,0)

# opcode: sw; op1:x27; op2:x19; op2val:0x00000010; immval: -6; align:0
TEST_STORE(x7,x15,0,x27,x19,0x00000010,-6,44,sw,0)

# opcode: sw; op1:x3; op2:x20; op2val:0x00000020; immval: 9; align:0
TEST_STORE(x7,x15,0,x3,x20,0x00000020,9,48,sw,0)

# opcode: sw; op1:x8; op2:x30; op2val:0x00000040; immval: 3; align:0
TEST_STORE(x7,x15,0,x8,x30,0x00000040,3,52,sw,0)

# opcode: sw; op1:x16; op2:x2; op2val:0x00000080; immval: -129; align:0
TEST_STORE(x7,x15,0,x16,x2,0x00000080,-129,56,sw,0)

# opcode: sw; op1:x12; op2:x11; op2val:0x00000100; immval: 4; align:0
TEST_STORE(x7,x15,0,x12,x11,0x00000100,4,60,sw,0)

# opcode: sw; op1:x25; op2:x6; op2val:0x00000200; immval: 8; align:0
TEST_STORE(x7,x15,0,x25,x6,0x00000200,8,64,sw,0)

# opcode: sw; op1:x29; op2:x1; op2val:0x00000400; immval: -4; align:0
TEST_STORE(x7,x15,0,x29,x1,0x00000400,-4,68,sw,0)

# opcode: sw; op1:x10; op2:x8; op2val:0x00000800; immval: 4; align:0
TEST_STORE(x7,x15,0,x10,x8,0x00000800,4,72,sw,0)

# opcode: sw; op1:x2; op2:x0; op2val:0x00001000; immval: 4; align:0
TEST_STORE(x7,x8,0,x2,x0,0x00001000,4,76,sw,0)

# opcode: sw; op1:x22; op2:x15; op2val:0x00002000; immval: -2; align:0
TEST_STORE(x7,x8,0,x22,x15,0x00002000,-2,80,sw,0)
la x1,signature_x1_0

# opcode: sw; op1:x17; op2:x3; op2val:0x00004000; immval: 6; align:0
TEST_STORE(x1,x8,0,x17,x3,0x00004000,6,0,sw,0)

# opcode: sw; op1:x7; op2:x18; op2val:0x00008000; immval: -7; align:0
TEST_STORE(x1,x8,0,x7,x18,0x00008000,-7,4,sw,0)

# opcode: sw; op1:x30; op2:x27; op2val:0x00010000; immval: 2; align:0
TEST_STORE(x1,x8,0,x30,x27,0x00010000,2,8,sw,0)

# opcode: sw; op1:x15; op2:x14; op2val:0x00020000; immval: 6; align:0
TEST_STORE(x1,x8,0,x15,x14,0x00020000,6,12,sw,0)

# opcode: sw; op1:x4; op2:x28; op2val:0x00040000; immval: 128; align:0
TEST_STORE(x1,x8,0,x4,x28,0x00040000,128,16,sw,0)

# opcode: sw; op1:x5; op2:x13; op2val:0x00080000; immval: 8; align:0
TEST_STORE(x1,x8,0,x5,x13,0x00080000,8,20,sw,0)

# opcode: sw; op1:x26; op2:x12; op2val:0x00100000; immval: 128; align:0
TEST_STORE(x1,x8,0,x26,x12,0x00100000,128,24,sw,0)

# opcode: sw; op1:x23; op2:x10; op2val:0x00200000; immval: -1025; align:0
TEST_STORE(x1,x8,0,x23,x10,0x00200000,-1025,28,sw,0)

# opcode: sw; op1:x6; op2:x22; op2val:0x00400000; immval: -3; align:0
TEST_STORE(x1,x8,0,x6,x22,0x00400000,-3,32,sw,0)

# opcode: sw; op1:x11; op2:x7; op2val:0x00800000; immval: 7; align:0
TEST_STORE(x1,x8,0,x11,x7,0x00800000,7,36,sw,0)

# opcode: sw; op1:x5; op2:x26; op2val:0x01000000; immval: 7; align:0
TEST_STORE(x1,x8,0,x5,x26,0x01000000,7,40,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x02000000; immval: -9; align:0
TEST_STORE(x1,x8,0,x10,x11,0x02000000,-9,44,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x04000000; immval: -2048; align:0
TEST_STORE(x1,x8,0,x10,x11,0x04000000,-2048,48,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x08000000; immval: -129; align:0
TEST_STORE(x1,x8,0,x10,x11,0x08000000,-129,52,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x10000000; immval: 1365; align:0
TEST_STORE(x1,x8,0,x10,x11,0x10000000,1365,56,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffbfffff; immval: -10; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffbfffff,-10,60,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xff7fffff; immval: -4; align:0
TEST_STORE(x1,x8,0,x10,x11,0xff7fffff,-4,64,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfdffffff; immval: -5; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfdffffff,-5,68,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfbffffff; immval: 2047; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfbffffff,2047,72,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xf7ffffff; immval: 1365; align:0
TEST_STORE(x1,x8,0,x10,x11,0xf7ffffff,1365,76,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xefffffff; immval: 6; align:0
TEST_STORE(x1,x8,0,x10,x11,0xefffffff,6,80,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xdfffffff; immval: -1366; align:0
TEST_STORE(x1,x8,0,x10,x11,0xdfffffff,-1366,84,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x55555555; immval: -1024; align:0
TEST_STORE(x1,x8,0,x10,x11,0x55555555,-1024,88,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xaaaaaaaa; immval: -513; align:0
TEST_STORE(x1,x8,0,x10,x11,0xaaaaaaaa,-513,92,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x20000000; immval: -2; align:0
TEST_STORE(x1,x8,0,x10,x11,0x20000000,-2,96,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x40000000; immval: 16; align:0
TEST_STORE(x1,x8,0,x10,x11,0x40000000,16,100,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffe; immval: -65; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffffffe,-65,104,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffd; immval: -1366; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffffffd,-1366,108,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffffb; immval: 1; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffffffb,1,112,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffff7; immval: -6; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffffff7,-6,116,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffef; immval: 2; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffffffef,2,120,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffdf; immval: 4; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffffffdf,4,124,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffffbf; immval: -513; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffffffbf,-513,128,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffff7f; immval: 256; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffffff7f,256,132,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffeff; immval: -1; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffffeff,-1,136,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffdff; immval: 6; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffffdff,6,140,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffffbff; immval: 1023; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffffbff,1023,144,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffff7ff; immval: -1366; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffff7ff,-1366,148,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffefff; immval: -7; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffffefff,-7,152,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffffbfff; immval: -65; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffffbfff,-65,156,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffff7fff; immval: 16; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffff7fff,16,160,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffdffff; immval: 1024; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffdffff,1024,164,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfffbffff; immval: 1; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfffbffff,1,168,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xfff7ffff; immval: 128; align:0
TEST_STORE(x1,x8,0,x10,x11,0xfff7ffff,128,172,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffefffff; immval: -1024; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffefffff,-1024,176,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0xffdfffff; immval: 1; align:0
TEST_STORE(x1,x8,0,x10,x11,0xffdfffff,1,180,sw,0)

# opcode: sw; op1:x10; op2:x11; op2val:0x00001000; immval: 4; align:0
TEST_STORE(x1,x8,0,x10,x11,0x00001000,4,184,sw,0)
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


signature_x1_0:
    .fill 47*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
