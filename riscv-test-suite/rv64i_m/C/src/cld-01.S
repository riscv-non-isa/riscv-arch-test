
#This assembly file tests the c.ld instruction of the RISC-V C extension for the cld covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",cld)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 == rd, rd==x11, rs1==x11, imm_val > 0, 
# opcode: c.ld; op1:x11; dest:x11; op1val:0x0000000000000000; immval:56
TEST_LOAD(x1,x2,0,x11,x11,56,0,c.ld,0x0000000000000000)

# rs1 != rd, rd==x8, rs1==x13, imm_val == 0, 
# opcode: c.ld; op1:x13; dest:x8; op1val:0x0000000000000000; immval:0
TEST_LOAD(x1,x2,0,x13,x8,0,8,c.ld,0x0000000000000000)

# rd==x13, rs1==x15, imm_val == 8, 
# opcode: c.ld; op1:x15; dest:x13; op1val:0x0000000000000000; immval:8
TEST_LOAD(x1,x2,0,x15,x13,8,16,c.ld,0x0000000000000000)

# rd==x15, rs1==x9, imm_val == 16, 
# opcode: c.ld; op1:x9; dest:x15; op1val:0x0000000000000000; immval:16
TEST_LOAD(x1,x2,0,x9,x15,16,24,c.ld,0x0000000000000000)

# rd==x10, rs1==x8, imm_val == 32, 
# opcode: c.ld; op1:x8; dest:x10; op1val:0x0000000000000000; immval:32
TEST_LOAD(x1,x2,0,x8,x10,32,32,c.ld,0x0000000000000000)

# rd==x9, rs1==x14, imm_val == 64, 
# opcode: c.ld; op1:x14; dest:x9; op1val:0x0000000000000000; immval:64
TEST_LOAD(x1,x2,0,x14,x9,64,40,c.ld,0x0000000000000000)

# rd==x14, rs1==x12, imm_val == 128, 
# opcode: c.ld; op1:x12; dest:x14; op1val:0x0000000000000000; immval:128
TEST_LOAD(x1,x2,0,x12,x14,128,48,c.ld,0x0000000000000000)

# rd==x12, rs1==x10, imm_val == 240, 
# opcode: c.ld; op1:x10; dest:x12; op1val:0x0000000000000000; immval:240
TEST_LOAD(x1,x2,0,x10,x12,240,56,c.ld,0x0000000000000000)

# imm_val == 232, 
# opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval:232
TEST_LOAD(x1,x2,0,x11,x10,232,64,c.ld,0x0000000000000000)

# imm_val == 216, 
# opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval:216
TEST_LOAD(x1,x2,0,x11,x10,216,72,c.ld,0x0000000000000000)

# imm_val == 184, 
# opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval:184
TEST_LOAD(x1,x2,0,x11,x10,184,80,c.ld,0x0000000000000000)

# imm_val == 120, 
# opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval:120
TEST_LOAD(x1,x2,0,x11,x10,120,88,c.ld,0x0000000000000000)

# imm_val == 168, 
# opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval:168
TEST_LOAD(x1,x2,0,x11,x10,168,96,c.ld,0x0000000000000000)

# imm_val == 80, 
# opcode: c.ld; op1:x11; dest:x10; op1val:0x0000000000000000; immval:80
TEST_LOAD(x1,x2,0,x11,x10,80,104,c.ld,0x0000000000000000)
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
