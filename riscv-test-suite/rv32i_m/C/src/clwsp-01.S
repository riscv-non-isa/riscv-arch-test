
#This assembly file tests the c.lwsp instruction of the RISC-V C extension for the clwsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clwsp)

la x6,signature_x6_1

#opcode: c.lwsp; op1:x2; dest:x4; immval: 248
TEST_LOAD(x6,x11,0,x2,x4,248,0,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x12; immval: 0
TEST_LOAD(x6,x11,0,x2,x12,0,4,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x22; immval: 4
TEST_LOAD(x6,x11,0,x2,x22,4,8,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x21; immval: 8
TEST_LOAD(x6,x11,0,x2,x21,8,12,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x19; immval: 16
TEST_LOAD(x6,x11,0,x2,x19,16,16,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x18; immval: 32
TEST_LOAD(x6,x11,0,x2,x18,32,20,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x16; immval: 64
TEST_LOAD(x6,x11,0,x2,x16,64,24,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x20; immval: 128
TEST_LOAD(x6,x11,0,x2,x20,128,28,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x13; immval: 244
TEST_LOAD(x6,x11,0,x2,x13,244,32,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x1; immval: 236
TEST_LOAD(x6,x11,0,x2,x1,236,36,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x31; immval: 220
TEST_LOAD(x6,x11,0,x2,x31,220,40,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x3; immval: 188
TEST_LOAD(x6,x11,0,x2,x3,188,44,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x30; immval: 124
TEST_LOAD(x6,x11,0,x2,x30,124,48,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x8; immval: 84
TEST_LOAD(x6,x11,0,x2,x8,84,52,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x10; immval: 168
TEST_LOAD(x6,x11,0,x2,x10,168,56,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x7; immval: 0
TEST_LOAD(x6,x11,0,x2,x7,0,60,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x28; immval: 0
TEST_LOAD(x6,x11,0,x2,x28,0,64,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x29; immval: 0
TEST_LOAD(x6,x11,0,x2,x29,0,68,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x5; immval: 0
TEST_LOAD(x6,x11,0,x2,x5,0,72,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x9; immval: 0
TEST_LOAD(x6,x11,0,x2,x9,0,76,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x25; immval: 0
TEST_LOAD(x6,x11,0,x2,x25,0,80,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x17; immval: 0
TEST_LOAD(x6,x11,0,x2,x17,0,84,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x24; immval: 0
TEST_LOAD(x6,x11,0,x2,x24,0,88,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x27; immval: 0
TEST_LOAD(x6,x11,0,x2,x27,0,92,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x23; immval: 0
TEST_LOAD(x6,x11,0,x2,x23,0,96,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x14; immval: 0
TEST_LOAD(x6,x11,0,x2,x14,0,100,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x2; immval: 0
TEST_LOAD(x6,x3,0,x2,x2,0,104,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x11; immval: 0
TEST_LOAD(x6,x3,0,x2,x11,0,108,c.lwsp,0)
la x1,signature_x1_0

#opcode: c.lwsp; op1:x2; dest:x26; immval: 0
TEST_LOAD(x1,x3,0,x2,x26,0,0,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x15; immval: 0
TEST_LOAD(x1,x3,0,x2,x15,0,4,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x6; immval: 0
TEST_LOAD(x1,x3,0,x2,x6,0,8,c.lwsp,0)

#opcode: c.lwsp; op1:x2; dest:x10; immval: 0
TEST_LOAD(x1,x3,0,x2,x10,0,12,c.lwsp,0)
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
    .fill 28*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
