
#This assembly file tests the c.addi4spn instruction of the RISC-V C extension for the caddi4spn covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi4spn)

la x1,signature_x1_1

#opcode:c.addi4spn; dest:x15; immval:1012
TEST_CADDI4SPN_OP( c.addi4spn, x15, 0x00000000, 1012, x1, 0, x2)

#opcode:c.addi4spn; dest:x13; immval:1020
TEST_CADDI4SPN_OP( c.addi4spn, x13, 0x00000000, 1020, x1, 4, x2)

#opcode:c.addi4spn; dest:x8; immval:4
TEST_CADDI4SPN_OP( c.addi4spn, x8, 0x00000000, 4, x1, 8, x2)

#opcode:c.addi4spn; dest:x9; immval:8
TEST_CADDI4SPN_OP( c.addi4spn, x9, 0x00000000, 8, x1, 12, x2)

#opcode:c.addi4spn; dest:x11; immval:16
TEST_CADDI4SPN_OP( c.addi4spn, x11, 0x00000000, 16, x1, 16, x2)

#opcode:c.addi4spn; dest:x12; immval:32
TEST_CADDI4SPN_OP( c.addi4spn, x12, 0x00000000, 32, x1, 20, x2)

#opcode:c.addi4spn; dest:x14; immval:64
TEST_CADDI4SPN_OP( c.addi4spn, x14, 0x00000000, 64, x1, 24, x2)

#opcode:c.addi4spn; dest:x10; immval:128
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 128, x1, 28, x2)

#opcode:c.addi4spn; dest:x10; immval:256
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 256, x1, 32, x2)

#opcode:c.addi4spn; dest:x10; immval:512
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 512, x1, 36, x2)

#opcode:c.addi4spn; dest:x10; immval:1016
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 1016, x1, 40, x2)

#opcode:c.addi4spn; dest:x10; immval:1004
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 1004, x1, 44, x2)

#opcode:c.addi4spn; dest:x10; immval:764
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 764, x1, 48, x2)

#opcode:c.addi4spn; dest:x10; immval:508
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 508, x1, 52, x2)

#opcode:c.addi4spn; dest:x10; immval:340
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 340, x1, 56, x2)

#opcode:c.addi4spn; dest:x10; immval:680
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 680, x1, 60, x2)

#opcode:c.addi4spn; dest:x10; immval:988
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 988, x1, 64, x2)

#opcode:c.addi4spn; dest:x10; immval:956
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 956, x1, 68, x2)

#opcode:c.addi4spn; dest:x10; immval:892
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0x00000000, 892, x1, 72, x2)
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
    .fill 19*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
