
#This assembly file tests the lb instruction of the RISC-V I extension for the lb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lb-align)

RVTEST_SIGBASE( x6,signature_x6_1)

# rs1 != rd, rs1==x31, rd==x27, ea_align == 0 and (imm_val % 4) == 0, imm_val > 0
# opcode:lb op1:x31; dest:x27; immval:512; align:0
TEST_LOAD(x6,x14,0,x31,x27,512,0,lb,0)

# rs1 == rd, rs1==x2, rd==x2, ea_align == 0 and (imm_val % 4) == 1, 
# opcode:lb op1:x2; dest:x2; immval:5; align:0
TEST_LOAD(x6,x14,0,x2,x2,5,4,lb,0)

# rs1==x5, rd==x9, ea_align == 0 and (imm_val % 4) == 2, imm_val < 0
# opcode:lb op1:x5; dest:x9; immval:-2; align:0
TEST_LOAD(x6,x14,0,x5,x9,-2,8,lb,0)

# rs1==x26, rd==x11, ea_align == 0 and (imm_val % 4) == 3, 
# opcode:lb op1:x26; dest:x11; immval:1023; align:0
TEST_LOAD(x6,x14,0,x26,x11,1023,12,lb,0)

# rs1==x15, rd==x5, ea_align == 2 and (imm_val % 4) == 0, 
# opcode:lb op1:x15; dest:x5; immval:-1024; align:2
TEST_LOAD(x6,x14,0,x15,x5,-1024,16,lb,2)

# rs1==x7, rd==x31, ea_align == 2 and (imm_val % 4) == 1, 
# opcode:lb op1:x7; dest:x31; immval:1; align:2
TEST_LOAD(x6,x14,0,x7,x31,1,20,lb,2)

# rs1==x17, rd==x23, ea_align == 2 and (imm_val % 4) == 2, 
# opcode:lb op1:x17; dest:x23; immval:-6; align:2
TEST_LOAD(x6,x14,0,x17,x23,-6,24,lb,2)

# rs1==x10, rd==x24, ea_align == 2 and (imm_val % 4) == 3, 
# opcode:lb op1:x10; dest:x24; immval:-513; align:2
TEST_LOAD(x6,x14,0,x10,x24,-513,28,lb,2)

# rs1==x9, rd==x8, ea_align == 1 and (imm_val % 4) == 0, 
# opcode:lb op1:x9; dest:x8; immval:128; align:1
TEST_LOAD(x6,x14,0,x9,x8,128,32,lb,1)

# rs1==x27, rd==x10, ea_align == 1 and (imm_val % 4) == 1, 
# opcode:lb op1:x27; dest:x10; immval:-3; align:1
TEST_LOAD(x6,x14,0,x27,x10,-3,36,lb,1)

# rs1==x11, rd==x17, imm_val == 0, 
# opcode:lb op1:x11; dest:x17; immval:0; align:0
TEST_LOAD(x6,x14,0,x11,x17,0,40,lb,0)

# rs1==x25, rd==x26, ea_align == 1 and (imm_val % 4) == 2, 
# opcode:lb op1:x25; dest:x26; immval:-6; align:1
TEST_LOAD(x6,x14,0,x25,x26,-6,44,lb,1)

# rs1==x20, rd==x28, ea_align == 1 and (imm_val % 4) == 3, 
# opcode:lb op1:x20; dest:x28; immval:7; align:1
TEST_LOAD(x6,x14,0,x20,x28,7,48,lb,1)

# rs1==x28, rd==x19, ea_align == 3 and (imm_val % 4) == 0, 
# opcode:lb op1:x28; dest:x19; immval:-1024; align:3
TEST_LOAD(x6,x14,0,x28,x19,-1024,52,lb,3)

# rs1==x18, rd==x4, ea_align == 3 and (imm_val % 4) == 1, 
# opcode:lb op1:x18; dest:x4; immval:-7; align:3
TEST_LOAD(x6,x14,0,x18,x4,-7,56,lb,3)

# rs1==x24, rd==x0, ea_align == 3 and (imm_val % 4) == 2, 
# opcode:lb op1:x24; dest:x0; immval:6; align:3
TEST_LOAD(x6,x14,0,x24,x0,6,60,lb,3)

# rs1==x1, rd==x13, ea_align == 3 and (imm_val % 4) == 3, 
# opcode:lb op1:x1; dest:x13; immval:7; align:3
TEST_LOAD(x6,x14,0,x1,x13,7,64,lb,3)

# rs1==x8, rd==x21, 
# opcode:lb op1:x8; dest:x21; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x8,x21,-2048,68,lb,0)

# rs1==x19, rd==x7, 
# opcode:lb op1:x19; dest:x7; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x19,x7,-2048,72,lb,0)

# rs1==x3, rd==x22, 
# opcode:lb op1:x3; dest:x22; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x3,x22,-2048,76,lb,0)

# rs1==x30, rd==x12, 
# opcode:lb op1:x30; dest:x12; immval:-2048; align:0
TEST_LOAD(x6,x14,0,x30,x12,-2048,80,lb,0)

# rs1==x14, rd==x25, 
# opcode:lb op1:x14; dest:x25; immval:-2048; align:0
TEST_LOAD(x6,x5,0,x14,x25,-2048,84,lb,0)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x21, rd==x15, 
# opcode:lb op1:x21; dest:x15; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x21,x15,-2048,0,lb,0)

# rs1==x16, rd==x29, 
# opcode:lb op1:x16; dest:x29; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x16,x29,-2048,4,lb,0)

# rs1==x13, rd==x30, 
# opcode:lb op1:x13; dest:x30; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x13,x30,-2048,8,lb,0)

# rs1==x22, rd==x3, 
# opcode:lb op1:x22; dest:x3; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x22,x3,-2048,12,lb,0)

# rs1==x12, rd==x14, 
# opcode:lb op1:x12; dest:x14; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x12,x14,-2048,16,lb,0)

# rs1==x6, rd==x20, 
# opcode:lb op1:x6; dest:x20; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x6,x20,-2048,20,lb,0)

# rs1==x29, rd==x1, 
# opcode:lb op1:x29; dest:x1; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x29,x1,-2048,24,lb,0)

# rs1==x23, rd==x16, 
# opcode:lb op1:x23; dest:x16; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x23,x16,-2048,28,lb,0)

# rs1==x4, rd==x18, 
# opcode:lb op1:x4; dest:x18; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x4,x18,-2048,32,lb,0)

# rd==x6, 
# opcode:lb op1:x12; dest:x6; immval:-2048; align:0
TEST_LOAD(x2,x5,0,x12,x6,-2048,36,lb,0)

# ea_align == 3 and (imm_val % 4) == 2, 
# opcode:lb op1:x10; dest:x11; immval:6; align:3
TEST_LOAD(x2,x5,0,x10,x11,6,40,lb,3)
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
