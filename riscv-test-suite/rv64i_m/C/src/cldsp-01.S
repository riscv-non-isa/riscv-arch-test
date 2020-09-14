
#This assembly file tests the c.ldsp instruction of the RISC-V C extension for the cldsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",cldsp)

la x12,signature_x12_1

#opcode: c.ldsp; op1:x2; dest:x5; immval: 336
TEST_LOAD(x12,x15,0,x2,x5,336,0,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x1; immval: 0
TEST_LOAD(x12,x15,0,x2,x1,0,8,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x2; immval: 8
TEST_LOAD(x12,x15,0,x2,x2,8,16,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x14; immval: 16
TEST_LOAD(x12,x15,0,x2,x14,16,24,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x24; immval: 32
TEST_LOAD(x12,x15,0,x2,x24,32,32,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x20; immval: 64
TEST_LOAD(x12,x15,0,x2,x20,64,40,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x23; immval: 128
TEST_LOAD(x12,x15,0,x2,x23,128,48,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x16; immval: 256
TEST_LOAD(x12,x15,0,x2,x16,256,56,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x27; immval: 496
TEST_LOAD(x12,x15,0,x2,x27,496,64,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x19; immval: 488
TEST_LOAD(x12,x15,0,x2,x19,488,72,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x26; immval: 472
TEST_LOAD(x12,x15,0,x2,x26,472,80,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x21; immval: 440
TEST_LOAD(x12,x15,0,x2,x21,440,88,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x8; immval: 376
TEST_LOAD(x12,x15,0,x2,x8,376,96,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x13; immval: 248
TEST_LOAD(x12,x15,0,x2,x13,248,104,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x18; immval: 168
TEST_LOAD(x12,x15,0,x2,x18,168,112,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x4; immval: 0
TEST_LOAD(x12,x15,0,x2,x4,0,120,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x22; immval: 0
TEST_LOAD(x12,x15,0,x2,x22,0,128,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x9; immval: 0
TEST_LOAD(x12,x15,0,x2,x9,0,136,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x3; immval: 0
TEST_LOAD(x12,x15,0,x2,x3,0,144,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x7; immval: 0
TEST_LOAD(x12,x15,0,x2,x7,0,152,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x11; immval: 0
TEST_LOAD(x12,x15,0,x2,x11,0,160,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x6; immval: 0
TEST_LOAD(x12,x15,0,x2,x6,0,168,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x25; immval: 0
TEST_LOAD(x12,x15,0,x2,x25,0,176,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x31; immval: 0
TEST_LOAD(x12,x15,0,x2,x31,0,184,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x30; immval: 0
TEST_LOAD(x12,x15,0,x2,x30,0,192,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x10; immval: 0
TEST_LOAD(x12,x15,0,x2,x10,0,200,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x29; immval: 0
TEST_LOAD(x12,x15,0,x2,x29,0,208,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x17; immval: 0
TEST_LOAD(x12,x3,0,x2,x17,0,216,c.ldsp,0)
la x1,signature_x1_0

#opcode: c.ldsp; op1:x2; dest:x12; immval: 0
TEST_LOAD(x1,x3,0,x2,x12,0,0,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x28; immval: 0
TEST_LOAD(x1,x3,0,x2,x28,0,8,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x15; immval: 0
TEST_LOAD(x1,x3,0,x2,x15,0,16,c.ldsp,0)

#opcode: c.ldsp; op1:x2; dest:x10; immval: 8
TEST_LOAD(x1,x3,0,x2,x10,8,24,c.ldsp,0)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x12_1:
    .fill 28*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
