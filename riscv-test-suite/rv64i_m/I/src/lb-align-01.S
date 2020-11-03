
#This assembly file tests the lb instruction of the RISC-V I extension for the lb-align covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lb-align)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 == rd, rs1==x9, rd==x9, ea_align == 0 and (imm_val % 4) == 0, imm_val > 0
# opcode:lb op1:x9; dest:x9; immval:4; align:0
TEST_LOAD(x1,x7,0,x9,x9,4,0,lb,0)

# rs1 != rd, rs1==x3, rd==x14, ea_align == 0 and (imm_val % 4) == 1, 
# opcode:lb op1:x3; dest:x14; immval:1; align:0
TEST_LOAD(x1,x7,0,x3,x14,1,8,lb,0)

# rs1==x21, rd==x30, ea_align == 0 and (imm_val % 4) == 2, 
# opcode:lb op1:x21; dest:x30; immval:6; align:0
TEST_LOAD(x1,x7,0,x21,x30,6,16,lb,0)

# rs1==x2, rd==x16, ea_align == 0 and (imm_val % 4) == 3, imm_val < 0
# opcode:lb op1:x2; dest:x16; immval:-1025; align:0
TEST_LOAD(x1,x7,0,x2,x16,-1025,24,lb,0)

# rs1==x6, rd==x4, ea_align == 2 and (imm_val % 4) == 0, 
# opcode:lb op1:x6; dest:x4; immval:-8; align:2
TEST_LOAD(x1,x7,0,x6,x4,-8,32,lb,2)

# rs1==x8, rd==x28, ea_align == 2 and (imm_val % 4) == 1, 
# opcode:lb op1:x8; dest:x28; immval:-7; align:2
TEST_LOAD(x1,x7,0,x8,x28,-7,40,lb,2)

# rs1==x22, rd==x0, ea_align == 2 and (imm_val % 4) == 2, 
# opcode:lb op1:x22; dest:x0; immval:6; align:2
TEST_LOAD(x1,x7,0,x22,x0,6,48,lb,2)

# rs1==x26, rd==x19, ea_align == 2 and (imm_val % 4) == 3, 
# opcode:lb op1:x26; dest:x19; immval:-65; align:2
TEST_LOAD(x1,x7,0,x26,x19,-65,56,lb,2)

# rs1==x17, rd==x8, ea_align == 1 and (imm_val % 4) == 0, 
# opcode:lb op1:x17; dest:x8; immval:128; align:1
TEST_LOAD(x1,x7,0,x17,x8,128,64,lb,1)

# rs1==x5, rd==x2, ea_align == 1 and (imm_val % 4) == 1, 
# opcode:lb op1:x5; dest:x2; immval:-7; align:1
TEST_LOAD(x1,x7,0,x5,x2,-7,72,lb,1)

# rs1==x23, rd==x11, imm_val == 0, 
# opcode:lb op1:x23; dest:x11; immval:0; align:0
TEST_LOAD(x1,x7,0,x23,x11,0,80,lb,0)

# rs1==x11, rd==x26, ea_align == 1 and (imm_val % 4) == 2, 
# opcode:lb op1:x11; dest:x26; immval:2; align:1
TEST_LOAD(x1,x7,0,x11,x26,2,88,lb,1)

# rs1==x14, rd==x18, ea_align == 1 and (imm_val % 4) == 3, 
# opcode:lb op1:x14; dest:x18; immval:-1; align:1
TEST_LOAD(x1,x7,0,x14,x18,-1,96,lb,1)

# rs1==x18, rd==x29, ea_align == 3 and (imm_val % 4) == 0, 
# opcode:lb op1:x18; dest:x29; immval:-2048; align:3
TEST_LOAD(x1,x7,0,x18,x29,-2048,104,lb,3)

# rs1==x19, rd==x12, ea_align == 3 and (imm_val % 4) == 1, 
# opcode:lb op1:x19; dest:x12; immval:-7; align:3
TEST_LOAD(x1,x7,0,x19,x12,-7,112,lb,3)

# rs1==x4, rd==x17, ea_align == 3 and (imm_val % 4) == 2, 
# opcode:lb op1:x4; dest:x17; immval:-1366; align:3
TEST_LOAD(x1,x7,0,x4,x17,-1366,120,lb,3)

# rs1==x27, rd==x22, ea_align == 3 and (imm_val % 4) == 3, 
# opcode:lb op1:x27; dest:x22; immval:-1; align:3
TEST_LOAD(x1,x7,0,x27,x22,-1,128,lb,3)

# rs1==x10, rd==x13, 
# opcode:lb op1:x10; dest:x13; immval:-2048; align:0
TEST_LOAD(x1,x7,0,x10,x13,-2048,136,lb,0)

# rs1==x24, rd==x31, 
# opcode:lb op1:x24; dest:x31; immval:-2048; align:0
TEST_LOAD(x1,x7,0,x24,x31,-2048,144,lb,0)

# rs1==x25, rd==x5, 
# opcode:lb op1:x25; dest:x5; immval:-2048; align:0
TEST_LOAD(x1,x7,0,x25,x5,-2048,152,lb,0)

# rs1==x16, rd==x24, 
# opcode:lb op1:x16; dest:x24; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x16,x24,-2048,160,lb,0)

# rs1==x31, rd==x10, 
# opcode:lb op1:x31; dest:x10; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x31,x10,-2048,168,lb,0)

# rs1==x15, rd==x23, 
# opcode:lb op1:x15; dest:x23; immval:-2048; align:0
TEST_LOAD(x1,x4,0,x15,x23,-2048,176,lb,0)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x28, rd==x7, 
# opcode:lb op1:x28; dest:x7; immval:-2048; align:0
TEST_LOAD(x2,x4,0,x28,x7,-2048,0,lb,0)

# rs1==x7, rd==x1, 
# opcode:lb op1:x7; dest:x1; immval:-2048; align:0
TEST_LOAD(x2,x4,0,x7,x1,-2048,8,lb,0)

# rs1==x13, rd==x3, 
# opcode:lb op1:x13; dest:x3; immval:-2048; align:0
TEST_LOAD(x2,x4,0,x13,x3,-2048,16,lb,0)

# rs1==x12, rd==x25, 
# opcode:lb op1:x12; dest:x25; immval:-2048; align:0
TEST_LOAD(x2,x4,0,x12,x25,-2048,24,lb,0)

# rs1==x1, rd==x15, 
# opcode:lb op1:x1; dest:x15; immval:-2048; align:0
TEST_LOAD(x2,x4,0,x1,x15,-2048,32,lb,0)

# rs1==x20, rd==x6, 
# opcode:lb op1:x20; dest:x6; immval:-2048; align:0
TEST_LOAD(x2,x4,0,x20,x6,-2048,40,lb,0)

# rs1==x29, rd==x27, 
# opcode:lb op1:x29; dest:x27; immval:-2048; align:0
TEST_LOAD(x2,x4,0,x29,x27,-2048,48,lb,0)

# rs1==x30, rd==x21, 
# opcode:lb op1:x30; dest:x21; immval:-2048; align:0
TEST_LOAD(x2,x4,0,x30,x21,-2048,56,lb,0)

# rd==x20, 
# opcode:lb op1:x13; dest:x20; immval:-2048; align:0
TEST_LOAD(x2,x4,0,x13,x20,-2048,64,lb,0)

# ea_align == 2 and (imm_val % 4) == 2, 
# opcode:lb op1:x10; dest:x11; immval:6; align:2
TEST_LOAD(x2,x4,0,x10,x11,6,72,lb,2)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 10*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
