
#This assembly file tests the lb instruction of the RISC-V I extension for the lb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lb-align)

la x8,signature_x8_1

# rs1 == rd, rs1==x18, rd==x18, ea_align == 0 and (imm_val % 4) == 0, imm_val < 0
# opcode:lb op1:x18; dest:x18; immval:-2048; align:0
TEST_LOAD(x8,x10,0,x18,x18,-2048,0,lb,0)

# rs1 != rd, rs1==x23, rd==x24, ea_align == 0 and (imm_val % 4) == 1, imm_val > 0
# opcode:lb op1:x23; dest:x24; immval:1365; align:0
TEST_LOAD(x8,x10,0,x23,x24,1365,4,lb,0)

# rs1==x2, rd==x27, ea_align == 0 and (imm_val % 4) == 2, 
# opcode:lb op1:x2; dest:x27; immval:-10; align:0
TEST_LOAD(x8,x10,0,x2,x27,-10,8,lb,0)

# rs1==x27, rd==x20, ea_align == 0 and (imm_val % 4) == 3, 
# opcode:lb op1:x27; dest:x20; immval:3; align:0
TEST_LOAD(x8,x10,0,x27,x20,3,12,lb,0)

# rs1==x15, rd==x30, ea_align == 2 and (imm_val % 4) == 0, 
# opcode:lb op1:x15; dest:x30; immval:128; align:2
TEST_LOAD(x8,x10,0,x15,x30,128,16,lb,2)

# rs1==x14, rd==x31, ea_align == 2 and (imm_val % 4) == 1, 
# opcode:lb op1:x14; dest:x31; immval:5; align:2
TEST_LOAD(x8,x10,0,x14,x31,5,20,lb,2)

# rs1==x12, rd==x7, ea_align == 2 and (imm_val % 4) == 2, 
# opcode:lb op1:x12; dest:x7; immval:2; align:2
TEST_LOAD(x8,x10,0,x12,x7,2,24,lb,2)

# rs1==x25, rd==x17, ea_align == 2 and (imm_val % 4) == 3, 
# opcode:lb op1:x25; dest:x17; immval:-513; align:2
TEST_LOAD(x8,x10,0,x25,x17,-513,28,lb,2)

# rs1==x20, rd==x11, ea_align == 1 and (imm_val % 4) == 0, 
# opcode:lb op1:x20; dest:x11; immval:256; align:1
TEST_LOAD(x8,x10,0,x20,x11,256,32,lb,1)

# rs1==x26, rd==x16, ea_align == 1 and (imm_val % 4) == 1, 
# opcode:lb op1:x26; dest:x16; immval:1365; align:1
TEST_LOAD(x8,x10,0,x26,x16,1365,36,lb,1)

# rs1==x16, rd==x0, imm_val == 0, 
# opcode:lb op1:x16; dest:x0; immval:0; align:0
TEST_LOAD(x8,x10,0,x16,x0,0,40,lb,0)

# rs1==x1, rd==x12, ea_align == 1 and (imm_val % 4) == 2, 
# opcode:lb op1:x1; dest:x12; immval:2; align:1
TEST_LOAD(x8,x10,0,x1,x12,2,44,lb,1)

# rs1==x21, rd==x28, ea_align == 1 and (imm_val % 4) == 3, 
# opcode:lb op1:x21; dest:x28; immval:-1025; align:1
TEST_LOAD(x8,x10,0,x21,x28,-1025,48,lb,1)

# rs1==x11, rd==x21, ea_align == 3 and (imm_val % 4) == 0, 
# opcode:lb op1:x11; dest:x21; immval:64; align:3
TEST_LOAD(x8,x10,0,x11,x21,64,52,lb,3)

# rs1==x4, rd==x3, ea_align == 3 and (imm_val % 4) == 1, 
# opcode:lb op1:x4; dest:x3; immval:9; align:3
TEST_LOAD(x8,x10,0,x4,x3,9,56,lb,3)

# rs1==x5, rd==x1, ea_align == 3 and (imm_val % 4) == 2, 
# opcode:lb op1:x5; dest:x1; immval:-6; align:3
TEST_LOAD(x8,x10,0,x5,x1,-6,60,lb,3)

# rs1==x28, rd==x9, ea_align == 3 and (imm_val % 4) == 3, 
# opcode:lb op1:x28; dest:x9; immval:-1025; align:3
TEST_LOAD(x8,x10,0,x28,x9,-1025,64,lb,3)

# rs1==x6, rd==x4, 
# opcode:lb op1:x6; dest:x4; immval:-2048; align:0
TEST_LOAD(x8,x10,0,x6,x4,-2048,68,lb,0)

# rs1==x30, rd==x26, 
# opcode:lb op1:x30; dest:x26; immval:-2048; align:0
TEST_LOAD(x8,x10,0,x30,x26,-2048,72,lb,0)

# rs1==x9, rd==x22, 
# opcode:lb op1:x9; dest:x22; immval:-2048; align:0
TEST_LOAD(x8,x10,0,x9,x22,-2048,76,lb,0)

# rs1==x7, rd==x13, 
# opcode:lb op1:x7; dest:x13; immval:-2048; align:0
TEST_LOAD(x8,x10,0,x7,x13,-2048,80,lb,0)

# rs1==x24, rd==x29, 
# opcode:lb op1:x24; dest:x29; immval:-2048; align:0
TEST_LOAD(x8,x4,0,x24,x29,-2048,84,lb,0)
la x1,signature_x1_0

# rs1==x31, rd==x10, 
# opcode:lb op1:x31; dest:x10; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x31,x10,-2048,0,lb,0)

# rs1==x10, rd==x15, 
# opcode:lb op1:x10; dest:x15; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x10,x15,-2048,4,lb,0)

# rs1==x13, rd==x23, 
# opcode:lb op1:x13; dest:x23; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x13,x23,-2048,8,lb,0)

# rs1==x22, rd==x6, 
# opcode:lb op1:x22; dest:x6; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x22,x6,-2048,12,lb,0)

# rs1==x19, rd==x5, 
# opcode:lb op1:x19; dest:x5; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x19,x5,-2048,16,lb,0)

# rs1==x3, rd==x14, 
# opcode:lb op1:x3; dest:x14; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x3,x14,-2048,20,lb,0)

# rs1==x8, rd==x25, 
# opcode:lb op1:x8; dest:x25; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x8,x25,-2048,24,lb,0)

# rs1==x17, rd==x8, 
# opcode:lb op1:x17; dest:x8; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x17,x8,-2048,28,lb,0)

# rs1==x29, rd==x2, 
# opcode:lb op1:x29; dest:x2; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x29,x2,-2048,32,lb,0)

# rd==x19, 
# opcode:lb op1:x21; dest:x19; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x21,x19,-2048,36,lb,0)

# ea_align == 0 and (imm_val % 4) == 0, imm_val < 0
# opcode:lb op1:x10; dest:x11; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x10,x11,-2048,40,lb,0)

# imm_val == 0, 
# opcode:lb op1:x10; dest:x11; immval:0; align:0
TEST_LOAD(x1,x4,0,x10,x11,0,44,lb,0)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x8_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 12*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
