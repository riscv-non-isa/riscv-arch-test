
#This assembly file tests the c.li instruction of the RISC-V C extension for the cli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cli)

la x2,signature_x2_1

#opcode:c.li; dest:x0; immval:-32
TEST_CASE(x16, x0, 0x0000000000000000, x2, 0, c.li x0, -32;)

#opcode:c.li; dest:x12; immval:0
TEST_CASE(x16, x12, 0x0000000000000000, x2, 8, c.li x12, 0;)

#opcode:c.li; dest:x6; immval:31
TEST_CASE(x16, x6, 0x0000000000000000, x2, 16, c.li x6, 31;)

#opcode:c.li; dest:x27; immval:1
TEST_CASE(x16, x27, 0x0000000000000000, x2, 24, c.li x27, 1;)

#opcode:c.li; dest:x11; immval:2
TEST_CASE(x16, x11, 0x0000000000000000, x2, 32, c.li x11, 2;)

#opcode:c.li; dest:x31; immval:4
TEST_CASE(x16, x31, 0x0000000000000000, x2, 40, c.li x31, 4;)

#opcode:c.li; dest:x1; immval:8
TEST_CASE(x16, x1, 0x0000000000000000, x2, 48, c.li x1, 8;)

#opcode:c.li; dest:x14; immval:16
TEST_CASE(x16, x14, 0x0000000000000000, x2, 56, c.li x14, 16;)

#opcode:c.li; dest:x30; immval:-22
TEST_CASE(x16, x30, 0x0000000000000000, x2, 64, c.li x30, -22;)

#opcode:c.li; dest:x28; immval:-2
TEST_CASE(x16, x28, 0x0000000000000000, x2, 72, c.li x28, -2;)

#opcode:c.li; dest:x17; immval:-3
TEST_CASE(x16, x17, 0x0000000000000000, x2, 80, c.li x17, -3;)

#opcode:c.li; dest:x24; immval:-5
TEST_CASE(x16, x24, 0x0000000000000000, x2, 88, c.li x24, -5;)

#opcode:c.li; dest:x5; immval:-9
TEST_CASE(x16, x5, 0x0000000000000000, x2, 96, c.li x5, -9;)

#opcode:c.li; dest:x22; immval:-17
TEST_CASE(x16, x22, 0x0000000000000000, x2, 104, c.li x22, -17;)

#opcode:c.li; dest:x20; immval:21
TEST_CASE(x16, x20, 0x0000000000000000, x2, 112, c.li x20, 21;)

#opcode:c.li; dest:x8; immval:0
TEST_CASE(x16, x8, 0x0000000000000000, x2, 120, c.li x8, 0;)

#opcode:c.li; dest:x4; immval:0
TEST_CASE(x16, x4, 0x0000000000000000, x2, 128, c.li x4, 0;)

#opcode:c.li; dest:x3; immval:0
TEST_CASE(x16, x3, 0x0000000000000000, x2, 136, c.li x3, 0;)

#opcode:c.li; dest:x15; immval:0
TEST_CASE(x16, x15, 0x0000000000000000, x2, 144, c.li x15, 0;)

#opcode:c.li; dest:x19; immval:0
TEST_CASE(x16, x19, 0x0000000000000000, x2, 152, c.li x19, 0;)

#opcode:c.li; dest:x7; immval:0
TEST_CASE(x16, x7, 0x0000000000000000, x2, 160, c.li x7, 0;)

#opcode:c.li; dest:x21; immval:0
TEST_CASE(x16, x21, 0x0000000000000000, x2, 168, c.li x21, 0;)

#opcode:c.li; dest:x29; immval:0
TEST_CASE(x16, x29, 0x0000000000000000, x2, 176, c.li x29, 0;)

#opcode:c.li; dest:x13; immval:0
TEST_CASE(x16, x13, 0x0000000000000000, x2, 184, c.li x13, 0;)

#opcode:c.li; dest:x9; immval:0
TEST_CASE(x16, x9, 0x0000000000000000, x2, 192, c.li x9, 0;)

#opcode:c.li; dest:x23; immval:0
TEST_CASE(x16, x23, 0x0000000000000000, x2, 200, c.li x23, 0;)

#opcode:c.li; dest:x25; immval:0
TEST_CASE(x16, x25, 0x0000000000000000, x2, 208, c.li x25, 0;)

#opcode:c.li; dest:x10; immval:0
TEST_CASE(x16, x10, 0x0000000000000000, x2, 216, c.li x10, 0;)

#opcode:c.li; dest:x18; immval:0
TEST_CASE(x3, x18, 0x0000000000000000, x2, 224, c.li x18, 0;)
la x1,signature_x1_0

#opcode:c.li; dest:x2; immval:0
TEST_CASE(x3, x2, 0x0000000000000000, x1, 0, c.li x2, 0;)

#opcode:c.li; dest:x16; immval:0
TEST_CASE(x3, x16, 0x0000000000000000, x1, 8, c.li x16, 0;)

#opcode:c.li; dest:x26; immval:0
TEST_CASE(x3, x26, 0x0000000000000000, x1, 16, c.li x26, 0;)

#opcode:c.li; dest:x10; immval:-32
TEST_CASE(x3, x10, 0x0000000000000000, x1, 24, c.li x10, -32;)
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
    .fill 29*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
