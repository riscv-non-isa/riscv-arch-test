
#This assembly file tests the c.ld instruction of the RISC-V C extension for the cld covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",cld)

la x1,signature_x1_1

#opcode: c.ld; op1:x8; dest:x8; op1val:0x0000000000000000; immval: 104
TEST_LOAD(x1,x2,0,x8,x8,104,0,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x11; dest:x13; op1val:0x0000000000000000; immval: 0
TEST_LOAD(x1,x2,0,x11,x13,0,8,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x13; dest:x10; op1val:0x0000000000000000; immval: 8
TEST_LOAD(x1,x2,0,x13,x10,8,16,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x10; dest:x14; op1val:0x0000000000000000; immval: 16
TEST_LOAD(x1,x2,0,x10,x14,16,24,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x9; dest:x12; op1val:0x0000000000000000; immval: 32
TEST_LOAD(x1,x2,0,x9,x12,32,32,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x15; dest:x9; op1val:0x0000000000000000; immval: 64
TEST_LOAD(x1,x2,0,x15,x9,64,40,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x14; dest:x11; op1val:0x0000000000000000; immval: 128
TEST_LOAD(x1,x2,0,x14,x11,128,48,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x12; dest:x15; op1val:0x0000000000000000; immval: 240
TEST_LOAD(x1,x2,0,x12,x15,240,56,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval: 232
TEST_LOAD(x1,x2,0,x11,x10,232,64,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval: 216
TEST_LOAD(x1,x2,0,x11,x10,216,72,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval: 184
TEST_LOAD(x1,x2,0,x11,x10,184,80,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval: 120
TEST_LOAD(x1,x2,0,x11,x10,120,88,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval: 168
TEST_LOAD(x1,x2,0,x11,x10,168,96,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval: 80
TEST_LOAD(x1,x2,0,x11,x10,80,104,c.ld,0x0000000000000000)

#opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval: 104
TEST_LOAD(x1,x2,0,x11,x10,104,112,c.ld,0x0000000000000000)
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
    .fill 15*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
