
#This assembly file tests the c.li instruction of the RISC-V C extension for the cli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cli)

la x1,signature_x1_1

#opcode:c.li; dest:x25; immval:-32
TEST_CASE(x2, x25, 0x0000000000000000, x1, 0, c.li x25, -32;)

#opcode:c.li; dest:x24; immval:0
TEST_CASE(x2, x24, 0x0000000000000000, x1, 8, c.li x24, 0;)

#opcode:c.li; dest:x6; immval:31
TEST_CASE(x2, x6, 0x0000000000000000, x1, 16, c.li x6, 31;)

#opcode:c.li; dest:x30; immval:1
TEST_CASE(x2, x30, 0x0000000000000000, x1, 24, c.li x30, 1;)

#opcode:c.li; dest:x29; immval:2
TEST_CASE(x2, x29, 0x0000000000000000, x1, 32, c.li x29, 2;)

#opcode:c.li; dest:x7; immval:4
TEST_CASE(x2, x7, 0x0000000000000000, x1, 40, c.li x7, 4;)

#opcode:c.li; dest:x26; immval:8
TEST_CASE(x2, x26, 0x0000000000000000, x1, 48, c.li x26, 8;)

#opcode:c.li; dest:x9; immval:16
TEST_CASE(x2, x9, 0x0000000000000000, x1, 56, c.li x9, 16;)

#opcode:c.li; dest:x20; immval:-22
TEST_CASE(x2, x20, 0x0000000000000000, x1, 64, c.li x20, -22;)

#opcode:c.li; dest:x10; immval:-2
TEST_CASE(x2, x10, 0x0000000000000000, x1, 72, c.li x10, -2;)

#opcode:c.li; dest:x14; immval:-3
TEST_CASE(x2, x14, 0x0000000000000000, x1, 80, c.li x14, -3;)

#opcode:c.li; dest:x16; immval:-5
TEST_CASE(x2, x16, 0x0000000000000000, x1, 88, c.li x16, -5;)

#opcode:c.li; dest:x22; immval:-9
TEST_CASE(x2, x22, 0x0000000000000000, x1, 96, c.li x22, -9;)

#opcode:c.li; dest:x28; immval:-17
TEST_CASE(x2, x28, 0x0000000000000000, x1, 104, c.li x28, -17;)

#opcode:c.li; dest:x31; immval:21
TEST_CASE(x2, x31, 0x0000000000000000, x1, 112, c.li x31, 21;)

#opcode:c.li; dest:x11; immval:0
TEST_CASE(x2, x11, 0x0000000000000000, x1, 120, c.li x11, 0;)

#opcode:c.li; dest:x4; immval:0
TEST_CASE(x2, x4, 0x0000000000000000, x1, 128, c.li x4, 0;)

#opcode:c.li; dest:x17; immval:0
TEST_CASE(x2, x17, 0x0000000000000000, x1, 136, c.li x17, 0;)

#opcode:c.li; dest:x5; immval:0
TEST_CASE(x2, x5, 0x0000000000000000, x1, 144, c.li x5, 0;)

#opcode:c.li; dest:x8; immval:0
TEST_CASE(x2, x8, 0x0000000000000000, x1, 152, c.li x8, 0;)

#opcode:c.li; dest:x27; immval:0
TEST_CASE(x2, x27, 0x0000000000000000, x1, 160, c.li x27, 0;)

#opcode:c.li; dest:x3; immval:0
TEST_CASE(x2, x3, 0x0000000000000000, x1, 168, c.li x3, 0;)

#opcode:c.li; dest:x0; immval:0
TEST_CASE(x2, x0, 0x0000000000000000, x1, 176, c.li x0, 0;)

#opcode:c.li; dest:x23; immval:0
TEST_CASE(x2, x23, 0x0000000000000000, x1, 184, c.li x23, 0;)

#opcode:c.li; dest:x18; immval:0
TEST_CASE(x2, x18, 0x0000000000000000, x1, 192, c.li x18, 0;)

#opcode:c.li; dest:x12; immval:0
TEST_CASE(x2, x12, 0x0000000000000000, x1, 200, c.li x12, 0;)

#opcode:c.li; dest:x13; immval:0
TEST_CASE(x2, x13, 0x0000000000000000, x1, 208, c.li x13, 0;)

#opcode:c.li; dest:x19; immval:0
TEST_CASE(x2, x19, 0x0000000000000000, x1, 216, c.li x19, 0;)

#opcode:c.li; dest:x21; immval:0
TEST_CASE(x4, x21, 0x0000000000000000, x1, 224, c.li x21, 0;)
la x3,signature_x3_0

#opcode:c.li; dest:x2; immval:0
TEST_CASE(x4, x2, 0x0000000000000000, x3, 0, c.li x2, 0;)

#opcode:c.li; dest:x15; immval:0
TEST_CASE(x4, x15, 0x0000000000000000, x3, 8, c.li x15, 0;)

#opcode:c.li; dest:x1; immval:0
TEST_CASE(x4, x1, 0x0000000000000000, x3, 16, c.li x1, 0;)

#opcode:c.li; dest:x10; immval:0
TEST_CASE(x4, x10, 0x0000000000000000, x3, 24, c.li x10, 0;)
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
    .fill 29*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
