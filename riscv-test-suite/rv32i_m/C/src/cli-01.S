
#This assembly file tests the c.li instruction of the RISC-V C extension for the cli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cli)

RVTEST_SIGBASE( x10,signature_x10_1)

# rd==x7, imm_val == (-2**(6-1)), imm_val == -32
# opcode:c.li; dest:x7; immval:-32
TEST_CASE(x3, x7, 0x00000000, x10, 0, c.li x7, -32;)

# rd==x18, imm_val == 0, 
# opcode:c.li; dest:x18; immval:0
TEST_CASE(x3, x18, 0x00000000, x10, 4, c.li x18, 0;)

# rd==x14, imm_val == (2**(6-1)-1), imm_val == 31
# opcode:c.li; dest:x14; immval:31
TEST_CASE(x3, x14, 0x00000000, x10, 8, c.li x14, 31;)

# rd==x15, imm_val == 1, 
# opcode:c.li; dest:x15; immval:1
TEST_CASE(x3, x15, 0x00000000, x10, 12, c.li x15, 1;)

# rd==x1, imm_val == 2, 
# opcode:c.li; dest:x1; immval:2
TEST_CASE(x3, x1, 0x00000000, x10, 16, c.li x1, 2;)

# rd==x28, imm_val == 4, 
# opcode:c.li; dest:x28; immval:4
TEST_CASE(x3, x28, 0x00000000, x10, 20, c.li x28, 4;)

# rd==x8, imm_val == 8, 
# opcode:c.li; dest:x8; immval:8
TEST_CASE(x3, x8, 0x00000000, x10, 24, c.li x8, 8;)

# rd==x12, imm_val == 16, 
# opcode:c.li; dest:x12; immval:16
TEST_CASE(x3, x12, 0x00000000, x10, 28, c.li x12, 16;)

# rd==x30, imm_val == -22, 
# opcode:c.li; dest:x30; immval:-22
TEST_CASE(x3, x30, 0x00000000, x10, 32, c.li x30, -22;)

# rd==x31, imm_val == -2, 
# opcode:c.li; dest:x31; immval:-2
TEST_CASE(x3, x31, 0x00000000, x10, 36, c.li x31, -2;)

# rd==x13, imm_val == -3, 
# opcode:c.li; dest:x13; immval:-3
TEST_CASE(x3, x13, 0x00000000, x10, 40, c.li x13, -3;)

# rd==x21, imm_val == -5, 
# opcode:c.li; dest:x21; immval:-5
TEST_CASE(x3, x21, 0x00000000, x10, 44, c.li x21, -5;)

# rd==x2, imm_val == -9, 
# opcode:c.li; dest:x2; immval:-9
TEST_CASE(x3, x2, 0x00000000, x10, 48, c.li x2, -9;)

# rd==x17, imm_val == -17, 
# opcode:c.li; dest:x17; immval:-17
TEST_CASE(x3, x17, 0x00000000, x10, 52, c.li x17, -17;)

# rd==x22, imm_val == 21, 
# opcode:c.li; dest:x22; immval:21
TEST_CASE(x3, x22, 0x00000000, x10, 56, c.li x22, 21;)

# rd==x5, 
# opcode:c.li; dest:x5; immval:0
TEST_CASE(x3, x5, 0x00000000, x10, 60, c.li x5, 0;)

# rd==x23, 
# opcode:c.li; dest:x23; immval:0
TEST_CASE(x3, x23, 0x00000000, x10, 64, c.li x23, 0;)

# rd==x25, 
# opcode:c.li; dest:x25; immval:0
TEST_CASE(x3, x25, 0x00000000, x10, 68, c.li x25, 0;)

# rd==x27, 
# opcode:c.li; dest:x27; immval:0
TEST_CASE(x3, x27, 0x00000000, x10, 72, c.li x27, 0;)

# rd==x6, 
# opcode:c.li; dest:x6; immval:0
TEST_CASE(x3, x6, 0x00000000, x10, 76, c.li x6, 0;)

# rd==x0, 
# opcode:c.li; dest:x0; immval:0
TEST_CASE(x3, x0, 0x00000000, x10, 80, c.li x0, 0;)

# rd==x9, 
# opcode:c.li; dest:x9; immval:0
TEST_CASE(x3, x9, 0x00000000, x10, 84, c.li x9, 0;)

# rd==x4, 
# opcode:c.li; dest:x4; immval:0
TEST_CASE(x3, x4, 0x00000000, x10, 88, c.li x4, 0;)

# rd==x20, 
# opcode:c.li; dest:x20; immval:0
TEST_CASE(x3, x20, 0x00000000, x10, 92, c.li x20, 0;)

# rd==x16, 
# opcode:c.li; dest:x16; immval:0
TEST_CASE(x3, x16, 0x00000000, x10, 96, c.li x16, 0;)

# rd==x24, 
# opcode:c.li; dest:x24; immval:0
TEST_CASE(x3, x24, 0x00000000, x10, 100, c.li x24, 0;)

# rd==x19, 
# opcode:c.li; dest:x19; immval:0
TEST_CASE(x3, x19, 0x00000000, x10, 104, c.li x19, 0;)

# rd==x26, 
# opcode:c.li; dest:x26; immval:0
TEST_CASE(x3, x26, 0x00000000, x10, 108, c.li x26, 0;)

# rd==x3, 
# opcode:c.li; dest:x3; immval:0
TEST_CASE(x2, x3, 0x00000000, x10, 112, c.li x3, 0;)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x29, 
# opcode:c.li; dest:x29; immval:0
TEST_CASE(x2, x29, 0x00000000, x1, 0, c.li x29, 0;)

# rd==x10, 
# opcode:c.li; dest:x10; immval:0
TEST_CASE(x2, x10, 0x00000000, x1, 4, c.li x10, 0;)

# rd==x11, 
# opcode:c.li; dest:x11; immval:0
TEST_CASE(x2, x11, 0x00000000, x1, 8, c.li x11, 0;)

# 
# opcode:c.li; dest:x10; immval:0
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
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
