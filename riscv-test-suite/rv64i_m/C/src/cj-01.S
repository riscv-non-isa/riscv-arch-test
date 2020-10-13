
#This assembly file tests the c.j instruction of the RISC-V C extension for the cj covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cj)

RVTEST_SIGBASE( x1,signature_x1_1)

# imm_val > 0, imm_val == 1024
# opcode:c.j; immval:1024
TEST_CJ_OP(c.j, x2, 1024, 3f, x1, 0)

# imm_val < 0, imm_val == -18
# opcode:c.j; immval:18
TEST_CJ_OP(c.j, x2, 18, 1b, x1, 8)

# imm_val == 16, 
# opcode:c.j; immval:16
TEST_CJ_OP(c.j, x2, 16, 3f, x1, 16)

# imm_val == 32, 
# opcode:c.j; immval:32
TEST_CJ_OP(c.j, x2, 32, 3f, x1, 24)

# imm_val == 64, 
# opcode:c.j; immval:64
TEST_CJ_OP(c.j, x2, 64, 3f, x1, 32)

# imm_val == 128, 
# opcode:c.j; immval:128
TEST_CJ_OP(c.j, x2, 128, 3f, x1, 40)

# imm_val == 256, 
# opcode:c.j; immval:256
TEST_CJ_OP(c.j, x2, 256, 3f, x1, 48)

# imm_val == 512, 
# opcode:c.j; immval:512
TEST_CJ_OP(c.j, x2, 512, 3f, x1, 56)

# imm_val == -10, 
# opcode:c.j; immval:10
TEST_CJ_OP(c.j, x2, 10, 1b, x1, 64)

# imm_val == -34, 
# opcode:c.j; immval:34
TEST_CJ_OP(c.j, x2, 34, 1b, x1, 72)

# imm_val == -1026, 
# opcode:c.j; immval:1026
TEST_CJ_OP(c.j, x2, 1026, 1b, x1, 80)

# imm_val == -1366, 
# opcode:c.j; immval:1366
TEST_CJ_OP(c.j, x2, 1366, 1b, x1, 88)

# imm_val == 1364, 
# opcode:c.j; immval:1364
TEST_CJ_OP(c.j, x2, 1364, 3f, x1, 96)

# imm_val == -66, 
# opcode:c.j; immval:66
TEST_CJ_OP(c.j, x2, 66, 1b, x1, 104)

# imm_val == -130, 
# opcode:c.j; immval:130
TEST_CJ_OP(c.j, x2, 130, 1b, x1, 112)

# imm_val == -258, 
# opcode:c.j; immval:258
TEST_CJ_OP(c.j, x2, 258, 1b, x1, 120)

# imm_val == -514, 
# opcode:c.j; immval:514
TEST_CJ_OP(c.j, x2, 514, 1b, x1, 128)
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
    .fill 17*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
