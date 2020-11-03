
#This assembly file tests the c.li instruction of the RISC-V C extension for the cli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cli)

RVTEST_SIGBASE( x1,signature_x1_1)

# rd==x0, imm_val == (-2**(6-1)), imm_val == -32
# opcode:c.li; dest:x0; immval:-32
TEST_CASE(x14, x0, 0x0000000000000000, x1, 0, c.li x0, -32;)

# rd==x20, imm_val == 0, 
# opcode:c.li; dest:x20; immval:0
TEST_CASE(x14, x20, 0x0000000000000000, x1, 8, c.li x20, 0;)

# rd==x12, imm_val == (2**(6-1)-1), imm_val == 31
# opcode:c.li; dest:x12; immval:31
TEST_CASE(x14, x12, 0x0000000000000000, x1, 16, c.li x12, 31;)

# rd==x30, imm_val == 1, 
# opcode:c.li; dest:x30; immval:1
TEST_CASE(x14, x30, 0x0000000000000000, x1, 24, c.li x30, 1;)

# rd==x8, imm_val == 2, 
# opcode:c.li; dest:x8; immval:2
TEST_CASE(x14, x8, 0x0000000000000000, x1, 32, c.li x8, 2;)

# rd==x21, imm_val == 4, 
# opcode:c.li; dest:x21; immval:4
TEST_CASE(x14, x21, 0x0000000000000000, x1, 40, c.li x21, 4;)

# rd==x2, imm_val == 8, 
# opcode:c.li; dest:x2; immval:8
TEST_CASE(x14, x2, 0x0000000000000000, x1, 48, c.li x2, 8;)

# rd==x4, imm_val == 16, 
# opcode:c.li; dest:x4; immval:16
TEST_CASE(x14, x4, 0x0000000000000000, x1, 56, c.li x4, 16;)

# rd==x16, imm_val == -22, 
# opcode:c.li; dest:x16; immval:-22
TEST_CASE(x14, x16, 0x0000000000000000, x1, 64, c.li x16, -22;)

# rd==x18, imm_val == -2, 
# opcode:c.li; dest:x18; immval:-2
TEST_CASE(x14, x18, 0x0000000000000000, x1, 72, c.li x18, -2;)

# rd==x9, imm_val == -3, 
# opcode:c.li; dest:x9; immval:-3
TEST_CASE(x14, x9, 0x0000000000000000, x1, 80, c.li x9, -3;)

# rd==x15, imm_val == -5, 
# opcode:c.li; dest:x15; immval:-5
TEST_CASE(x14, x15, 0x0000000000000000, x1, 88, c.li x15, -5;)

# rd==x3, imm_val == -9, 
# opcode:c.li; dest:x3; immval:-9
TEST_CASE(x14, x3, 0x0000000000000000, x1, 96, c.li x3, -9;)

# rd==x11, imm_val == -17, 
# opcode:c.li; dest:x11; immval:-17
TEST_CASE(x14, x11, 0x0000000000000000, x1, 104, c.li x11, -17;)

# rd==x31, imm_val == 21, 
# opcode:c.li; dest:x31; immval:21
TEST_CASE(x14, x31, 0x0000000000000000, x1, 112, c.li x31, 21;)

# rd==x6, 
# opcode:c.li; dest:x6; immval:0
TEST_CASE(x14, x6, 0x0000000000000000, x1, 120, c.li x6, 0;)

# rd==x26, 
# opcode:c.li; dest:x26; immval:0
TEST_CASE(x14, x26, 0x0000000000000000, x1, 128, c.li x26, 0;)

# rd==x13, 
# opcode:c.li; dest:x13; immval:0
TEST_CASE(x14, x13, 0x0000000000000000, x1, 136, c.li x13, 0;)

# rd==x24, 
# opcode:c.li; dest:x24; immval:0
TEST_CASE(x14, x24, 0x0000000000000000, x1, 144, c.li x24, 0;)

# rd==x23, 
# opcode:c.li; dest:x23; immval:0
TEST_CASE(x14, x23, 0x0000000000000000, x1, 152, c.li x23, 0;)

# rd==x28, 
# opcode:c.li; dest:x28; immval:0
TEST_CASE(x14, x28, 0x0000000000000000, x1, 160, c.li x28, 0;)

# rd==x19, 
# opcode:c.li; dest:x19; immval:0
TEST_CASE(x14, x19, 0x0000000000000000, x1, 168, c.li x19, 0;)

# rd==x7, 
# opcode:c.li; dest:x7; immval:0
TEST_CASE(x14, x7, 0x0000000000000000, x1, 176, c.li x7, 0;)

# rd==x5, 
# opcode:c.li; dest:x5; immval:0
TEST_CASE(x14, x5, 0x0000000000000000, x1, 184, c.li x5, 0;)

# rd==x10, 
# opcode:c.li; dest:x10; immval:0
TEST_CASE(x14, x10, 0x0000000000000000, x1, 192, c.li x10, 0;)

# rd==x25, 
# opcode:c.li; dest:x25; immval:0
TEST_CASE(x14, x25, 0x0000000000000000, x1, 200, c.li x25, 0;)

# rd==x17, 
# opcode:c.li; dest:x17; immval:0
TEST_CASE(x14, x17, 0x0000000000000000, x1, 208, c.li x17, 0;)

# rd==x29, 
# opcode:c.li; dest:x29; immval:0
TEST_CASE(x14, x29, 0x0000000000000000, x1, 216, c.li x29, 0;)

# rd==x14, 
# opcode:c.li; dest:x14; immval:0
TEST_CASE(x3, x14, 0x0000000000000000, x1, 224, c.li x14, 0;)
RVTEST_SIGBASE( x2,signature_x2_0)

# rd==x22, 
# opcode:c.li; dest:x22; immval:0
TEST_CASE(x3, x22, 0x0000000000000000, x2, 0, c.li x22, 0;)

# rd==x1, 
# opcode:c.li; dest:x1; immval:0
TEST_CASE(x3, x1, 0x0000000000000000, x2, 8, c.li x1, 0;)

# rd==x27, 
# opcode:c.li; dest:x27; immval:0
TEST_CASE(x3, x27, 0x0000000000000000, x2, 16, c.li x27, 0;)

# imm_val == (-2**(6-1)), imm_val == -32
# opcode:c.li; dest:x10; immval:-32
TEST_CASE(x3, x10, 0x0000000000000000, x2, 24, c.li x10, -32;)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x2_0:
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
