// -----------                                                   
// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause                         
// -----------                                                   
//                                                               
//                                                               
//////////////////
// Description:
// - generate 4 m-mode interrupts (msie, mtie, ssie, stie),

// - stay in m-mode,

// - trigger (m-mode handler),

// - only mint1 is cleared,

// - do not clear mstatus_mpie so mstatus.mie is re-enabled after mret

// - trigger (go to mtvec_finish, capture cause signature)

//////////////////

//////////////////
// order-04 settings
#ifndef RVMODEL_MSTATUS_MIE
        #define RVMODEL_MSTATUS_MIE MSTATUS_MIE
#endif
#ifndef RVMODEL_SET_SIE
        #define RVMODEL_SET_SIE 0
#endif
#ifndef RVMODEL_SET_MIE
        #define RVMODEL_SET_MIE (MIE_MSIE | MIE_MTIE | SIE_SSIE | SIE_STIE)
#endif
#ifndef RVMODEL_MIP_MASK
        #define RVMODEL_MIP_MASK (MIE_MSIE | MIE_MTIE | SIE_SSIE | SIE_STIE)
#endif
#ifndef RVMODEL_SET_MIDELEG
        #define RVMODEL_SET_MIDELEG 0
#endif
#ifndef RVMODEL_SETUP_SIP_INTS
        #define RVMODEL_SETUP_SIP_INTS LI(t0, (SIE_SSIE | SIE_STIE)); csrrs x0,CSR_MIP, t0;
#endif
#ifndef RVMODEL_SET_MINT1
        #define RVMODEL_SET_MINT1 RVMODEL_SET_MSW_INT
#endif
#ifndef RVMODEL_SET_MINT2
        #define RVMODEL_SET_MINT2 RVMODEL_SET_MTIMER_INT
#endif
#ifndef RVMODEL_CLEAR_MINT1
        #define RVMODEL_CLEAR_MINT1 RVMODEL_CLEAR_MSW_INT 
#endif
#ifndef RVMODEL_SET_SINT1
        #define RVMODEL_SET_SINT1 LI(t0, SIE_SSIE); csrrs x0,CSR_SIP, t0;
#endif
#ifndef RVMODEL_SET_SINT2
        #define RVMODEL_SET_SINT2 LI(t0, SIE_STIE); csrrs x0,CSR_SIP, t0;
#endif
#ifndef RVMODEL_CLEAR_MSTATUS_MPIE
        #define RVMODEL_CLEAR_MSTATUS_MPIE 0
#endif
 
#include "model_test.h"
#include "arch_test.h"

/////////////////
// Default msw/mtimer setup.  overwrite defaults in model_test.h if necessary.
#ifndef RVMODEL_MCLINTBASE    
        #define RVMODEL_MCLINTBASE 0x02000000
#endif

#ifndef RVMODEL_MSIP_OFFSET    
        #define RVMODEL_MSIP_OFFSET 0x0
#endif

#ifndef RVMODEL_MTIMECMP_OFFSET    
        #define RVMODEL_MTIMECMP_OFFSET 0x4000
#endif

#ifndef RVMODEL_MTIMECMPH_OFFSET    
        #define RVMODEL_MTIMECMPH_OFFSET 0x4004
#endif

#ifndef RVMODEL_SET_MSW_INT    
#define RVMODEL_SET_MSW_INT                                                 \
    lui t0,      ((RVMODEL_MCLINTBASE + RVMODEL_MSIP_OFFSET)>> 12);         \
    addi t0, t0, ((RVMODEL_MCLINTBASE + RVMODEL_MSIP_OFFSET) & 0xFFF);      \
    li t1, 1;                                                               \
    sw t1, (t0);                                                            \

#endif
        
#ifndef RVMODEL_CLEAR_MSW_INT    
#define RVMODEL_CLEAR_MSW_INT                                               \
    lui t0,      ((RVMODEL_MCLINTBASE + RVMODEL_MSIP_OFFSET)>> 12);         \
    addi t0, t0, ((RVMODEL_MCLINTBASE + RVMODEL_MSIP_OFFSET) & 0xFFF);      \
    sw x0, (t0);                                                            \

#endif
 
#ifndef RVMODEL_SET_MTIMER_INT    
#define RVMODEL_SET_MTIMER_INT                                              \
    lui t0,      ((RVMODEL_MCLINTBASE + RVMODEL_MTIMECMP_OFFSET)>> 12);     \
    addi t0, t0, ((RVMODEL_MCLINTBASE + RVMODEL_MTIMECMP_OFFSET) & 0xFFF);  \
    sw x0, (t0);                                                            \
    lui t0,      ((RVMODEL_MCLINTBASE + RVMODEL_MTIMECMPH_OFFSET)>> 12);    \
    addi t0, t0, ((RVMODEL_MCLINTBASE + RVMODEL_MTIMECMPH_OFFSET) & 0xFFF); \
    sw x0, (t0);                                                            \

#endif

#ifndef RVMODEL_CLEAR_MTIMER_INT    
#define RVMODEL_CLEAR_MTIMER_INT                                            \
    addi t1,x0,1;                                                           \
    neg t1,t1;                                                              \
    lui t0,      ((RVMODEL_MCLINTBASE + RVMODEL_MTIMECMPH_OFFSET)>> 12);    \
    addi t0, t0, ((RVMODEL_MCLINTBASE + RVMODEL_MTIMECMPH_OFFSET) & 0xFFF); \
    sw t1, (t0);                                                            \
    lui t0,      ((RVMODEL_MCLINTBASE + RVMODEL_MTIMECMP_OFFSET)>> 12);     \
    addi t0, t0, ((RVMODEL_MCLINTBASE + RVMODEL_MTIMECMP_OFFSET) & 0xFFF);  \
    sw t1, (t0);                                                            \

#endif
        
//////////////////
// test general defaults
#ifndef RVMODEL_WFI    
        #define RVMODEL_WFI wfi
#endif
#ifndef RVMODEL_CLEAR_ALL_INTS  
        #define RVMODEL_CLEAR_ALL_INTS \
        RVMODEL_CLEAR_MSW_INT \
        RVMODEL_CLEAR_MTIMER_INT  
#endif

#ifndef RVMODEL_SETUP_SIP_INTS  
        #define RVMODEL_SETUP_SIP_INTS \
        LI(   t0, (RVMODEL_SET_SIP));  \
        csrrs x0, CSR_SIP, t0;       
#endif

#ifndef RVMODEL_SET_MIDELEG    
        #define RVMODEL_SET_MIDELEG 0
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
        #define RVMODEL_MTVEC_MODE 0
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
RVMODEL_BOOT
RVTEST_CODE_BEGIN

RVTEST_SIGBASE( a1,signature_a1) // a1 will point to signature_a1 label in the signature region

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*Ssclint.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",order-04)
    # ---------------------------------------------------------------------------------------------
    LA(     t0,first_mtvec_handler)
    ori t0, t0, RVMODEL_MTVEC_MODE
    csrrw s1,CSR_MTVEC, t0   ; // mtvec used by arch_test.h, restore at end of test_case 

    LA(     t0,first_stvec_handler)
    ori     t0, t0, RVMODEL_STVEC_MODE
    csrw    CSR_STVEC, t0

    LI(     t0,0x55555555)
    csrrw s2,CSR_MSCRATCH, t0 ; // mscratch used by arch_test.h, restore at end of test_case 

    // make sure platform irqs, e.g. mtimer irq, is cleared before starting test
    RVMODEL_CLEAR_ALL_INTS

    // setup s-mode pending interrupts from m-mode,
    // s-mode interrupt generation is based on using SIE CSR enable/disable
    // to trigger/clear pending s-mode interrupts
    RVMODEL_SETUP_SIP_INTS

    LI(     t0,0x12345678)
    csrw    CSR_SSCRATCH, t0

    LI(     t0,RVMODEL_SET_MIE)
    csrw  CSR_MIE, t0

    csrr  t0, CSR_MIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MIP
    LI(     t1,RVMODEL_MIP_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)

    // setup delegation before setting sie
    LI(     t0,RVMODEL_SET_MIDELEG)
    csrw    CSR_MIDELEG, t0
    csrr    t0, CSR_MIDELEG
    RVTEST_SIGUPD( a1,t0)

    LI(     t0,RVMODEL_SET_SIE)
    csrw  CSR_SIE, t0

    csrr  t0, CSR_SIE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SIP
    LI(     t1,RVMODEL_SIP_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)

    RVMODEL_SET_MINT1
    RVMODEL_SET_MINT2

    RVMODEL_SET_SINT1
    RVMODEL_SET_SINT2

    fence; // ensure memory mapped registers are setup

    LI(     t0,RVMODEL_MSTATUS_MIE)
    csrrs x0, CSR_MSTATUS, t0; // enable global interrupts
location_1:

    LA(     t0,location_1s)
    csrw  CSR_SEPC, t0
    RVMODEL_SWITCH_TO_S_MODE
location_1s:

    RVMODEL_WFI

    j     s_done


    .align 2
    .global direct_mtvec_handler
direct_mtvec_handler:
  
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MSTATUS
    LI(   t1, RVMODEL_MSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_SSTATUS
    LI(   t1, RVMODEL_SSTATUS_MASK)
    and   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)
    csrr  t0, CSR_MEPC
    LA(   t1, location_1)
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
    LA(   t1, first_mtvec_handler)
    ori   t1, t1, RVMODEL_MTVEC_MODE
    sub   t0, t0, t1    
    RVTEST_SIGUPD( a1,t0)

    csrr  t0, CSR_MCAUSE
    LI(   t1, CAUSE_SUPERVISOR_ECALL)
    beq t0, t1, mtvec_finish 

    csrr  t0, CSR_MCAUSE
    LI(   t1, CAUSE_MACHINE_ECALL)
    beq t0, t1, mtvec_finish 

    LA(   t0, mtvec_finish)
    csrw  CSR_MTVEC, t0

    RVMODEL_CLEAR_MINT1
    RVMODEL_CLEAR_MINT2
    fence; // ensure memory mapped registers are setup
        
    LA(     t0,s_done)
    csrw  CSR_MEPC, t0

    LI(     t0,RVMODEL_CLEAR_MSTATUS_MPIE )
    csrrc x0, CSR_MSTATUS, t0; // clear mstatus.mpie to disable global interrupts after mret
    mret

   .align 2
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
    LA(   t1, first_stvec_handler)
    ori   t1, t1, RVMODEL_STVEC_MODE
    sub   t0, t0, t1    
    csrr  t0, CSR_STVEC
    RVTEST_SIGUPD( a1,t0)

    LA(     t0,stvec_finish)
    csrw  CSR_STVEC, t0

    RVMODEL_CLEAR_SINT1
    RVMODEL_CLEAR_SINT2
    fence; // ensure memory mapped registers are setup
        
    LI(     t0,MSTATUS_SIE )
    csrrs x0, CSR_SSTATUS, t0; // enable global interrupts in s-mode
    ; // CLINT will nest
location_2s:
        
    LA(     t0,s_done)
    csrw  CSR_SEPC, t0
    LI(     t0,RVMODEL_CLEAR_SSTATUS_SPIE)
    csrrc x0, CSR_SSTATUS, t0; // by default, clear previous global interrupts
    sret

    .align 2
    .global first_mtvec_handler
first_mtvec_handler:
    j  direct_mtvec_handler   
    .align 2    
    j  vectored_mtvec_handler1   
    .align 2    
    j  vectored_mtvec_handler2   
    .align 2    
    j  vectored_mtvec_handler3   
    .align 2    
    j  vectored_mtvec_handler4   
    .align 2    
    j  vectored_mtvec_handler5   
    .align 2    
    j  vectored_mtvec_handler6   
    .align 2    
    j  vectored_mtvec_handler7   
    .align 2    
    j  vectored_mtvec_handler8   
    .align 2    
    j  vectored_mtvec_handler9   
    .align 2    
    j  vectored_mtvec_handler10   
    .align 2    
    j  vectored_mtvec_handler11   
    .align 2    
    j  vectored_mtvec_handler12   
    .align 2    
    j  vectored_mtvec_handler13   
    .align 2    
    j  vectored_mtvec_handler14   
    .align 2    
    j  vectored_mtvec_handler15   
    .align 2    

    .align 2
vectored_mtvec_handler1:
    li t0, 1    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler2:
    li t0, 2    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler3:
    li t0, 3    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler4:
    li t0, 4    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler5:
    li t0, 5    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler6:
    li t0, 6    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler7:
    li t0, 7    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler8:
    li t0, 8    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler9:
    li t0, 9    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler10:
    li t0, 10    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler11:
    li t0, 11    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler12:
    li t0, 12    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler13:
    li t0, 13    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler14:
    li t0, 14    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
vectored_mtvec_handler15:
    li t0, 15    
    RVTEST_SIGUPD( a1,t0)
    j  direct_mtvec_handler   

    .align 2
    .global first_stvec_handler
first_stvec_handler:
    j  direct_stvec_handler   
    .align 2    
    j  vectored_stvec_handler1   
    .align 2    
    j  vectored_stvec_handler2   
    .align 2    
    j  vectored_stvec_handler3   
    .align 2    
    j  vectored_stvec_handler4   
    .align 2    
    j  vectored_stvec_handler5   
    .align 2    
    j  vectored_stvec_handler6   
    .align 2    
    j  vectored_stvec_handler7   
    .align 2    
    j  vectored_stvec_handler8   
    .align 2    
    j  vectored_stvec_handler9   
    .align 2    
    j  vectored_stvec_handler10   
    .align 2    
    j  vectored_stvec_handler11   
    .align 2    
    j  vectored_stvec_handler12   
    .align 2    
    j  vectored_stvec_handler13   
    .align 2    
    j  vectored_stvec_handler14   
    .align 2    
    j  vectored_stvec_handler15   
    .align 2    

    .align 2
vectored_stvec_handler1:
    li t0, 16    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler2:
    li t0, 17    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler3:
    li t0, 18    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler4:
    li t0, 19    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler5:
    li t0, 20    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler6:
    li t0, 21    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler7:
    li t0, 22    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler8:
    li t0, 23    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler9:
    li t0, 24    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler10:
    li t0, 25    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler11:
    li t0, 26    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler12:
    li t0, 27    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler13:
    li t0, 28    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler14:
    li t0, 29    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

    .align 2
vectored_stvec_handler15:
    li t0, 30    
    RVTEST_SIGUPD( a1,t0)
    j  direct_stvec_handler   

stvec_finish:
    csrr  t0, CSR_SCAUSE
    RVTEST_SIGUPD( a1,t0)
s_done:
    ecall    

mtvec_finish:
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)
m_done:
    csrw CSR_MTVEC, s1; // restore CSR_MTVEC
    csrw CSR_MSCRATCH, s2; // restore CSR_MSCRATCH

    RVMODEL_IO_WRITE_STR(x30, "# Test part A - test order-04\n");

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
    .fill 32*(XLEN/32),4,0xdeadbeef

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

