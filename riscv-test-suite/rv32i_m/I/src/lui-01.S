
#This assembly file tests the lui instruction of the RISC-V I extension for the lui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lui)

la x2,signature_x2_1

# opcode: lui ; dest:x31; immval:0
TEST_CASE(x14, x31, 0x0, x2, 0, lui x31,0)

# opcode: lui ; dest:x5; immval:4096
TEST_CASE(x14, x5, 0x1000000, x2, 4, lui x5,4096)

# opcode: lui ; dest:x27; immval:1048575
TEST_CASE(x14, x27, 0xfffff000, x2, 8, lui x27,1048575)

# opcode: lui ; dest:x15; immval:0
TEST_CASE(x14, x15, 0x0, x2, 12, lui x15,0)

# opcode: lui ; dest:x0; immval:0
TEST_CASE(x14, x0, 0x0, x2, 16, lui x0,0)

# opcode: lui ; dest:x28; immval:0
TEST_CASE(x14, x28, 0x0, x2, 20, lui x28,0)

# opcode: lui ; dest:x17; immval:0
TEST_CASE(x14, x17, 0x0, x2, 24, lui x17,0)

# opcode: lui ; dest:x12; immval:0
TEST_CASE(x14, x12, 0x0, x2, 28, lui x12,0)

# opcode: lui ; dest:x7; immval:0
TEST_CASE(x14, x7, 0x0, x2, 32, lui x7,0)

# opcode: lui ; dest:x6; immval:0
TEST_CASE(x14, x6, 0x0, x2, 36, lui x6,0)

# opcode: lui ; dest:x16; immval:0
TEST_CASE(x14, x16, 0x0, x2, 40, lui x16,0)

# opcode: lui ; dest:x9; immval:0
TEST_CASE(x14, x9, 0x0, x2, 44, lui x9,0)

# opcode: lui ; dest:x8; immval:0
TEST_CASE(x14, x8, 0x0, x2, 48, lui x8,0)

# opcode: lui ; dest:x21; immval:0
TEST_CASE(x14, x21, 0x0, x2, 52, lui x21,0)

# opcode: lui ; dest:x25; immval:0
TEST_CASE(x14, x25, 0x0, x2, 56, lui x25,0)

# opcode: lui ; dest:x18; immval:0
TEST_CASE(x14, x18, 0x0, x2, 60, lui x18,0)

# opcode: lui ; dest:x19; immval:0
TEST_CASE(x14, x19, 0x0, x2, 64, lui x19,0)

# opcode: lui ; dest:x4; immval:0
TEST_CASE(x14, x4, 0x0, x2, 68, lui x4,0)

# opcode: lui ; dest:x20; immval:0
TEST_CASE(x14, x20, 0x0, x2, 72, lui x20,0)

# opcode: lui ; dest:x29; immval:0
TEST_CASE(x14, x29, 0x0, x2, 76, lui x29,0)

# opcode: lui ; dest:x1; immval:0
TEST_CASE(x14, x1, 0x0, x2, 80, lui x1,0)

# opcode: lui ; dest:x26; immval:0
TEST_CASE(x14, x26, 0x0, x2, 84, lui x26,0)

# opcode: lui ; dest:x11; immval:0
TEST_CASE(x14, x11, 0x0, x2, 88, lui x11,0)

# opcode: lui ; dest:x10; immval:0
TEST_CASE(x14, x10, 0x0, x2, 92, lui x10,0)

# opcode: lui ; dest:x22; immval:0
TEST_CASE(x14, x22, 0x0, x2, 96, lui x22,0)

# opcode: lui ; dest:x24; immval:0
TEST_CASE(x14, x24, 0x0, x2, 100, lui x24,0)

# opcode: lui ; dest:x3; immval:0
TEST_CASE(x14, x3, 0x0, x2, 104, lui x3,0)

# opcode: lui ; dest:x13; immval:0
TEST_CASE(x14, x13, 0x0, x2, 108, lui x13,0)

# opcode: lui ; dest:x14; immval:0
TEST_CASE(x3, x14, 0x0, x2, 112, lui x14,0)
la x1,signature_x1_0

# opcode: lui ; dest:x30; immval:0
TEST_CASE(x3, x30, 0x0, x1, 0, lui x30,0)

# opcode: lui ; dest:x23; immval:0
TEST_CASE(x3, x23, 0x0, x1, 4, lui x23,0)

# opcode: lui ; dest:x2; immval:0
TEST_CASE(x3, x2, 0x0, x1, 8, lui x2,0)

# opcode: lui ; dest:x10; immval:0
TEST_CASE(x3, x10, 0x0, x1, 12, lui x10,0)
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
