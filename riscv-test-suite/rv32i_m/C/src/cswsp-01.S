
#This assembly file tests the c.swsp instruction of the RISC-V C extension for the cswsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cswsp)

la x6,signature_x6_1

#opcode:c.swsp; op1:x2; op2:x13; op2val:0x00800000; immval:48
TEST_STORE(x6,x17,0,x2,x13,0x00800000,48,0,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x5; op2val:0xfffffdff; immval:0
TEST_STORE(x6,x17,0,x2,x5,0xfffffdff,0,4,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x19; op2val:0x80000000; immval:64
TEST_STORE(x6,x17,0,x2,x19,0x80000000,64,8,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x4; op2val:0x00000000; immval:220
TEST_STORE(x6,x17,0,x2,x4,0x00000000,220,12,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x15; op2val:0x7fffffff; immval:124
TEST_STORE(x6,x17,0,x2,x15,0x7fffffff,124,16,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x18; op2val:0x00000001; immval:220
TEST_STORE(x6,x17,0,x2,x18,0x00000001,220,20,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x27; op2val:0xffffffef; immval:4
TEST_STORE(x6,x17,0,x2,x27,0xffffffef,4,24,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x8; op2val:0x00002000; immval:8
TEST_STORE(x6,x17,0,x2,x8,0x00002000,8,28,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x14; op2val:0xfffffbff; immval:16
TEST_STORE(x6,x17,0,x2,x14,0xfffffbff,16,32,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x0; op2val:0x00000040; immval:32
TEST_STORE(x6,x17,0,x2,x0,0x00000040,32,36,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x28; op2val:0x00000080; immval:128
TEST_STORE(x6,x17,0,x2,x28,0x00000080,128,40,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x7; op2val:0xfffffffb; immval:248
TEST_STORE(x6,x17,0,x2,x7,0xfffffffb,248,44,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x11; op2val:0xffffffdf; immval:244
TEST_STORE(x6,x17,0,x2,x11,0xffffffdf,244,48,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x29; op2val:0xfffdffff; immval:236
TEST_STORE(x6,x17,0,x2,x29,0xfffdffff,236,52,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x23; op2val:0x00008000; immval:188
TEST_STORE(x6,x17,0,x2,x23,0x00008000,188,56,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x20; op2val:0x00200000; immval:84
TEST_STORE(x6,x17,0,x2,x20,0x00200000,84,60,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x22; op2val:0xfffff7ff; immval:168
TEST_STORE(x6,x17,0,x2,x22,0xfffff7ff,168,64,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x25; op2val:0x00000002; immval:188
TEST_STORE(x6,x17,0,x2,x25,0x00000002,188,68,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x30; op2val:0x00000004; immval:64
TEST_STORE(x6,x17,0,x2,x30,0x00000004,64,72,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x9; op2val:0x00000008; immval:40
TEST_STORE(x6,x17,0,x2,x9,0x00000008,40,76,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x1; op2val:0x00000010; immval:28
TEST_STORE(x6,x17,0,x2,x1,0x00000010,28,80,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x12; op2val:0x00000020; immval:124
TEST_STORE(x6,x17,0,x2,x12,0x00000020,124,84,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x21; op2val:0x00000100; immval:252
TEST_STORE(x6,x17,0,x2,x21,0x00000100,252,88,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00000200; immval:40
TEST_STORE(x6,x17,0,x2,x10,0x00000200,40,92,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x2; op2val:0x00000400; immval:12
TEST_STORE(x6,x17,0,x2,x2,0x00000400,12,96,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x3; op2val:0x00000800; immval:124
TEST_STORE(x6,x17,0,x2,x3,0x00000800,124,100,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x31; op2val:0x00001000; immval:244
TEST_STORE(x6,x17,0,x2,x31,0x00001000,244,104,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x16; op2val:0x00004000; immval:168
TEST_STORE(x6,x17,0,x2,x16,0x00004000,168,108,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x17; op2val:0x00010000; immval:188
TEST_STORE(x6,x3,0,x2,x17,0x00010000,188,112,c.swsp,0)
la x1,signature_x1_0

#opcode:c.swsp; op1:x2; op2:x26; op2val:0x00020000; immval:8
TEST_STORE(x1,x3,0,x2,x26,0x00020000,8,0,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x24; op2val:0x00040000; immval:32
TEST_STORE(x1,x3,0,x2,x24,0x00040000,32,4,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x6; op2val:0x00080000; immval:32
TEST_STORE(x1,x3,0,x2,x6,0x00080000,32,8,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00100000; immval:36
TEST_STORE(x1,x3,0,x2,x10,0x00100000,36,12,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00400000; immval:56
TEST_STORE(x1,x3,0,x2,x10,0x00400000,56,16,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x01000000; immval:0
TEST_STORE(x1,x3,0,x2,x10,0x01000000,0,20,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x02000000; immval:44
TEST_STORE(x1,x3,0,x2,x10,0x02000000,44,24,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffdfff; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xffffdfff,252,28,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffbfff; immval:64
TEST_STORE(x1,x3,0,x2,x10,0xffffbfff,64,32,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffff7fff; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xffff7fff,28,36,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffeffff; immval:4
TEST_STORE(x1,x3,0,x2,x10,0xfffeffff,4,40,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffbffff; immval:128
TEST_STORE(x1,x3,0,x2,x10,0xfffbffff,128,44,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfff7ffff; immval:220
TEST_STORE(x1,x3,0,x2,x10,0xfff7ffff,220,48,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffefffff; immval:84
TEST_STORE(x1,x3,0,x2,x10,0xffefffff,84,52,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffdfffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xffdfffff,52,56,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffbfffff; immval:244
TEST_STORE(x1,x3,0,x2,x10,0xffbfffff,244,60,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xff7fffff; immval:48
TEST_STORE(x1,x3,0,x2,x10,0xff7fffff,48,64,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfeffffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xfeffffff,52,68,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfdffffff; immval:60
TEST_STORE(x1,x3,0,x2,x10,0xfdffffff,60,72,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfbffffff; immval:60
TEST_STORE(x1,x3,0,x2,x10,0xfbffffff,60,76,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xf7ffffff; immval:16
TEST_STORE(x1,x3,0,x2,x10,0xf7ffffff,16,80,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xefffffff; immval:52
TEST_STORE(x1,x3,0,x2,x10,0xefffffff,52,84,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xdfffffff; immval:28
TEST_STORE(x1,x3,0,x2,x10,0xdfffffff,28,88,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x04000000; immval:84
TEST_STORE(x1,x3,0,x2,x10,0x04000000,84,92,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x08000000; immval:44
TEST_STORE(x1,x3,0,x2,x10,0x08000000,44,96,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x10000000; immval:56
TEST_STORE(x1,x3,0,x2,x10,0x10000000,56,100,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x20000000; immval:188
TEST_STORE(x1,x3,0,x2,x10,0x20000000,188,104,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xbfffffff; immval:32
TEST_STORE(x1,x3,0,x2,x10,0xbfffffff,32,108,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x40000000; immval:32
TEST_STORE(x1,x3,0,x2,x10,0x40000000,32,112,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x55555555; immval:244
TEST_STORE(x1,x3,0,x2,x10,0x55555555,244,116,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffe; immval:0
TEST_STORE(x1,x3,0,x2,x10,0xfffffffe,0,120,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xaaaaaaaa; immval:36
TEST_STORE(x1,x3,0,x2,x10,0xaaaaaaaa,36,124,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffd; immval:252
TEST_STORE(x1,x3,0,x2,x10,0xfffffffd,252,128,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffff7; immval:4
TEST_STORE(x1,x3,0,x2,x10,0xfffffff7,4,132,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffbf; immval:248
TEST_STORE(x1,x3,0,x2,x10,0xffffffbf,248,136,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffff7f; immval:68
TEST_STORE(x1,x3,0,x2,x10,0xffffff7f,68,140,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffeff; immval:8
TEST_STORE(x1,x3,0,x2,x10,0xfffffeff,8,144,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffefff; immval:36
TEST_STORE(x1,x3,0,x2,x10,0xffffefff,36,148,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00000040; immval:32
TEST_STORE(x1,x3,0,x2,x10,0x00000040,32,152,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00000400; immval:12
TEST_STORE(x1,x3,0,x2,x10,0x00000400,12,156,c.swsp,0)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 29*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 40*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
