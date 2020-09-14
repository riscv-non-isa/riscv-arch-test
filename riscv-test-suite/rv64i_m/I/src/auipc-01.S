
#This assembly file tests the auipc instruction of the RISC-V I extension for the auipc covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",auipc)

la x4,signature_x4_1

# opcode: auipc ; dest:x3; immval:0
TEST_AUIPC(auipc, x3, 0x0, 0, x4, 0, x9)

# opcode: auipc ; dest:x27; immval:1048573
TEST_AUIPC(auipc, x27, 0xffffd00000000000, 1048573, x4, 8, x9)

# opcode: auipc ; dest:x17; immval:1048575
TEST_AUIPC(auipc, x17, 0xfffff00000000000, 1048575, x4, 16, x9)

# opcode: auipc ; dest:x0; immval:0
TEST_AUIPC(auipc, x0, 0x0, 0, x4, 24, x9)

# opcode: auipc ; dest:x29; immval:0
TEST_AUIPC(auipc, x29, 0x0, 0, x4, 32, x9)

# opcode: auipc ; dest:x11; immval:0
TEST_AUIPC(auipc, x11, 0x0, 0, x4, 40, x9)

# opcode: auipc ; dest:x25; immval:0
TEST_AUIPC(auipc, x25, 0x0, 0, x4, 48, x9)

# opcode: auipc ; dest:x18; immval:0
TEST_AUIPC(auipc, x18, 0x0, 0, x4, 56, x9)

# opcode: auipc ; dest:x6; immval:0
TEST_AUIPC(auipc, x6, 0x0, 0, x4, 64, x9)

# opcode: auipc ; dest:x10; immval:0
TEST_AUIPC(auipc, x10, 0x0, 0, x4, 72, x9)

# opcode: auipc ; dest:x8; immval:0
TEST_AUIPC(auipc, x8, 0x0, 0, x4, 80, x9)

# opcode: auipc ; dest:x5; immval:0
TEST_AUIPC(auipc, x5, 0x0, 0, x4, 88, x9)

# opcode: auipc ; dest:x13; immval:0
TEST_AUIPC(auipc, x13, 0x0, 0, x4, 96, x9)

# opcode: auipc ; dest:x16; immval:0
TEST_AUIPC(auipc, x16, 0x0, 0, x4, 104, x9)

# opcode: auipc ; dest:x20; immval:0
TEST_AUIPC(auipc, x20, 0x0, 0, x4, 112, x9)

# opcode: auipc ; dest:x24; immval:0
TEST_AUIPC(auipc, x24, 0x0, 0, x4, 120, x9)

# opcode: auipc ; dest:x2; immval:0
TEST_AUIPC(auipc, x2, 0x0, 0, x4, 128, x9)

# opcode: auipc ; dest:x23; immval:0
TEST_AUIPC(auipc, x23, 0x0, 0, x4, 136, x9)

# opcode: auipc ; dest:x1; immval:0
TEST_AUIPC(auipc, x1, 0x0, 0, x4, 144, x9)

# opcode: auipc ; dest:x26; immval:0
TEST_AUIPC(auipc, x26, 0x0, 0, x4, 152, x9)

# opcode: auipc ; dest:x21; immval:0
TEST_AUIPC(auipc, x21, 0x0, 0, x4, 160, x9)

# opcode: auipc ; dest:x22; immval:0
TEST_AUIPC(auipc, x22, 0x0, 0, x4, 168, x9)

# opcode: auipc ; dest:x30; immval:0
TEST_AUIPC(auipc, x30, 0x0, 0, x4, 176, x9)

# opcode: auipc ; dest:x7; immval:0
TEST_AUIPC(auipc, x7, 0x0, 0, x4, 184, x9)

# opcode: auipc ; dest:x31; immval:0
TEST_AUIPC(auipc, x31, 0x0, 0, x4, 192, x9)

# opcode: auipc ; dest:x15; immval:0
TEST_AUIPC(auipc, x15, 0x0, 0, x4, 200, x9)

# opcode: auipc ; dest:x28; immval:0
TEST_AUIPC(auipc, x28, 0x0, 0, x4, 208, x9)

# opcode: auipc ; dest:x14; immval:0
TEST_AUIPC(auipc, x14, 0x0, 0, x4, 216, x9)

# opcode: auipc ; dest:x19; immval:0
TEST_AUIPC(auipc, x19, 0x0, 0, x4, 224, x2)
la x1,signature_x1_0

# opcode: auipc ; dest:x9; immval:0
TEST_AUIPC(auipc, x9, 0x0, 0, x1, 0, x2)

# opcode: auipc ; dest:x12; immval:0
TEST_AUIPC(auipc, x12, 0x0, 0, x1, 8, x2)

# opcode: auipc ; dest:x4; immval:0
TEST_AUIPC(auipc, x4, 0x0, 0, x1, 16, x2)

# opcode: auipc ; dest:x10; immval:0
TEST_AUIPC(auipc, x10, 0x0, 0, x1, 24, x2)
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
