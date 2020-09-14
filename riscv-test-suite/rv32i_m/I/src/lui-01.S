
#This assembly file tests the lui instruction of the RISC-V I extension for the lui covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lui)

la x8,signature_x8_1

# opcode: lui ; dest:x20; immval:0
TEST_CASE(x19, x20, 0x0, x8, 0, lui x20,0)

# opcode: lui ; dest:x0; immval:1048559
TEST_CASE(x19, x0, 0xfffef000, x8, 4, lui x0,1048559)

# opcode: lui ; dest:x11; immval:1048575
TEST_CASE(x19, x11, 0xfffff000, x8, 8, lui x11,1048575)

# opcode: lui ; dest:x1; immval:0
TEST_CASE(x19, x1, 0x0, x8, 12, lui x1,0)

# opcode: lui ; dest:x14; immval:0
TEST_CASE(x19, x14, 0x0, x8, 16, lui x14,0)

# opcode: lui ; dest:x24; immval:0
TEST_CASE(x19, x24, 0x0, x8, 20, lui x24,0)

# opcode: lui ; dest:x15; immval:0
TEST_CASE(x19, x15, 0x0, x8, 24, lui x15,0)

# opcode: lui ; dest:x2; immval:0
TEST_CASE(x19, x2, 0x0, x8, 28, lui x2,0)

# opcode: lui ; dest:x23; immval:0
TEST_CASE(x19, x23, 0x0, x8, 32, lui x23,0)

# opcode: lui ; dest:x5; immval:0
TEST_CASE(x19, x5, 0x0, x8, 36, lui x5,0)

# opcode: lui ; dest:x13; immval:0
TEST_CASE(x19, x13, 0x0, x8, 40, lui x13,0)

# opcode: lui ; dest:x28; immval:0
TEST_CASE(x19, x28, 0x0, x8, 44, lui x28,0)

# opcode: lui ; dest:x26; immval:0
TEST_CASE(x19, x26, 0x0, x8, 48, lui x26,0)

# opcode: lui ; dest:x3; immval:0
TEST_CASE(x19, x3, 0x0, x8, 52, lui x3,0)

# opcode: lui ; dest:x12; immval:0
TEST_CASE(x19, x12, 0x0, x8, 56, lui x12,0)

# opcode: lui ; dest:x7; immval:0
TEST_CASE(x19, x7, 0x0, x8, 60, lui x7,0)

# opcode: lui ; dest:x27; immval:0
TEST_CASE(x19, x27, 0x0, x8, 64, lui x27,0)

# opcode: lui ; dest:x9; immval:0
TEST_CASE(x19, x9, 0x0, x8, 68, lui x9,0)

# opcode: lui ; dest:x25; immval:0
TEST_CASE(x19, x25, 0x0, x8, 72, lui x25,0)

# opcode: lui ; dest:x10; immval:0
TEST_CASE(x19, x10, 0x0, x8, 76, lui x10,0)

# opcode: lui ; dest:x4; immval:0
TEST_CASE(x19, x4, 0x0, x8, 80, lui x4,0)

# opcode: lui ; dest:x30; immval:0
TEST_CASE(x19, x30, 0x0, x8, 84, lui x30,0)

# opcode: lui ; dest:x21; immval:0
TEST_CASE(x19, x21, 0x0, x8, 88, lui x21,0)

# opcode: lui ; dest:x6; immval:0
TEST_CASE(x19, x6, 0x0, x8, 92, lui x6,0)

# opcode: lui ; dest:x22; immval:0
TEST_CASE(x19, x22, 0x0, x8, 96, lui x22,0)

# opcode: lui ; dest:x18; immval:0
TEST_CASE(x19, x18, 0x0, x8, 100, lui x18,0)

# opcode: lui ; dest:x17; immval:0
TEST_CASE(x19, x17, 0x0, x8, 104, lui x17,0)

# opcode: lui ; dest:x16; immval:0
TEST_CASE(x19, x16, 0x0, x8, 108, lui x16,0)

# opcode: lui ; dest:x31; immval:0
TEST_CASE(x2, x31, 0x0, x8, 112, lui x31,0)
la x1,signature_x1_0

# opcode: lui ; dest:x8; immval:0
TEST_CASE(x2, x8, 0x0, x1, 0, lui x8,0)

# opcode: lui ; dest:x19; immval:0
TEST_CASE(x2, x19, 0x0, x1, 4, lui x19,0)

# opcode: lui ; dest:x29; immval:0
TEST_CASE(x2, x29, 0x0, x1, 8, lui x29,0)

# opcode: lui ; dest:x10; immval:1048559
TEST_CASE(x2, x10, 0xfffef000, x1, 12, lui x10,1048559)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x8_1:
    .fill 29*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
