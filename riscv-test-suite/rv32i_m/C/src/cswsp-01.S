
#This assembly file tests the c.swsp instruction of the RISC-V C extension for the cswsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cswsp)

la x1,signature_x1_1

#opcode:c.swsp; op1:x2; op2:x27; op2val:0x00000400; immval:8
TEST_STORE(x1,x3,0,x2,x27,0x00000400,8,0,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x22; op2val:0xffff7fff; immval:0
TEST_STORE(x1,x3,0,x2,x22,0xffff7fff,0,4,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x26; op2val:0x80000000; immval:40
TEST_STORE(x1,x3,0,x2,x26,0x80000000,40,8,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x30; op2val:0x00000000; immval:64
TEST_STORE(x1,x3,0,x2,x30,0x00000000,64,12,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x4; op2val:0x7fffffff; immval:40
TEST_STORE(x1,x3,0,x2,x4,0x7fffffff,40,16,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x6; op2val:0x00000001; immval:12
TEST_STORE(x1,x3,0,x2,x6,0x00000001,12,20,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x15; op2val:0xfffffbff; immval:4
TEST_STORE(x1,x3,0,x2,x15,0xfffffbff,4,24,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x8; op2val:0x00008000; immval:16
TEST_STORE(x1,x3,0,x2,x8,0x00008000,16,28,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x21; op2val:0xfffffff9; immval:32
TEST_STORE(x1,x3,0,x2,x21,0xfffffff9,32,32,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x17; op2val:0x00000008; immval:128
TEST_STORE(x1,x3,0,x2,x17,0x00000008,128,36,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x31; op2val:0x00000400; immval:248
TEST_STORE(x1,x3,0,x2,x31,0x00000400,248,40,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x23; op2val:0xfffffffb; immval:244
TEST_STORE(x1,x3,0,x2,x23,0xfffffffb,244,44,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x25; op2val:0xfffff7ff; immval:236
TEST_STORE(x1,x3,0,x2,x25,0xfffff7ff,236,48,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x16; op2val:0xfffffffa; immval:220
TEST_STORE(x1,x3,0,x2,x16,0xfffffffa,220,52,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x13; op2val:0x40000000; immval:188
TEST_STORE(x1,x3,0,x2,x13,0x40000000,188,56,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x0; op2val:0xfffffff7; immval:124
TEST_STORE(x1,x3,0,x2,x0,0xfffffff7,124,60,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x29; op2val:0x00000007; immval:84
TEST_STORE(x1,x3,0,x2,x29,0x00000007,84,64,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x24; op2val:0x00020000; immval:168
TEST_STORE(x1,x3,0,x2,x24,0x00020000,168,68,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x12; op2val:0x00000002; immval:84
TEST_STORE(x1,x3,0,x2,x12,0x00000002,84,72,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x11; op2val:0x00000004; immval:124
TEST_STORE(x1,x3,0,x2,x11,0x00000004,124,76,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x14; op2val:0x00000010; immval:84
TEST_STORE(x1,x3,0,x2,x14,0x00000010,84,80,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x5; op2val:0x00000020; immval:8
TEST_STORE(x1,x3,0,x2,x5,0x00000020,8,84,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x19; op2val:0x00000040; immval:124
TEST_STORE(x1,x3,0,x2,x19,0x00000040,124,88,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x9; op2val:0x00000080; immval:64
TEST_STORE(x1,x3,0,x2,x9,0x00000080,64,92,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x2; op2val:0x00000100; immval:84
TEST_STORE(x1,x3,0,x2,x2,0x00000100,84,96,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x20; op2val:0x00000200; immval:248
TEST_STORE(x1,x3,0,x2,x20,0x00000200,248,100,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x18; op2val:0x00000800; immval:72
TEST_STORE(x1,x3,0,x2,x18,0x00000800,72,104,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00001000; immval:124
TEST_STORE(x1,x3,0,x2,x10,0x00001000,124,108,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x7; op2val:0x00002000; immval:0
TEST_STORE(x1,x5,0,x2,x7,0x00002000,0,112,c.swsp,0)
la x4,signature_x4_0

#opcode:c.swsp; op1:x2; op2:x3; op2val:0x00004000; immval:32
TEST_STORE(x4,x5,0,x2,x3,0x00004000,32,0,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x28; op2val:0x00010000; immval:128
TEST_STORE(x4,x5,0,x2,x28,0x00010000,128,4,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x1; op2val:0x00040000; immval:48
TEST_STORE(x4,x5,0,x2,x1,0x00040000,48,8,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00080000; immval:4
TEST_STORE(x4,x5,0,x2,x10,0x00080000,4,12,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00100000; immval:128
TEST_STORE(x4,x5,0,x2,x10,0x00100000,128,16,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00200000; immval:236
TEST_STORE(x4,x5,0,x2,x10,0x00200000,236,20,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00400000; immval:16
TEST_STORE(x4,x5,0,x2,x10,0x00400000,16,24,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00800000; immval:4
TEST_STORE(x4,x5,0,x2,x10,0x00800000,4,28,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x01000000; immval:244
TEST_STORE(x4,x5,0,x2,x10,0x01000000,244,32,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x02000000; immval:36
TEST_STORE(x4,x5,0,x2,x10,0x02000000,36,36,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x04000000; immval:56
TEST_STORE(x4,x5,0,x2,x10,0x04000000,56,40,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffdfff; immval:16
TEST_STORE(x4,x5,0,x2,x10,0xffffdfff,16,44,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffbfff; immval:48
TEST_STORE(x4,x5,0,x2,x10,0xffffbfff,48,48,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffeffff; immval:236
TEST_STORE(x4,x5,0,x2,x10,0xfffeffff,236,52,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffdffff; immval:40
TEST_STORE(x4,x5,0,x2,x10,0xfffdffff,40,56,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffbffff; immval:4
TEST_STORE(x4,x5,0,x2,x10,0xfffbffff,4,60,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfff7ffff; immval:56
TEST_STORE(x4,x5,0,x2,x10,0xfff7ffff,56,64,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffefffff; immval:4
TEST_STORE(x4,x5,0,x2,x10,0xffefffff,4,68,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffdfffff; immval:48
TEST_STORE(x4,x5,0,x2,x10,0xffdfffff,48,72,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffbfffff; immval:52
TEST_STORE(x4,x5,0,x2,x10,0xffbfffff,52,76,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xff7fffff; immval:60
TEST_STORE(x4,x5,0,x2,x10,0xff7fffff,60,80,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfeffffff; immval:60
TEST_STORE(x4,x5,0,x2,x10,0xfeffffff,60,84,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfdffffff; immval:40
TEST_STORE(x4,x5,0,x2,x10,0xfdffffff,40,88,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfbffffff; immval:24
TEST_STORE(x4,x5,0,x2,x10,0xfbffffff,24,92,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xf7ffffff; immval:84
TEST_STORE(x4,x5,0,x2,x10,0xf7ffffff,84,96,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xefffffff; immval:12
TEST_STORE(x4,x5,0,x2,x10,0xefffffff,12,100,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xdfffffff; immval:244
TEST_STORE(x4,x5,0,x2,x10,0xdfffffff,244,104,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x08000000; immval:168
TEST_STORE(x4,x5,0,x2,x10,0x08000000,168,108,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x10000000; immval:44
TEST_STORE(x4,x5,0,x2,x10,0x10000000,44,112,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x20000000; immval:32
TEST_STORE(x4,x5,0,x2,x10,0x20000000,32,116,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xbfffffff; immval:124
TEST_STORE(x4,x5,0,x2,x10,0xbfffffff,124,120,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x55555555; immval:124
TEST_STORE(x4,x5,0,x2,x10,0x55555555,124,124,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffe; immval:44
TEST_STORE(x4,x5,0,x2,x10,0xfffffffe,44,128,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xaaaaaaaa; immval:16
TEST_STORE(x4,x5,0,x2,x10,0xaaaaaaaa,16,132,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffffd; immval:36
TEST_STORE(x4,x5,0,x2,x10,0xfffffffd,36,136,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffef; immval:64
TEST_STORE(x4,x5,0,x2,x10,0xffffffef,64,140,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffdf; immval:4
TEST_STORE(x4,x5,0,x2,x10,0xffffffdf,4,144,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffffbf; immval:28
TEST_STORE(x4,x5,0,x2,x10,0xffffffbf,28,148,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffff7f; immval:68
TEST_STORE(x4,x5,0,x2,x10,0xffffff7f,68,152,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffeff; immval:124
TEST_STORE(x4,x5,0,x2,x10,0xfffffeff,124,156,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffdff; immval:236
TEST_STORE(x4,x5,0,x2,x10,0xfffffdff,236,160,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xffffefff; immval:236
TEST_STORE(x4,x5,0,x2,x10,0xffffefff,236,164,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0xfffffff7; immval:124
TEST_STORE(x4,x5,0,x2,x10,0xfffffff7,124,168,c.swsp,0)

#opcode:c.swsp; op1:x2; op2:x10; op2val:0x00000100; immval:84
TEST_STORE(x4,x5,0,x2,x10,0x00000100,84,172,c.swsp,0)
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
    .fill 29*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 44*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
