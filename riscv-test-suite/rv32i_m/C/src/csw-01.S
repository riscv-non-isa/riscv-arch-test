
#This assembly file tests the c.sw instruction of the RISC-V C extension for the csw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csw)

la x1,signature_x1_1

#opcode:c.sw; op1:x14; op2:x10; op2val:0xc0000000; immval: 92
TEST_STORE(x1,x2,0,x14,x10,0xc0000000,92,0,c.sw,0)

#opcode:c.sw; op1:x8; op2:x12; op2val:0xfffffffa; immval: 0
TEST_STORE(x1,x2,0,x8,x12,0xfffffffa,0,4,c.sw,0)

#opcode:c.sw; op1:x15; op2:x13; op2val:0x80000000; immval: 120
TEST_STORE(x1,x2,0,x15,x13,0x80000000,120,8,c.sw,0)

#opcode:c.sw; op1:x9; op2:x15; op2val:0x00000000; immval: 4
TEST_STORE(x1,x2,0,x9,x15,0x00000000,4,12,c.sw,0)

#opcode:c.sw; op1:x12; op2:x8; op2val:0x7fffffff; immval: 12
TEST_STORE(x1,x2,0,x12,x8,0x7fffffff,12,16,c.sw,0)

#opcode:c.sw; op1:x10; op2:x14; op2val:0x00000001; immval: 76
TEST_STORE(x1,x2,0,x10,x14,0x00000001,76,20,c.sw,0)

#opcode:c.sw; op1:x11; op2:x9; op2val:0xfffeffff; immval: 8
TEST_STORE(x1,x2,0,x11,x9,0xfffeffff,8,24,c.sw,0)

#opcode:c.sw; op1:x13; op2:x11; op2val:0x00040000; immval: 16
TEST_STORE(x1,x2,0,x13,x11,0x00040000,16,28,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000800; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x00000800,32,32,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff8; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffffff8,64,36,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffd; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0xfffffffd,116,40,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000080; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x00000080,108,44,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000010; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x00000010,60,48,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffd; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xfffffffd,84,52,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000400; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x00000400,40,56,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000002; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0x00000002,68,60,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000004; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x00000004,108,64,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000008; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x00000008,116,68,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000020; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0x00000020,24,72,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000040; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x00000040,116,76,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000100; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0x00000100,28,80,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000200; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x00000200,56,84,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00001000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x00001000,40,88,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00002000; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0x00002000,28,92,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00004000; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x00004000,48,96,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00008000; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0x00008000,24,100,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00010000; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0x00010000,124,104,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00020000; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0x00020000,124,108,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00080000; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0x00080000,44,112,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00100000; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x00100000,60,116,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00200000; immval: 12
TEST_STORE(x1,x2,0,x10,x11,0x00200000,12,120,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00400000; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x00400000,108,124,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00800000; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0x00800000,20,128,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x01000000; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x01000000,84,132,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x02000000; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0x02000000,76,136,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x04000000; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0x04000000,4,140,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x08000000; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0x08000000,28,144,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x10000000; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0x10000000,72,148,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x20000000; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0x20000000,56,152,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x40000000; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0x40000000,92,156,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffff7fff; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0xffff7fff,120,160,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffdffff; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xfffdffff,84,164,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffbffff; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0xfffbffff,48,168,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfff7ffff; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffff,124,172,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffefffff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xffefffff,32,176,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffdfffff; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0xffdfffff,116,180,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffbfffff; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xffbfffff,84,184,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xff7fffff; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0xff7fffff,20,188,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfeffffff; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xfeffffff,72,192,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfdffffff; immval: 12
TEST_STORE(x1,x2,0,x10,x11,0xfdffffff,12,196,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfbffffff; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0xfbffffff,44,200,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xf7ffffff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffff,40,204,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xefffffff; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0xefffffff,44,208,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xdfffffff; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0xdfffffff,20,212,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xbfffffff; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0xbfffffff,72,216,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x55555555; immval: 36
TEST_STORE(x1,x2,0,x10,x11,0x55555555,36,220,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffe; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0xfffffffe,44,224,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xaaaaaaaa; immval: 12
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaa,12,228,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffb; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0xfffffffb,28,232,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff7; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7,64,236,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffef; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xffffffef,108,240,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffdf; immval: 20
TEST_STORE(x1,x2,0,x10,x11,0xffffffdf,20,244,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffbf; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xffffffbf,32,248,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffff7f; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xffffff7f,32,252,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffeff; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0xfffffeff,124,256,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffdff; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0xfffffdff,116,260,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffbff; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xfffffbff,4,264,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffff7ff; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ff,64,268,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffefff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffefff,40,272,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffdfff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffdfff,40,276,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffbfff; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xffffbfff,32,280,c.sw,0)
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
    .fill 71*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
