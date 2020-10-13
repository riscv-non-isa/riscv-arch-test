
#This assembly file tests the c.jalr instruction of the RISC-V C extension for the cjalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjalr)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1==x16, 
# opcode:c.jalr; op1:x16
TEST_CJALR_OP(x10, x16, x5, 0)

# rs1==x2, 
# opcode:c.jalr; op1:x2
TEST_CJALR_OP(x10, x2, x5, 4)

# rs1==x26, 
# opcode:c.jalr; op1:x26
TEST_CJALR_OP(x10, x26, x5, 8)

# rs1==x25, 
# opcode:c.jalr; op1:x25
TEST_CJALR_OP(x10, x25, x5, 12)

# rs1==x29, 
# opcode:c.jalr; op1:x29
TEST_CJALR_OP(x10, x29, x5, 16)

# rs1==x3, 
# opcode:c.jalr; op1:x3
TEST_CJALR_OP(x10, x3, x5, 20)

# rs1==x23, 
# opcode:c.jalr; op1:x23
TEST_CJALR_OP(x10, x23, x5, 24)

# rs1==x1, 
# opcode:c.jalr; op1:x1
TEST_CJALR_OP(x10, x1, x5, 28)

# rs1==x20, 
# opcode:c.jalr; op1:x20
TEST_CJALR_OP(x10, x20, x5, 32)

# rs1==x22, 
# opcode:c.jalr; op1:x22
TEST_CJALR_OP(x10, x22, x5, 36)

# rs1==x21, 
# opcode:c.jalr; op1:x21
TEST_CJALR_OP(x10, x21, x5, 40)

# rs1==x28, 
# opcode:c.jalr; op1:x28
TEST_CJALR_OP(x10, x28, x5, 44)

# rs1==x27, 
# opcode:c.jalr; op1:x27
TEST_CJALR_OP(x10, x27, x5, 48)

# rs1==x24, 
# opcode:c.jalr; op1:x24
TEST_CJALR_OP(x10, x24, x5, 52)

# rs1==x15, 
# opcode:c.jalr; op1:x15
TEST_CJALR_OP(x10, x15, x5, 56)

# rs1==x6, 
# opcode:c.jalr; op1:x6
TEST_CJALR_OP(x10, x6, x5, 60)

# rs1==x4, 
# opcode:c.jalr; op1:x4
TEST_CJALR_OP(x10, x4, x5, 64)

# rs1==x31, 
# opcode:c.jalr; op1:x31
TEST_CJALR_OP(x10, x31, x5, 68)

# rs1==x8, 
# opcode:c.jalr; op1:x8
TEST_CJALR_OP(x10, x8, x5, 72)

# rs1==x11, 
# opcode:c.jalr; op1:x11
TEST_CJALR_OP(x10, x11, x5, 76)

# rs1==x14, 
# opcode:c.jalr; op1:x14
TEST_CJALR_OP(x10, x14, x5, 80)

# rs1==x30, 
# opcode:c.jalr; op1:x30
TEST_CJALR_OP(x10, x30, x5, 84)

# rs1==x18, 
# opcode:c.jalr; op1:x18
TEST_CJALR_OP(x10, x18, x5, 88)

# rs1==x19, 
# opcode:c.jalr; op1:x19
TEST_CJALR_OP(x10, x19, x5, 92)

# rs1==x9, 
# opcode:c.jalr; op1:x9
TEST_CJALR_OP(x10, x9, x5, 96)

# rs1==x12, 
# opcode:c.jalr; op1:x12
TEST_CJALR_OP(x10, x12, x5, 100)

# rs1==x7, 
# opcode:c.jalr; op1:x7
TEST_CJALR_OP(x10, x7, x5, 104)

# rs1==x17, 
# opcode:c.jalr; op1:x17
TEST_CJALR_OP(x3, x17, x5, 108)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x5, 
# opcode:c.jalr; op1:x5
TEST_CJALR_OP(x3, x5, x2, 0)

# rs1==x13, 
# opcode:c.jalr; op1:x13
TEST_CJALR_OP(x3, x13, x2, 4)

# rs1==x10, 
# opcode:c.jalr; op1:x10
TEST_CJALR_OP(x3, x10, x2, 8)

# 
# opcode:c.jalr; op1:x10
TEST_CJALR_OP(x3, x10, x2, 12)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 4*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
