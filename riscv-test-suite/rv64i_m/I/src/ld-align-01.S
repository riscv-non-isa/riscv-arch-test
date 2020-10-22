
#This assembly file tests the ld instruction of the RISC-V I extension for the ld-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",ld-align)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1 != rd, rs1==x23, rd==x29, ea_align == 0 and (imm_val % 8) == 0, imm_val > 0
# opcode:ld op1:x23; dest:x29; immval:16; align:0
TEST_LOAD(x5,x11,0,x23,x29,16,0,ld,0)

# rs1 == rd, rs1==x27, rd==x27, ea_align == 0 and (imm_val % 8) == 1, imm_val < 0
# opcode:ld op1:x27; dest:x27; immval:-7; align:0
TEST_LOAD(x5,x11,0,x27,x27,-7,8,ld,0)

# rs1==x17, rd==x20, ea_align == 0 and (imm_val % 8) == 2, 
# opcode:ld op1:x17; dest:x20; immval:-6; align:0
TEST_LOAD(x5,x11,0,x17,x20,-6,16,ld,0)

# rs1==x26, rd==x25, ea_align == 0 and (imm_val % 8) == 3, 
# opcode:ld op1:x26; dest:x25; immval:3; align:0
TEST_LOAD(x5,x11,0,x26,x25,3,24,ld,0)

# rs1==x6, rd==x17, ea_align == 0 and (imm_val % 8) == 4, 
# opcode:ld op1:x6; dest:x17; immval:-4; align:0
TEST_LOAD(x5,x11,0,x6,x17,-4,32,ld,0)

# rs1==x7, rd==x18, imm_val == 0, 
# opcode:ld op1:x7; dest:x18; immval:0; align:0
TEST_LOAD(x5,x11,0,x7,x18,0,40,ld,0)

# rs1==x14, rd==x30, ea_align == 0 and (imm_val % 8) == 5, 
# opcode:ld op1:x14; dest:x30; immval:-3; align:0
TEST_LOAD(x5,x11,0,x14,x30,-3,48,ld,0)

# rs1==x13, rd==x31, ea_align == 0 and (imm_val % 8) == 6, 
# opcode:ld op1:x13; dest:x31; immval:-10; align:0
TEST_LOAD(x5,x11,0,x13,x31,-10,56,ld,0)

# rs1==x21, rd==x9, ea_align == 0 and (imm_val % 8) == 7, 
# opcode:ld op1:x21; dest:x9; immval:-65; align:0
TEST_LOAD(x5,x11,0,x21,x9,-65,64,ld,0)

# rs1==x18, rd==x10, 
# opcode:ld op1:x18; dest:x10; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x18,x10,-2048,72,ld,0)

# rs1==x25, rd==x16, 
# opcode:ld op1:x25; dest:x16; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x25,x16,-2048,80,ld,0)

# rs1==x9, rd==x22, 
# opcode:ld op1:x9; dest:x22; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x9,x22,-2048,88,ld,0)

# rs1==x1, rd==x2, 
# opcode:ld op1:x1; dest:x2; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x1,x2,-2048,96,ld,0)

# rs1==x4, rd==x14, 
# opcode:ld op1:x4; dest:x14; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x4,x14,-2048,104,ld,0)

# rs1==x28, rd==x0, 
# opcode:ld op1:x28; dest:x0; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x28,x0,-2048,112,ld,0)

# rs1==x10, rd==x1, 
# opcode:ld op1:x10; dest:x1; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x10,x1,-2048,120,ld,0)

# rs1==x19, rd==x21, 
# opcode:ld op1:x19; dest:x21; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x19,x21,-2048,128,ld,0)

# rs1==x30, rd==x28, 
# opcode:ld op1:x30; dest:x28; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x30,x28,-2048,136,ld,0)

# rs1==x20, rd==x3, 
# opcode:ld op1:x20; dest:x3; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x20,x3,-2048,144,ld,0)

# rs1==x8, rd==x13, 
# opcode:ld op1:x8; dest:x13; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x8,x13,-2048,152,ld,0)

# rs1==x22, rd==x6, 
# opcode:ld op1:x22; dest:x6; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x22,x6,-2048,160,ld,0)

# rs1==x3, rd==x24, 
# opcode:ld op1:x3; dest:x24; immval:-2048; align:0
TEST_LOAD(x5,x11,0,x3,x24,-2048,168,ld,0)

# rs1==x15, rd==x11, 
# opcode:ld op1:x15; dest:x11; immval:-2048; align:0
TEST_LOAD(x5,x3,0,x15,x11,-2048,176,ld,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x29, rd==x4, 
# opcode:ld op1:x29; dest:x4; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x29,x4,-2048,0,ld,0)

# rs1==x24, rd==x8, 
# opcode:ld op1:x24; dest:x8; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x24,x8,-2048,8,ld,0)

# rs1==x16, rd==x12, 
# opcode:ld op1:x16; dest:x12; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x16,x12,-2048,16,ld,0)

# rs1==x12, rd==x19, 
# opcode:ld op1:x12; dest:x19; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x12,x19,-2048,24,ld,0)

# rs1==x11, rd==x15, 
# opcode:ld op1:x11; dest:x15; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x11,x15,-2048,32,ld,0)

# rs1==x31, rd==x7, 
# opcode:ld op1:x31; dest:x7; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x31,x7,-2048,40,ld,0)

# rs1==x2, rd==x26, 
# opcode:ld op1:x2; dest:x26; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x2,x26,-2048,48,ld,0)

# rs1==x5, rd==x23, 
# opcode:ld op1:x5; dest:x23; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x5,x23,-2048,56,ld,0)

# rd==x5, 
# opcode:ld op1:x9; dest:x5; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x9,x5,-2048,64,ld,0)

# ea_align == 0 and (imm_val % 8) == 1, imm_val < 0
# opcode:ld op1:x10; dest:x11; immval:-7; align:0
TEST_LOAD(x1,x3,0,x10,x11,-7,72,ld,0)

# 
# opcode:ld op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x1,x3,0,x10,x11,-2048,80,ld,0)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
