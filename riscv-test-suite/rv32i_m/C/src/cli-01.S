
#This assembly file tests the c.li instruction of the RISC-V C extension for the cli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cli)

la x4,signature_x4_1

#opcode:c.li; dest:x21; immval:-32
TEST_CASE(x6, x21, 0x00000000, x4, 0, c.li x21, -32;)

#opcode:c.li; dest:x15; immval:0
TEST_CASE(x6, x15, 0x00000000, x4, 4, c.li x15, 0;)

#opcode:c.li; dest:x0; immval:31
TEST_CASE(x6, x0, 0x00000000, x4, 8, c.li x0, 31;)

#opcode:c.li; dest:x11; immval:1
TEST_CASE(x6, x11, 0x00000000, x4, 12, c.li x11, 1;)

#opcode:c.li; dest:x27; immval:2
TEST_CASE(x6, x27, 0x00000000, x4, 16, c.li x27, 2;)

#opcode:c.li; dest:x17; immval:4
TEST_CASE(x6, x17, 0x00000000, x4, 20, c.li x17, 4;)

#opcode:c.li; dest:x18; immval:8
TEST_CASE(x6, x18, 0x00000000, x4, 24, c.li x18, 8;)

#opcode:c.li; dest:x28; immval:16
TEST_CASE(x6, x28, 0x00000000, x4, 28, c.li x28, 16;)

#opcode:c.li; dest:x20; immval:-22
TEST_CASE(x6, x20, 0x00000000, x4, 32, c.li x20, -22;)

#opcode:c.li; dest:x24; immval:-2
TEST_CASE(x6, x24, 0x00000000, x4, 36, c.li x24, -2;)

#opcode:c.li; dest:x1; immval:-3
TEST_CASE(x6, x1, 0x00000000, x4, 40, c.li x1, -3;)

#opcode:c.li; dest:x9; immval:-5
TEST_CASE(x6, x9, 0x00000000, x4, 44, c.li x9, -5;)

#opcode:c.li; dest:x12; immval:-9
TEST_CASE(x6, x12, 0x00000000, x4, 48, c.li x12, -9;)

#opcode:c.li; dest:x26; immval:-17
TEST_CASE(x6, x26, 0x00000000, x4, 52, c.li x26, -17;)

#opcode:c.li; dest:x3; immval:21
TEST_CASE(x6, x3, 0x00000000, x4, 56, c.li x3, 21;)

#opcode:c.li; dest:x16; immval:0
TEST_CASE(x6, x16, 0x00000000, x4, 60, c.li x16, 0;)

#opcode:c.li; dest:x31; immval:0
TEST_CASE(x6, x31, 0x00000000, x4, 64, c.li x31, 0;)

#opcode:c.li; dest:x29; immval:0
TEST_CASE(x6, x29, 0x00000000, x4, 68, c.li x29, 0;)

#opcode:c.li; dest:x25; immval:0
TEST_CASE(x6, x25, 0x00000000, x4, 72, c.li x25, 0;)

#opcode:c.li; dest:x8; immval:0
TEST_CASE(x6, x8, 0x00000000, x4, 76, c.li x8, 0;)

#opcode:c.li; dest:x14; immval:0
TEST_CASE(x6, x14, 0x00000000, x4, 80, c.li x14, 0;)

#opcode:c.li; dest:x2; immval:0
TEST_CASE(x6, x2, 0x00000000, x4, 84, c.li x2, 0;)

#opcode:c.li; dest:x30; immval:0
TEST_CASE(x6, x30, 0x00000000, x4, 88, c.li x30, 0;)

#opcode:c.li; dest:x13; immval:0
TEST_CASE(x6, x13, 0x00000000, x4, 92, c.li x13, 0;)

#opcode:c.li; dest:x23; immval:0
TEST_CASE(x6, x23, 0x00000000, x4, 96, c.li x23, 0;)

#opcode:c.li; dest:x19; immval:0
TEST_CASE(x6, x19, 0x00000000, x4, 100, c.li x19, 0;)

#opcode:c.li; dest:x5; immval:0
TEST_CASE(x6, x5, 0x00000000, x4, 104, c.li x5, 0;)

#opcode:c.li; dest:x22; immval:0
TEST_CASE(x6, x22, 0x00000000, x4, 108, c.li x22, 0;)

#opcode:c.li; dest:x6; immval:0
TEST_CASE(x2, x6, 0x00000000, x4, 112, c.li x6, 0;)
la x1,signature_x1_0

#opcode:c.li; dest:x7; immval:0
TEST_CASE(x2, x7, 0x00000000, x1, 0, c.li x7, 0;)

#opcode:c.li; dest:x10; immval:0
TEST_CASE(x2, x10, 0x00000000, x1, 4, c.li x10, 0;)

#opcode:c.li; dest:x4; immval:0
TEST_CASE(x2, x4, 0x00000000, x1, 8, c.li x4, 0;)

#opcode:c.li; dest:x10; immval:31
TEST_CASE(x2, x10, 0x00000000, x1, 12, c.li x10, 31;)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x4_1:
    .fill 29*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
