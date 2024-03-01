// -----------                                                   
// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause                         
// -----------                                                   
//                                                               
//                                                               
//////////////////
// Description:
// - generate 2 s-mode interrupts (msw, mtimer),

// - switch to s-mode,

// - trigger (s-mode handler),

// - only sint2 is cleared,

// - re-enable mstatus.sie

// - trigger (go to stvec_finish, capture cause signature)

// - ecall back to m-mode

//////////////////

//////////////////
// sclicorder-04 settings
#ifndef RVMODEL_MSTATUS_MIE
        #define RVMODEL_MSTATUS_MIE MSTATUS_SIE
#endif
#ifndef RVMODEL_SINT1_CLICINTATTR
        #define RVMODEL_SINT1_CLICINTATTR RVMODEL_CLICINTATTR_SMODE
#endif
#ifndef RVMODEL_SET_SINT1
        #define RVMODEL_SET_SINT1 RVMODEL_SET_MSW_INT
#endif
#ifndef RVMODEL_SINT2_CLICINTATTR
        #define RVMODEL_SINT2_CLICINTATTR RVMODEL_CLICINTATTR_SMODE
#endif
#ifndef RVMODEL_SET_SINT2
        #define RVMODEL_SET_SINT2 RVMODEL_SET_MTIMER_INT
#endif
#ifndef RVMODEL_CLEAR_SINT2
        #define RVMODEL_CLEAR_SINT2 RVMODEL_CLEAR_MTIMER_INT
#endif
#ifndef RVMODEL_SINT1_CLICINTCTL
        #define RVMODEL_SINT1_CLICINTCTL RVMODEL_CLICINTCTL_MAX
#endif
#ifndef RVMODEL_SINT2_CLICINTCTL
        #define RVMODEL_SINT2_CLICINTCTL RVMODEL_CLICINTCTL_MIN  
#endif
#ifndef RVMODEL_SINT1_EXCCODE
        #define RVMODEL_SINT1_EXCCODE 0x3
#endif
#ifndef RVMODEL_SINT2_EXCCODE
        #define RVMODEL_SINT2_EXCCODE 0x7
#endif
#ifndef RVMODEL_CLEAR_SSTATUS_SPIE
        #define RVMODEL_CLEAR_SSTATUS_SPIE 0
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
#ifndef RVMODEL_SNXTI_SIMMED    
        #define  RVMODEL_SNXTI_SIMMED  MSTATUS_SIE
#endif
#ifndef RVMODEL_SNXTI_CIMMED    
        #define  RVMODEL_SNXTI_CIMMED  MSTATUS_SIE
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
#ifndef RVMODEL_SINTTHRESH_MIN    
        #define  RVMODEL_SINTTHRESH_MIN     0x0
#endif
#ifndef RVMODEL_SINTTHRESH_MAX    
        #define  RVMODEL_SINTTHRESH_MAX     0xFF
#endif
#ifndef RVMODEL_SINTTHRESH    
        #define  RVMODEL_SINTTHRESH RVMODEL_SINTTHRESH_MIN    
#endif
#ifndef RVMODEL_SINTTHRESH_HNDLR1    
        #define  RVMODEL_SINTTHRESH_HNDLR1 RVMODEL_SINTTHRESH_MIN    
#endif
#ifndef RVMODEL_CLICINTCTL_MIN    
        #define  RVMODEL_CLICINTCTL_MIN     0xF
#endif
#ifndef RVMODEL_CLICINTCTL_MAX    
        #define  RVMODEL_CLICINTCTL_MAX     0xFF
#endif
#ifndef RVMODEL_CLICINTATTR_MMODE  
        #define  RVMODEL_CLICINTATTR_MMODE  0xC0
#endif
#ifndef RVMODEL_CLICINTATTR_SMODE  
        #define  RVMODEL_CLICINTATTR_SMODE  0x40
#endif


#ifndef RVMODEL_MINT1_CLICINTIE    
        #define RVMODEL_MINT1_CLICINTIE 0x1
#endif
#ifndef RVMODEL_MINT1_EXCCODE    
        #define RVMODEL_MINT1_EXCCODE 0x3
#endif
#ifndef RVMODEL_MINT1_CLICINTCTL    
        #define RVMODEL_MINT1_CLICINTCTL RVMODEL_CLICINTCTL_MAX
#endif
#ifndef RVMODEL_MINT1_CLICINTATTR    
        #define RVMODEL_MINT1_CLICINTATTR RVMODEL_CLICINTATTR_MMODE
#endif
#ifndef RVMODEL_MINT2_CLICINTIE    
        #define RVMODEL_MINT2_CLICINTIE 0x1
#endif
#ifndef RVMODEL_MINT2_EXCCODE    
        #define RVMODEL_MINT2_EXCCODE 0x7
#endif
#ifndef RVMODEL_MINT2_CLICINTCTL    
        #define RVMODEL_MINT2_CLICINTCTL RVMODEL_CLICINTCTL_MAX
#endif
#ifndef RVMODEL_MINT2_CLICINTATTR    
        #define RVMODEL_MINT2_CLICINTATTR RVMODEL_CLICINTATTR_MMODE
#endif
        
#ifndef RVMODEL_SINT1_CLICINTIE    
        #define RVMODEL_SINT1_CLICINTIE 0x1
#endif
#ifndef RVMODEL_SINT1_EXCCODE    
        #define RVMODEL_SINT1_EXCCODE 0x1
#endif
#ifndef RVMODEL_SINT1_CLICINTCTL    
        #define RVMODEL_SINT1_CLICINTCTL RVMODEL_CLICINTCTL_MAX
#endif
#ifndef RVMODEL_SINT1_CLICINTATTR    
        #define RVMODEL_SINT1_CLICINTATTR RVMODEL_CLICINTATTR_SMODE
#endif
#ifndef RVMODEL_SINT2_CLICINTIE    
        #define RVMODEL_SINT2_CLICINTIE 0x1
#endif
#ifndef RVMODEL_SINT2_EXCCODE    
        #define RVMODEL_SINT2_EXCCODE 0x5
#endif
#ifndef RVMODEL_SINT2_CLICINTCTL    
        #define RVMODEL_SINT2_CLICINTCTL RVMODEL_CLICINTCTL_MAX
#endif
#ifndef RVMODEL_SINT2_CLICINTATTR    
        #define RVMODEL_SINT2_CLICINTATTR RVMODEL_CLICINTATTR_SMODE
#endif
        
#ifndef RVMODEL_WFI    
        #define RVMODEL_WFI wfi
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

#ifndef RVMODEL_MSTATUS_SIE    
        #define RVMODEL_MSTATUS_SIE MSTATUS_SIE
#endif
#ifndef SIE_SSIE    
        #define SIE_SSIE 0x2
#endif
#ifndef SIE_STIE    
        #define SIE_STIE 0x20
#endif
#ifndef RVMODEL_SET_SIE    
        #define RVMODEL_SET_SIE (SIE_SSIE | SIE_STIE)
#endif
#ifndef RVMODEL_SET_SIP    
        #define RVMODEL_SET_SIP (SIE_SSIE | SIE_STIE)
#endif
#ifndef RVMODEL_CLEAR_SSTATUS_SPIE    
        #define RVMODEL_CLEAR_SSTATUS_SPIE SSTATUS_SPIE
#endif
#ifndef RVMODEL_STVEC_MODE    
        #define RVMODEL_STVEC_MODE 0
#endif
#ifndef RVMODEL_SSTATUS_MASK   
        #define RVMODEL_SSTATUS_MASK (MSTATUS_SIE | MSTATUS_SPIE | MSTATUS_SPP)
#endif
#ifndef RVMODEL_SIP_MASK   
        #define RVMODEL_SIP_MASK RVMODEL_SET_SIE
#endif
#ifndef RVMODEL_SWITCH_TO_S_MODE    
        #define RVMODEL_SWITCH_TO_S_MODE                     \
        LI(   t0, (MSTATUS_SPP | RVMODEL_MSTATUS_MIE << 4)); \
        csrrs x0, CSR_MSTATUS, t0;                           \
        sret;
#endif

#ifndef RVMODEL_SET_MINT1
        #define RVMODEL_SET_MINT1 
#endif
#ifndef RVMODEL_CLEAR_MINT1
        #define RVMODEL_CLEAR_MINT1 
#endif
#ifndef RVMODEL_SET_MINT2
        #define RVMODEL_SET_MINT2 
#endif
#ifndef RVMODEL_CLEAR_MINT2
        #define RVMODEL_CLEAR_MINT2  
#endif
#ifndef RVMODEL_SET_SINT1
        #define RVMODEL_SET_SINT1 
#endif
#ifndef RVMODEL_CLEAR_SINT1
        #define RVMODEL_CLEAR_SINT1 
#endif
#ifndef RVMODEL_SET_SINT2
        #define RVMODEL_SET_SINT2 
#endif
#ifndef RVMODEL_CLEAR_SINT2
        #define RVMODEL_CLEAR_SINT2 
#endif
        
        
RVTEST_ISA("RV32I_Zicsr")

# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
// Add any static CLIC setup (e.g. smclicconfig extension setup) to RVMODEL_BOOT macro in model_test.h
RVMODEL_BOOT
RVTEST_CODE_BEGIN

RVTEST_SIGBASE( a1,signature_a1) // a1 will point to signature_a1 label in the signature region

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*Ssclic.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",sclicorder-04)
    # ---------------------------------------------------------------------------------------------
    LA(     t0,direct_mtvec_handler)
    ori t0, t0, RVMODEL_MTVEC_MODE
    csrrw s1,CSR_MTVEC, t0   ; // mtvec used by arch_test.h, restore at end of test_case 

    LA(     t0,direct_stvec_handler)
    ori     t0, t0, RVMODEL_STVEC_MODE
    csrrw s2,CSR_STVEC, t0

    LI(     t0,0x55555555)
    csrrw s3,CSR_MSCRATCH, t0 ; // mscratch used by arch_test.h, restore at end of test_case 

    LI(     t0,0xAAAAAAAA)
    csrrw s4,CSR_SSCRATCH, t0 ; // mscratch used by arch_test.h, restore at end of test_case 

    // make sure platform irqs, e.g. mtimer irq, is cleared before starting test
    RVMODEL_CLEAR_ALL_INTS

    LI(     t0,RVMODEL_MINTTHRESH)
    csrw    CSR_MINTTHRESH, t0

    LI(     t0,RVMODEL_SINTTHRESH)
    csrw    CSR_SINTTHRESH, t0

    // program interrupt1 CLICINTCTL/CLICINTATTR values
    LI(     t0,(RVMODEL_MCLICBASE + 0x1000 + (RVMODEL_MINT1_EXCCODE << 2)))
    LI(     t1,((RVMODEL_MINT1_CLICINTCTL<<24 + RVMODEL_MINT1_CLICINTATTR<<16)))
    sw t1, (t0);                                                                          
    // program interrupt2 CLICINTCTL/CLICINTATTR values
    LI(     t0,(RVMODEL_MCLICBASE + 0x1000 + (RVMODEL_MINT2_EXCCODE << 2)))
    LI(     t1,((RVMODEL_MINT2_CLICINTCTL<<24 + RVMODEL_MINT2_CLICINTATTR<<16)))
    sw t1, (t0);                                                                          

    // program interrupt1 CLICINTIE
    LI(     t0,(RVMODEL_MCLICBASE + 0x1001 + (RVMODEL_MINT1_EXCCODE << 2)))
    LI(     t1,RVMODEL_MINT1_CLICINTIE)
    sb t1, (t0);                                                                          

    // program interrupt2 CLICINTIE
    LI(     t0,(RVMODEL_MCLICBASE + 0x1001 + (RVMODEL_MINT2_EXCCODE << 2)))
    LI(     t1,RVMODEL_MINT2_CLICINTIE)
    sb t1, (t0);                                                                          

    // program interrupt1 CLICINTCTL/CLICINTATTR values
    LI(     t0,(RVMODEL_MCLICBASE + 0x1000 + (RVMODEL_SINT1_EXCCODE << 2)))
    LI(     t1,((RVMODEL_SINT1_CLICINTCTL<<24 + RVMODEL_SINT1_CLICINTATTR<<16)))
    sw t1, (t0);                                                                          
    // program interrupt2 CLICINTCTL/CLICINTATTR values
    LI(     t0,(RVMODEL_MCLICBASE + 0x1000 + (RVMODEL_SINT2_EXCCODE << 2)))
    LI(     t1,((RVMODEL_SINT2_CLICINTCTL<<24 + RVMODEL_SINT2_CLICINTATTR<<16)))
    sw t1, (t0);                                                                          

    // program interrupt1 CLICINTIE
    LI(     t0,(RVMODEL_MCLICBASE + 0x1001 + (RVMODEL_SINT1_EXCCODE << 2)))
    LI(     t1,RVMODEL_SINT1_CLICINTIE)
    sb t1, (t0);                                                                          

    // program interrupt2 CLICINTIE
    LI(     t0,(RVMODEL_MCLICBASE + 0x1001 + (RVMODEL_SINT2_EXCCODE << 2)))
    LI(     t1,RVMODEL_SINT2_CLICINTIE)
    sb t1, (t0);                                                                          

    LA(     t0,mtvtval)
    csrw  CSR_MTVT, t0

    LA(     t0,stvtval)
    csrw  CSR_STVT, t0

    LI(     t0,0x12345678)
    csrw    CSR_SSCRATCH, t0

    LI(     t0,RVMODEL_SET_MIE)
    csrw  CSR_MIE, t0

    csrr  t0, CSR_MIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIP
    RVTEST_SIGUPD( a1,t0)

    // setup delegation before setting sie - not used in clic, expect 0 for signature
    csrr    t0, CSR_MIDELEG
    RVTEST_SIGUPD( a1,t0)

    LI(     t0,RVMODEL_SET_SIE)
    csrw  CSR_SIE, t0

    csrr  t0, CSR_SIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SIP
    RVTEST_SIGUPD( a1,t0)

    RVMODEL_SET_MINT1
    RVMODEL_SET_MINT2

    RVMODEL_SET_SINT1
    RVMODEL_SET_SINT2

    fence; // ensure memory mapped registers are setup
    LI(     t0,MSTATUS_MPP | MSTATUS_MPIE | MSTATUS_SPIE)
    csrrc x0, CSR_MSTATUS, t0; // initialize mpp, mpie for deterministic signatures in tests that don't take traps

    LI(     t0,RVMODEL_MSTATUS_MIE)
    csrrs x0, CSR_MSTATUS, t0; // enable global interrupts
location_1:

    LA(     t0,location_1s)
    csrw  CSR_SEPC, t0
    RVMODEL_SWITCH_TO_S_MODE
location_1s:

    RVMODEL_WFI

location_after_wfi:
    j     s_done


    .align 6
    .global direct_mtvec_handler
direct_mtvec_handler:
  
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)
    bgez  t0, mtvec_finish ; // check for exceptions (e.g. if CLIC CSRs not implemented, jump to finish)   
    csrr  t0, CSR_MSTATUS
    LI(   t1, RVMODEL_MSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SSTATUS
    LI(   t1, RVMODEL_SSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MEPC
    LA(   t1, location_1s)
    sub   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MTVAL
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MSCRATCH
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIP
    LI(   t1, RVMODEL_MIP_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SIP
    LI(   t1, RVMODEL_SIP_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIDELEG
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MTVEC
    LA(   t1, direct_mtvec_handler)
    ori   t1, t1, RVMODEL_MTVEC_MODE
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

    csrr  t0, CSR_MCAUSE
    LI(   t1, CAUSE_SUPERVISOR_ECALL)
    beq t0, t1, mtvec_finish 

    csrr  t0, CSR_MCAUSE
    LI(   t1, CAUSE_MACHINE_ECALL)
    beq t0, t1, mtvec_finish 

    LA(   t0, mtvec_finish)
    ori t0, t0, RVMODEL_MTVEC_MODE
    csrw  CSR_MTVEC, t0

    RVMODEL_CLEAR_MINT1
    RVMODEL_CLEAR_MINT2
    fence; // ensure memory mapped registers are setup
        
    LA(     t0,location_after_wfi)
    csrw  CSR_MEPC, t0

    LI(     t0,RVMODEL_MINTTHRESH_HNDLR1)
    csrw    CSR_MINTTHRESH, t0
        
    LI(     t0,RVMODEL_SINTTHRESH_HNDLR1)
    csrw    CSR_SINTTHRESH, t0
        
    csrrsi t0, CSR_MNXTI, RVMODEL_MNXTI_SIMMED
    beqz t0, skip_normalization2
    LA(     t1,mtvtval)
    sub   t0, t0, t1    
skip_normalization2:
    RVTEST_SIGUPD( a1,t0)
        
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MSTATUS
    LI(     t1,RVMODEL_MSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
        
    LI(     t0,RVMODEL_CLEAR_MSTATUS_MPIE )
    csrrc x0, CSR_MSTATUS, t0; // clear mstatus.mpie to disable global interrupts after mret
    mret

   .align 6
    .global direct_stvec_handler
direct_stvec_handler:
  
    csrr  t0, CSR_SCAUSE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SSTATUS
    LI(   t1, RVMODEL_SSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SEPC
    LA(   t1, location_1s)
    sub   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_STVAL
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SSCRATCH
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SIP
    LI(   t1, RVMODEL_SIP_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_STVEC
    LA(   t1, direct_stvec_handler)
    ori   t1, t1, RVMODEL_STVEC_MODE
    sub   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)

    csrr  t0, CSR_SINTSTATUS
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SINTTHRESH
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SNXTI
    beqz t0, skip_normalization3
    LA(     t1,stvtval)
    sub   t0, t0, t1    
skip_normalization3:
    RVTEST_SIGUPD( a1,t0)  
    LI(     t0,0x12345678)
    csrrw  t0, CSR_SSCRATCHCSW, t0
    RVTEST_SIGUPD( a1,t0)
    LI(     t0,0x98765432)
    csrrw  t0, CSR_SSCRATCHCSWL, t0
    RVTEST_SIGUPD( a1,t0)

    LA(     t0,stvec_finish)
    ori     t0, t0, RVMODEL_STVEC_MODE
    csrw  CSR_STVEC, t0

    RVMODEL_CLEAR_SINT1
    RVMODEL_CLEAR_SINT2
    fence; // ensure memory mapped registers are setup
        
    LI(     t0,MSTATUS_SIE )
    csrrs x0, CSR_SSTATUS, t0; // enable global interrupts in s-mode
    ; // CLINT will nest with pending and enabled interrupts, CLIC only nests if pending interrupt > max(intstatus,intthresh)
    ; // CLIC only nests with pending and enabled interrupt level > max(intstatus,intthresh)
location_2s:
        
    LA(     t0,s_done)
    csrw  CSR_SEPC, t0
        
    LI(     t0,RVMODEL_SINTTHRESH_HNDLR1)
    csrw    CSR_SINTTHRESH, t0
        
    csrrsi t0, CSR_SNXTI, RVMODEL_SNXTI_SIMMED
    beqz t0, skip_normalization4
    LA(     t1,stvtval)
    sub   t0, t0, t1    
skip_normalization4:
    RVTEST_SIGUPD( a1,t0)
        
    csrr  t0, CSR_SCAUSE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SSTATUS
    LI(     t1,RVMODEL_SSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
        
    LI(     t0,RVMODEL_CLEAR_SSTATUS_SPIE)
    csrrc x0, CSR_SSTATUS, t0; // by default, clear previous global interrupts
    sret

    .align 6
    .global mtvtval
mtvtval:        .word vectored_m_handler0
mtvtval1:       .word vectored_m_handler1
mtvtval2:       .word vectored_m_handler2
mtvtval3:       .word vectored_m_handler3
mtvtval4:       .word vectored_m_handler4
mtvtval5:       .word vectored_m_handler5
mtvtval6:       .word vectored_m_handler6
mtvtval7:       .word vectored_m_handler7
mtvtval8:       .word vectored_m_handler8
mtvtval9:       .word vectored_m_handler9
mtvtval10:      .word vectored_m_handler10
mtvtval11:      .word vectored_m_handler11
mtvtval12:      .word vectored_m_handler12
mtvtval13:      .word vectored_m_handler13
mtvtval14:      .word vectored_m_handler14
mtvtval15:      .word vectored_m_handler15


    .align 2
vectored_m_handler0:
    li t0, 0    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler1:
    li t0, 1    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler2:
    li t0, 2    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler3:
    li t0, 3    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler4:
    li t0, 4    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler5:
    li t0, 5    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler6:
    li t0, 6    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler7:
    li t0, 7    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler8:
    li t0, 8    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler9:
    li t0, 9    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler10:
    li t0, 10    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler11:
    li t0, 11    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler12:
    li t0, 12    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler13:
    li t0, 13    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler14:
    li t0, 14    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_m_handler15:
    li t0, 15    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 6
    .global stvtval
stvtval:        .word vectored_s_handler0
stvtval1:       .word vectored_s_handler1
stvtval2:       .word vectored_s_handler2
stvtval3:       .word vectored_s_handler3
stvtval4:       .word vectored_s_handler4
stvtval5:       .word vectored_s_handler5
stvtval6:       .word vectored_s_handler6
stvtval7:       .word vectored_s_handler7
stvtval8:       .word vectored_s_handler8
stvtval9:       .word vectored_s_handler9
stvtval10:      .word vectored_s_handler10
stvtval11:      .word vectored_s_handler11
stvtval12:      .word vectored_s_handler12
stvtval13:      .word vectored_s_handler13
stvtval14:      .word vectored_s_handler14
stvtval15:      .word vectored_s_handler15


    .align 6
vectored_s_handler0:
    li t0, 16    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler1:
    li t0, 17    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler2:
    li t0, 18    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler3:
    li t0, 19    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler4:
    li t0, 20    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler5:
    li t0, 21    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler6:
    li t0, 22    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler7:
    li t0, 23    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler8:
    li t0, 24    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler9:
    li t0, 25    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler10:
    li t0, 26    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler11:
    li t0, 27    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler12:
    li t0, 28    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler13:
    li t0, 29    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler14:
    li t0, 30    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_s_handler15:
    li t0, 31    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   
        
    .align 6
stvec_finish:
    csrr  t0, CSR_SCAUSE
    RVTEST_SIGUPD( a1,t0)
s_done:
    ecall    

    .align 6
mtvec_finish:
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)
m_done:
    csrw CSR_MTVEC, s1; // restore CSR_MTVEC
    csrw CSR_STVEC, s2; // restore CSR_STVEC
    csrw CSR_MSCRATCH, s3; // restore CSR_MSCRATCH
    csrw CSR_SSCRATCH, s4; // restore CSR_SSCRATCH

    RVMODEL_IO_WRITE_STR(x30, "# Test part A - test sclicorder-04\n");

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
signature_a1:
    .fill 96*(XLEN/32),4,0xdeadbeef

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

