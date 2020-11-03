
#This assembly file tests the lh instruction of the RISC-V I extension for the lh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lh-align)

RVTEST_SIGBASE( x6,signature_x6_1)

# rs1 != rd, rs1==x26, rd==x30, ea_align == 0 and (imm_val % 4) == 0, imm_val < 0
# opcode:lh op1:x26; dest:x30; immval:-4; align:0
TEST_LOAD(x6,x14,0,x26,x30,-4,0,lh,0)

# rs1 == rd, rs1==x7, rd==x7, ea_align == 0 and (imm_val % 4) == 1, imm_val > 0
# opcode:lh op1:x7; dest:x7; immval:1; align:0
TEST_LOAD(x6,x14,0,x7,x7,1,4,lh,0)

# rs1==x22, rd==x24, ea_align == 0 and (imm_val % 4) == 2, 
# opcode:lh op1:x22; dest:x24; immval:2; align:0
TEST_LOAD(x6,x14,0,x22,x24,2,8,lh,0)

# rs1==x11, rd==x0, ea_align == 0 and (imm_val % 4) == 3, 
# opcode:lh op1:x11; dest:x0; immval:-1; align:0
TEST_LOAD(x6,x14,0,x11,x0,-1,12,lh,0)

# rs1==x4, rd==x25, ea_align == 2 and (imm_val % 4) == 0, 
# opcode:lh op1:x4; dest:x25; immval:128; align:2
TEST_LOAD(x6,x14,0,x4,x25,128,16,lh,2)

# rs1==x10, rd==x29, imm_val == 0, 
# opcode:lh op1:x10; dest:x29; immval:0; align:0
TEST_LOAD(x6,x14,0,x10,x29,0,20,lh,0)

# rs1==x21, rd==x19, ea_align == 2 and (imm_val % 4) == 1, 
# opcode:lh op1:x21; dest:x19; immval:-7; align:2
TEST_LOAD(x6,x14,0,x21,x19,-7,24,lh,2)

# rs1==x2, rd==x18, ea_align == 2 and (imm_val % 4) == 2, 
# opcode:lh op1:x2; dest:x18; immval:-10; align:2
TEST_LOAD(x6,x14,0,x2,x18,-10,28,lh,2)

# rs1==x9, rd==x16, ea_align == 2 and (imm_val % 4) == 3, 
# opcode:lh op1:x9; dest:x16; immval:-1025; align:2
TEST_LOAD(x6,x14,0,x9,x16,-1025,32,lh,2)

# rs1==x12, rd==x21, 
# opcode:lh op1:x12; dest:x21; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x12,x21,-2048,36,lh,0)

# rs1==x27, rd==x28, 
# opcode:lh op1:x27; dest:x28; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x27,x28,-2048,40,lh,0)

# rs1==x25, rd==x15, 
# opcode:lh op1:x25; dest:x15; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x25,x15,-2048,44,lh,0)

# rs1==x8, rd==x4, 
# opcode:lh op1:x8; dest:x4; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x8,x4,-2048,48,lh,0)

# rs1==x3, rd==x31, 
# opcode:lh op1:x3; dest:x31; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x3,x31,-2048,52,lh,0)

# rs1==x23, rd==x5, 
# opcode:lh op1:x23; dest:x5; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x23,x5,-2048,56,lh,0)

# rs1==x24, rd==x3, 
# opcode:lh op1:x24; dest:x3; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x24,x3,-2048,60,lh,0)

# rs1==x16, rd==x1, 
# opcode:lh op1:x16; dest:x1; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x16,x1,-2048,64,lh,0)

# rs1==x18, rd==x10, 
# opcode:lh op1:x18; dest:x10; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x18,x10,-2048,68,lh,0)

# rs1==x19, rd==x13, 
# opcode:lh op1:x19; dest:x13; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x19,x13,-2048,72,lh,0)

# rs1==x20, rd==x27, 
# opcode:lh op1:x20; dest:x27; immval:-2048; align:0
TEST_LOAD(x6,x4,0,x20,x27,-2048,76,lh,0)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x29, rd==x11, 
# opcode:lh op1:x29; dest:x11; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x29,x11,-2048,0,lh,0)

# rs1==x6, rd==x8, 
# opcode:lh op1:x6; dest:x8; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x6,x8,-2048,4,lh,0)

# rs1==x14, rd==x12, 
# opcode:lh op1:x14; dest:x12; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x14,x12,-2048,8,lh,0)

# rs1==x13, rd==x14, 
# opcode:lh op1:x13; dest:x14; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x13,x14,-2048,12,lh,0)

# rs1==x1, rd==x6, 
# opcode:lh op1:x1; dest:x6; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x1,x6,-2048,16,lh,0)

# rs1==x5, rd==x22, 
# opcode:lh op1:x5; dest:x22; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x5,x22,-2048,20,lh,0)

# rs1==x28, rd==x26, 
# opcode:lh op1:x28; dest:x26; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x28,x26,-2048,24,lh,0)

# rs1==x30, rd==x9, 
# opcode:lh op1:x30; dest:x9; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x30,x9,-2048,28,lh,0)

# rs1==x17, rd==x23, 
# opcode:lh op1:x17; dest:x23; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x17,x23,-2048,32,lh,0)

# rs1==x31, rd==x20, 
# opcode:lh op1:x31; dest:x20; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x31,x20,-2048,36,lh,0)

# rs1==x15, rd==x17, 
# opcode:lh op1:x15; dest:x17; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x15,x17,-2048,40,lh,0)

# rd==x2, 
# opcode:lh op1:x18; dest:x2; immval:-2048; align:0
TEST_LOAD(x3,x4,0,x18,x2,-2048,44,lh,0)

# ea_align == 0 and (imm_val % 4) == 3, 
# opcode:lh op1:x10; dest:x11; immval:-1; align:0
TEST_LOAD(x3,x4,0,x10,x11,-1,48,lh,0)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x6_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x3_0:
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
