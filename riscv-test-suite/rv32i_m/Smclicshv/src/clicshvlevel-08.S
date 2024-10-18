// -----------                                                   
// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause                         
// -----------                                                   
//                                                               
//                                                               
//////////////////
// Description: same as clicshvlevel-04 but int1 is non-shv and int2 is shv
// - enable clicintie (default)

// - generate non-shv interrupt 1

// - enable mstatus.mie

// - trigger m-mode handler

// - generate shv interrupt 2 (both interrupts now pending)

// - if clicintctrl represents levels, 2nd interrupt is higher than current interupt level but equal to mintthresh, no 2nd interrupt occurs.

// - if clicintctrl represents priority, 2nd interrupt is same level, no 2nd interrupt occurs.

// - set mepc to finish

// - clear mstatus.mpie

// - mret to finish

//////////////////

//////////////////
// clicshvlevel-08 settings
#ifndef RVMODEL_SET_INT1
        #define RVMODEL_SET_INT1 RVMODEL_SET_MSW_INT
#endif
#ifndef RVMODEL_SET_INT2
        #define RVMODEL_SET_INT2 RVMODEL_SET_MTIMER_INT
#endif
#ifndef RVMODEL_CLEAR_INT1
        #define RVMODEL_CLEAR_INT1 
#endif
#ifndef RVMODEL_CLEAR_INT2
        #define RVMODEL_CLEAR_INT2 RVMODEL_CLEAR_MTIMER_INT
#endif
#ifndef RVMODEL_INT1_CLICINTCTL
        #define RVMODEL_INT1_CLICINTCTL RVMODEL_CLICINTCTL_MIN
#endif
#ifndef RVMODEL_INT2_CLICINTCTL
        #define RVMODEL_INT2_CLICINTCTL RVMODEL_CLICINTCTL_MAX
#endif
#ifndef RVMODEL_MINTTHRESH_HNDLR1
        #define RVMODEL_MINTTHRESH_HNDLR1 RVMODEL_MINTTHRESH_MAX  
#endif
#ifndef RVMODEL_INT1_CLICINTATTR
        #define RVMODEL_INT1_CLICINTATTR 0xC0
#endif
#ifndef RVMODEL_INT2_CLICINTATTR
        #define RVMODEL_INT2_CLICINTATTR 0xC1  
#endif
 
#include "model_test.h"
#include "arch_test.h"

//////////////////
// general defaults
#ifndef RVMODEL_CONFIG_CLIC  
        #define  RVMODEL_CONFIG_CLIC   
#endif
#ifndef RVMODEL_MCLICBASE    
        #define  RVMODEL_MCLICBASE     0x4000000
#endif
#ifndef RVMODEL_MNXTI_SIMMED    
        #define  RVMODEL_MNXTI_SIMMED  MSTATUS_MIE
#endif
#ifndef RVMODEL_MNXTI_CIMMED    
        #define  RVMODEL_MNXTI_CIMMED  MSTATUS_MIE
#endif
#ifndef RVMODEL_MINTTHRESH_MIN    
        #define  RVMODEL_MINTTHRESH_MIN     0x0
#endif
#ifndef RVMODEL_MINTTHRESH_MAX    
        #define  RVMODEL_MINTTHRESH_MAX     0xFF
#endif
#ifndef RVMODEL_MINTTHRESH    
        #define  RVMODEL_MINTTHRESH RVMODEL_MINTTHRESH_MIN    
#endif
#ifndef RVMODEL_MINTTHRESH_HNDLR1    
        #define  RVMODEL_MINTTHRESH_HNDLR1 RVMODEL_MINTTHRESH_MIN    
#endif
#ifndef RVMODEL_INT1_CLICINTIE    
        #define RVMODEL_INT1_CLICINTIE 0x1
#endif
#ifndef RVMODEL_INT1_EXCCODE    
        #define RVMODEL_INT1_EXCCODE 0x3
#endif
#ifndef RVMODEL_CLICINTCTL_MIN    
        #define  RVMODEL_CLICINTCTL_MIN     0xF
#endif
#ifndef RVMODEL_CLICINTCTL_MAX    
        #define  RVMODEL_CLICINTCTL_MAX     0xFF
#endif
#ifndef RVMODEL_INT1_CLICINTCTL    
        #define RVMODEL_INT1_CLICINTCTL RVMODEL_CLICINTCTL_MAX
#endif
#ifndef RVMODEL_INT1_CLICINTATTR    
        #define RVMODEL_INT1_CLICINTATTR 0xC0
#endif
#ifndef RVMODEL_INT2_CLICINTIE    
        #define RVMODEL_INT2_CLICINTIE 0x1
#endif
#ifndef RVMODEL_INT2_EXCCODE    
        #define RVMODEL_INT2_EXCCODE 0x7
#endif
#ifndef RVMODEL_INT2_CLICINTCTL    
        #define RVMODEL_INT2_CLICINTCTL RVMODEL_CLICINTCTL_MAX
#endif
#ifndef RVMODEL_INT2_CLICINTATTR    
        #define RVMODEL_INT2_CLICINTATTR 0xC0
#endif

#ifndef RVMODEL_WFI    
        #define RVMODEL_WFI wfi
#endif
#ifndef RVMODEL_TEST_INHV    
        #define RVMODEL_TEST_INHV 0
#endif
#ifndef RVMODEL_CLEAR_ALL_INTS  
        #define RVMODEL_CLEAR_ALL_INTS \
        RVMODEL_CLEAR_MSW_INT \
        RVMODEL_CLEAR_MTIMER_INT  
#endif

#ifndef RVMODEL_MSTATUS_MIE    
        #define RVMODEL_MSTATUS_MIE MSTATUS_MIE
#endif
// MIE_MSIE, MIE_MTIE
#ifndef MIE_MSIE    
        #define MIE_MSIE 0x8
#endif
#ifndef MIE_MTIE    
        #define MIE_MTIE 0x80
#endif
#ifndef RVMODEL_SET_MIE    
        #define RVMODEL_SET_MIE (MIE_MSIE | MIE_MTIE)
#endif
#ifndef RVMODEL_CLEAR_MSTATUS_MPIE    
        #define RVMODEL_CLEAR_MSTATUS_MPIE MSTATUS_MPIE
#endif
#ifndef RVMODEL_MTVEC_MODE    
        #define RVMODEL_MTVEC_MODE 0x3
#endif
#ifndef RVMODEL_MSTATUS_MASK   
        #define RVMODEL_MSTATUS_MASK (MSTATUS_MIE | MSTATUS_MPIE | MSTATUS_MPP)
#endif
#ifndef RVMODEL_MIP_MASK   
        #define RVMODEL_MIP_MASK RVMODEL_SET_MIE
#endif
// implementations without s-mode will not have mideleg CSR.
// most implementations and SAIL model probably currently reset midelg to 0        
// implementations with s-mode and mideleg.msi/mti uninitializsed or set to 1 will need to
// initialize mideleg.msi/mti to 0        
// e.g. #define RVMODEL_INITIALIZE_MIDELEG LI(t0,RVMODEL_SET_MIE);csrrc x0,CSR_MIDELEG,t0;
#ifndef RVMODEL_INITIALIZE_MIDELEG  
        #define RVMODEL_INITIALIZE_MIDELEG
#endif
#ifndef RVMODEL_ECALL  
        #define RVMODEL_ECALL
#endif

        
        
RVTEST_ISA("RV32I_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

RVTEST_SIGBASE( a1,signature_a1_m) // a1 will point to signature_a1_m label in the signature region - m-mode

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*Smclic.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",clicshvlevel-08)
    # ---------------------------------------------------------------------------------------------
    // hook to allow implementations to setup their specific CLIC implementation
    // e.g. (num priv modes, num interrupt levels)
    RVMODEL_CONFIG_CLIC

    LA(     t0,first_mtvec_handler)
    ori t0, t0, RVMODEL_MTVEC_MODE
    csrrw s1,CSR_MTVEC, t0   ; // mtvec used by arch_test.h, restore at end of test_case 

    LI(     t0,0x55555555)
    csrrw s2,CSR_MSCRATCH, t0 ; // mscratch used by arch_test.h, restore at end of test_case 

    // make sure platform irqs, e.g. mtimer irq, is cleared before starting test
    RVMODEL_CLEAR_ALL_INTS

    LI(     t0,RVMODEL_MINTTHRESH)
    csrw    CSR_MINTTHRESH, t0

    // program interrupt1 CLICINTCTL/CLICINTATTR values
    LI(     t0,(RVMODEL_MCLICBASE + 0x1000 + (RVMODEL_INT1_EXCCODE << 2)))
    LI(     t1,((RVMODEL_INT1_CLICINTCTL<<24 + RVMODEL_INT1_CLICINTATTR<<16)))
    sw t1, (t0);                                                                          
    // program interrupt2 CLICINTCTL/CLICINTATTR values
    LI(     t0,(RVMODEL_MCLICBASE + 0x1000 + (RVMODEL_INT2_EXCCODE << 2)))
    LI(     t1,((RVMODEL_INT2_CLICINTCTL<<24 + RVMODEL_INT2_CLICINTATTR<<16)))
    sw t1, (t0);                                                                          

    // program interrupt1 CLICINTIE
    LI(     t0,(RVMODEL_MCLICBASE + 0x1001 + (RVMODEL_INT1_EXCCODE << 2)))
    LI(     t1,RVMODEL_INT1_CLICINTIE)
    sb t1, (t0);                                                                          

    // program interrupt2 CLICINTIE
    LI(     t0,(RVMODEL_MCLICBASE + 0x1001 + (RVMODEL_INT2_EXCCODE << 2)))
    LI(     t1,RVMODEL_INT2_CLICINTIE)
    sb t1, (t0);                                                                          

    LA(     t0,mtvtval)
    csrw  CSR_MTVT, t0

    ; // only for CLINT, for CSR_MIE, CSR_MIP, CSR_MIDELEG is inactive in CLIC mode
    LI(     t0,RVMODEL_SET_MIE)
    csrw  CSR_MIE, t0

    csrr  t0, CSR_MIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIP
    LI(     t1,RVMODEL_MIP_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)

    RVMODEL_INITIALIZE_MIDELEG

    RVMODEL_SET_INT1

    fence; // ensure memory mapped registers are setup

    LI(     t0,MSTATUS_MPP | MSTATUS_MPIE)
    csrrc x0, CSR_MSTATUS, t0; // initialize mpp, mpie for deterministic signatures in tests that don't take traps

    LI(     t0,RVMODEL_MSTATUS_MIE)
    csrrs x0, CSR_MSTATUS, t0; // enable global interrupts in m-mode
location_1:

    RVMODEL_WFI

    LI(     t0, RVMODEL_TEST_INHV)
    beqz t0, finish
    LA(     t0,mtvtval)
    csrw    CSR_MEPC, t0
    LI(     t0,0x40000000)
    csrrs   x0, CSR_MCAUSE, t0
    mret

    j     finish


    .align 6
    .global direct_mtvec_handler
direct_mtvec_handler:
  
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MSTATUS
    LI(     t1,RVMODEL_MSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MEPC
    LA(     t1,location_1)
    sub   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MTVAL
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MSCRATCH
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIP
    LI(     t1,RVMODEL_MIP_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MTVEC
    LA(     t1,first_mtvec_handler)
    ori t1, t1, RVMODEL_MTVEC_MODE
    sub   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)

    csrr  t0, CSR_MINTSTATUS
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MINTTHRESH
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MNXTI
    beqz t0, skip_normalization1
    LA(     t1,mtvtval)
    sub   t0, t0, t1    
skip_normalization1:
    RVTEST_SIGUPD( a1,t0)  
    LI(     t0,0x12345678)
    csrrw  t0, CSR_MSCRATCHCSW, t0
    RVTEST_SIGUPD( a1,t0)
    LI(     t0,0x98765432)
    csrrw  t0, CSR_MSCRATCHCSWL, t0
    RVTEST_SIGUPD( a1,t0)

    LA(     t0,second_mtvec_handler)
    ori t0, t0, RVMODEL_MTVEC_MODE
    csrw  CSR_MTVEC, t0

    LA(     t0,second_mtvtval)
    csrw  CSR_MTVT, t0

    RVMODEL_CLEAR_INT1
    RVMODEL_SET_INT2    

    LI(     t0,RVMODEL_MINTTHRESH_HNDLR1)
    csrw    CSR_MINTTHRESH, t0
        
    csrrsi t0, CSR_MNXTI, RVMODEL_MNXTI_SIMMED
    beqz t0, skip_normalization2
    LA(     t1,second_mtvtval)
    sub   t0, t0, t1    
skip_normalization2:
    RVTEST_SIGUPD( a1,t0)
        
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MSTATUS
    LI(     t1,RVMODEL_MSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
        
    RVMODEL_ECALL
        
    LI(     t0,MSTATUS_MIE )
    csrrs x0, CSR_MSTATUS, t0; // enable global interrupts in m-mode
    ; // CLINT would nest, CLIC nests based on intstatus and intthresh
location_2:
        
    LA(     t0,finish)
    csrw  CSR_MEPC, t0
    csrrci t0, CSR_MNXTI, RVMODEL_MNXTI_CIMMED
    beqz t0, skip_normalization3
    LA(     t1,second_mtvtval)
    sub   t0, t0, t1    
skip_normalization3:
    RVTEST_SIGUPD( a1,t0)
        
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MSTATUS
    LI(     t1,RVMODEL_MSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
        
    LI(     t0,RVMODEL_CLEAR_MSTATUS_MPIE)
    csrrc x0, CSR_MSTATUS, t0; // by default, clear previous global interrupts
    LI(     t0,MSTATUS_MPP )
    csrrs x0, CSR_MSTATUS, t0; // force return to m-mode
    mret

    .align 2
    .global second_direct_mtvec_handler
second_direct_mtvec_handler:
  
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MSTATUS
    LI(     t1,RVMODEL_MSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MEPC
    LA(     t1,location_2)
    sub   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MTVAL
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MSCRATCH
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIP
    LI(     t1,RVMODEL_MIP_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MTVEC
    LA(     t1,second_mtvec_handler)
    ori t1, t1, RVMODEL_MTVEC_MODE
    sub   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)

    csrr  t0, CSR_MINTSTATUS
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MINTTHRESH
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MNXTI
    beqz t0, skip_normalization4
    LA(     t1,second_mtvtval)
    sub   t0, t0, t1    
skip_normalization4:
    RVTEST_SIGUPD( a1,t0)  
    LI(     t0,0x87654321)
    csrrw  t0, CSR_MSCRATCHCSW, t0
    RVTEST_SIGUPD( a1,t0)
    LI(     t0,0x23456789)
    csrrw  t0, CSR_MSCRATCHCSWL, t0
    RVTEST_SIGUPD( a1,t0)

    RVMODEL_CLEAR_INT2
    fence; // ensure memory mapped registers are setup

    LA(     t0,finish)
    csrw  CSR_MEPC, t0

    LI(     t0,MSTATUS_MPIE )
    csrrc x0, CSR_MSTATUS, t0; // clear mstatus.mpie to disable global interrupts after mret
    mret

    .align 6
    .global first_mtvec_handler
first_mtvec_handler:
    csrr  t0, CSR_MCAUSE
    bgez  t0, finish ; // check for exceptions (e.g. if CLIC CSRs not implemented, jump to finish)    
    j  direct_mtvec_handler   

    .align 6
    .global mtvtval
mtvtval:        .word vectored_handler0
mtvtval1:       .word vectored_handler1
mtvtval2:       .word vectored_handler2
mtvtval3:       .word vectored_handler3
mtvtval4:       .word vectored_handler4
mtvtval5:       .word vectored_handler5
mtvtval6:       .word vectored_handler6
mtvtval7:       .word vectored_handler7
mtvtval8:       .word vectored_handler8
mtvtval9:       .word vectored_handler9
mtvtval10:      .word vectored_handler10
mtvtval11:      .word vectored_handler11
mtvtval12:      .word vectored_handler12
mtvtval13:      .word vectored_handler13
mtvtval14:      .word vectored_handler14
mtvtval15:      .word vectored_handler15


    .align 2
vectored_handler0:
    li t0, 0    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler1:
    li t0, 1    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler2:
    li t0, 2    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler3:
    li t0, 3    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler4:
    li t0, 4    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler5:
    li t0, 5    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler6:
    li t0, 6    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler7:
    li t0, 7    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler8:
    li t0, 8    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler9:
    li t0, 9    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler10:
    li t0, 10    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler11:
    li t0, 11    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler12:
    li t0, 12    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler13:
    li t0, 13    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler14:
    li t0, 14    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_handler15:
    li t0, 15    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 6
    .global second_mtvec_handler
second_mtvec_handler:
    j  second_direct_mtvec_handler   

    .align 8
    .global second_mtvtval
second_mtvtval:        .word second_direct_mtvec_handler
second_mtvtval1:       .word second_direct_mtvec_handler
second_mtvtval2:       .word second_direct_mtvec_handler
second_mtvtval3:       .word second_direct_mtvec_handler
second_mtvtval4:       .word second_direct_mtvec_handler
second_mtvtval5:       .word second_direct_mtvec_handler
second_mtvtval6:       .word second_direct_mtvec_handler
second_mtvtval7:       .word second_direct_mtvec_handler
second_mtvtval8:       .word second_direct_mtvec_handler
second_mtvtval9:       .word second_direct_mtvec_handler
second_mtvtval10:      .word second_direct_mtvec_handler
second_mtvtval11:      .word second_direct_mtvec_handler
second_mtvtval12:      .word second_direct_mtvec_handler
second_mtvtval13:      .word second_direct_mtvec_handler
second_mtvtval14:      .word second_direct_mtvec_handler
second_mtvtval15:      .word second_direct_mtvec_handler

finish:
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)

    csrw CSR_MTVEC, s1; // restore CSR_MTVEC
    csrw CSR_MSCRATCH, s2; // restore CSR_MSCRATCH

    RVMODEL_IO_WRITE_STR(x30, "# Test part A - test clicshvlevel-08\n");

    RVMODEL_IO_WRITE_STR(x30, "# Test End\n")

        
#endif

 # ---------------------------------------------------------------------------------------------

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
# Input data section.
    .data
    .align 4

RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
signature_a1_m:
    .fill 64*(XLEN/32),4,0xdeadbeef

sig_begin_canary:
CANARY;
test_A_res:
  .fill 2, 4, 0xdeadbeef

#ifdef rvtest_mtrap_routine
mtrap_sigptr:
  .fill 4, 4, 0xdeadbeef
#endif

#ifdef rvtest_gpr_save
gpr_save:
  .fill 32*(XLEN/32), 4, 0xdeadbeef
#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END

