
#This assembly file tests the c.nop instruction of the RISC-V C extension for the cnop covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cnop)

RVTEST_SIGBASE( x1,signature_x1_1)

# imm_val == 1, 
# opcode:c.nop; immval:1
TEST_CNOP_OP(c.nop, x2, 1, x1, 0)

# imm_val == 2, 
# opcode:c.nop; immval:2
TEST_CNOP_OP(c.nop, x2, 2, x1, 8)

# imm_val == 4, 
# opcode:c.nop; immval:4
TEST_CNOP_OP(c.nop, x2, 4, x1, 16)

# imm_val == 8, 
# opcode:c.nop; immval:8
TEST_CNOP_OP(c.nop, x2, 8, x1, 24)

# imm_val == 16, 
# opcode:c.nop; immval:16
TEST_CNOP_OP(c.nop, x2, 16, x1, 32)

# imm_val == -32, 
# opcode:c.nop; immval:-32
TEST_CNOP_OP(c.nop, x2, -32, x1, 40)

# imm_val == -2, 
# opcode:c.nop; immval:-2
TEST_CNOP_OP(c.nop, x2, -2, x1, 48)

# imm_val == -3, 
# opcode:c.nop; immval:-3
TEST_CNOP_OP(c.nop, x2, -3, x1, 56)

# imm_val == -5, 
# opcode:c.nop; immval:-5
TEST_CNOP_OP(c.nop, x2, -5, x1, 64)

# imm_val == -9, 
# opcode:c.nop; immval:-9
TEST_CNOP_OP(c.nop, x2, -9, x1, 72)

# imm_val == -17, 
# opcode:c.nop; immval:-17
TEST_CNOP_OP(c.nop, x2, -17, x1, 80)

# imm_val == 31, 
# opcode:c.nop; immval:31
TEST_CNOP_OP(c.nop, x2, 31, x1, 88)

# imm_val == 21, 
# opcode:c.nop; immval:21
TEST_CNOP_OP(c.nop, x2, 21, x1, 96)

# imm_val == -22, 
# opcode:c.nop; immval:-22
TEST_CNOP_OP(c.nop, x2, -22, x1, 104)
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
