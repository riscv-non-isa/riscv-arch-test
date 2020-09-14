
#This assembly file tests the lui instruction of the RISC-V I extension for the lui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lui)

la x4,signature_x4_1

# opcode: lui ; dest:x8; immval:0
TEST_CASE(x7, x8, 0x0, x4, 0, lui x8,0)

# opcode: lui ; dest:x0; immval:917503
TEST_CASE(x7, x0, 0xdffff00000000000, x4, 8, lui x0,917503)

# opcode: lui ; dest:x20; immval:1048575
TEST_CASE(x7, x20, 0xfffff00000000000, x4, 16, lui x20,1048575)

# opcode: lui ; dest:x2; immval:0
TEST_CASE(x7, x2, 0x0, x4, 24, lui x2,0)

# opcode: lui ; dest:x10; immval:0
TEST_CASE(x7, x10, 0x0, x4, 32, lui x10,0)

# opcode: lui ; dest:x22; immval:0
TEST_CASE(x7, x22, 0x0, x4, 40, lui x22,0)

# opcode: lui ; dest:x31; immval:0
TEST_CASE(x7, x31, 0x0, x4, 48, lui x31,0)

# opcode: lui ; dest:x28; immval:0
TEST_CASE(x7, x28, 0x0, x4, 56, lui x28,0)

# opcode: lui ; dest:x11; immval:0
TEST_CASE(x7, x11, 0x0, x4, 64, lui x11,0)

# opcode: lui ; dest:x3; immval:0
TEST_CASE(x7, x3, 0x0, x4, 72, lui x3,0)

# opcode: lui ; dest:x29; immval:0
TEST_CASE(x7, x29, 0x0, x4, 80, lui x29,0)

# opcode: lui ; dest:x27; immval:0
TEST_CASE(x7, x27, 0x0, x4, 88, lui x27,0)

# opcode: lui ; dest:x14; immval:0
TEST_CASE(x7, x14, 0x0, x4, 96, lui x14,0)

# opcode: lui ; dest:x25; immval:0
TEST_CASE(x7, x25, 0x0, x4, 104, lui x25,0)

# opcode: lui ; dest:x17; immval:0
TEST_CASE(x7, x17, 0x0, x4, 112, lui x17,0)

# opcode: lui ; dest:x13; immval:0
TEST_CASE(x7, x13, 0x0, x4, 120, lui x13,0)

# opcode: lui ; dest:x18; immval:0
TEST_CASE(x7, x18, 0x0, x4, 128, lui x18,0)

# opcode: lui ; dest:x30; immval:0
TEST_CASE(x7, x30, 0x0, x4, 136, lui x30,0)

# opcode: lui ; dest:x1; immval:0
TEST_CASE(x7, x1, 0x0, x4, 144, lui x1,0)

# opcode: lui ; dest:x21; immval:0
TEST_CASE(x7, x21, 0x0, x4, 152, lui x21,0)

# opcode: lui ; dest:x15; immval:0
TEST_CASE(x7, x15, 0x0, x4, 160, lui x15,0)

# opcode: lui ; dest:x12; immval:0
TEST_CASE(x7, x12, 0x0, x4, 168, lui x12,0)

# opcode: lui ; dest:x16; immval:0
TEST_CASE(x7, x16, 0x0, x4, 176, lui x16,0)

# opcode: lui ; dest:x23; immval:0
TEST_CASE(x7, x23, 0x0, x4, 184, lui x23,0)

# opcode: lui ; dest:x5; immval:0
TEST_CASE(x7, x5, 0x0, x4, 192, lui x5,0)

# opcode: lui ; dest:x6; immval:0
TEST_CASE(x7, x6, 0x0, x4, 200, lui x6,0)

# opcode: lui ; dest:x24; immval:0
TEST_CASE(x7, x24, 0x0, x4, 208, lui x24,0)

# opcode: lui ; dest:x26; immval:0
TEST_CASE(x7, x26, 0x0, x4, 216, lui x26,0)

# opcode: lui ; dest:x9; immval:0
TEST_CASE(x2, x9, 0x0, x4, 224, lui x9,0)
la x1,signature_x1_0

# opcode: lui ; dest:x4; immval:0
TEST_CASE(x2, x4, 0x0, x1, 0, lui x4,0)

# opcode: lui ; dest:x7; immval:0
TEST_CASE(x2, x7, 0x0, x1, 8, lui x7,0)

# opcode: lui ; dest:x19; immval:0
TEST_CASE(x2, x19, 0x0, x1, 16, lui x19,0)

# opcode: lui ; dest:x10; immval:917503
TEST_CASE(x2, x10, 0xdffff00000000000, x1, 24, lui x10,917503)
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
