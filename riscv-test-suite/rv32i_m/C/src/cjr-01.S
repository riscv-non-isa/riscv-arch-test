
#This assembly file tests the c.jr instruction of the RISC-V C extension for the cjr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjr)

RVTEST_SIGBASE( x11,signature_x11_1)

# rs1==x21, 
# opcode: c.jr; op1:x21
TEST_CJR_OP(x20, x21, x11, 0)

# rs1==x25, 
# opcode: c.jr; op1:x25
TEST_CJR_OP(x20, x25, x11, 4)

# rs1==x15, 
# opcode: c.jr; op1:x15
TEST_CJR_OP(x20, x15, x11, 8)

# rs1==x3, 
# opcode: c.jr; op1:x3
TEST_CJR_OP(x20, x3, x11, 12)

# rs1==x16, 
# opcode: c.jr; op1:x16
TEST_CJR_OP(x20, x16, x11, 16)

# rs1==x28, 
# opcode: c.jr; op1:x28
TEST_CJR_OP(x20, x28, x11, 20)

# rs1==x13, 
# opcode: c.jr; op1:x13
TEST_CJR_OP(x20, x13, x11, 24)

# rs1==x30, 
# opcode: c.jr; op1:x30
TEST_CJR_OP(x20, x30, x11, 28)

# rs1==x18, 
# opcode: c.jr; op1:x18
TEST_CJR_OP(x20, x18, x11, 32)

# rs1==x7, 
# opcode: c.jr; op1:x7
TEST_CJR_OP(x20, x7, x11, 36)

# rs1==x14, 
# opcode: c.jr; op1:x14
TEST_CJR_OP(x20, x14, x11, 40)

# rs1==x12, 
# opcode: c.jr; op1:x12
TEST_CJR_OP(x20, x12, x11, 44)

# rs1==x2, 
# opcode: c.jr; op1:x2
TEST_CJR_OP(x20, x2, x11, 48)

# rs1==x8, 
# opcode: c.jr; op1:x8
TEST_CJR_OP(x20, x8, x11, 52)

# rs1==x19, 
# opcode: c.jr; op1:x19
TEST_CJR_OP(x20, x19, x11, 56)

# rs1==x27, 
# opcode: c.jr; op1:x27
TEST_CJR_OP(x20, x27, x11, 60)

# rs1==x17, 
# opcode: c.jr; op1:x17
TEST_CJR_OP(x20, x17, x11, 64)

# rs1==x9, 
# opcode: c.jr; op1:x9
TEST_CJR_OP(x20, x9, x11, 68)

# rs1==x5, 
# opcode: c.jr; op1:x5
TEST_CJR_OP(x20, x5, x11, 72)

# rs1==x22, 
# opcode: c.jr; op1:x22
TEST_CJR_OP(x20, x22, x11, 76)

# rs1==x24, 
# opcode: c.jr; op1:x24
TEST_CJR_OP(x20, x24, x11, 80)

# rs1==x26, 
# opcode: c.jr; op1:x26
TEST_CJR_OP(x20, x26, x11, 84)

# rs1==x6, 
# opcode: c.jr; op1:x6
TEST_CJR_OP(x20, x6, x11, 88)

# rs1==x4, 
# opcode: c.jr; op1:x4
TEST_CJR_OP(x20, x4, x11, 92)

# rs1==x1, 
# opcode: c.jr; op1:x1
TEST_CJR_OP(x20, x1, x11, 96)

# rs1==x23, 
# opcode: c.jr; op1:x23
TEST_CJR_OP(x20, x23, x11, 100)

# rs1==x29, 
# opcode: c.jr; op1:x29
TEST_CJR_OP(x2, x29, x11, 104)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x31, 
# opcode: c.jr; op1:x31
TEST_CJR_OP(x2, x31, x1, 0)

# rs1==x20, 
# opcode: c.jr; op1:x20
TEST_CJR_OP(x2, x20, x1, 4)

# rs1==x11, 
# opcode: c.jr; op1:x11
TEST_CJR_OP(x2, x11, x1, 8)

# rs1==x10, 
# opcode: c.jr; op1:x10
TEST_CJR_OP(x2, x10, x1, 12)
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

signature_x11_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x11_1:
    .fill 27*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
