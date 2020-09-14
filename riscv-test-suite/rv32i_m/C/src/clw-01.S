
#This assembly file tests the c.lw instruction of the RISC-V C extension for the clw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clw)

la x1,signature_x1_1

#opcode: c.lw; op1:x15; dest:x15; immval: 4
TEST_LOAD(x1,x2,0,x15,x15,4,0,c.lw,0)

#opcode: c.lw; op1:x14; dest:x11; immval: 0
TEST_LOAD(x1,x2,0,x14,x11,0,4,c.lw,0)

#opcode: c.lw; op1:x9; dest:x12; immval: 8
TEST_LOAD(x1,x2,0,x9,x12,8,8,c.lw,0)

#opcode: c.lw; op1:x13; dest:x14; immval: 16
TEST_LOAD(x1,x2,0,x13,x14,16,12,c.lw,0)

#opcode: c.lw; op1:x10; dest:x9; immval: 32
TEST_LOAD(x1,x2,0,x10,x9,32,16,c.lw,0)

#opcode: c.lw; op1:x11; dest:x10; immval: 64
TEST_LOAD(x1,x2,0,x11,x10,64,20,c.lw,0)

#opcode: c.lw; op1:x12; dest:x8; immval: 120
TEST_LOAD(x1,x2,0,x12,x8,120,24,c.lw,0)

#opcode: c.lw; op1:x8; dest:x13; immval: 116
TEST_LOAD(x1,x2,0,x8,x13,116,28,c.lw,0)

#opcode: c.lw; op1:x11; dest:x10; immval: 108
TEST_LOAD(x1,x2,0,x11,x10,108,32,c.lw,0)

#opcode: c.lw; op1:x11; dest:x10; immval: 92
TEST_LOAD(x1,x2,0,x11,x10,92,36,c.lw,0)

#opcode: c.lw; op1:x11; dest:x10; immval: 60
TEST_LOAD(x1,x2,0,x11,x10,60,40,c.lw,0)

#opcode: c.lw; op1:x11; dest:x10; immval: 84
TEST_LOAD(x1,x2,0,x11,x10,84,44,c.lw,0)

#opcode: c.lw; op1:x11; dest:x10; immval: 40
TEST_LOAD(x1,x2,0,x11,x10,40,48,c.lw,0)

#opcode: c.lw; op1:x11; dest:x10; immval: 4
TEST_LOAD(x1,x2,0,x11,x10,4,52,c.lw,0)
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
    .fill 14*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
