
#This assembly file tests the c.lwsp instruction of the RISC-V C extension for the clwsp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clwsp)

RVTEST_SIGBASE( x12,signature_x12_1)

# rd==x29, imm_val > 0, imm_val == 188
# opcode: c.lwsp; op1:x2; dest:x29; immval:188
TEST_LOAD(x12,x8,0,x2,x29,188,0,c.lwsp,0)

# rd==x4, imm_val == 0, 
# opcode: c.lwsp; op1:x2; dest:x4; immval:0
TEST_LOAD(x12,x8,0,x2,x4,0,4,c.lwsp,0)

# rd==x10, imm_val == 4, 
# opcode: c.lwsp; op1:x2; dest:x10; immval:4
TEST_LOAD(x12,x8,0,x2,x10,4,8,c.lwsp,0)

# rd==x3, imm_val == 8, 
# opcode: c.lwsp; op1:x2; dest:x3; immval:8
TEST_LOAD(x12,x8,0,x2,x3,8,12,c.lwsp,0)

# rd==x5, imm_val == 16, 
# opcode: c.lwsp; op1:x2; dest:x5; immval:16
TEST_LOAD(x12,x8,0,x2,x5,16,16,c.lwsp,0)

# rd==x14, imm_val == 32, 
# opcode: c.lwsp; op1:x2; dest:x14; immval:32
TEST_LOAD(x12,x8,0,x2,x14,32,20,c.lwsp,0)

# rd==x31, imm_val == 64, 
# opcode: c.lwsp; op1:x2; dest:x31; immval:64
TEST_LOAD(x12,x8,0,x2,x31,64,24,c.lwsp,0)

# rd==x1, imm_val == 128, 
# opcode: c.lwsp; op1:x2; dest:x1; immval:128
TEST_LOAD(x12,x8,0,x2,x1,128,28,c.lwsp,0)

# rd==x20, imm_val == 248, 
# opcode: c.lwsp; op1:x2; dest:x20; immval:248
TEST_LOAD(x12,x8,0,x2,x20,248,32,c.lwsp,0)

# rd==x9, imm_val == 244, 
# opcode: c.lwsp; op1:x2; dest:x9; immval:244
TEST_LOAD(x12,x8,0,x2,x9,244,36,c.lwsp,0)

# rd==x15, imm_val == 236, 
# opcode: c.lwsp; op1:x2; dest:x15; immval:236
TEST_LOAD(x12,x8,0,x2,x15,236,40,c.lwsp,0)

# rd==x21, imm_val == 220, 
# opcode: c.lwsp; op1:x2; dest:x21; immval:220
TEST_LOAD(x12,x8,0,x2,x21,220,44,c.lwsp,0)

# rd==x22, imm_val == 124, 
# opcode: c.lwsp; op1:x2; dest:x22; immval:124
TEST_LOAD(x12,x8,0,x2,x22,124,48,c.lwsp,0)

# rd==x2, imm_val == 84, 
# opcode: c.lwsp; op1:x2; dest:x2; immval:84
TEST_LOAD(x12,x8,0,x2,x2,84,52,c.lwsp,0)

# rd==x24, imm_val == 168, 
# opcode: c.lwsp; op1:x2; dest:x24; immval:168
TEST_LOAD(x12,x8,0,x2,x24,168,56,c.lwsp,0)

# rd==x26, 
# opcode: c.lwsp; op1:x2; dest:x26; immval:0
TEST_LOAD(x12,x8,0,x2,x26,0,60,c.lwsp,0)

# rd==x18, 
# opcode: c.lwsp; op1:x2; dest:x18; immval:0
TEST_LOAD(x12,x8,0,x2,x18,0,64,c.lwsp,0)

# rd==x17, 
# opcode: c.lwsp; op1:x2; dest:x17; immval:0
TEST_LOAD(x12,x8,0,x2,x17,0,68,c.lwsp,0)

# rd==x25, 
# opcode: c.lwsp; op1:x2; dest:x25; immval:0
TEST_LOAD(x12,x8,0,x2,x25,0,72,c.lwsp,0)

# rd==x6, 
# opcode: c.lwsp; op1:x2; dest:x6; immval:0
TEST_LOAD(x12,x8,0,x2,x6,0,76,c.lwsp,0)

# rd==x28, 
# opcode: c.lwsp; op1:x2; dest:x28; immval:0
TEST_LOAD(x12,x8,0,x2,x28,0,80,c.lwsp,0)

# rd==x7, 
# opcode: c.lwsp; op1:x2; dest:x7; immval:0
TEST_LOAD(x12,x8,0,x2,x7,0,84,c.lwsp,0)

# rd==x11, 
# opcode: c.lwsp; op1:x2; dest:x11; immval:0
TEST_LOAD(x12,x8,0,x2,x11,0,88,c.lwsp,0)

# rd==x19, 
# opcode: c.lwsp; op1:x2; dest:x19; immval:0
TEST_LOAD(x12,x8,0,x2,x19,0,92,c.lwsp,0)

# rd==x27, 
# opcode: c.lwsp; op1:x2; dest:x27; immval:0
TEST_LOAD(x12,x8,0,x2,x27,0,96,c.lwsp,0)

# rd==x16, 
# opcode: c.lwsp; op1:x2; dest:x16; immval:0
TEST_LOAD(x12,x8,0,x2,x16,0,100,c.lwsp,0)

# rd==x23, 
# opcode: c.lwsp; op1:x2; dest:x23; immval:0
TEST_LOAD(x12,x8,0,x2,x23,0,104,c.lwsp,0)

# rd==x8, 
# opcode: c.lwsp; op1:x2; dest:x8; immval:0
TEST_LOAD(x12,x3,0,x2,x8,0,108,c.lwsp,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x30, 
# opcode: c.lwsp; op1:x2; dest:x30; immval:0
TEST_LOAD(x1,x3,0,x2,x30,0,0,c.lwsp,0)

# rd==x12, 
# opcode: c.lwsp; op1:x2; dest:x12; immval:0
TEST_LOAD(x1,x3,0,x2,x12,0,4,c.lwsp,0)

# rd==x13, 
# opcode: c.lwsp; op1:x2; dest:x13; immval:0
TEST_LOAD(x1,x3,0,x2,x13,0,8,c.lwsp,0)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x12_1:
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 3*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
