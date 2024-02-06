// -----------                                                   
// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause                         
// -----------                                                   
//                                                               
//                                                               
//////////////////
// Description: tests if RVMODEL_SET_MTIMER_INT is working, hangs in infinite loop otherwise
// - enable mie CSR

// - generate interrupt

// - enable mstatus.mie

// - trigger m-mode handler

// - clear interrupt

// - set mepc to finish

// - mret to finish

//////////////////

//////////////////
// mtimer-01 settings
#ifndef RVMODEL_SET_INT1
        #define RVMODEL_SET_INT1 RVMODEL_SET_MTIMER_INT
#endif
#ifndef RVMODEL_SET_INT2
        #define RVMODEL_SET_INT2 
#endif
#ifndef RVMODEL_CLEAR_INT1
        #define RVMODEL_CLEAR_INT1 RVMODEL_CLEAR_MTIMER_INT
#endif
#ifndef RVMODEL_CLEAR_INT2
        #define RVMODEL_CLEAR_INT2 
#endif
#ifndef RVMODEL_WFI
        #define RVMODEL_WFI inf_loop: j inf_loop;  
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
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*Smclint.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",mtimer-01)
    # ---------------------------------------------------------------------------------------------
    LA(     t0,first_mtvec_handler)
    ori t0, t0, RVMODEL_MTVEC_MODE
    csrrw s1,CSR_MTVEC, t0   ; // mtvec used by arch_test.h, restore at end of test_case 

    LI(     t0,0x55555555)
    csrrw s2,CSR_MSCRATCH, t0 ; // mscratch used by arch_test.h, restore at end of test_case 

    // make sure platform irqs, e.g. mtimer irq, is cleared before starting test
    RVMODEL_CLEAR_ALL_INTS

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

    LI(     t0,RVMODEL_MSTATUS_MIE)
    csrrs x0, CSR_MSTATUS, t0; // enable global interrupts in m-mode
location_1:

    RVMODEL_WFI

    j     finish


    .align 2
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

    LA(     t0,second_mtvec_handler)
    ori t0, t0, RVMODEL_MTVEC_MODE
    csrw  CSR_MTVEC, t0

    RVMODEL_CLEAR_INT1
    RVMODEL_SET_INT2    
    fence; // ensure memory mapped registers are setup
        
    RVMODEL_ECALL
        
    LI(     t0,MSTATUS_MIE )
    csrrs x0, CSR_MSTATUS, t0; // enable global interrupts in m-mode
    ; // CLINT will nest
location_2:
        
    LA(     t0,finish)
    csrw  CSR_MEPC, t0
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

    RVMODEL_CLEAR_INT2
    fence; // ensure memory mapped registers are setup

    LA(     t0,finish)
    csrw  CSR_MEPC, t0

    LI(     t0,MSTATUS_MPIE )
    csrrc x0, CSR_MSTATUS, t0; // clear mstatus.mpie to disable global interrupts after mret
    mret

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
    .global second_mtvec_handler
second_mtvec_handler:
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2
    j  second_direct_mtvec_handler   
    .align 2

finish:
    csrr  t0, CSR_MCAUSE
    RVTEST_SIGUPD( a1,t0)

    csrw CSR_MTVEC, s1; // restore CSR_MTVEC
    csrw CSR_MSCRATCH, s2; // restore CSR_MSCRATCH

    RVMODEL_IO_WRITE_STR(x30, "# Test part A - test mtimer-01\n");

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

