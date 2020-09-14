
#This assembly file tests the auipc instruction of the RISC-V I extension for the auipc covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",auipc)

la x6,signature_x6_1

# opcode: auipc ; dest:x3; immval:0
TEST_AUIPC(auipc, x3, 0x0, 0, x6, 0, x9)

# opcode: auipc ; dest:x26; immval:4
TEST_AUIPC(auipc, x26, 0x4000, 4, x6, 4, x9)

# opcode: auipc ; dest:x12; immval:1048575
TEST_AUIPC(auipc, x12, 0xfffff000, 1048575, x6, 8, x9)

# opcode: auipc ; dest:x28; immval:0
TEST_AUIPC(auipc, x28, 0x0, 0, x6, 12, x9)

# opcode: auipc ; dest:x7; immval:0
TEST_AUIPC(auipc, x7, 0x0, 0, x6, 16, x9)

# opcode: auipc ; dest:x14; immval:0
TEST_AUIPC(auipc, x14, 0x0, 0, x6, 20, x9)

# opcode: auipc ; dest:x17; immval:0
TEST_AUIPC(auipc, x17, 0x0, 0, x6, 24, x9)

# opcode: auipc ; dest:x30; immval:0
TEST_AUIPC(auipc, x30, 0x0, 0, x6, 28, x9)

# opcode: auipc ; dest:x15; immval:0
TEST_AUIPC(auipc, x15, 0x0, 0, x6, 32, x9)

# opcode: auipc ; dest:x27; immval:0
TEST_AUIPC(auipc, x27, 0x0, 0, x6, 36, x9)

# opcode: auipc ; dest:x25; immval:0
TEST_AUIPC(auipc, x25, 0x0, 0, x6, 40, x9)

# opcode: auipc ; dest:x4; immval:0
TEST_AUIPC(auipc, x4, 0x0, 0, x6, 44, x9)

# opcode: auipc ; dest:x1; immval:0
TEST_AUIPC(auipc, x1, 0x0, 0, x6, 48, x9)

# opcode: auipc ; dest:x19; immval:0
TEST_AUIPC(auipc, x19, 0x0, 0, x6, 52, x9)

# opcode: auipc ; dest:x8; immval:0
TEST_AUIPC(auipc, x8, 0x0, 0, x6, 56, x9)

# opcode: auipc ; dest:x20; immval:0
TEST_AUIPC(auipc, x20, 0x0, 0, x6, 60, x9)

# opcode: auipc ; dest:x24; immval:0
TEST_AUIPC(auipc, x24, 0x0, 0, x6, 64, x9)

# opcode: auipc ; dest:x5; immval:0
TEST_AUIPC(auipc, x5, 0x0, 0, x6, 68, x9)

# opcode: auipc ; dest:x2; immval:0
TEST_AUIPC(auipc, x2, 0x0, 0, x6, 72, x9)

# opcode: auipc ; dest:x31; immval:0
TEST_AUIPC(auipc, x31, 0x0, 0, x6, 76, x9)

# opcode: auipc ; dest:x13; immval:0
TEST_AUIPC(auipc, x13, 0x0, 0, x6, 80, x9)

# opcode: auipc ; dest:x21; immval:0
TEST_AUIPC(auipc, x21, 0x0, 0, x6, 84, x9)

# opcode: auipc ; dest:x18; immval:0
TEST_AUIPC(auipc, x18, 0x0, 0, x6, 88, x9)

# opcode: auipc ; dest:x16; immval:0
TEST_AUIPC(auipc, x16, 0x0, 0, x6, 92, x9)

# opcode: auipc ; dest:x23; immval:0
TEST_AUIPC(auipc, x23, 0x0, 0, x6, 96, x9)

# opcode: auipc ; dest:x10; immval:0
TEST_AUIPC(auipc, x10, 0x0, 0, x6, 100, x9)

# opcode: auipc ; dest:x29; immval:0
TEST_AUIPC(auipc, x29, 0x0, 0, x6, 104, x9)

# opcode: auipc ; dest:x11; immval:0
TEST_AUIPC(auipc, x11, 0x0, 0, x6, 108, x2)
la x1,signature_x1_0

# opcode: auipc ; dest:x0; immval:0
TEST_AUIPC(auipc, x0, 0x0, 0, x1, 0, x2)

# opcode: auipc ; dest:x22; immval:0
TEST_AUIPC(auipc, x22, 0x0, 0, x1, 4, x2)

# opcode: auipc ; dest:x6; immval:0
TEST_AUIPC(auipc, x6, 0x0, 0, x1, 8, x2)

# opcode: auipc ; dest:x9; immval:0
TEST_AUIPC(auipc, x9, 0x0, 0, x1, 12, x2)

# opcode: auipc ; dest:x10; immval:0
TEST_AUIPC(auipc, x10, 0x0, 0, x1, 16, x2)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 28*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 5*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
