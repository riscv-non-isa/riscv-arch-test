
#This assembly file tests the lh instruction of the RISC-V I extension for the lh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lh-align)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 == rd, rs1==x21, rd==x21, ea_align == 0 and (imm_val % 4) == 0, imm_val == 0
# opcode:lh op1:x21; dest:x21; immval:0; align:0
TEST_LOAD(x4,x8,0,x21,x21,0,0,lh,0)

# rs1 != rd, rs1==x20, rd==x6, ea_align == 0 and (imm_val % 4) == 1, imm_val < 0
# opcode:lh op1:x20; dest:x6; immval:-3; align:0
TEST_LOAD(x4,x8,0,x20,x6,-3,8,lh,0)

# rs1==x11, rd==x26, ea_align == 0 and (imm_val % 4) == 2, 
# opcode:lh op1:x11; dest:x26; immval:-6; align:0
TEST_LOAD(x4,x8,0,x11,x26,-6,16,lh,0)

# rs1==x16, rd==x1, ea_align == 0 and (imm_val % 4) == 3, imm_val > 0
# opcode:lh op1:x16; dest:x1; immval:7; align:0
TEST_LOAD(x4,x8,0,x16,x1,7,24,lh,0)

# rs1==x25, rd==x10, ea_align == 2 and (imm_val % 4) == 0, 
# opcode:lh op1:x25; dest:x10; immval:-8; align:2
TEST_LOAD(x4,x8,0,x25,x10,-8,32,lh,2)

# rs1==x28, rd==x24, ea_align == 2 and (imm_val % 4) == 1, 
# opcode:lh op1:x28; dest:x24; immval:1365; align:2
TEST_LOAD(x4,x8,0,x28,x24,1365,40,lh,2)

# rs1==x9, rd==x28, ea_align == 2 and (imm_val % 4) == 2, 
# opcode:lh op1:x9; dest:x28; immval:-1366; align:2
TEST_LOAD(x4,x8,0,x9,x28,-1366,48,lh,2)

# rs1==x12, rd==x13, ea_align == 2 and (imm_val % 4) == 3, 
# opcode:lh op1:x12; dest:x13; immval:-257; align:2
TEST_LOAD(x4,x8,0,x12,x13,-257,56,lh,2)

# rs1==x22, rd==x18, 
# opcode:lh op1:x22; dest:x18; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x22,x18,-2048,64,lh,0)

# rs1==x5, rd==x31, 
# opcode:lh op1:x5; dest:x31; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x5,x31,-2048,72,lh,0)

# rs1==x2, rd==x14, 
# opcode:lh op1:x2; dest:x14; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x2,x14,-2048,80,lh,0)

# rs1==x19, rd==x3, 
# opcode:lh op1:x19; dest:x3; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x19,x3,-2048,88,lh,0)

# rs1==x15, rd==x12, 
# opcode:lh op1:x15; dest:x12; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x15,x12,-2048,96,lh,0)

# rs1==x17, rd==x2, 
# opcode:lh op1:x17; dest:x2; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x17,x2,-2048,104,lh,0)

# rs1==x6, rd==x30, 
# opcode:lh op1:x6; dest:x30; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x6,x30,-2048,112,lh,0)

# rs1==x27, rd==x19, 
# opcode:lh op1:x27; dest:x19; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x27,x19,-2048,120,lh,0)

# rs1==x1, rd==x7, 
# opcode:lh op1:x1; dest:x7; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x1,x7,-2048,128,lh,0)

# rs1==x26, rd==x11, 
# opcode:lh op1:x26; dest:x11; immval:-2048; align:0
TEST_LOAD(x4,x2,0,x26,x11,-2048,136,lh,0)

# rs1==x18, rd==x8, 
# opcode:lh op1:x18; dest:x8; immval:-2048; align:0
TEST_LOAD(x4,x2,0,x18,x8,-2048,144,lh,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x23, rd==x25, 
# opcode:lh op1:x23; dest:x25; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x23,x25,-2048,0,lh,0)

# rs1==x13, rd==x15, 
# opcode:lh op1:x13; dest:x15; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x13,x15,-2048,8,lh,0)

# rs1==x31, rd==x29, 
# opcode:lh op1:x31; dest:x29; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x31,x29,-2048,16,lh,0)

# rs1==x14, rd==x22, 
# opcode:lh op1:x14; dest:x22; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x14,x22,-2048,24,lh,0)

# rs1==x30, rd==x17, 
# opcode:lh op1:x30; dest:x17; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x30,x17,-2048,32,lh,0)

# rs1==x29, rd==x20, 
# opcode:lh op1:x29; dest:x20; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x29,x20,-2048,40,lh,0)

# rs1==x7, rd==x16, 
# opcode:lh op1:x7; dest:x16; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x7,x16,-2048,48,lh,0)

# rs1==x24, rd==x23, 
# opcode:lh op1:x24; dest:x23; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x24,x23,-2048,56,lh,0)

# rs1==x8, rd==x5, 
# opcode:lh op1:x8; dest:x5; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x8,x5,-2048,64,lh,0)

# rs1==x4, rd==x0, 
# opcode:lh op1:x4; dest:x0; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x4,x0,-2048,72,lh,0)

# rs1==x3, rd==x9, 
# opcode:lh op1:x3; dest:x9; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x3,x9,-2048,80,lh,0)

# rs1==x10, rd==x27, 
# opcode:lh op1:x10; dest:x27; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x10,x27,-2048,88,lh,0)

# rd==x4, 
# opcode:lh op1:x19; dest:x4; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x19,x4,-2048,96,lh,0)
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
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 13*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
