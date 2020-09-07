#define rvtest_mtrap_routine
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32I")

# Test code region
RVMODEL_BOOT
RVTEST_CODE_BEGIN

    RVMODEL_IO_INIT
    RVMODEL_IO_ASSERT_GPR_EQ(x30, x0, 0x00000000)
    RVMODEL_IO_WRITE_STR(x30, "# Test Begin Reserved reg x31\n")

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"// check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",ecall)

    RVMODEL_IO_CHECK()
    # ---------------------------------------------------------------------------------------------
    RVMODEL_IO_WRITE_STR(x30, "# Test part A - test EBREAK\n");

    la      x1, test_A_res
    
    li      x2, 0x11111111
    ecall
    sw      x0, 0(x1)
    sw      x2, 4(x1)
    
    RVMODEL_IO_WRITE_STR(x30, "# Test part A1  - Complete\n");

    RVMODEL_IO_WRITE_STR(x30, "# Test End\n")

#endif

 # ---------------------------------------------------------------------------------------------
    # HALT
    RVMODEL_HALT

RVTEST_CODE_END

RVTEST_DATA_BEGIN
# Input data section.
    .data
    .align 4
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
    .align 4

test_A_res:
    .fill 2, 4, 0xafacadee

mtrap_sigptr:
  .fill 4, 4, 0xdeaddead

RVMODEL_DATA_END
