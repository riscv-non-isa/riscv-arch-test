
#This assembly file tests the c.nop instruction of the RISC-V C extension for the cnop covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cnop)

la x1,signature_x1_1

#opcode:c.nop; immval:1
TEST_CNOP_OP(c.nop, x2, 1, x1, 0)

#opcode:c.nop; immval:2
TEST_CNOP_OP(c.nop, x2, 2, x1, 4)

#opcode:c.nop; immval:4
TEST_CNOP_OP(c.nop, x2, 4, x1, 8)

#opcode:c.nop; immval:8
TEST_CNOP_OP(c.nop, x2, 8, x1, 12)

#opcode:c.nop; immval:16
TEST_CNOP_OP(c.nop, x2, 16, x1, 16)

#opcode:c.nop; immval:-32
TEST_CNOP_OP(c.nop, x2, -32, x1, 20)

#opcode:c.nop; immval:-2
TEST_CNOP_OP(c.nop, x2, -2, x1, 24)

#opcode:c.nop; immval:-3
TEST_CNOP_OP(c.nop, x2, -3, x1, 28)

#opcode:c.nop; immval:-5
TEST_CNOP_OP(c.nop, x2, -5, x1, 32)

#opcode:c.nop; immval:-9
TEST_CNOP_OP(c.nop, x2, -9, x1, 36)

#opcode:c.nop; immval:-17
TEST_CNOP_OP(c.nop, x2, -17, x1, 40)

#opcode:c.nop; immval:31
TEST_CNOP_OP(c.nop, x2, 31, x1, 44)

#opcode:c.nop; immval:21
TEST_CNOP_OP(c.nop, x2, 21, x1, 48)

#opcode:c.nop; immval:-22
TEST_CNOP_OP(c.nop, x2, -22, x1, 52)
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
