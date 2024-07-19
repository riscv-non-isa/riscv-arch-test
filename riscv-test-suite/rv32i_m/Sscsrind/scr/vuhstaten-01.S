// -----------                                                   
// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause                         
// -----------                                                   
//                                                               
//                                                               
//////////////////
// Description: (requires Ssstateen, hypervisor mode), in vu-mode with hstateen0[SCSRIND] = 1, read siselect, sireg*, vsiselect, vsireg*, get virtual instruction exception.
// - assumes mstateen0[SCSRIND]=1.

//////////////////

//////////////////
// vuhstaten-01 settings
#ifndef RVMODEL_CLR_MSTATEEN0_SCSRIND
        #define RVMODEL_CLR_MSTATEEN0_SCSRIND 
#endif
#ifndef RVMODEL_CLR_HSTATEEN0_SCSRIND
        #define RVMODEL_CLR_HSTATEEN0_SCSRIND   
#endif
#ifndef RVMODEL_SWITCH_TO_S_MODE
        #define RVMODEL_SWITCH_TO_S_MODE 
#endif
#ifndef RVMODEL_SWITCH_TO_VS_MODE
        #define RVMODEL_SWITCH_TO_VS_MODE 
#endif
#ifndef RVMODEL_WRITE_READ_SISELECT
        #define RVMODEL_WRITE_READ_SISELECT 
#endif
#ifndef RVMODEL_READ_SIREGS
        #define RVMODEL_READ_SIREGS 
#endif
#ifndef RVMODEL_WRITE_READ_VSISELECT
        #define RVMODEL_WRITE_READ_VSISELECT 
#endif
#ifndef RVMODEL_READ_VSIREGS
        #define RVMODEL_READ_VSIREGS 
#endif
// -----------

// Copyright (c) 2020. RISC-V International. All rights reserved.

// SPDX-License-Identifier: BSD-3-Clause

// -----------

//

// 

#include "model_test.h"

#include "arch_test.h"

//////////////////
// general defaults
#ifndef MSTATEEN0_SCSRIND
        #define MSTATEEN0_SCSRIND 0x1000000000000000
#endif

#ifndef MSTATEEN0H_SCSRIND
        #define MSTATEEN0H_SCSRIND 0x10000000
#endif

#ifndef RVMODEL_SET_MSTATEEN0_SCSRIND   
#if   XLEN==32
        #define RVMODEL_SET_MSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0H_SCSRIND));         \
        csrrs x0, CSR_MSTATEEN0H, t0;
#else       
        #define RVMODEL_SET_MSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0_SCSRIND));          \
        csrrs x0, CSR_MSTATEEN0, t0;
#endif
#endif
        
#ifndef RVMODEL_CLR_MSTATEEN0_SCSRIND   
#if   XLEN==32
        #define RVMODEL_CLR_MSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0H_SCSRIND));         \
        csrrc x0, CSR_MSTATEEN0H, t0;
#else       
        #define RVMODEL_CLR_MSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0_SCSRIND));          \
        csrrc x0, CSR_MSTATEEN0, t0;
#endif
#endif
        
#ifndef RVMODEL_SET_HSTATEEN0_SCSRIND   
#if   XLEN==32
        #define RVMODEL_SET_HSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0H_SCSRIND));         \
        csrrs x0, CSR_HSTATEEN0H, t0;
#else       
        #define RVMODEL_SET_HSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0_SCSRIND));          \
        csrrs x0, CSR_HSTATEEN0, t0;
#endif
#endif
        
#ifndef RVMODEL_CLR_HSTATEEN0_SCSRIND   
#if   XLEN==32
        #define RVMODEL_CLR_HSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0H_SCSRIND));         \
        csrrc x0, CSR_HSTATEEN0H, t0;
#else       
        #define RVMODEL_CLR_HSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0_SCSRIND));          \
        csrrc x0, CSR_HSTATEEN0, t0;
#endif
#endif
        

#ifndef RVMODEL_SWITCH_TO_S_MODE    
        #define RVMODEL_SWITCH_TO_S_MODE                     \
        LI(   t0, (MSTATUS_SPP));                            \
        csrrs x0, CSR_MSTATUS, t0;                           \
        LA(   t0, sscsrind_test);                            \
        csrw  CSR_SEPC, t0;                                  \
        sret;
#endif

#ifndef RVMODEL_SWITCH_TO_VS_MODE    
#if   XLEN==32
        #define RVMODEL_SWITCH_TO_VS_MODE                    \
        csrw  CSR_VSATP, x0;                                 \
        csrw  CSR_HGATP, x0;                                 \
        LI(   t0, (MSTATUS_SPP));                            \
        csrrs x0, CSR_MSTATUS, t0;                           \
        LI(   t0, (MSTATUSH_MPV));                           \
        csrrs x0, CSR_MSTATUSH, t0;                          \
        LA(   t0, sscsrind_test);                            \
        csrw  CSR_SEPC, t0;                                  \
        sret;
#else       
        #define RVMODEL_SWITCH_TO_VS_MODE                    \
        csrw  CSR_VSATP, x0;                                 \
        csrw  CSR_HGATP, x0;                                 \
        LI(   t0, (MSTATUS_SPP | MSTATUS_MPV));              \
        csrrs x0, CSR_MSTATUS, t0;                           \
        LA(   t0, sscsrind_test);                            \
        csrw  CSR_SEPC, t0;                                  \
        sret;
#endif
#endif

#ifndef RVMODEL_SWITCH_TO_VU_MODE    
#if   XLEN==32
        #define RVMODEL_SWITCH_TO_VU_MODE                    \
        csrw  CSR_VSATP, x0;                                 \
        csrw  CSR_HGATP, x0;                                 \
        LI(   t0, (MSTATUS_MPP));                            \
        csrrc x0, CSR_MSTATUS, t0;                           \
        LI(   t0, (MSTATUSH_MPV));                           \
        csrrs x0, CSR_MSTATUSH, t0;                          \
        LA(   t0, sscsrind_test);                            \
        csrw  CSR_MEPC, t0;                                  \
        mret;
#else       
        #define RVMODEL_SWITCH_TO_VU_MODE                    \
        csrw  CSR_VSATP, x0;                                 \
        csrw  CSR_HGATP, x0;                                 \
        LI(   t0, (MSTATUS_MPP));                            \
        csrrc x0, CSR_MSTATUS, t0;                           \
        LI(   t0, (MSTATUS_MPV));                            \
        csrrs x0, CSR_MSTATUS, t0;                           \
        LA(   t0, sscsrind_test);                            \
        csrw  CSR_MEPC, t0;                                  \
        mret;
#endif
#endif

#ifndef RVMODEL_MISA_HBIT    
        #define RVMODEL_MISA_HBIT 0x80
#endif

#ifndef RVMODEL_SET_HMODE    
        #define RVMODEL_SET_HMODE        \
        LI(t0, (RVMODEL_MISA_HBIT));     \
        csrrs x0, CSR_MISA, t0;          
#endif

#ifndef RVMODEL_WRITE_READ_SISELECT    
        #define RVMODEL_WRITE_READ_SISELECT  \
        csrrw x0, CSR_SISELECT, x0;          \
        csrr  t0, CSR_SISELECT;              \
        LI(t0, (0xFFF));                     \
        csrrw x0, CSR_SISELECT, t0;          \
        csrr  t1, CSR_SISELECT;              
#endif

#ifndef RVMODEL_READ_SIREGS    
        #define RVMODEL_READ_SIREGS           \
        csrr  t0, CSR_SIREG;                  \
        csrr  t0, CSR_SIREG2;                 \
        csrr  t0, CSR_SIREG3;                 \
        csrr  t0, CSR_SIREG4;                 \
        csrr  t0, CSR_SIREG5;                 \
        csrr  t0, CSR_SIREG6;                 
#endif

#ifndef RVMODEL_WRITE_READ_VSISELECT    
        #define RVMODEL_WRITE_READ_VSISELECT  \
        csrrw x0, CSR_VSISELECT, x0;          \
        csrr  t0, CSR_VSISELECT;              \
        LI(t0, (0xFFF));                     \
        csrrw x0, CSR_VSISELECT, t0;          \
        csrr  t1, CSR_VSISELECT;              
#endif

#ifndef RVMODEL_READ_VSIREGS    
        #define RVMODEL_READ_VSIREGS           \
        csrr  t0, CSR_VSIREG;                  \
        csrr  t0, CSR_VSIREG2;                 \
        csrr  t0, CSR_VSIREG3;                 \
        csrr  t0, CSR_VSIREG4;                 \
        csrr  t0, CSR_VSIREG5;                 \
        csrr  t0, CSR_VSIREG6;                 
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

    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*Sscsrind.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",vuhstaten-01)


    # ---------------------------------------------------------------------------------------------

    RVMODEL_SET_MSTATEEN0_SCSRIND
    RVMODEL_CLR_MSTATEEN0_SCSRIND

    RVMODEL_SET_HMODE
    RVMODEL_SET_HSTATEEN0_SCSRIND
    RVMODEL_CLR_HSTATEEN0_SCSRIND
        
    RVMODEL_SWITCH_TO_S_MODE
    RVMODEL_SWITCH_TO_VS_MODE
    RVMODEL_SWITCH_TO_VU_MODE
        
sscsrind_test:
        
    RVMODEL_WRITE_READ_SISELECT
    RVMODEL_READ_SIREGS    
    RVMODEL_WRITE_READ_VSISELECT
    RVMODEL_READ_VSIREGS   

    RVMODEL_IO_WRITE_STR(x30, "# Test part A - test vuhstaten-01\n");

    RVMODEL_IO_WRITE_STR(x30, "# Test End\n")

#endif

 # ---------------------------------------------------------------------------------------------

 # HALT




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




mtrap_sigptr:

  .fill 4, 4, 0xdeadbeef




#ifdef rvtest_gpr_save

gpr_save:

  .fill 32*(XLEN/32), 4, 0xdeadbeef

#endif




sig_end_canary:

CANARY;

rvtest_sig_end:

RVMODEL_DATA_END
