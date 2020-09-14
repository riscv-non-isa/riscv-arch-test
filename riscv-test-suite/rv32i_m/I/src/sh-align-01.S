
#This assembly file tests the sh instruction of the RISC-V I extension for the sh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sh-align)

la x9,signature_x9_1

# opcode: sh; op1:x15; op2:x0; op2val:0xfffffbff; immval: -1024; align:0
TEST_STORE(x9,x12,0,x15,x0,0xfffffbff,-1024,0,sh,0)

# opcode: sh; op1:x11; op2:x2; op2val:0x00000006; immval: -7; align:0
TEST_STORE(x9,x12,0,x11,x2,0x00000006,-7,4,sh,0)

# opcode: sh; op1:x18; op2:x20; op2val:0x00000007; immval: 6; align:0
TEST_STORE(x9,x12,0,x18,x20,0x00000007,6,8,sh,0)

# opcode: sh; op1:x22; op2:x4; op2val:0x00000003; immval: 1023; align:0
TEST_STORE(x9,x12,0,x22,x4,0x00000003,1023,12,sh,0)

# opcode: sh; op1:x4; op2:x3; op2val:0xffffdfff; immval: 1024; align:2
TEST_STORE(x9,x12,0,x4,x3,0xffffdfff,1024,16,sh,2)

# opcode: sh; op1:x24; op2:x29; op2val:0x00400000; immval: 1365; align:2
TEST_STORE(x9,x12,0,x24,x29,0x00400000,1365,20,sh,2)

# opcode: sh; op1:x31; op2:x25; op2val:0xfffffffa; immval: -6; align:2
TEST_STORE(x9,x12,0,x31,x25,0xfffffffa,-6,24,sh,2)

# opcode: sh; op1:x30; op2:x6; op2val:0xfffff7ff; immval: -513; align:2
TEST_STORE(x9,x12,0,x30,x6,0xfffff7ff,-513,28,sh,2)

# opcode: sh; op1:x27; op2:x21; op2val:0xffffefff; immval: 0; align:0
TEST_STORE(x9,x12,0,x27,x21,0xffffefff,0,32,sh,0)

# opcode: sh; op1:x3; op2:x31; op2val:0x80000000; immval: -7; align:0
TEST_STORE(x9,x12,0,x3,x31,0x80000000,-7,36,sh,0)

# opcode: sh; op1:x16; op2:x1; op2val:0x00000000; immval: 512; align:0
TEST_STORE(x9,x12,0,x16,x1,0x00000000,512,40,sh,0)

# opcode: sh; op1:x1; op2:x19; op2val:0x7fffffff; immval: -33; align:0
TEST_STORE(x9,x12,0,x1,x19,0x7fffffff,-33,44,sh,0)

# opcode: sh; op1:x10; op2:x24; op2val:0x00000001; immval: 16; align:0
TEST_STORE(x9,x12,0,x10,x24,0x00000001,16,48,sh,0)

# opcode: sh; op1:x17; op2:x16; op2val:0x00000002; immval: -65; align:0
TEST_STORE(x9,x12,0,x17,x16,0x00000002,-65,52,sh,0)

# opcode: sh; op1:x26; op2:x17; op2val:0x00000004; immval: -1366; align:0
TEST_STORE(x9,x12,0,x26,x17,0x00000004,-1366,56,sh,0)

# opcode: sh; op1:x13; op2:x8; op2val:0x00000008; immval: 2; align:0
TEST_STORE(x9,x12,0,x13,x8,0x00000008,2,60,sh,0)

# opcode: sh; op1:x2; op2:x13; op2val:0x00000010; immval: 16; align:0
TEST_STORE(x9,x12,0,x2,x13,0x00000010,16,64,sh,0)

# opcode: sh; op1:x5; op2:x10; op2val:0x00000020; immval: -129; align:0
TEST_STORE(x9,x12,0,x5,x10,0x00000020,-129,68,sh,0)

# opcode: sh; op1:x20; op2:x11; op2val:0x00000040; immval: 0; align:0
TEST_STORE(x9,x12,0,x20,x11,0x00000040,0,72,sh,0)

# opcode: sh; op1:x8; op2:x28; op2val:0x00000080; immval: 32; align:0
TEST_STORE(x9,x12,0,x8,x28,0x00000080,32,76,sh,0)

# opcode: sh; op1:x7; op2:x26; op2val:0x00000100; immval: 2; align:0
TEST_STORE(x9,x12,0,x7,x26,0x00000100,2,80,sh,0)

# opcode: sh; op1:x29; op2:x27; op2val:0x00000200; immval: 1365; align:0
TEST_STORE(x9,x2,0,x29,x27,0x00000200,1365,84,sh,0)

# opcode: sh; op1:x21; op2:x7; op2val:0x00000400; immval: -5; align:0
TEST_STORE(x9,x2,0,x21,x7,0x00000400,-5,88,sh,0)

# opcode: sh; op1:x23; op2:x18; op2val:0x00000800; immval: -1025; align:0
TEST_STORE(x9,x2,0,x23,x18,0x00000800,-1025,92,sh,0)
la x1,signature_x1_0

# opcode: sh; op1:x6; op2:x30; op2val:0x00001000; immval: 256; align:0
TEST_STORE(x1,x2,0,x6,x30,0x00001000,256,0,sh,0)

# opcode: sh; op1:x25; op2:x23; op2val:0x00002000; immval: 1023; align:0
TEST_STORE(x1,x2,0,x25,x23,0x00002000,1023,4,sh,0)

# opcode: sh; op1:x12; op2:x9; op2val:0x00004000; immval: 6; align:0
TEST_STORE(x1,x2,0,x12,x9,0x00004000,6,8,sh,0)

# opcode: sh; op1:x28; op2:x5; op2val:0x00008000; immval: 5; align:0
TEST_STORE(x1,x2,0,x28,x5,0x00008000,5,12,sh,0)

# opcode: sh; op1:x9; op2:x22; op2val:0x00010000; immval: -17; align:0
TEST_STORE(x1,x2,0,x9,x22,0x00010000,-17,16,sh,0)

# opcode: sh; op1:x19; op2:x12; op2val:0x00020000; immval: 4; align:0
TEST_STORE(x1,x2,0,x19,x12,0x00020000,4,20,sh,0)

# opcode: sh; op1:x14; op2:x15; op2val:0x00040000; immval: 1; align:0
TEST_STORE(x1,x2,0,x14,x15,0x00040000,1,24,sh,0)

# opcode: sh; op1:x5; op2:x14; op2val:0x00080000; immval: 256; align:0
TEST_STORE(x1,x2,0,x5,x14,0x00080000,256,28,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x00100000; immval: -17; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00100000,-17,32,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x00200000; immval: 128; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00200000,128,36,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x00800000; immval: 64; align:0
TEST_STORE(x1,x2,0,x10,x11,0x00800000,64,40,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x01000000; immval: 128; align:0
TEST_STORE(x1,x2,0,x10,x11,0x01000000,128,44,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x02000000; immval: -65; align:0
TEST_STORE(x1,x2,0,x10,x11,0x02000000,-65,48,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x04000000; immval: -10; align:0
TEST_STORE(x1,x2,0,x10,x11,0x04000000,-10,52,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x08000000; immval: 32; align:0
TEST_STORE(x1,x2,0,x10,x11,0x08000000,32,56,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x10000000; immval: -5; align:0
TEST_STORE(x1,x2,0,x10,x11,0x10000000,-5,60,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffbffff; immval: 1023; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffbffff,1023,64,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfff7ffff; immval: -257; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffff,-257,68,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffefffff; immval: 4; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffefffff,4,72,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffdfffff; immval: 7; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffdfffff,7,76,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffbfffff; immval: 1365; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffbfffff,1365,80,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xff7fffff; immval: 16; align:0
TEST_STORE(x1,x2,0,x10,x11,0xff7fffff,16,84,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfeffffff; immval: 512; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfeffffff,512,88,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfdffffff; immval: -129; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfdffffff,-129,92,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfbffffff; immval: -4; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfbffffff,-4,96,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xf7ffffff; immval: 16; align:0
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffff,16,100,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xefffffff; immval: -9; align:0
TEST_STORE(x1,x2,0,x10,x11,0xefffffff,-9,104,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xdfffffff; immval: -1366; align:0
TEST_STORE(x1,x2,0,x10,x11,0xdfffffff,-1366,108,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xbfffffff; immval: 512; align:0
TEST_STORE(x1,x2,0,x10,x11,0xbfffffff,512,112,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x55555555; immval: 1; align:0
TEST_STORE(x1,x2,0,x10,x11,0x55555555,1,116,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xaaaaaaaa; immval: -33; align:0
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaa,-33,120,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x20000000; immval: 4; align:0
TEST_STORE(x1,x2,0,x10,x11,0x20000000,4,124,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0x40000000; immval: -9; align:0
TEST_STORE(x1,x2,0,x10,x11,0x40000000,-9,128,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffe; immval: -3; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffe,-3,132,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffd; immval: 1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffd,1024,136,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffffb; immval: -5; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffffb,-5,140,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffff7; immval: 5; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7,5,144,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffef; immval: 8; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffef,8,148,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffdf; immval: 0; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffdf,0,152,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffffbf; immval: -7; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffffbf,-7,156,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffff7f; immval: -1366; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffff7f,-1366,160,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffeff; immval: -17; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffeff,-17,164,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffdff; immval: 9; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffdff,9,168,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffffbfff; immval: 16; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffffbfff,16,172,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xffff7fff; immval: 7; align:0
TEST_STORE(x1,x2,0,x10,x11,0xffff7fff,7,176,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffeffff; immval: 32; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffeffff,32,180,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffdffff; immval: -2048; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffdffff,-2048,184,sh,0)

# opcode: sh; op1:x10; op2:x11; op2val:0xfffffbff; immval: -1024; align:0
TEST_STORE(x1,x2,0,x10,x11,0xfffffbff,-1024,188,sh,0)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x9_1:
    .fill 24*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 48*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
