
#This assembly file tests the lhu instruction of the RISC-V I extension for the lhu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lhu-align)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 != rd, rs1==x19, rd==x10, ea_align == 0 and (imm_val % 4) == 0, imm_val > 0
# opcode:lhu op1:x19; dest:x10; immval:16; align:0
TEST_LOAD(x4,x8,0,x19,x10,16,0,lhu,0)

# rs1 == rd, rs1==x26, rd==x26, ea_align == 0 and (imm_val % 4) == 1, 
# opcode:lhu op1:x26; dest:x26; immval:9; align:0
TEST_LOAD(x4,x8,0,x26,x26,9,4,lhu,0)

# rs1==x27, rd==x31, ea_align == 0 and (imm_val % 4) == 2, imm_val < 0
# opcode:lhu op1:x27; dest:x31; immval:-2; align:0
TEST_LOAD(x4,x8,0,x27,x31,-2,8,lhu,0)

# rs1==x5, rd==x15, ea_align == 0 and (imm_val % 4) == 3, 
# opcode:lhu op1:x5; dest:x15; immval:-1025; align:0
TEST_LOAD(x4,x8,0,x5,x15,-1025,12,lhu,0)

# rs1==x2, rd==x3, ea_align == 2 and (imm_val % 4) == 0, 
# opcode:lhu op1:x2; dest:x3; immval:512; align:2
TEST_LOAD(x4,x8,0,x2,x3,512,16,lhu,2)

# rs1==x15, rd==x5, imm_val == 0, 
# opcode:lhu op1:x15; dest:x5; immval:0; align:0
TEST_LOAD(x4,x8,0,x15,x5,0,20,lhu,0)

# rs1==x20, rd==x24, ea_align == 2 and (imm_val % 4) == 1, 
# opcode:lhu op1:x20; dest:x24; immval:-7; align:2
TEST_LOAD(x4,x8,0,x20,x24,-7,24,lhu,2)

# rs1==x21, rd==x2, ea_align == 2 and (imm_val % 4) == 2, 
# opcode:lhu op1:x21; dest:x2; immval:2; align:2
TEST_LOAD(x4,x8,0,x21,x2,2,28,lhu,2)

# rs1==x16, rd==x18, ea_align == 2 and (imm_val % 4) == 3, 
# opcode:lhu op1:x16; dest:x18; immval:-1025; align:2
TEST_LOAD(x4,x8,0,x16,x18,-1025,32,lhu,2)

# rs1==x7, rd==x29, 
# opcode:lhu op1:x7; dest:x29; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x7,x29,-2048,36,lhu,0)

# rs1==x30, rd==x22, 
# opcode:lhu op1:x30; dest:x22; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x30,x22,-2048,40,lhu,0)

# rs1==x29, rd==x19, 
# opcode:lhu op1:x29; dest:x19; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x29,x19,-2048,44,lhu,0)

# rs1==x6, rd==x30, 
# opcode:lhu op1:x6; dest:x30; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x6,x30,-2048,48,lhu,0)

# rs1==x17, rd==x9, 
# opcode:lhu op1:x17; dest:x9; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x17,x9,-2048,52,lhu,0)

# rs1==x1, rd==x28, 
# opcode:lhu op1:x1; dest:x28; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x1,x28,-2048,56,lhu,0)

# rs1==x18, rd==x12, 
# opcode:lhu op1:x18; dest:x12; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x18,x12,-2048,60,lhu,0)

# rs1==x31, rd==x27, 
# opcode:lhu op1:x31; dest:x27; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x31,x27,-2048,64,lhu,0)

# rs1==x11, rd==x6, 
# opcode:lhu op1:x11; dest:x6; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x11,x6,-2048,68,lhu,0)

# rs1==x28, rd==x20, 
# opcode:lhu op1:x28; dest:x20; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x28,x20,-2048,72,lhu,0)

# rs1==x3, rd==x17, 
# opcode:lhu op1:x3; dest:x17; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x3,x17,-2048,76,lhu,0)

# rs1==x10, rd==x0, 
# opcode:lhu op1:x10; dest:x0; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x10,x0,-2048,80,lhu,0)

# rs1==x12, rd==x11, 
# opcode:lhu op1:x12; dest:x11; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x12,x11,-2048,84,lhu,0)

# rs1==x23, rd==x21, 
# opcode:lhu op1:x23; dest:x21; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x23,x21,-2048,88,lhu,0)

# rs1==x25, rd==x13, 
# opcode:lhu op1:x25; dest:x13; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x25,x13,-2048,92,lhu,0)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x8, rd==x25, 
# opcode:lhu op1:x8; dest:x25; immval:-2048; align:0
TEST_LOAD(x3,x5,0,x8,x25,-2048,0,lhu,0)

# rs1==x9, rd==x14, 
# opcode:lhu op1:x9; dest:x14; immval:-2048; align:0
TEST_LOAD(x3,x5,0,x9,x14,-2048,4,lhu,0)

# rs1==x4, rd==x1, 
# opcode:lhu op1:x4; dest:x1; immval:-2048; align:0
TEST_LOAD(x3,x5,0,x4,x1,-2048,8,lhu,0)

# rs1==x13, rd==x23, 
# opcode:lhu op1:x13; dest:x23; immval:-2048; align:0
TEST_LOAD(x3,x5,0,x13,x23,-2048,12,lhu,0)

# rs1==x22, rd==x8, 
# opcode:lhu op1:x22; dest:x8; immval:-2048; align:0
TEST_LOAD(x3,x5,0,x22,x8,-2048,16,lhu,0)

# rs1==x14, rd==x4, 
# opcode:lhu op1:x14; dest:x4; immval:-2048; align:0
TEST_LOAD(x3,x5,0,x14,x4,-2048,20,lhu,0)

# rs1==x24, rd==x16, 
# opcode:lhu op1:x24; dest:x16; immval:-2048; align:0
TEST_LOAD(x3,x5,0,x24,x16,-2048,24,lhu,0)

# rd==x7, 
# opcode:lhu op1:x2; dest:x7; immval:-2048; align:0
TEST_LOAD(x3,x5,0,x2,x7,-2048,28,lhu,0)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 8*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
