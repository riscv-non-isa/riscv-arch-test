// -----------
// Copyright (c) 2024. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file does a simple test of an mcontrol6 read trigger.  It will
// probably be replaced with a more thorough test. It's intended to show how to
// write Sdtrig tests in this test infrastructure.
// 
#include "model_test.h"
#include "arch_test.h"
#include "debug_defines.h"

# Test Virtual Machine (TVM) used by program.
RVTEST_ISA("RV32I_Sdtrig_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
  RVTEST_CASE(1,"check ISA:=regex(.*32.*);check ISA:=regex(.*Sdtrig.*);def rvtest_mtrap_routine=True;def TEST_CASE_1=True;",svadu_sv32)

  RVTEST_SIGBASE(x1, signature_x1_0)

  csrw  CSR_TSELECT, zero

  // Write 0 to tdata1
  csrw  CSR_TDATA1, zero

  // Write desired values to tdata2 and tdata3.
  la    t1, break_here
  csrw  CSR_TDATA2, t1
  csrr  t2, CSR_TDATA2
  bne   t1, t2, unsupported
  RVTEST_SIGUPD(x1, t2)

  // Write desired value to tdata1.
  LI(t1, CSR_TDATA1_TYPE_MCONTROL6 | \
            CSR_MCONTROL6_ACTION_BREAKPOINT | \
            CSR_MCONTROL6_SELECT_ADDRESS | \
            CSR_MCONTROL6_SIZE_ANY | \
            CSR_MCONTROL6_ACTION_BREAKPOINT | \
            CSR_MCONTROL6_CHAIN_DISABLED | \
            CSR_MCONTROL6_MATCH_EQUAL | \
            CSR_MCONTROL6_M | \
            CSR_MCONTROL6_UNCERTAINEN_ENABLED | \
            CSR_MCONTROL6_EXECUTE)
  csrw  CSR_TDATA1, t1
  csrr  t2, CSR_TDATA1
  // If the trigger is not supported, the value we read back is not specified,
  // so don't make it part of the signature.
  bne   t1, t2, unsupported
  RVTEST_SIGUPD(x1, t2)

  // The default trap handler will log mepc (and some other CSRs) to the
  // signature, so there's no need to do any testing that the trap handler was
  // invoked from the right place etc.
break_here:
  nop

  j    end

unsupported:
  LI(t1, 0x21737570)
  RVTEST_SIGUPD(x1, t1)
  j     end

#endif
end:
RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
  .align 12
   page_4k:
  .fill   4096/REGWIDTH, REGWIDTH, 0
RVTEST_DATA_END

  .align 12
rvtest_Sroot_pg_tbl:
  .fill   4096/REGWIDTH, REGWIDTH, 0

# Output data section.
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

signature_x1_0:
  .fill 128*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine
mtrap_sigptr:
  .fill 128*4, 4, 0xdeadbeef
#endif

#ifdef rvtest_gpr_save
gpr_save:
  .fill 32*(XLEN/32), 4, 0xdeadbeef
#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
