
#This assembly file tests the lbu instruction of the RISC-V I extension for the lbu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lbu-align)

RVTEST_SIGBASE( x13,signature_x13_1)

# rs1 != rd, rs1==x25, rd==x19, ea_align == 0 and (imm_val % 4) == 0, imm_val == 0
# opcode:lbu op1:x25; dest:x19; immval:0; align:0
TEST_LOAD(x13,x9,0,x25,x19,0,0,lbu,0)

# rs1 == rd, rs1==x11, rd==x11, ea_align == 0 and (imm_val % 4) == 1, imm_val > 0
# opcode:lbu op1:x11; dest:x11; immval:1; align:0
TEST_LOAD(x13,x9,0,x11,x11,1,4,lbu,0)

# rs1==x21, rd==x0, ea_align == 0 and (imm_val % 4) == 2, 
# opcode:lbu op1:x21; dest:x0; immval:6; align:0
TEST_LOAD(x13,x9,0,x21,x0,6,8,lbu,0)

# rs1==x6, rd==x7, ea_align == 0 and (imm_val % 4) == 3, 
# opcode:lbu op1:x6; dest:x7; immval:1023; align:0
TEST_LOAD(x13,x9,0,x6,x7,1023,12,lbu,0)

# rs1==x20, rd==x16, ea_align == 2 and (imm_val % 4) == 0, 
# opcode:lbu op1:x20; dest:x16; immval:16; align:2
TEST_LOAD(x13,x9,0,x20,x16,16,16,lbu,2)

# rs1==x29, rd==x4, ea_align == 2 and (imm_val % 4) == 1, 
# opcode:lbu op1:x29; dest:x4; immval:1; align:2
TEST_LOAD(x13,x9,0,x29,x4,1,20,lbu,2)

# rs1==x12, rd==x30, ea_align == 2 and (imm_val % 4) == 2, imm_val < 0
# opcode:lbu op1:x12; dest:x30; immval:-2; align:2
TEST_LOAD(x13,x9,0,x12,x30,-2,24,lbu,2)

# rs1==x1, rd==x3, ea_align == 2 and (imm_val % 4) == 3, 
# opcode:lbu op1:x1; dest:x3; immval:-9; align:2
TEST_LOAD(x13,x9,0,x1,x3,-9,28,lbu,2)

# rs1==x7, rd==x1, ea_align == 1 and (imm_val % 4) == 0, 
# opcode:lbu op1:x7; dest:x1; immval:64; align:1
TEST_LOAD(x13,x9,0,x7,x1,64,32,lbu,1)

# rs1==x18, rd==x28, ea_align == 1 and (imm_val % 4) == 1, 
# opcode:lbu op1:x18; dest:x28; immval:1365; align:1
TEST_LOAD(x13,x9,0,x18,x28,1365,36,lbu,1)

# rs1==x22, rd==x24, ea_align == 1 and (imm_val % 4) == 2, 
# opcode:lbu op1:x22; dest:x24; immval:6; align:1
TEST_LOAD(x13,x9,0,x22,x24,6,40,lbu,1)

# rs1==x28, rd==x15, ea_align == 1 and (imm_val % 4) == 3, 
# opcode:lbu op1:x28; dest:x15; immval:-5; align:1
TEST_LOAD(x13,x9,0,x28,x15,-5,44,lbu,1)

# rs1==x31, rd==x10, ea_align == 3 and (imm_val % 4) == 0, 
# opcode:lbu op1:x31; dest:x10; immval:-4; align:3
TEST_LOAD(x13,x9,0,x31,x10,-4,48,lbu,3)

# rs1==x8, rd==x17, ea_align == 3 and (imm_val % 4) == 1, 
# opcode:lbu op1:x8; dest:x17; immval:-3; align:3
TEST_LOAD(x13,x9,0,x8,x17,-3,52,lbu,3)

# rs1==x2, rd==x27, ea_align == 3 and (imm_val % 4) == 2, 
# opcode:lbu op1:x2; dest:x27; immval:2; align:3
TEST_LOAD(x13,x9,0,x2,x27,2,56,lbu,3)

# rs1==x17, rd==x2, ea_align == 3 and (imm_val % 4) == 3, 
# opcode:lbu op1:x17; dest:x2; immval:-33; align:3
TEST_LOAD(x13,x9,0,x17,x2,-33,60,lbu,3)

# rs1==x16, rd==x31, 
# opcode:lbu op1:x16; dest:x31; immval:-2048; align:0
TEST_LOAD(x13,x9,0,x16,x31,-2048,64,lbu,0)

# rs1==x5, rd==x6, 
# opcode:lbu op1:x5; dest:x6; immval:-2048; align:0
TEST_LOAD(x13,x9,0,x5,x6,-2048,68,lbu,0)

# rs1==x23, rd==x18, 
# opcode:lbu op1:x23; dest:x18; immval:-2048; align:0
TEST_LOAD(x13,x9,0,x23,x18,-2048,72,lbu,0)

# rs1==x10, rd==x9, 
# opcode:lbu op1:x10; dest:x9; immval:-2048; align:0
TEST_LOAD(x13,x2,0,x10,x9,-2048,76,lbu,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x19, rd==x14, 
# opcode:lbu op1:x19; dest:x14; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x19,x14,-2048,0,lbu,0)

# rs1==x9, rd==x26, 
# opcode:lbu op1:x9; dest:x26; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x9,x26,-2048,4,lbu,0)

# rs1==x13, rd==x22, 
# opcode:lbu op1:x13; dest:x22; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x13,x22,-2048,8,lbu,0)

# rs1==x30, rd==x20, 
# opcode:lbu op1:x30; dest:x20; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x30,x20,-2048,12,lbu,0)

# rs1==x14, rd==x25, 
# opcode:lbu op1:x14; dest:x25; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x14,x25,-2048,16,lbu,0)

# rs1==x3, rd==x8, 
# opcode:lbu op1:x3; dest:x8; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x3,x8,-2048,20,lbu,0)

# rs1==x4, rd==x5, 
# opcode:lbu op1:x4; dest:x5; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x4,x5,-2048,24,lbu,0)

# rs1==x15, rd==x12, 
# opcode:lbu op1:x15; dest:x12; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x15,x12,-2048,28,lbu,0)

# rs1==x24, rd==x23, 
# opcode:lbu op1:x24; dest:x23; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x24,x23,-2048,32,lbu,0)

# rs1==x27, rd==x29, 
# opcode:lbu op1:x27; dest:x29; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x27,x29,-2048,36,lbu,0)

# rs1==x26, rd==x13, 
# opcode:lbu op1:x26; dest:x13; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x26,x13,-2048,40,lbu,0)

# rd==x21, 
# opcode:lbu op1:x19; dest:x21; immval:-2048; align:0
TEST_LOAD(x1,x2,0,x19,x21,-2048,44,lbu,0)

# ea_align == 0 and (imm_val % 4) == 2, 
# opcode:lbu op1:x10; dest:x11; immval:6; align:0
TEST_LOAD(x1,x2,0,x10,x11,6,48,lbu,0)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x13_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


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
