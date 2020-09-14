
#This assembly file tests the c.sw instruction of the RISC-V C extension for the csw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",csw)

la x1,signature_x1_1

#opcode:c.sw; op1:x14; op2:x10; op2val:0x40000000; immval: 72
TEST_STORE(x1,x2,0,x14,x10,0x40000000,72,0,c.sw,0)

#opcode:c.sw; op1:x15; op2:x14; op2val:0xfffbffff; immval: 0
TEST_STORE(x1,x2,0,x15,x14,0xfffbffff,0,4,c.sw,0)

#opcode:c.sw; op1:x13; op2:x11; op2val:0x80000000; immval: 32
TEST_STORE(x1,x2,0,x13,x11,0x80000000,32,8,c.sw,0)

#opcode:c.sw; op1:x8; op2:x15; op2val:0x00000000; immval: 72
TEST_STORE(x1,x2,0,x8,x15,0x00000000,72,12,c.sw,0)

#opcode:c.sw; op1:x11; op2:x13; op2val:0x7fffffff; immval: 108
TEST_STORE(x1,x2,0,x11,x13,0x7fffffff,108,16,c.sw,0)

#opcode:c.sw; op1:x12; op2:x8; op2val:0x00000001; immval: 48
TEST_STORE(x1,x2,0,x12,x8,0x00000001,48,20,c.sw,0)

#opcode:c.sw; op1:x9; op2:x12; op2val:0xffffbfff; immval: 4
TEST_STORE(x1,x2,0,x9,x12,0xffffbfff,4,24,c.sw,0)

#opcode:c.sw; op1:x10; op2:x9; op2val:0x00001000; immval: 8
TEST_STORE(x1,x2,0,x10,x9,0x00001000,8,28,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffff7f; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0xffffff7f,16,32,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x55555555; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x55555555,64,36,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x40000000; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0x40000000,120,40,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x80000000; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x80000000,116,44,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffdfff; immval: 92
TEST_STORE(x1,x2,0,x10,x11,0xffffdfff,92,48,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffef; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0xffffffef,60,52,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00008000; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x00008000,84,56,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff6; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xfffffff6,40,60,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000002; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x00000002,60,64,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000004; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0x00000004,108,68,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000008; immval: 120
TEST_STORE(x1,x2,0,x10,x11,0x00000008,120,72,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000010; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x00000010,48,76,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000020; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0x00000020,64,80,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000040; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x00000040,48,84,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000080; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0x00000080,124,88,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000100; immval: 48
TEST_STORE(x1,x2,0,x10,x11,0x00000100,48,92,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000200; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0x00000200,52,96,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000400; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0x00000400,68,100,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00000800; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x00000800,40,104,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00002000; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0x00002000,44,108,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00004000; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x00004000,60,112,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00010000; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0x00010000,40,116,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00020000; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0x00020000,84,120,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00040000; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0x00040000,32,124,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00080000; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0x00080000,116,128,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00100000; immval: 72
TEST_STORE(x1,x2,0,x10,x11,0x00100000,72,132,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00200000; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0x00200000,124,136,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00400000; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0x00400000,68,140,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x00800000; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0x00800000,44,144,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x01000000; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0x01000000,124,148,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x02000000; immval: 24
TEST_STORE(x1,x2,0,x10,x11,0x02000000,24,152,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffff7fff; immval: 76
TEST_STORE(x1,x2,0,x10,x11,0xffff7fff,76,156,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffeffff; immval: 36
TEST_STORE(x1,x2,0,x10,x11,0xfffeffff,36,160,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffdffff; immval: 36
TEST_STORE(x1,x2,0,x10,x11,0xfffdffff,36,164,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfff7ffff; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xfff7ffff,84,168,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffefffff; immval: 44
TEST_STORE(x1,x2,0,x10,x11,0xffefffff,44,172,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffdfffff; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xffdfffff,64,176,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffbfffff; immval: 68
TEST_STORE(x1,x2,0,x10,x11,0xffbfffff,68,180,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xff7fffff; immval: 8
TEST_STORE(x1,x2,0,x10,x11,0xff7fffff,8,184,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfeffffff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xfeffffff,108,188,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfdffffff; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xfdffffff,4,192,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfbffffff; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0xfbffffff,116,196,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xf7ffffff; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0xf7ffffff,28,200,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xefffffff; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0xefffffff,28,204,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xdfffffff; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xdfffffff,56,208,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xbfffffff; immval: 124
TEST_STORE(x1,x2,0,x10,x11,0xbfffffff,124,212,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xaaaaaaaa; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0xaaaaaaaa,116,216,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x04000000; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0x04000000,4,220,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x08000000; immval: 12
TEST_STORE(x1,x2,0,x10,x11,0x08000000,12,224,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x10000000; immval: 60
TEST_STORE(x1,x2,0,x10,x11,0x10000000,60,228,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0x20000000; immval: 16
TEST_STORE(x1,x2,0,x10,x11,0x20000000,16,232,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffe; immval: 52
TEST_STORE(x1,x2,0,x10,x11,0xfffffffe,52,236,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffd; immval: 84
TEST_STORE(x1,x2,0,x10,x11,0xfffffffd,84,240,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffffb; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffffffb,64,244,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffff7; immval: 64
TEST_STORE(x1,x2,0,x10,x11,0xfffffff7,64,248,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffdf; immval: 32
TEST_STORE(x1,x2,0,x10,x11,0xffffffdf,32,252,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffffbf; immval: 56
TEST_STORE(x1,x2,0,x10,x11,0xffffffbf,56,256,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffeff; immval: 4
TEST_STORE(x1,x2,0,x10,x11,0xfffffeff,4,260,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffdff; immval: 116
TEST_STORE(x1,x2,0,x10,x11,0xfffffdff,116,264,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffffbff; immval: 108
TEST_STORE(x1,x2,0,x10,x11,0xfffffbff,108,268,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xfffff7ff; immval: 28
TEST_STORE(x1,x2,0,x10,x11,0xfffff7ff,28,272,c.sw,0)

#opcode:c.sw; op1:x10; op2:x11; op2val:0xffffefff; immval: 40
TEST_STORE(x1,x2,0,x10,x11,0xffffefff,40,276,c.sw,0)
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
    .fill 70*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
