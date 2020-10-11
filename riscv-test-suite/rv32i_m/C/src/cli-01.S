
#This assembly file tests the c.li instruction of the RISC-V C extension for the cli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cli)

la x3,signature_x3_1

# rd==x4, imm_val == (-2**(6-1)), imm_val == -32
# opcode:c.li; dest:x4; immval:-32
TEST_CASE(x14, x4, 0x00000000, x3, 0, c.li x4, -32;)

# rd==x29, imm_val == 0, 
# opcode:c.li; dest:x29; immval:0
TEST_CASE(x14, x29, 0x00000000, x3, 4, c.li x29, 0;)

# rd==x28, imm_val == (2**(6-1)-1), imm_val == 31
# opcode:c.li; dest:x28; immval:31
TEST_CASE(x14, x28, 0x00000000, x3, 8, c.li x28, 31;)

# rd==x18, imm_val == 1, 
# opcode:c.li; dest:x18; immval:1
TEST_CASE(x14, x18, 0x00000000, x3, 12, c.li x18, 1;)

# rd==x1, imm_val == 2, 
# opcode:c.li; dest:x1; immval:2
TEST_CASE(x14, x1, 0x00000000, x3, 16, c.li x1, 2;)

# rd==x8, imm_val == 4, 
# opcode:c.li; dest:x8; immval:4
TEST_CASE(x14, x8, 0x00000000, x3, 20, c.li x8, 4;)

# rd==x26, imm_val == 8, 
# opcode:c.li; dest:x26; immval:8
TEST_CASE(x14, x26, 0x00000000, x3, 24, c.li x26, 8;)

# rd==x17, imm_val == 16, 
# opcode:c.li; dest:x17; immval:16
TEST_CASE(x14, x17, 0x00000000, x3, 28, c.li x17, 16;)

# rd==x19, imm_val == -22, 
# opcode:c.li; dest:x19; immval:-22
TEST_CASE(x14, x19, 0x00000000, x3, 32, c.li x19, -22;)

# rd==x12, imm_val == -2, 
# opcode:c.li; dest:x12; immval:-2
TEST_CASE(x14, x12, 0x00000000, x3, 36, c.li x12, -2;)

# rd==x16, imm_val == -3, 
# opcode:c.li; dest:x16; immval:-3
TEST_CASE(x14, x16, 0x00000000, x3, 40, c.li x16, -3;)

# rd==x5, imm_val == -5, 
# opcode:c.li; dest:x5; immval:-5
TEST_CASE(x14, x5, 0x00000000, x3, 44, c.li x5, -5;)

# rd==x0, imm_val == -9, 
# opcode:c.li; dest:x0; immval:-9
TEST_CASE(x14, x0, 0x00000000, x3, 48, c.li x0, -9;)

# rd==x27, imm_val == -17, 
# opcode:c.li; dest:x27; immval:-17
TEST_CASE(x14, x27, 0x00000000, x3, 52, c.li x27, -17;)

# rd==x11, imm_val == 21, 
# opcode:c.li; dest:x11; immval:21
TEST_CASE(x14, x11, 0x00000000, x3, 56, c.li x11, 21;)

# rd==x22, 
# opcode:c.li; dest:x22; immval:0
TEST_CASE(x14, x22, 0x00000000, x3, 60, c.li x22, 0;)

# rd==x25, 
# opcode:c.li; dest:x25; immval:0
TEST_CASE(x14, x25, 0x00000000, x3, 64, c.li x25, 0;)

# rd==x7, 
# opcode:c.li; dest:x7; immval:0
TEST_CASE(x14, x7, 0x00000000, x3, 68, c.li x7, 0;)

# rd==x9, 
# opcode:c.li; dest:x9; immval:0
TEST_CASE(x14, x9, 0x00000000, x3, 72, c.li x9, 0;)

# rd==x31, 
# opcode:c.li; dest:x31; immval:0
TEST_CASE(x14, x31, 0x00000000, x3, 76, c.li x31, 0;)

# rd==x10, 
# opcode:c.li; dest:x10; immval:0
TEST_CASE(x14, x10, 0x00000000, x3, 80, c.li x10, 0;)

# rd==x30, 
# opcode:c.li; dest:x30; immval:0
TEST_CASE(x14, x30, 0x00000000, x3, 84, c.li x30, 0;)

# rd==x20, 
# opcode:c.li; dest:x20; immval:0
TEST_CASE(x14, x20, 0x00000000, x3, 88, c.li x20, 0;)

# rd==x13, 
# opcode:c.li; dest:x13; immval:0
TEST_CASE(x14, x13, 0x00000000, x3, 92, c.li x13, 0;)

# rd==x23, 
# opcode:c.li; dest:x23; immval:0
TEST_CASE(x14, x23, 0x00000000, x3, 96, c.li x23, 0;)

# rd==x6, 
# opcode:c.li; dest:x6; immval:0
TEST_CASE(x14, x6, 0x00000000, x3, 100, c.li x6, 0;)

# rd==x21, 
# opcode:c.li; dest:x21; immval:0
TEST_CASE(x14, x21, 0x00000000, x3, 104, c.li x21, 0;)

# rd==x2, 
# opcode:c.li; dest:x2; immval:0
TEST_CASE(x14, x2, 0x00000000, x3, 108, c.li x2, 0;)

# rd==x14, 
# opcode:c.li; dest:x14; immval:0
TEST_CASE(x2, x14, 0x00000000, x3, 112, c.li x14, 0;)
la x1,signature_x1_0

# rd==x24, 
# opcode:c.li; dest:x24; immval:0
TEST_CASE(x2, x24, 0x00000000, x1, 0, c.li x24, 0;)

# rd==x3, 
# opcode:c.li; dest:x3; immval:0
TEST_CASE(x2, x3, 0x00000000, x1, 4, c.li x3, 0;)

# rd==x15, 
# opcode:c.li; dest:x15; immval:0
TEST_CASE(x2, x15, 0x00000000, x1, 8, c.li x15, 0;)

# imm_val == -9, 
# opcode:c.li; dest:x10; immval:-9
TEST_CASE(x2, x10, 0x00000000, x1, 12, c.li x10, -9;)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 4*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
