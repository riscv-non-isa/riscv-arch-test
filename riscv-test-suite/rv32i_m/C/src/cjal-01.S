
#This assembly file tests the c.jal instruction of the RISC-V C extension for the cjal covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*RV32.*I.*C.*);def TEST_CASE_1=True;",cjal)

la x2,signature_x2_1

#opcode:c.jal; immval:10
TEST_CJAL_OP(c.jal, x3, 10, 3f, x2, 0)

#opcode:c.jal; immval:12
TEST_CJAL_OP(c.jal, x3, 12, 1b, x2, 4)

#opcode:c.jal; immval:16
TEST_CJAL_OP(c.jal, x3, 16, 3f, x2, 8)

#opcode:c.jal; immval:32
TEST_CJAL_OP(c.jal, x3, 32, 3f, x2, 12)

#opcode:c.jal; immval:64
TEST_CJAL_OP(c.jal, x3, 64, 3f, x2, 16)

#opcode:c.jal; immval:128
TEST_CJAL_OP(c.jal, x3, 128, 3f, x2, 20)

#opcode:c.jal; immval:256
TEST_CJAL_OP(c.jal, x3, 256, 3f, x2, 24)

#opcode:c.jal; immval:512
TEST_CJAL_OP(c.jal, x3, 512, 3f, x2, 28)

#opcode:c.jal; immval:1024
TEST_CJAL_OP(c.jal, x3, 1024, 3f, x2, 32)

#opcode:c.jal; immval:10
TEST_CJAL_OP(c.jal, x3, 10, 1b, x2, 36)

#opcode:c.jal; immval:18
TEST_CJAL_OP(c.jal, x3, 18, 1b, x2, 40)

#opcode:c.jal; immval:34
TEST_CJAL_OP(c.jal, x3, 34, 1b, x2, 44)

#opcode:c.jal; immval:1026
TEST_CJAL_OP(c.jal, x3, 1026, 1b, x2, 48)

#opcode:c.jal; immval:1366
TEST_CJAL_OP(c.jal, x3, 1366, 1b, x2, 52)

#opcode:c.jal; immval:1364
TEST_CJAL_OP(c.jal, x3, 1364, 3f, x2, 56)

#opcode:c.jal; immval:66
TEST_CJAL_OP(c.jal, x3, 66, 1b, x2, 60)

#opcode:c.jal; immval:130
TEST_CJAL_OP(c.jal, x3, 130, 1b, x2, 64)

#opcode:c.jal; immval:258
TEST_CJAL_OP(c.jal, x3, 258, 1b, x2, 68)

#opcode:c.jal; immval:514
TEST_CJAL_OP(c.jal, x3, 514, 1b, x2, 72)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 19*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
