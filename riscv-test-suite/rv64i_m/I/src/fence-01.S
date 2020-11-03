#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",fence)

la x9,rvtest_data_store
li x8, 0xffffffff
li x7, 0xaaaaaaaa

sw x8, 0(x9)
sw x7, 4(x9)

fence

lw x3, 0(x9)
lw x4, 4(x9)

la x9, signature_x9_1

sw x4, 0(x9)
sw x3, 4(x9)

#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
.align 4
rvtest_data_store:
.word 0xbabecafe
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x9_1:
    .fill 2,4,0xdeadbeef

#ifdef rvtest_gpr_save
gpr_save:
    .fill 32*(XLEN/32), 4, 0xdeadbeef
#endif

RVMODEL_DATA_END
