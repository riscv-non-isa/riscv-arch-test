
#This assembly file tests the c.li instruction of the RISC-V C extension for the cli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cli)

la x11,signature_x11_1

#opcode:c.li; dest:x12; immval:-32
TEST_CASE(x16, x12, 0x00000000, x11, 0, c.li x12, -32;)

#opcode:c.li; dest:x29; immval:0
TEST_CASE(x16, x29, 0x00000000, x11, 4, c.li x29, 0;)

#opcode:c.li; dest:x19; immval:31
TEST_CASE(x16, x19, 0x00000000, x11, 8, c.li x19, 31;)

#opcode:c.li; dest:x17; immval:1
TEST_CASE(x16, x17, 0x00000000, x11, 12, c.li x17, 1;)

#opcode:c.li; dest:x24; immval:2
TEST_CASE(x16, x24, 0x00000000, x11, 16, c.li x24, 2;)

#opcode:c.li; dest:x6; immval:4
TEST_CASE(x16, x6, 0x00000000, x11, 20, c.li x6, 4;)

#opcode:c.li; dest:x30; immval:8
TEST_CASE(x16, x30, 0x00000000, x11, 24, c.li x30, 8;)

#opcode:c.li; dest:x8; immval:16
TEST_CASE(x16, x8, 0x00000000, x11, 28, c.li x8, 16;)

#opcode:c.li; dest:x5; immval:-22
TEST_CASE(x16, x5, 0x00000000, x11, 32, c.li x5, -22;)

#opcode:c.li; dest:x15; immval:-2
TEST_CASE(x16, x15, 0x00000000, x11, 36, c.li x15, -2;)

#opcode:c.li; dest:x9; immval:-3
TEST_CASE(x16, x9, 0x00000000, x11, 40, c.li x9, -3;)

#opcode:c.li; dest:x25; immval:-5
TEST_CASE(x16, x25, 0x00000000, x11, 44, c.li x25, -5;)

#opcode:c.li; dest:x31; immval:-9
TEST_CASE(x16, x31, 0x00000000, x11, 48, c.li x31, -9;)

#opcode:c.li; dest:x26; immval:-17
TEST_CASE(x16, x26, 0x00000000, x11, 52, c.li x26, -17;)

#opcode:c.li; dest:x28; immval:21
TEST_CASE(x16, x28, 0x00000000, x11, 56, c.li x28, 21;)

#opcode:c.li; dest:x21; immval:0
TEST_CASE(x16, x21, 0x00000000, x11, 60, c.li x21, 0;)

#opcode:c.li; dest:x1; immval:0
TEST_CASE(x16, x1, 0x00000000, x11, 64, c.li x1, 0;)

#opcode:c.li; dest:x18; immval:0
TEST_CASE(x16, x18, 0x00000000, x11, 68, c.li x18, 0;)

#opcode:c.li; dest:x7; immval:0
TEST_CASE(x16, x7, 0x00000000, x11, 72, c.li x7, 0;)

#opcode:c.li; dest:x0; immval:0
TEST_CASE(x16, x0, 0x00000000, x11, 76, c.li x0, 0;)

#opcode:c.li; dest:x22; immval:0
TEST_CASE(x16, x22, 0x00000000, x11, 80, c.li x22, 0;)

#opcode:c.li; dest:x14; immval:0
TEST_CASE(x16, x14, 0x00000000, x11, 84, c.li x14, 0;)

#opcode:c.li; dest:x20; immval:0
TEST_CASE(x16, x20, 0x00000000, x11, 88, c.li x20, 0;)

#opcode:c.li; dest:x4; immval:0
TEST_CASE(x16, x4, 0x00000000, x11, 92, c.li x4, 0;)

#opcode:c.li; dest:x3; immval:0
TEST_CASE(x16, x3, 0x00000000, x11, 96, c.li x3, 0;)

#opcode:c.li; dest:x13; immval:0
TEST_CASE(x16, x13, 0x00000000, x11, 100, c.li x13, 0;)

#opcode:c.li; dest:x10; immval:0
TEST_CASE(x16, x10, 0x00000000, x11, 104, c.li x10, 0;)

#opcode:c.li; dest:x2; immval:0
TEST_CASE(x16, x2, 0x00000000, x11, 108, c.li x2, 0;)

#opcode:c.li; dest:x23; immval:0
TEST_CASE(x2, x23, 0x00000000, x11, 112, c.li x23, 0;)
la x1,signature_x1_0

#opcode:c.li; dest:x11; immval:0
TEST_CASE(x2, x11, 0x00000000, x1, 0, c.li x11, 0;)

#opcode:c.li; dest:x16; immval:0
TEST_CASE(x2, x16, 0x00000000, x1, 4, c.li x16, 0;)

#opcode:c.li; dest:x27; immval:0
TEST_CASE(x2, x27, 0x00000000, x1, 8, c.li x27, 0;)

#opcode:c.li; dest:x10; immval:0
TEST_CASE(x2, x10, 0x00000000, x1, 12, c.li x10, 0;)
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

signature_x11_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x11_1:
    .fill 29*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
