
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clw)
la x1,signature_x1_1
TEST_LOAD(x1,x2,0,x14,x15,124,0,c.lw,0)
TEST_LOAD(x1,x2,0,x15,x14,0,8,c.lw,0)
TEST_LOAD(x1,x2,0,x12,x13,4,16,c.lw,0)
TEST_LOAD(x1,x2,0,x13,x12,8,24,c.lw,0)
TEST_LOAD(x1,x2,0,x10,x11,16,32,c.lw,0)
TEST_LOAD(x1,x2,0,x11,x10,32,40,c.lw,0)
TEST_LOAD(x1,x2,0,x8,x9,64,48,c.lw,0)
TEST_LOAD(x1,x2,0,x9,x8,120,56,c.lw,0)
TEST_LOAD(x1,x2,0,x15,x15,116,64,c.lw,0)
TEST_LOAD(x1,x2,0,x11,x10,108,72,c.lw,0)
TEST_LOAD(x1,x2,0,x11,x10,92,80,c.lw,0)
TEST_LOAD(x1,x2,0,x11,x10,60,88,c.lw,0)
TEST_LOAD(x1,x2,0,x11,x10,84,96,c.lw,0)
TEST_LOAD(x1,x2,0,x11,x10,40,104,c.lw,0)
TEST_LOAD(x1,x2,0,x11,x10,116,112,c.lw,0)
#endif


RVMODEL_HALT
RVTEST_CODE_END

RVTEST_DATA_BEGIN
.align 4
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 15*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
