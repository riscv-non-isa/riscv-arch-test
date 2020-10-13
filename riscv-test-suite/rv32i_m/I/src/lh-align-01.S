
#This assembly file tests the lh instruction of the RISC-V I extension for the lh-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lh-align)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rd, rs1==x23, rd==x0, ea_align == 0 and (imm_val % 4) == 0, imm_val < 0
# opcode:lh op1:x23; dest:x0; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x23,x0,-2048,0,lh,0)

# rs1 == rd, rs1==x19, rd==x19, ea_align == 0 and (imm_val % 4) == 1, 
# opcode:lh op1:x19; dest:x19; immval:-7; align:0
TEST_LOAD(x1,x21,0,x19,x19,-7,4,lh,0)

# rs1==x2, rd==x6, ea_align == 0 and (imm_val % 4) == 2, 
# opcode:lh op1:x2; dest:x6; immval:-6; align:0
TEST_LOAD(x1,x21,0,x2,x6,-6,8,lh,0)

# rs1==x7, rd==x13, ea_align == 0 and (imm_val % 4) == 3, imm_val > 0
# opcode:lh op1:x7; dest:x13; immval:2047; align:0
TEST_LOAD(x1,x21,0,x7,x13,2047,12,lh,0)

# rs1==x26, rd==x7, ea_align == 2 and (imm_val % 4) == 0, 
# opcode:lh op1:x26; dest:x7; immval:1024; align:2
TEST_LOAD(x1,x21,0,x26,x7,1024,16,lh,2)

# rs1==x16, rd==x12, imm_val == 0, 
# opcode:lh op1:x16; dest:x12; immval:0; align:0
TEST_LOAD(x1,x21,0,x16,x12,0,20,lh,0)

# rs1==x25, rd==x27, ea_align == 2 and (imm_val % 4) == 1, 
# opcode:lh op1:x25; dest:x27; immval:9; align:2
TEST_LOAD(x1,x21,0,x25,x27,9,24,lh,2)

# rs1==x20, rd==x22, ea_align == 2 and (imm_val % 4) == 2, 
# opcode:lh op1:x20; dest:x22; immval:6; align:2
TEST_LOAD(x1,x21,0,x20,x22,6,28,lh,2)

# rs1==x9, rd==x25, ea_align == 2 and (imm_val % 4) == 3, 
# opcode:lh op1:x9; dest:x25; immval:2047; align:2
TEST_LOAD(x1,x21,0,x9,x25,2047,32,lh,2)

# rs1==x30, rd==x26, 
# opcode:lh op1:x30; dest:x26; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x30,x26,-2048,36,lh,0)

# rs1==x5, rd==x24, 
# opcode:lh op1:x5; dest:x24; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x5,x24,-2048,40,lh,0)

# rs1==x4, rd==x30, 
# opcode:lh op1:x4; dest:x30; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x4,x30,-2048,44,lh,0)

# rs1==x24, rd==x23, 
# opcode:lh op1:x24; dest:x23; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x24,x23,-2048,48,lh,0)

# rs1==x8, rd==x10, 
# opcode:lh op1:x8; dest:x10; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x8,x10,-2048,52,lh,0)

# rs1==x14, rd==x8, 
# opcode:lh op1:x14; dest:x8; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x14,x8,-2048,56,lh,0)

# rs1==x15, rd==x20, 
# opcode:lh op1:x15; dest:x20; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x15,x20,-2048,60,lh,0)

# rs1==x17, rd==x5, 
# opcode:lh op1:x17; dest:x5; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x17,x5,-2048,64,lh,0)

# rs1==x6, rd==x29, 
# opcode:lh op1:x6; dest:x29; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x6,x29,-2048,68,lh,0)

# rs1==x11, rd==x16, 
# opcode:lh op1:x11; dest:x16; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x11,x16,-2048,72,lh,0)

# rs1==x18, rd==x3, 
# opcode:lh op1:x18; dest:x3; immval:-2048; align:0
TEST_LOAD(x1,x21,0,x18,x3,-2048,76,lh,0)

# rs1==x28, rd==x21, 
# opcode:lh op1:x28; dest:x21; immval:-2048; align:0
TEST_LOAD(x1,x6,0,x28,x21,-2048,80,lh,0)
RVTEST_SIGBASE( x5,signature_x5_0)

# rs1==x12, rd==x1, 
# opcode:lh op1:x12; dest:x1; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x12,x1,-2048,0,lh,0)

# rs1==x31, rd==x14, 
# opcode:lh op1:x31; dest:x14; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x31,x14,-2048,4,lh,0)

# rs1==x1, rd==x9, 
# opcode:lh op1:x1; dest:x9; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x1,x9,-2048,8,lh,0)

# rs1==x13, rd==x17, 
# opcode:lh op1:x13; dest:x17; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x13,x17,-2048,12,lh,0)

# rs1==x27, rd==x28, 
# opcode:lh op1:x27; dest:x28; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x27,x28,-2048,16,lh,0)

# rs1==x22, rd==x11, 
# opcode:lh op1:x22; dest:x11; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x22,x11,-2048,20,lh,0)

# rs1==x21, rd==x4, 
# opcode:lh op1:x21; dest:x4; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x21,x4,-2048,24,lh,0)

# rs1==x29, rd==x15, 
# opcode:lh op1:x29; dest:x15; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x29,x15,-2048,28,lh,0)

# rs1==x10, rd==x2, 
# opcode:lh op1:x10; dest:x2; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x10,x2,-2048,32,lh,0)

# rs1==x3, rd==x31, 
# opcode:lh op1:x3; dest:x31; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x3,x31,-2048,36,lh,0)

# rd==x18, 
# opcode:lh op1:x3; dest:x18; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x3,x18,-2048,40,lh,0)

# ea_align == 0 and (imm_val % 4) == 0, imm_val < 0
# opcode:lh op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x5,x6,0,x10,x11,-2048,44,lh,0)

# ea_align == 0 and (imm_val % 4) == 1, 
# opcode:lh op1:x10; dest:x11; immval:-7; align:0
TEST_LOAD(x5,x6,0,x10,x11,-7,48,lh,0)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x5_0:
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
