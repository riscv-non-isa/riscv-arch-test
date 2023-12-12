// -----------                                                   
// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause                         
// -----------                                                   
//                                                               
//                                                               
//////////////////
// Description: Tests miselect with mstateen0[SCSRIND] = 1
// - if Smstateen is included, start in m-mode with mstateen0[SCSRIND] = 1, else expect illegal inst exception

// - write/read miselect,

// - ignore returned value. (WARL)

//////////////////

//////////////////
// miselect-03 settings
#ifndef RVMODEL_CLR_MSTATEEN0_SCSRIND
        #define RVMODEL_CLR_MSTATEEN0_SCSRIND 
#endif
// -----------

// Copyright (c) 2020. RISC-V International. All rights reserved.

// SPDX-License-Identifier: BSD-3-Clause

// -----------

//

// 

//////////////////
// general defaults
#ifndef MSTATEEN0_SCSRIND
        #define MSTATEEN0_SCSRIND 0x1000000000000000
#endif

#ifndef RVMODEL_SET_MSTATEEN0_SCSRIND   
#if   XLEN==32
        #define RVMODEL_SET_MSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0_SCSRIND>>32));      \
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
        LI(t0, (MSTATEEN0_SCSRIND>>32));      \
        csrrc x0, CSR_MSTATEEN0H, t0;
#else       
        #define RVMODEL_CLR_MSTATEEN0_SCSRIND \
        LI(t0, (MSTATEEN0_SCSRIND));          \
        csrrc x0, CSR_MSTATEEN0, t0;
#endif
#endif
        

#include "model_test.h"

#include "arch_test.h"




RVTEST_ISA("RV32I_Zicsr")




# Test code region

.section .text.init

.globl rvtest_entry_point

rvtest_entry_point:

RVMODEL_BOOT

RVTEST_CODE_BEGIN

RVTEST_SIGBASE( a1,signature_a1_m) // a1 will point to signature_a1_m label in the signature region - m-mode

#ifdef TEST_CASE_1

    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*Smcsrind.*); def rvtest_mtrap_routine=True; def TEST_CASE_1=True",miselect)


    # ---------------------------------------------------------------------------------------------

    RVMODEL_SET_MSTATEEN0_SCSRIND
    RVMODEL_CLR_MSTATEEN0_SCSRIND
        
    csrrw x0, CSR_MISELECT, x0
    csrr  t0, CSR_MISELECT

    LI(t0, (0xFFF))
    csrrw x0, CSR_MISELECT, t0
    csrr  t1, CSR_MISELECT

    RVMODEL_IO_WRITE_STR(x30, "# Test part A - test MISELECT\n");

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
