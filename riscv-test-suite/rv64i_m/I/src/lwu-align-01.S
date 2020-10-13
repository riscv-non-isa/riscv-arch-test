
#This assembly file tests the lwu instruction of the RISC-V I extension for the lwu-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",lwu-align)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 == rd, rs1==x14, rd==x14, ea_align == 0 and (imm_val % 4) == 0, imm_val == 0
# opcode:lwu op1:x14; dest:x14; immval:0; align:0
TEST_LOAD(x4,x7,0,x14,x14,0,0,lwu,0)

# rs1 != rd, rs1==x31, rd==x0, ea_align == 0 and (imm_val % 4) == 1, imm_val > 0
# opcode:lwu op1:x31; dest:x0; immval:9; align:0
TEST_LOAD(x4,x7,0,x31,x0,9,8,lwu,0)

# rs1==x22, rd==x28, ea_align == 0 and (imm_val % 4) == 2, imm_val < 0
# opcode:lwu op1:x22; dest:x28; immval:-6; align:0
TEST_LOAD(x4,x7,0,x22,x28,-6,16,lwu,0)

# rs1==x17, rd==x3, ea_align == 0 and (imm_val % 4) == 3, 
# opcode:lwu op1:x17; dest:x3; immval:-17; align:0
TEST_LOAD(x4,x7,0,x17,x3,-17,24,lwu,0)

# rs1==x26, rd==x9, 
# opcode:lwu op1:x26; dest:x9; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x26,x9,-2048,32,lwu,0)

# rs1==x12, rd==x20, 
# opcode:lwu op1:x12; dest:x20; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x12,x20,-2048,40,lwu,0)

# rs1==x10, rd==x30, 
# opcode:lwu op1:x10; dest:x30; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x10,x30,-2048,48,lwu,0)

# rs1==x2, rd==x12, 
# opcode:lwu op1:x2; dest:x12; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x2,x12,-2048,56,lwu,0)

# rs1==x1, rd==x15, 
# opcode:lwu op1:x1; dest:x15; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x1,x15,-2048,64,lwu,0)

# rs1==x18, rd==x6, 
# opcode:lwu op1:x18; dest:x6; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x18,x6,-2048,72,lwu,0)

# rs1==x8, rd==x24, 
# opcode:lwu op1:x8; dest:x24; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x8,x24,-2048,80,lwu,0)

# rs1==x23, rd==x26, 
# opcode:lwu op1:x23; dest:x26; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x23,x26,-2048,88,lwu,0)

# rs1==x21, rd==x23, 
# opcode:lwu op1:x21; dest:x23; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x21,x23,-2048,96,lwu,0)

# rs1==x27, rd==x16, 
# opcode:lwu op1:x27; dest:x16; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x27,x16,-2048,104,lwu,0)

# rs1==x3, rd==x8, 
# opcode:lwu op1:x3; dest:x8; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x3,x8,-2048,112,lwu,0)

# rs1==x24, rd==x25, 
# opcode:lwu op1:x24; dest:x25; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x24,x25,-2048,120,lwu,0)

# rs1==x9, rd==x27, 
# opcode:lwu op1:x9; dest:x27; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x9,x27,-2048,128,lwu,0)

# rs1==x5, rd==x13, 
# opcode:lwu op1:x5; dest:x13; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x5,x13,-2048,136,lwu,0)

# rs1==x29, rd==x17, 
# opcode:lwu op1:x29; dest:x17; immval:-2048; align:0
TEST_LOAD(x4,x7,0,x29,x17,-2048,144,lwu,0)

# rs1==x11, rd==x22, 
# opcode:lwu op1:x11; dest:x22; immval:-2048; align:0
TEST_LOAD(x4,x8,0,x11,x22,-2048,152,lwu,0)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x25, rd==x4, 
# opcode:lwu op1:x25; dest:x4; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x25,x4,-2048,0,lwu,0)

# rs1==x28, rd==x19, 
# opcode:lwu op1:x28; dest:x19; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x28,x19,-2048,8,lwu,0)

# rs1==x30, rd==x29, 
# opcode:lwu op1:x30; dest:x29; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x30,x29,-2048,16,lwu,0)

# rs1==x4, rd==x21, 
# opcode:lwu op1:x4; dest:x21; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x4,x21,-2048,24,lwu,0)

# rs1==x15, rd==x11, 
# opcode:lwu op1:x15; dest:x11; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x15,x11,-2048,32,lwu,0)

# rs1==x20, rd==x10, 
# opcode:lwu op1:x20; dest:x10; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x20,x10,-2048,40,lwu,0)

# rs1==x7, rd==x18, 
# opcode:lwu op1:x7; dest:x18; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x7,x18,-2048,48,lwu,0)

# rs1==x13, rd==x31, 
# opcode:lwu op1:x13; dest:x31; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x13,x31,-2048,56,lwu,0)

# rs1==x16, rd==x1, 
# opcode:lwu op1:x16; dest:x1; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x16,x1,-2048,64,lwu,0)

# rs1==x6, rd==x7, 
# opcode:lwu op1:x6; dest:x7; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x6,x7,-2048,72,lwu,0)

# rs1==x19, rd==x2, 
# opcode:lwu op1:x19; dest:x2; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x19,x2,-2048,80,lwu,0)

# rd==x5, 
# opcode:lwu op1:x18; dest:x5; immval:-2048; align:0
TEST_LOAD(x3,x8,0,x18,x5,-2048,88,lwu,0)

# ea_align == 0 and (imm_val % 4) == 0, imm_val == 0
# opcode:lwu op1:x10; dest:x11; immval:0; align:0
TEST_LOAD(x3,x8,0,x10,x11,0,96,lwu,0)

# ea_align == 0 and (imm_val % 4) == 1, imm_val > 0
# opcode:lwu op1:x10; dest:x11; immval:9; align:0
TEST_LOAD(x3,x8,0,x10,x11,9,104,lwu,0)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 14*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
