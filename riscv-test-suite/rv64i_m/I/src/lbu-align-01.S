
#This assembly file tests the lbu instruction of the RISC-V I extension for the lbu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lbu-align)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1 == rd, rs1==x23, rd==x23, ea_align == 0 and (imm_val % 4) == 0, imm_val > 0
# opcode:lbu op1:x23; dest:x23; immval:8; align:0
TEST_LOAD(x5,x12,0,x23,x23,8,0,lbu,0)

# rs1 != rd, rs1==x1, rd==x10, ea_align == 0 and (imm_val % 4) == 1, imm_val < 0
# opcode:lbu op1:x1; dest:x10; immval:-3; align:0
TEST_LOAD(x5,x12,0,x1,x10,-3,8,lbu,0)

# rs1==x26, rd==x15, ea_align == 0 and (imm_val % 4) == 2, 
# opcode:lbu op1:x26; dest:x15; immval:6; align:0
TEST_LOAD(x5,x12,0,x26,x15,6,16,lbu,0)

# rs1==x31, rd==x6, ea_align == 0 and (imm_val % 4) == 3, 
# opcode:lbu op1:x31; dest:x6; immval:-513; align:0
TEST_LOAD(x5,x12,0,x31,x6,-513,24,lbu,0)

# rs1==x7, rd==x29, ea_align == 2 and (imm_val % 4) == 0, imm_val == 0
# opcode:lbu op1:x7; dest:x29; immval:0; align:2
TEST_LOAD(x5,x12,0,x7,x29,0,32,lbu,2)

# rs1==x6, rd==x27, ea_align == 2 and (imm_val % 4) == 1, 
# opcode:lbu op1:x6; dest:x27; immval:-7; align:2
TEST_LOAD(x5,x12,0,x6,x27,-7,40,lbu,2)

# rs1==x10, rd==x4, ea_align == 2 and (imm_val % 4) == 2, 
# opcode:lbu op1:x10; dest:x4; immval:-6; align:2
TEST_LOAD(x5,x12,0,x10,x4,-6,48,lbu,2)

# rs1==x19, rd==x24, ea_align == 2 and (imm_val % 4) == 3, 
# opcode:lbu op1:x19; dest:x24; immval:-17; align:2
TEST_LOAD(x5,x12,0,x19,x24,-17,56,lbu,2)

# rs1==x18, rd==x7, ea_align == 1 and (imm_val % 4) == 0, 
# opcode:lbu op1:x18; dest:x7; immval:-8; align:1
TEST_LOAD(x5,x12,0,x18,x7,-8,64,lbu,1)

# rs1==x30, rd==x0, ea_align == 1 and (imm_val % 4) == 1, 
# opcode:lbu op1:x30; dest:x0; immval:-7; align:1
TEST_LOAD(x5,x12,0,x30,x0,-7,72,lbu,1)

# rs1==x28, rd==x25, ea_align == 1 and (imm_val % 4) == 2, 
# opcode:lbu op1:x28; dest:x25; immval:-2; align:1
TEST_LOAD(x5,x12,0,x28,x25,-2,80,lbu,1)

# rs1==x27, rd==x14, ea_align == 1 and (imm_val % 4) == 3, 
# opcode:lbu op1:x27; dest:x14; immval:-1; align:1
TEST_LOAD(x5,x12,0,x27,x14,-1,88,lbu,1)

# rs1==x21, rd==x20, ea_align == 3 and (imm_val % 4) == 0, 
# opcode:lbu op1:x21; dest:x20; immval:64; align:3
TEST_LOAD(x5,x12,0,x21,x20,64,96,lbu,3)

# rs1==x16, rd==x9, ea_align == 3 and (imm_val % 4) == 1, 
# opcode:lbu op1:x16; dest:x9; immval:-7; align:3
TEST_LOAD(x5,x12,0,x16,x9,-7,104,lbu,3)

# rs1==x8, rd==x19, ea_align == 3 and (imm_val % 4) == 2, 
# opcode:lbu op1:x8; dest:x19; immval:6; align:3
TEST_LOAD(x5,x12,0,x8,x19,6,112,lbu,3)

# rs1==x24, rd==x22, ea_align == 3 and (imm_val % 4) == 3, 
# opcode:lbu op1:x24; dest:x22; immval:-129; align:3
TEST_LOAD(x5,x12,0,x24,x22,-129,120,lbu,3)

# rs1==x15, rd==x30, 
# opcode:lbu op1:x15; dest:x30; immval:-2048; align:0
TEST_LOAD(x5,x12,0,x15,x30,-2048,128,lbu,0)

# rs1==x2, rd==x16, 
# opcode:lbu op1:x2; dest:x16; immval:-2048; align:0
TEST_LOAD(x5,x12,0,x2,x16,-2048,136,lbu,0)

# rs1==x9, rd==x2, 
# opcode:lbu op1:x9; dest:x2; immval:-2048; align:0
TEST_LOAD(x5,x12,0,x9,x2,-2048,144,lbu,0)

# rs1==x20, rd==x11, 
# opcode:lbu op1:x20; dest:x11; immval:-2048; align:0
TEST_LOAD(x5,x12,0,x20,x11,-2048,152,lbu,0)

# rs1==x3, rd==x31, 
# opcode:lbu op1:x3; dest:x31; immval:-2048; align:0
TEST_LOAD(x5,x12,0,x3,x31,-2048,160,lbu,0)

# rs1==x12, rd==x26, 
# opcode:lbu op1:x12; dest:x26; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x12,x26,-2048,168,lbu,0)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x22, rd==x5, 
# opcode:lbu op1:x22; dest:x5; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x22,x5,-2048,0,lbu,0)

# rs1==x25, rd==x21, 
# opcode:lbu op1:x25; dest:x21; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x25,x21,-2048,8,lbu,0)

# rs1==x13, rd==x1, 
# opcode:lbu op1:x13; dest:x1; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x13,x1,-2048,16,lbu,0)

# rs1==x11, rd==x3, 
# opcode:lbu op1:x11; dest:x3; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x11,x3,-2048,24,lbu,0)

# rs1==x14, rd==x12, 
# opcode:lbu op1:x14; dest:x12; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x14,x12,-2048,32,lbu,0)

# rs1==x29, rd==x8, 
# opcode:lbu op1:x29; dest:x8; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x29,x8,-2048,40,lbu,0)

# rs1==x17, rd==x28, 
# opcode:lbu op1:x17; dest:x28; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x17,x28,-2048,48,lbu,0)

# rs1==x4, rd==x18, 
# opcode:lbu op1:x4; dest:x18; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x4,x18,-2048,56,lbu,0)

# rs1==x5, rd==x13, 
# opcode:lbu op1:x5; dest:x13; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x5,x13,-2048,64,lbu,0)

# rd==x17, 
# opcode:lbu op1:x16; dest:x17; immval:-2048; align:0
TEST_LOAD(x2,x6,0,x16,x17,-2048,72,lbu,0)

# ea_align == 1 and (imm_val % 4) == 1, 
# opcode:lbu op1:x10; dest:x11; immval:-7; align:1
TEST_LOAD(x2,x6,0,x10,x11,-7,80,lbu,1)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 11*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
