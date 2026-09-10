// rvtest_invisible_trap_handler.h
// RISC-V Architecture Test Framework — Invisible Trap Handler
//
// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
// SPDX-License-Identifier: Apache-2.0
//
// Invisible trap handler for emulated instructions.
//
// The M-mode trap entry saves T1 through T6 and sp before it enters this code.
// This handler fetches the trapped instruction, calls the DUT hook, and then
// tries the framework time-CSR emulation. A handled instruction resumes without
// a trap signature. An unhandled instruction returns to the normal trap path.
.macro RVTEST_INVISIBLE_TRAP_HANDLER_CODE
  invisible_Mhandler:
    // Reconstruct the illegal instruction.
    // Load with the trapped mode's access rights from mstatus.MPP. SUM and MXR
    // permit reads from executable or readable lower-mode pages.
    csrr    T1, mepc
    li      T3, MSTATUS_MPRV | MSTATUS_SUM | MSTATUS_MXR
    csrrs   T4, mstatus, T3
    lhu     T2, 0(T1)
    andi    T3, T2, 3                         // bits 1:0 identify a compressed instruction
    xori    T3, T3, 3                         // zero means a 32-bit instruction
    bnez    T3, invisible_Minstruction_restore_status
    lhu     T3, 2(T1)
    slli    T3, T3, 16
    or      T2, T2, T3
  invisible_Minstruction_restore_status:
    csrw    mstatus, T4                      // restore mstatus

  invisible_Mcustom:
    // Give the model a chance to emulate the instruction first.
    #ifdef RVMODEL_INVISIBLE_TRAP_HANDLER
      li      T4, 0
      // T1=mepc and T2=instruction are read-only. T3=value to write to rd, T4=action, and T5=scratch.
      RVMODEL_INVISIBLE_TRAP_HANDLER(T1, T2, T3, T4, T5)
      // Action 1 means the model updated all architectural state directly.
      li      T5, 1
      bne     T4, T5, 1f
      j       invisible_Mtrap_return
      1:
        // Action 2 indicates a GPR must be written before returning.
        li      T5, 2
        bne     T4, T5, 1f
        j       invisible_Mwrite_gpr
      1:
        // Action 0 indicates no custom emulation was done.
        beqz    T4, invisible_Mcustom_done

      // An invalid action is an integration error. Report it and stop the test.
      invisible_Minvalid_action:
        LA(a0, invisible_Minvalid_action_str)
        call    rvmodel_io_write_str
        mv      a0, T4
        li      a1, UDB_MXLEN
        call    failedtest_hex_to_str
        LA(a0, ascii_buffer)
        call    rvmodel_io_write_str
        LA(a0, failstr)
        call    rvmodel_io_write_str
        call    rvmodel_halt_fail
      invisible_Mcustom_done:
    #endif

  #ifdef RVTEST_EMULATE_TIME_CSR
  invisible_Mtime:
    // Match CSRRS/CSRRC time reads with rs1/uimm equal to zero.
    LI(     T3, INSN_FIELD_CSR | INSN_FIELD_RS1 | INSN_FIELD_OPCODE | (2 << 12))
    and     T4, T2, T3
    LI(     T3, (CSR_TIME << 20) | (2 << 12) | 0x73)
    beq     T4, T3, invisible_Mtime_check_access
    #if UDB_MXLEN == 32
      LI(     T3, (CSR_TIMEH << 20) | (2 << 12) | 0x73)
      bne     T4, T3, invisible_Mnot_handled
    #else
      j       invisible_Mnot_handled
    #endif
    invisible_Mtime_check_access:
      // Check counter permissions before emulating the missing CSR.
      // TODO: Check hcounteren when H is supported.
      csrr    T4, mstatus
      LI(     T3, MSTATUS_MPP)
      and     T4, T4, T3
      beq     T4, T3, invisible_Mtime_read      // If in M-mode, proceed to read the time CSR
      csrr    T3, mcounteren
      andi    T3, T3, MCOUNTEREN_TIME           // mcounteren.TIME
      beqz    T3, invisible_Mnot_handled
      #ifdef S_SUPPORTED
        bnez    T4, invisible_Mtime_read          // S-mode access only needs mcounteren.TIME
        csrr    T3, scounteren
        andi    T3, T3, MCOUNTEREN_TIME           // U-mode access also needs scounteren.TIME
        beqz    T3, invisible_Mnot_handled
      #endif

    invisible_Mtime_read:
      LI(     T3, RVMODEL_MTIME_ADDRESS)
      #if UDB_MXLEN == 32
        // timeh differs from time in CSR address bit 7, which is
        // instruction bit 27. Convert that bit to byte offset 4 so timeh reads
        // the high word at RVMODEL_MTIME_ADDRESS + 4.
        srli    T4, T2, 27
        andi    T4, T4, 1
        slli    T4, T4, 2
        add     T3, T3, T4
      #endif
      LREG    T3, 0(T3)
      j       invisible_Mwrite_gpr
    #endif

  invisible_Mnot_handled:
    // Keep an unhandled instruction on the normal illegal-instruction path.
    li      T5, CAUSE_ILLEGAL_INSTRUCTION     // the custom hook may use T5 as scratch
    #ifdef S_SUPPORTED
      // medeleg[2] is clear so M-mode can try invisible emulation first. If the
      // trap came from S-mode or U-mode and was not handled, reproduce the
      // architectural effects that direct delegation to S-mode would have made.
      csrr    T1, mstatus
      LI(     T4, MSTATUS_MPP)
      and     T3, T1, T4
      beq     T3, T4, invisible_Mnot_handled_in_M

      // Copy the M-mode trap state to the corresponding S-mode CSRs (xepc, xcause, xtval).
      csrr    T4, mepc
      csrw    sepc, T4
      csrw    scause, T5
      csrr    T4, mtval
      csrw    stval, T4

      // Reproduce S-mode trap entry: SPIE gets the prior SIE value, SIE is cleared,
      // and SPP records whether the interrupted mode was S or U.
      andi    T4, T1, MSTATUS_SIE
      slli    T4, T4, 4                         // SIE -> SPIE
      srli    T3, T1, MPP_LSB
      andi    T3, T3, 1                         // trapped S-mode -> SPP=1
      slli    T3, T3, 8
      or      T3, T3, T4
      LI(     T4, MSTATUS_SIE | MSTATUS_SPIE | MSTATUS_SPP)
      csrc    mstatus, T4
      csrs    mstatus, T3

      // Make the final mret enter S-mode at the stvec base. Exceptions do not
      // use a vectored offset, even when stvec.MODE is vectored.
      LI(     T4, MSTATUS_MPP)
      csrc    mstatus, T4
      LI(     T4, MPP_SMODE)
      csrs    mstatus, T4
      csrr    T1, stvec
      andi    T1, T1, -4
      csrw    mepc, T1
      // Restore the saved M-mode registers, then execute mret into S-mode.
      SREG    zero, rvmodel_sv_off(sp)           // clear the fast-handler handoff marker
      LA(     T4, resto_Mrtn)
      jr      T4
    #endif

  invisible_Mnot_handled_in_M:
    #ifdef RVTEST_USE_FAST_TRAP_HANDLER
      LREG    T4, rvmodel_sv_off(sp)
      bnez    T4, invisible_Mfast_not_handled
    #endif
    j       invisible_Mnormal_trap

  #ifdef RVTEST_USE_FAST_TRAP_HANDLER
    invisible_Mfast_not_handled:
      // Restore the saved registers and resume the fast illegal-instruction path.
      SREG    zero, rvmodel_sv_off(sp)
      LREG    T1, trap_sv_off+1*REGWIDTH(sp)
      LREG    T2, trap_sv_off+2*REGWIDTH(sp)
      LREG    T3, trap_sv_off+3*REGWIDTH(sp)
      LREG    T4, trap_sv_off+4*REGWIDTH(sp)
      LREG    T5, trap_sv_off+5*REGWIDTH(sp)
      LREG    T6, trap_sv_off+6*REGWIDTH(sp)
      LREG    sp, trap_sv_off+7*REGWIDTH(sp)
      j       fast_Millegalinstruction
  #endif

  invisible_Mnormal_trap:
    // Continue through the regular trap handler.
    SREG    zero, rvmodel_sv_off(sp)           // clear the fast-handler handoff marker
    LA(     T4, invisible_Mcontinue)
    jr      T4

  // Write T3 to bits 11:7 (rd) of a 32-bit instruction. Writes to registers
  // saved by the trap entry update their save slots so the restore keeps the result.
  invisible_Mwrite_gpr:
    srli    T4, T2, 7
    andi    T4, T4, (INSN_FIELD_RD >> 7)
  #if UDB_MXLEN == 32
    slli    T4, T4, 2
  #else
    slli    T4, T4, 3
  #endif
    LA(     T1, invisible_Mgpr_table)
    add     T4, T4, T1
    LREG    T4, 0(T4)
    jr      T4

    .balign REGWIDTH
  invisible_Mgpr_table:
    RVTEST_WORD_PTR invisible_Mwrite_x0
    RVTEST_WORD_PTR invisible_Mwrite_x1
    RVTEST_WORD_PTR invisible_Mwrite_x2
    RVTEST_WORD_PTR invisible_Mwrite_x3
    RVTEST_WORD_PTR invisible_Mwrite_x4
    RVTEST_WORD_PTR invisible_Mwrite_x5
    RVTEST_WORD_PTR invisible_Mwrite_x6
    RVTEST_WORD_PTR invisible_Mwrite_x7
    RVTEST_WORD_PTR invisible_Mwrite_x8
    RVTEST_WORD_PTR invisible_Mwrite_x9
    RVTEST_WORD_PTR invisible_Mwrite_x10
    RVTEST_WORD_PTR invisible_Mwrite_x11
    RVTEST_WORD_PTR invisible_Mwrite_x12
    RVTEST_WORD_PTR invisible_Mwrite_x13
    RVTEST_WORD_PTR invisible_Mwrite_x14
    RVTEST_WORD_PTR invisible_Mwrite_x15
  #ifndef E_SUPPORTED
    RVTEST_WORD_PTR invisible_Mwrite_x16
    RVTEST_WORD_PTR invisible_Mwrite_x17
    RVTEST_WORD_PTR invisible_Mwrite_x18
    RVTEST_WORD_PTR invisible_Mwrite_x19
    RVTEST_WORD_PTR invisible_Mwrite_x20
    RVTEST_WORD_PTR invisible_Mwrite_x21
    RVTEST_WORD_PTR invisible_Mwrite_x22
    RVTEST_WORD_PTR invisible_Mwrite_x23
    RVTEST_WORD_PTR invisible_Mwrite_x24
    RVTEST_WORD_PTR invisible_Mwrite_x25
    RVTEST_WORD_PTR invisible_Mwrite_x26
    RVTEST_WORD_PTR invisible_Mwrite_x27
    RVTEST_WORD_PTR invisible_Mwrite_x28
    RVTEST_WORD_PTR invisible_Mwrite_x29
    RVTEST_WORD_PTR invisible_Mwrite_x30
    RVTEST_WORD_PTR invisible_Mwrite_x31
  #else
    .rept 16
    RVTEST_WORD_PTR invisible_Mwrite_x0
    .endr
  #endif

  invisible_Mwrite_x0:  j invisible_Mtrap_return
  invisible_Mwrite_x1:  mv x1, T3;  j invisible_Mtrap_return
  invisible_Mwrite_x2:  SREG T3, trap_sv_off+7*REGWIDTH(sp); j invisible_Mtrap_return
  invisible_Mwrite_x3:  mv x3, T3;  j invisible_Mtrap_return
  invisible_Mwrite_x4:  mv x4, T3;  j invisible_Mtrap_return
  invisible_Mwrite_x5:  mv x5, T3;  j invisible_Mtrap_return
  invisible_Mwrite_x6:  SREG T3, trap_sv_off+1*REGWIDTH(sp); j invisible_Mtrap_return
  invisible_Mwrite_x7:  SREG T3, trap_sv_off+2*REGWIDTH(sp); j invisible_Mtrap_return
  invisible_Mwrite_x8:  SREG T3, trap_sv_off+3*REGWIDTH(sp); j invisible_Mtrap_return
  invisible_Mwrite_x9:  SREG T3, trap_sv_off+4*REGWIDTH(sp); j invisible_Mtrap_return
  invisible_Mwrite_x10: mv x10, T3; j invisible_Mtrap_return
  invisible_Mwrite_x11: mv x11, T3; j invisible_Mtrap_return
  invisible_Mwrite_x12: mv x12, T3; j invisible_Mtrap_return
  invisible_Mwrite_x13: mv x13, T3; j invisible_Mtrap_return
  invisible_Mwrite_x14: SREG T3, trap_sv_off+5*REGWIDTH(sp); j invisible_Mtrap_return
  invisible_Mwrite_x15: SREG T3, trap_sv_off+6*REGWIDTH(sp); j invisible_Mtrap_return
  #ifndef E_SUPPORTED
    invisible_Mwrite_x16: mv x16, T3; j invisible_Mtrap_return
    invisible_Mwrite_x17: mv x17, T3; j invisible_Mtrap_return
    invisible_Mwrite_x18: mv x18, T3; j invisible_Mtrap_return
    invisible_Mwrite_x19: mv x19, T3; j invisible_Mtrap_return
    invisible_Mwrite_x20: mv x20, T3; j invisible_Mtrap_return
    invisible_Mwrite_x21: mv x21, T3; j invisible_Mtrap_return
    invisible_Mwrite_x22: mv x22, T3; j invisible_Mtrap_return
    invisible_Mwrite_x23: mv x23, T3; j invisible_Mtrap_return
    invisible_Mwrite_x24: mv x24, T3; j invisible_Mtrap_return
    invisible_Mwrite_x25: mv x25, T3; j invisible_Mtrap_return
    invisible_Mwrite_x26: mv x26, T3; j invisible_Mtrap_return
    invisible_Mwrite_x27: mv x27, T3; j invisible_Mtrap_return
    invisible_Mwrite_x28: mv x28, T3; j invisible_Mtrap_return
    invisible_Mwrite_x29: mv x29, T3; j invisible_Mtrap_return
    invisible_Mwrite_x30: mv x30, T3; j invisible_Mtrap_return
    invisible_Mwrite_x31: mv x31, T3; j invisible_Mtrap_return
  #endif

  invisible_Mtrap_return:
    // Skip the trapped instruction and return to the interrupted code.
    SREG    zero, rvmodel_sv_off(sp)            // clear the fast-handler handoff marker
    andi    T4, T2, 3                           // compressed instructions have bits 1:0 != 3
    xori    T4, T4, 3
    seqz    T4, T4                              // 1 for a 32-bit instruction
    slli    T4, T4, 1
    addi    T4, T4, 2                           // instruction width: 2 or 4
    csrr    T1, mepc
    add     T1, T1, T4
    csrw    mepc, T1
    LA(     T4, resto_Mrtn)
    jr      T4
.endm
