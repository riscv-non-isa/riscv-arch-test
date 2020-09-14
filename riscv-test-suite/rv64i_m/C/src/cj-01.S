
#This assembly file tests the c.j instruction of the RISC-V C extension for the cj covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cj)

la x1,signature_x1_1

#opcode:c.j; immval: 8
TEST_CJ_OP(c.j, x2, 8, 3f, x1, 0)

#opcode:c.j; immval: 18
TEST_CJ_OP(c.j, x2, 18, 1b, x1, 8)

#opcode:c.j; immval: 16
TEST_CJ_OP(c.j, x2, 16, 3f, x1, 16)

#opcode:c.j; immval: 32
TEST_CJ_OP(c.j, x2, 32, 3f, x1, 24)

#opcode:c.j; immval: 64
TEST_CJ_OP(c.j, x2, 64, 3f, x1, 32)

#opcode:c.j; immval: 128
TEST_CJ_OP(c.j, x2, 128, 3f, x1, 40)

#opcode:c.j; immval: 256
TEST_CJ_OP(c.j, x2, 256, 3f, x1, 48)

#opcode:c.j; immval: 512
TEST_CJ_OP(c.j, x2, 512, 3f, x1, 56)

#opcode:c.j; immval: 1024
TEST_CJ_OP(c.j, x2, 1024, 3f, x1, 64)

#opcode:c.j; immval: 10
TEST_CJ_OP(c.j, x2, 10, 1b, x1, 72)

#opcode:c.j; immval: 34
TEST_CJ_OP(c.j, x2, 34, 1b, x1, 80)

#opcode:c.j; immval: 1026
TEST_CJ_OP(c.j, x2, 1026, 1b, x1, 88)

#opcode:c.j; immval: 1366
TEST_CJ_OP(c.j, x2, 1366, 1b, x1, 96)

#opcode:c.j; immval: 1364
TEST_CJ_OP(c.j, x2, 1364, 3f, x1, 104)

#opcode:c.j; immval: 66
TEST_CJ_OP(c.j, x2, 66, 1b, x1, 112)

#opcode:c.j; immval: 130
TEST_CJ_OP(c.j, x2, 130, 1b, x1, 120)

#opcode:c.j; immval: 258
TEST_CJ_OP(c.j, x2, 258, 1b, x1, 128)

#opcode:c.j; immval: 514
TEST_CJ_OP(c.j, x2, 514, 1b, x1, 136)
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
    .fill 18*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
