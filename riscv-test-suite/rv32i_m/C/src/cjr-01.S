
#This assembly file tests the c.jr instruction of the RISC-V C extension for the cjr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjr)

la x1,signature_x1_1

# rs1==x17, 
# opcode: c.jr; op1:x17
TEST_CJR_OP(x9, x17, x1, 0)

# rs1==x30, 
# opcode: c.jr; op1:x30
TEST_CJR_OP(x9, x30, x1, 4)

# rs1==x28, 
# opcode: c.jr; op1:x28
TEST_CJR_OP(x9, x28, x1, 8)

# rs1==x12, 
# opcode: c.jr; op1:x12
TEST_CJR_OP(x9, x12, x1, 12)

# rs1==x26, 
# opcode: c.jr; op1:x26
TEST_CJR_OP(x9, x26, x1, 16)

# rs1==x31, 
# opcode: c.jr; op1:x31
TEST_CJR_OP(x9, x31, x1, 20)

# rs1==x5, 
# opcode: c.jr; op1:x5
TEST_CJR_OP(x9, x5, x1, 24)

# rs1==x11, 
# opcode: c.jr; op1:x11
TEST_CJR_OP(x9, x11, x1, 28)

# rs1==x18, 
# opcode: c.jr; op1:x18
TEST_CJR_OP(x9, x18, x1, 32)

# rs1==x4, 
# opcode: c.jr; op1:x4
TEST_CJR_OP(x9, x4, x1, 36)

# rs1==x27, 
# opcode: c.jr; op1:x27
TEST_CJR_OP(x9, x27, x1, 40)

# rs1==x15, 
# opcode: c.jr; op1:x15
TEST_CJR_OP(x9, x15, x1, 44)

# rs1==x13, 
# opcode: c.jr; op1:x13
TEST_CJR_OP(x9, x13, x1, 48)

# rs1==x29, 
# opcode: c.jr; op1:x29
TEST_CJR_OP(x9, x29, x1, 52)

# rs1==x8, 
# opcode: c.jr; op1:x8
TEST_CJR_OP(x9, x8, x1, 56)

# rs1==x3, 
# opcode: c.jr; op1:x3
TEST_CJR_OP(x9, x3, x1, 60)

# rs1==x24, 
# opcode: c.jr; op1:x24
TEST_CJR_OP(x9, x24, x1, 64)

# rs1==x7, 
# opcode: c.jr; op1:x7
TEST_CJR_OP(x9, x7, x1, 68)

# rs1==x19, 
# opcode: c.jr; op1:x19
TEST_CJR_OP(x9, x19, x1, 72)

# rs1==x22, 
# opcode: c.jr; op1:x22
TEST_CJR_OP(x9, x22, x1, 76)

# rs1==x6, 
# opcode: c.jr; op1:x6
TEST_CJR_OP(x9, x6, x1, 80)

# rs1==x14, 
# opcode: c.jr; op1:x14
TEST_CJR_OP(x9, x14, x1, 84)

# rs1==x2, 
# opcode: c.jr; op1:x2
TEST_CJR_OP(x9, x2, x1, 88)

# rs1==x16, 
# opcode: c.jr; op1:x16
TEST_CJR_OP(x9, x16, x1, 92)

# rs1==x25, 
# opcode: c.jr; op1:x25
TEST_CJR_OP(x9, x25, x1, 96)

# rs1==x21, 
# opcode: c.jr; op1:x21
TEST_CJR_OP(x9, x21, x1, 100)

# rs1==x20, 
# opcode: c.jr; op1:x20
TEST_CJR_OP(x3, x20, x1, 104)
la x2,signature_x2_0

# rs1==x1, 
# opcode: c.jr; op1:x1
TEST_CJR_OP(x3, x1, x2, 0)

# rs1==x9, 
# opcode: c.jr; op1:x9
TEST_CJR_OP(x3, x9, x2, 4)

# rs1==x23, 
# opcode: c.jr; op1:x23
TEST_CJR_OP(x3, x23, x2, 8)

# rs1==x10, 
# opcode: c.jr; op1:x10
TEST_CJR_OP(x3, x10, x2, 12)

# 
# opcode: c.jr; op1:x10
TEST_CJR_OP(x3, x10, x2, 16)
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
    .fill 27*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 5*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
