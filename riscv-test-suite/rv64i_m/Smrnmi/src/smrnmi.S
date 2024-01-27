// -----------
// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the Smrnmi extension
// 

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV64I_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN


#ifdef TEST_CASE_1
RVTEST_CASE(0,"//check ISA:=regex(.*64.*I.*Zicsr.*Smrnmi); def TEST_CASE_1=True",smrnmi)

  la x15, test_sig
  # Update initial value of Smrnmi CSRs to signature
  csrr x1, CSR_MNSCRATCH
  sd x1, 0(x15)
  csrr x1, CSR_MNEPC
  sd x1, 8(x15)
  csrr x1, CSR_MNCAUSE
  sd x1, 16(x15)
  csrr x1, CSR_MNSTATUS
  sd x1, 24(x15)
  addi x15, x15, 32

  # write Smrnmi CSRs
  li x1, 0xAAAAAAAAAAAAAAAA
  csrw CSR_MNSCRATCH, x1
  csrw CSR_MNEPC, x1
  li x1, 0x5AAAAAAAAAAAAAAA
  csrw CSR_MNCAUSE, x1

  # read and update Smrnmi CSRs to signature
  csrr x1, CSR_MNSCRATCH
  sd x1, 0(x15)
  csrr x1, CSR_MNEPC
  sd x1, 8(x15)
  csrr x1, CSR_MNCAUSE
  sd x1, 16(x15)
  addi x15, x15, 24

  # MNPP is WARL
  li x1, (1 << 11)
  csrw CSR_MNSTATUS, x1
  csrr x1, CSR_MNSTATUS
  sd x1, 0(x15)
  li x1, (0 << 11)
  csrw CSR_MNSTATUS, x1
  csrr x1, CSR_MNSTATUS
  sd x1, 8(x15)
  li x1, (2 << 11)
  csrw CSR_MNSTATUS, x1
  csrr x1, CSR_MNSTATUS
  sd x1, 16(x15)
  li x1, (3 << 11)
  csrw CSR_MNSTATUS, x1
  csrr x1, CSR_MNSTATUS
  sd x1, 24(x15)
  addi x15, x15, 32

  # Set NMIE to enable RNMI
  li x1, MNSTATUS_NMIE
  csrw CSR_MNSTATUS, x1

  # Wait for a RNMI
1: 
  csrr x2, CSR_MNSCRATCH
  beqz x2, 3f 
  j 1b

  # RNMI interrupt trap handler
    .align 8
rnmi_int_trap_vec:
  # detect if first RNMI
  csrr x1, CSR_MNSCRATCH
  beqz x1, 2f

  # update signature with Smrnmi CSRs
  csrr x1, CSR_MNSCRATCH
  sd x1, 0(x15)
  csrr x1, CSR_MNEPC
  sd x1, 8(x15)
  csrr x1, CSR_MNCAUSE
  sd x1, 16(x15)
  csrr x1, CSR_MNSTATUS
  sd x1, 24(x15)
  addi x15, x15, 32

  # Cause an exception in Smrnmi NMI trap handler
  # on first entry to trap handler 
  ecall

  # Update to indicate non-first
  csrw CSR_MNSCRATCH, x0

2:
  .word 0x70200073  # mnret

  # RNMI exception trap handler
    .align 8
rnmi_exc_trap_vec:
  # update signature with M* CSRs
  csrr x1, CSR_MSTATUS
  sd x1, 0(x15)
  csrr x1, CSR_MCAUSE
  sd x1, 8(x15)
  csrr x1, CSR_MEPC
  sd x1, 16(x15)
  addi x15, x15, 24

  # Return to trap handler
  csrr x1, CSR_MEPC
  addi x1, x1, 4
  csrw CSR_MEPC, x1
  mret

#endif

3:
RVTEST_CODE_END
RVMODEL_HALT

# Input data section.
RVTEST_DATA_BEGIN
    .align 4
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

test_sig:
    .fill 32*(XLEN/32),4,0xdeadbeef


#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
