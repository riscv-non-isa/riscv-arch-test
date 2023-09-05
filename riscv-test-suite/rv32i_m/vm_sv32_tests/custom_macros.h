#include "encoding.h"

#define SATP_SV32_MODE_VAL 0x01

#define SREG sw
#define LREG lw
#define MRET mret

#define ENABLE_READ_CHECK     0x01
#define DISABLE_READ_CHECK    0x00
#define ENABLE_WRITE_CHECK    0x01
#define DISABLE_WRITE_CHECK   0x00
#define ENABLE_EXECUTE_CHECK  0x01
#define DISBALE_EXECUTE_CHECK 0x00

#define LEVEL0 0x00
#define LEVEL1 0x01

#define ACCESS_BIT_TEST        0x01
#define VM_PMP_TEST            0x02
#define VM_MXR_UNSET_TEST      0x03
#define VM_SUM_UNSET_TEST      0x04
#define VM_SATP_SV32_MODE_TEST 0x05

#define REG_CLEAR    0x1
#define NO_REG_CLEAR 0x0

#define ALL_F_S 0xFFFFFFFF
#define LHW_F_S 0x0000FFFF
#define UHW_F_S 0xFFFF0000
#define B1_F_S  0x000000FF
#define B2_F_S  0x0000FF00
#define B3_F_S  0x00FF0000
#define B4_F_S  0xFF000000

#define PMPADDR0 0x0
#define PMPADDR1 0x1
#define PMPADDR2 0x2
#define PMPADDR3 0x3

#define PMPCFG_0_SHIFT 0x00
#define PMPCFG_1_SHIFT 0x08
#define PMPCFG_2_SHIFT 0x10
#define PMPCFG_3_SHIFT 0x18

#define NAPOT_RANGE_8B  0x0
#define NAPOT_RANGE_16B 0x01
#define NAPOT_RANGE_32B 0x03

#define PTE_OFFSET_SHIFT 12

#define INSTRUCTION_ADDRESS_MISALIGNED 0
#define INSTRUCTION_ACCESS_FAULT       1
#define ILLEGAL_INSTRUCTION            2 
#define BREAKPOINT                     3
#define LOAD_ADDRESS_MISALIGNED        4
#define LOAD_ACCESS_FAULT              5
#define STORE_AMO_ADDRESS_MISALIGNED   6
#define STORE_AMO_ACCESS_FAULT         7
#define ENVIRONMENT_CALL_FROM_U_MODE   8
#define ENVIRONMENT_CALL_FROM_S_MODE   9
#define ENVIRONMENT_CALL_FROM_M_MODE   11
#define INSTRUCTION_PAGE_FAULT         12
#define LOAD_PAGE_FAULT                13
#define STORE_AMO_PAGE_FAULT           15

#define OP_READ    0x0
#define OP_WRITE   0x1
#define OP_EXECUTE 0x01

#define ASID_IMPLE_CVA6 0x00400000
#define EXPECTED_ASID   0x00400000

#define NO_EXCEP_NO     110

#define SHIFT_22         22
#define SHIFT_20         20
#define SHIFT_12         12
#define PGTB_INDEX_SHIFT 2

#define SUCCESS 0
#define FAILED  1


#define WRITE_CSR(CSR_REG, SRC_REG)                                ;\
    csrw CSR_REG, SRC_REG                                          ;

#define CLEAR_CSR(CSR_REG, SRC_REG)                                ;\
    csrc CSR_REG, SRC_REG                                          ;

#define SET_CSR(CSR_REG, SRC_REG)                                  ;\
    csrs CSR_REG, SRC_REG                                          ;

#define READ_CSR(CSR_REG, DST_REG)                                 ;\
    csrr DST_REG, CSR_REG                                          ;

#define CLEAR_REG(REG)                                             ;\
    li REG, 0                                                      ;

#define ALL_MEM_PMP                                                ;\
    li t2, ALL_F_S                                                 ;\
    csrw pmpaddr0, t2                                              ;\
    CLEAR_REG(t2)                                                  ;\
    SET_PMP_TOR_RWX(t2, t6, PMPADDR0)                              ;\
    csrw pmpcfg0, t2                                               ;\


#define SET_PMP_R(REG, TMP, PMPADDR)                               ;\
    .if(PMPADDR == PMPADDR0)                                       ;\
        ori REG, REG, PMP_R                                        ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR1)                                       ;\
        li TMP, PMP_R                                              ;\
        slli TMP, TMP, PMPADDR1 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR2)                                       ;\
        li TMP, PMP_R                                              ;\
        slli TMP, TMP, PMPADDR2 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR3)                                       ;\
        li TMP, PMP_R                                              ;\
        slli TMP, TMP, PMPADDR3 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    CLEAR_REG(TMP)                                                 ;

#define SET_PMP_W(REG, TMP, PMPADDR)                               ;\
    .if(PMPADDR == PMPADDR0)                                       ;\
        ori REG, REG, PMP_W                                        ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR1)                                       ;\
        li TMP, PMP_W                                              ;\
        slli TMP, TMP, PMPADDR1 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR2)                                       ;\
        li TMP, PMP_W                                              ;\
        slli TMP, TMP, PMPADDR2 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR3)                                       ;\
        li TMP, PMP_W                                              ;\
        slli TMP, TMP, PMPADDR3 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    CLEAR_REG(TMP)                                                 ;

#define SET_PMP_X(REG, TMP, PMPADDR)                               ;\
    .if(PMPADDR == PMPADDR0)                                       ;\
        ori REG, REG, PMP_X                                        ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR1)                                       ;\
        li TMP, PMP_X                                              ;\
        slli TMP, TMP, PMPADDR1 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR2)                                       ;\
        li TMP, PMP_X                                              ;\
        slli TMP, TMP, PMPADDR2 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR3)                                       ;\
        li TMP, PMP_X                                              ;\
        slli TMP, TMP, PMPADDR3 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    CLEAR_REG(TMP)                                                 ;


#define SET_PMP_TOR(REG, TMP, PMPADDR)                             ;\
    .if(PMPADDR == PMPADDR0)                                       ;\
        ori REG, REG, PMP_TOR                                      ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR1)                                       ;\
        li TMP, PMP_TOR                                            ;\
        slli TMP, TMP, PMPADDR1 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR2)                                       ;\
        li TMP, PMP_TOR                                            ;\
        slli TMP, TMP, PMPADDR2 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR3)                                       ;\
        li TMP, PMP_TOR                                            ;\
        slli TMP, TMP, PMPADDR3 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    CLEAR_REG(TMP)                                                 ;


#define SET_PMP_TOR_RWX(REG, TMP, PMPADDR)                         ;\
    SET_PMP_X(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_R(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_W(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_TOR(REG, TMP, PMPADDR)                                 ;





#define WRITE_MEPC(_TR1, LABEL)                                    ;\
    la _TR1, LABEL                                                 ;\
    WRITE_CSR(mepc, _TR1)                                          ;

#define SET_RWX_PERMISSION(REG, ZERO)                              ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        SET_PTE_R(REG, REG_CLEAR)                                  ;\
    .else                                                          ;\
        SET_PTE_R(REG, NO_REG_CLEAR)                               ;\
    .endif                                                         ;\
    SET_PTE_W(REG, NO_REG_CLEAR)                                   ;\
    SET_PTE_X(REG, NO_REG_CLEAR)                                   ;

#define SET_RWXV_BITS(REG, ZERO)                                   ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        SET_PTE_R(REG, REG_CLEAR)                                  ;\
    .else                                                          ;\
        SET_PTE_R(REG, NO_REG_CLEAR)                               ;\
    .endif                                                         ;\
    SET_PTE_W(REG, NO_REG_CLEAR)                                   ;\
    SET_PTE_X(REG, NO_REG_CLEAR)                                   ;\
    SET_PTE_V(REG, NO_REG_CLEAR)                                   ;

#define SET_RW_BITS(REG, ZERO)                                     ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        SET_PTE_R(REG, REG_CLEAR)                                  ;\
    .else                                                          ;\
        SET_PTE_R(REG, NO_REG_CLEAR)                               ;\
    .endif                                                         ;\
    SET_PTE_W(REG, NO_REG_CLEAR)                                   ;\

#define SET_RV_BITS(REG, ZERO)                                     ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        SET_PTE_R(REG, REG_CLEAR)                                  ;\
    .else                                                          ;\
        SET_PTE_R(REG, NO_REG_CLEAR)                               ;\
    .endif                                                         ;\
    SET_PTE_V(REG, NO_REG_CLEAR)                                   ;\

#define SET_WV_BITS(REG, ZERO)                                     ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        SET_PTE_W(REG, REG_CLEAR)                                  ;\
    .else                                                          ;\
        SET_PTE_W(REG, NO_REG_CLEAR)                               ;\
    .endif                                                         ;\
    SET_PTE_V(REG, NO_REG_CLEAR)                                   ;\

#define SET_PTE_R(REG, ZERO)                                       ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        CLEAR_REG(REG)                                             ;\
    .endif                                                         ;\
    ori REG, REG, PTE_R                                            ;

#define SET_PTE_W(REG, ZERO)                                       ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        CLEAR_REG(REG)                                             ;\
    .endif                                                         ;\
    ori REG, REG, PTE_W                                            ;

#define SET_PTE_X(REG, ZERO)                                       ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        CLEAR_REG(REG)                                             ;\
    .endif                                                         ;\
    ori REG, REG, PTE_X                                            ;

#define SET_PTE_U(REG, ZERO)                                       ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        CLEAR_REG(REG)                                             ;\
    .endif                                                         ;\
    ori REG, REG, PTE_U                                            ;

#define SET_PTE_G(REG, ZERO)                                       ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        CLEAR_REG(REG)                                             ;\
    .endif                                                         ;\
    ori REG, REG, PTE_G                                            ;

#define SET_PTE_A(REG, ZERO)                                       ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        CLEAR_REG(REG)                                             ;\
    .endif                                                         ;\
    ori REG, REG, PTE_A                                            ;

#define SET_PTE_D(REG, ZERO)                                       ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        CLEAR_REG(REG)                                             ;\
    .endif                                                         ;\
    ori REG, REG, PTE_D                                            ;

#define SET_PTE_V(REG, ZERO)                                       ;\
    .if(ZERO==REG_CLEAR)                                           ;\
        CLEAR_REG(REG)                                             ;\
    .endif                                                         ;\
    ori REG, REG, PTE_V                                            ;

#define CHECK_SV32_MODE(REG)                                       ;\
    GET_SATP_MODE(REG)                                             ;

#define GET_SATP_MODE(DST_REG)                                     ;\
    READ_CSR(satp, DST_REG)                                        ;\
    srli DST_REG, DST_REG, 31                                      ;\



#define PTE(PA, PR)                                                ;\
    srli     PA, PA, PTE_OFFSET_SHIFT                              ;\
    slli     PA, PA, PTE_PPN_SHIFT                                 ;\
    or       PA, PA, PR                                            ;

#define PTE_SETUP_RV32(PA, PR, TMP, VA, level)                     ;\
    PTE(PA, PR)                                                    ;\
    .if (level==LEVEL1)                                            ;\
        la   TMP, pgtb_l1                                          ;\
        srli VA,  VA, SHIFT_22                                     ;\
    .endif                                                         ;\
    .if (level==LEVEL0)                                            ;\
        la   TMP, pgtb_l0                                          ;\
        slli VA,  VA, PTE_PPN_SHIFT                                ;\
        srli VA,  VA, SHIFT_22                                     ;\
    .endif                                                         ;\
    slli     VA,  VA,  PGTB_INDEX_SHIFT                            ;\
    add      TMP, TMP, VA                                          ;\
    SREG     PA,  0(TMP)                                           ;

#define SATP_SETUP_SV32                                            ;\
    la   t6,   pgtb_l1                                             ;\
    li   t5,   SATP32_MODE                                         ;\
    srli t6,   t6, SHIFT_12                                        ;\
    or   t6,   t6, t5                                              ;\
    WRITE_CSR(satp, t6)                                            ;\
    sfence.vm                                                      ;

#define EXIT_LOGIC(REG, VAL)                                       ;\
    SREG VAL, 0(REG)                                               ;

#define GEN_VA(PA, VA, UP_10_BITS, MID_10_BITS)                    ;\
    slli VA, PA, SHIFT_20                                          ;\
    srli VA, VA, SHIFT_20                                          ;\
    li   t0, UP_10_BITS                                            ;\
    slli t0, t0, SHIFT_22                                          ;\
    or   VA, VA, t0                                                ;\
    li   t0, MID_10_BITS                                           ;\
    slli t0, t0, SHIFT_12                                          ;\
    or   VA, VA, t0                                                ;


#define CLEAR_ALL_PMPADDR                                          ;\
    WRITE_CSR(pmpaddr0, x0)                                        ;\
    WRITE_CSR(pmpaddr1, x0)                                        ;\
    WRITE_CSR(pmpaddr2, x0)                                        ;\
    WRITE_CSR(pmpaddr3, x0)                                        ;\
    WRITE_CSR(pmpaddr4, x0)                                        ;\
    WRITE_CSR(pmpaddr5, x0)                                        ;\
    WRITE_CSR(pmpaddr6, x0)                                        ;\
    WRITE_CSR(pmpaddr7, x0)                                        ;\
    WRITE_CSR(pmpaddr8, x0)                                        ;\
    WRITE_CSR(pmpaddr9, x0)                                        ;\
    WRITE_CSR(pmpaddr10, x0)                                       ;\
    WRITE_CSR(pmpaddr11, x0)                                       ;\
    WRITE_CSR(pmpaddr12, x0)                                       ;\
    WRITE_CSR(pmpaddr13, x0)                                       ;\
    WRITE_CSR(pmpaddr14, x0)                                       ;\
    WRITE_CSR(pmpaddr15, x0)                                       ;

#define CLEAR_ALL_PMPCFG                                           ;\
    WRITE_CSR(pmpcfg0, x0)                                         ;\
    WRITE_CSR(pmpcfg1, x0)                                         ;\
    WRITE_CSR(pmpcfg2, x0)                                         ;\
    WRITE_CSR(pmpcfg3, x0)                                         ;\


#define CHANGE_T0_S_MODE(MEPC_ADDR)                                ;\
    li        t0, MSTATUS_MPP                                      ;\
    CLEAR_CSR (mstatus, t0)                                        ;\
    li  t1, MSTATUS_MPP & ( MSTATUS_MPP >> 1)                      ;\
    SET_CSR   (mstatus,t1)                                         ;\
    WRITE_CSR (mepc,MEPC_ADDR)                                     ;\
    mret                                                           ;

#define CHANGE_T0_U_MODE(SEPC_ADDR)                                ;\
    li        t0, SSTATUS_SPP                                      ;\
    CLEAR_CSR (sstatus,t0)                                         ;\
    WRITE_CSR (sepc,SEPC_ADDR)                                     ;\
    sret                                                           ;

#define LA(reg,val)                                                ;\
    .option push                                                   ;\
    .option rvc                                                    ;\
    .align UNROLLSZ                                                ;\
    .option norvc                                                  ;\
    la reg,val                                                     ;\
    .align UNROLLSZ                                                ;\
    .option p                                                      ;



#define SET_PMP_RWX(REG, TMP, PMPADDR)                             ;\
    SET_PMP_X(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_R(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_W(REG, TMP, PMPADDR)                                   ;

#define SET_PMP_RX(REG, TMP, PMPADDR)                              ;\
    SET_PMP_X(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_R(REG, TMP, PMPADDR)                                   ;

#define SET_PMP_WX(REG, TMP, PMPADDR)                              ;\
    SET_PMP_X(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_W(REG, TMP, PMPADDR)                                   ;

#define SET_PMP_RW(REG, TMP, PMPADDR)                              ;\
    SET_PMP_W(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_R(REG, TMP, PMPADDR)                                   ;



#define SET_PMP_NA4_RWX(REG, TMP, PMPADDR)                         ;\
    SET_PMP_X(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_R(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_W(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_NA4(REG, TMP, PMPADDR)                                 ;

#define SET_PMP_NAPOT_RWX(REG, TMP, PMPADDR)                       ;\
    SET_PMP_X(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_R(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_W(REG, TMP, PMPADDR)                                   ;\
    SET_PMP_NA4(REG, TMP, PMPADDR)                                 ;


#define SET_PMP_NA4(REG, TMP, PMPADDR)                             ;\
    .if(PMPADDR == PMPADDR0)                                       ;\
        ori REG, REG, PMP_NA4                                      ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR1)                                       ;\
        li TMP, PMP_NA4                                            ;\
        slli TMP, TMP, PMPADDR1 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR2)                                       ;\
        li TMP, PMP_NA4                                            ;\
        slli TMP, TMP, PMPADDR2 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR3)                                       ;\
        li TMP, PMP_NA4                                            ;\
        slli TMP, TMP, PMPADDR3 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    CLEAR_REG(TMP)                                                 ;

#define SET_PMP_NAPOT(REG, TMP, PMPADDR)                           ;\
    .if(PMPADDR == PMPADDR0)                                       ;\
        ori REG, REG, PMP_NAPOT                                    ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR1)                                       ;\
        li TMP, PMP_NAPOT                                          ;\
        slli TMP, TMP, PMPADDR1 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR2)                                       ;\
        li TMP, PMP_NAPOT                                          ;\
        slli TMP, TMP, PMPADDR2 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    .if(PMPADDR == PMPADDR3)                                       ;\
        li TMP, PMP_NAPOT                                          ;\
        slli TMP, TMP, PMPADDR3 << PMPADDR3                        ;\
        or REG, REG, TMP                                           ;\
    .endif                                                         ;\
    CLEAR_REG(TMP)                                                 ;



#define ABit_trap_handler                                          ;\
    trap_handler:                                                  ;\
        li t0,NO_EXCEP_NO                                          ;\
        beq t0,s11,No_excep                                        ;\
        csrr  t0,    mcause                                        ;\
        bne   t0, s11, wrong_excep                                 ;\
        csrr  s11, mepc                                            ;\
        bne   s10, s11, wrong_excep                                ;\
        li    t1,   INSTRUCTION_ACCESS_FAULT                       ;\
        beq   t0,   t1, instruction_access_fault                   ;\
        li    t1,   ILLEGAL_INSTRUCTION                            ;\
        beq   t0,   t1, illegal_instruction_fault                  ;\
        li    t1,   LOAD_ACCESS_FAULT                              ;\
        beq   t0,   t1, load_access_fault                          ;\
        li    t1,   STORE_AMO_ACCESS_FAULT                         ;\
        beq   t0,   t1, store_access_fault                         ;\
        li    t1,   INSTRUCTION_PAGE_FAULT                         ;\
        beq   t0,   t1, instruction_page_fault                     ;\
        li    t1,   LOAD_PAGE_FAULT                                ;\
        beq   t0,   t1, load_page_fault                            ;\
        li    t1,   STORE_AMO_PAGE_FAULT                           ;\
        beq   t0,   t1, store_page_fault                           ;\
        j     trap_handler_end                                     ;\
    instruction_access_fault:                                      ;\
        li x1, SUCCESS                                             ;\
        la s1, tohost                                              ;\
        j exit                                                     ;\
    illegal_instruction_fault:                                     ;\
        li x1, SUCCESS                                             ;\
        la s1, tohost                                              ;\
        j exit                                                     ;\
    load_access_fault:                                             ;\
        li x1, SUCCESS                                             ;\
        la s1, tohost                                              ;\
        j exit                                                     ;\
    store_access_fault:                                            ;\
        li x1, SUCCESS                                             ;\
        la s1, tohost                                              ;\
        j exit                                                     ;\
    instruction_page_fault:                                        ;\
        li x1, SUCCESS                                             ;\
        la s1, tohost                                              ;\
        j exit                                                     ;\
    load_page_fault:                                               ;\
        li x1, SUCCESS                                             ;\
        la s1, tohost                                              ;\
        j exit                                                     ;\
    store_page_fault:                                              ;\
        li x1, SUCCESS                                             ;\
        la s1, tohost                                              ;\
        j exit                                                     ;\
    trap_handler_end:                                              ;\
        j exit                                                     ;\
    wrong_excep:                                                   ;\
        li x1, FAILED                                              ;\
        la s1, tohost                                              ;\
        j exit                                                     ;\
    No_excep:                                                      ;\
        j exit                                                     ;

#define TEST_DIRTY_BIT(MODE, LEVEL, R, W, X)                       ;\
    li s11, STORE_AMO_PAGE_FAULT                                   ;\
    PMP_ALL_MEM                                                    ;\
    li t2, 0x23                                                    ;\
    la t1, test_seg                                                ;\
    sw t2, 0(t1)                                                   ;\
    .if(LEVEL == LEVEL0)                                           ;\
        la a1, pgtb_l0                                             ;\
        GEN_VA(a1, a0, 0x003, 0x002)                               ;\
        SET_PTE_V(a2, REG_CLEAR)                                   ;\
        PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL1)                     ;\
    .endif                                                         ;\
    SET_PTE_D(a2, REG_CLEAR)                                       ;\
    SET_PTE_X(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_W(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_R(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    .if(MODE == PRV_S)                                             ;\
        la a1, supervisor_code                                     ;\
    .else                                                          ;\
        la a1, user_code                                           ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    GEN_VA(a1, a0, 0x003, 0x000)                                   ;\
    mv t3, a0                                                      ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la a1, test_seg                                                ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x004)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x004, 0x000)                               ;\
    .endif                                                         ;\
    mv t4, a0                                                      ;\
    .if(R == 1)                                                    ;\
        SET_PTE_R(a2, REG_CLEAR)                                   ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        SET_PTE_W(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(X == 1)                                                    ;\
        SET_PTE_X(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la t1, tohost                                                  ;\
    mv a1, t1                                                      ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x005)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x005, 0x000)                               ;\
    .endif                                                         ;\
    mv s1, a0                                                      ;\
    SET_RWXV_BITS(a2, REG_CLEAR)                                   ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    SATP_SETUP_SV32                                                ;\
    la t2, trap_handler                                            ;\
    WRITE_CSR (mtvec, t2)                                          ;\
    WRITE_CSR (mepc, t3)                                           ;\
    li t2, MSTATUS_MPP                                             ;\
    CLEAR_CSR (mstatus, t2)                                        ;\
    .if(MODE == PRV_S)                                             ;\
        li t2, MSTATUS_MPP & (MSTATUS_MPP>>1)                      ;\
    .else                                                          ;\
        li t2, MSTATUS_MPP & (MSTATUS_MPP>>2)                      ;\
    .endif                                                         ;\
    SET_CSR (mstatus, t2)                                          ;\
        srli t3, t3, SHIFT_12                                      ;\
        slli t3, t3, SHIFT_12                                      ;\
        .if(MODE == PRV_S)                                         ;\
            la s2, test_mepc_S                                     ;\
        .else                                                      ;\
            la s2, test_mepc_U                                     ;\
        .endif                                                     ;\
        slli s2, s2, SHIFT_20                                      ;\
        srli s2, s2, SHIFT_20                                      ;\
        or s10, t3, s2                                             ;\
    MRET                                                           ;\
    supervisor_code:                                               ;\
    lw t1, 0(t4)                                                   ;\
    test_mepc_S:                                                   ;\
    .if(W == 1)                                                    ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    j exit                                                         ;\
    user_code:                                                     ;\
    lw t1, 0(t4)                                                   ;\
    test_mepc_U:                                                   ;\
    .if(W == 1)                                                    ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    j exit                                                         ;

#define TEST_VM_FEATURES(MODE, LEVEL, R, W, X, TEST)               ;\
    .if(X == ENABLE_EXECUTE_CHECK)                                 ;\
        li s11, INSTRUCTION_PAGE_FAULT                             ;\
    .endif                                                         ;\
    .if(R == ENABLE_READ_CHECK)                                    ;\
        li s11, LOAD_PAGE_FAULT                                    ;\
    .endif                                                         ;\
    .if(W == ENABLE_WRITE_CHECK)                                   ;\
        li s11, STORE_AMO_PAGE_FAULT                               ;\
    .endif                                                         ;\
    .if(TEST == VM_PMP_TEST)                                       ;\
        li t2, 0x80000800                                          ;\
        srli t2, t2, PMP_SHIFT                                     ;\
        csrw pmpaddr0, t2                                          ;\
        la t2, pgtb_l1                                             ;\
        srli t2, t2, PMP_SHIFT                                     ;\
        csrw pmpaddr1, t2                                          ;\
        li t2, 0x84000000                                          ;\
        srli t2, t2, PMP_SHIFT                                     ;\
        csrw pmpaddr2, t2                                          ;\
        la t2, test_seg                                            ;\
        srli t2, t2, PMP_SHIFT                                     ;\
        ori t2, t2, NAPOT_RANGE_8B                                 ;\
        csrw pmpaddr3, t2                                          ;\
        .if(X == ENABLE_EXECUTE_CHECK)                             ;\
        li s11, INSTRUCTION_ACCESS_FAULT                           ;\
        .endif                                                     ;\
        .if(R == ENABLE_READ_CHECK)                                ;\
            li s11, LOAD_ACCESS_FAULT                              ;\
        .endif                                                     ;\
        .if(W == ENABLE_WRITE_CHECK)                               ;\
            li s11, STORE_AMO_ACCESS_FAULT                         ;\
        .endif                                                     ;\
        CLEAR_REG(t2)                                              ;\
        .if(X==ENABLE_EXECUTE_CHECK)                               ;\
            SET_PMP_RW(t2, t6, PMPADDR0)                           ;\
            SET_PMP_TOR(t2, t6, PMPADDR0)                          ;\
            SET_PMP_TOR_RWX(t2, t6, PMPADDR2)                      ;\
            SET_PMP_NAPOT_RWX(t2, t6, PMPADDR3)                    ;\
        .endif                                                     ;\
        .if(R==DISABLE_READ_CHECK)                                 ;\
            .if(W==ENABLE_WRITE_CHECK)                             ;\
                SET_PMP_TOR_RWX(t2, t6, PMPADDR0)                  ;\
                SET_PMP_TOR_RWX(t2, t6, PMPADDR2)                  ;\
                SET_PMP_RX(t2, t6, PMPADDR3)                       ;\
                SET_PMP_NAPOT(t2, t6, PMPADDR3)                    ;\
            .endif                                                 ;\
        .endif                                                     ;\
        .if(R==ENABLE_READ_CHECK)                                  ;\
            .if(W==DISABLE_WRITE_CHECK)                            ;\
                SET_PMP_TOR_RWX(t2, t6, PMPADDR0)                  ;\
                SET_PMP_TOR_RWX(t2, t6, PMPADDR2)                  ;\
                SET_PMP_WX(t2, t6, PMPADDR3)                       ;\
                SET_PMP_NAPOT(t2, t6, PMPADDR3)                    ;\
            .endif                                                 ;\
        .endif                                                     ;\
        csrw pmpcfg0, t2                                           ;\
    .else                                                          ;\
        ALL_MEM_PMP                                                ;\
    .endif                                                         ;\
    li t2, 0x23                                                    ;\
    la t1, test_seg                                                ;\
    sw t2, 0(t1)                                                   ;\
    .if(LEVEL == LEVEL0)                                           ;\
        la a1, pgtb_l0                                             ;\
        GEN_VA(a1, a0, 0x003, 0x002)                               ;\
        SET_PTE_V(a2, REG_CLEAR)                                   ;\
        PTE_SETUP_RV32(a1, a2, t1, a0, 1)                          ;\
    .endif                                                         ;\
    .if(MODE == PRV_S)                                             ;\
        la a1, supervisor_code                                     ;\
    .else                                                          ;\
        la a1, user_code                                           ;\
    .endif                                                         ;\
    GEN_VA(a1, a0, 0x003, 0x000)                                   ;\
    mv t3, a0                                                      ;\
    SET_PTE_D(a2, REG_CLEAR)                                       ;\
    .if(TEST == ACCESS_BIT_TEST)                                   ;\
        .if(X != ENABLE_EXECUTE_CHECK)                             ;\
            SET_PTE_A(a2, NO_REG_CLEAR)                            ;\
        .endif                                                     ;\
    .else                                                          ;\
        SET_PTE_A(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    SET_RWXV_BITS(a2, NO_REG_CLEAR)                                ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(TEST == VM_SUM_UNSET_TEST)                                 ;\
        .if(X==ENABLE_EXECUTE_CHECK)                               ;\
            SET_PTE_U(a2, NO_REG_CLEAR)                            ;\
        .endif                                                     ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la a1, test_seg                                                ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x004)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x004, 0x000)                               ;\
    .endif                                                         ;\
    mv t4, a0                                                      ;\
    CLEAR_REG(a2)                                                  ;\
    .if(TEST != VM_MXR_UNSET_TEST)                                 ;\
        SET_PTE_R(a2, REG_CLEAR)                                   ;\
    .endif                                                         ;\
    .if(TEST != ACCESS_BIT_TEST)                                   ;\
        SET_PTE_A(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    SET_PTE_W(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .elseif(TEST == VM_SUM_UNSET_TEST)                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la t1, tohost                                                  ;\
    mv a1, t1                                                      ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x005)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x005, 0x000)                               ;\
    .endif                                                         ;\
    mv s1, a0                                                      ;\
    SET_RWXV_BITS(a2, REG_CLEAR)                                   ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    SATP_SETUP_SV32                                                ;\
    la t2, trap_handler                                            ;\
    WRITE_CSR (mtvec, t2)                                          ;\
    WRITE_CSR (mepc, t3)                                           ;\
    li t2, MSTATUS_MPP                                             ;\
    CLEAR_CSR (mstatus, t2)                                        ;\
    .if(MODE == PRV_S)                                             ;\
        li t2,  MSTATUS_MPP & (MSTATUS_MPP >> 1)                   ;\
    .else                                                          ;\
        li t2, MSTATUS_MPP & (MSTATUS_MPP >> 2)                    ;\
    .endif                                                         ;\
    SET_CSR (mstatus, t2)                                          ;\
    mv s10, t3                                                     ;\
    MRET                                                           ;\
    supervisor_code:                                               ;\
    li t1, 0x45                                                    ;\
    .if(TEST != VM_MXR_UNSET_TEST)                                 ;\
        la s10, test_mepc_S                                        ;\
        test_mepc_S:                                               ;\
        .if(R == ENABLE_READ_CHECK)                                ;\
            lw t1, 0(t4)                                           ;\
        .endif                                                     ;\
        .if(W == ENABLE_WRITE_CHECK)                               ;\
            sw t1, 0(t4)                                           ;\
        .endif                                                     ;\
    .else                                                          ;\
        li s11, LOAD_PAGE_FAULT                                    ;\
        la s10, test_mepc_S_MXR                                    ;\
        test_mepc_S_MXR:                                           ;\
        lw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    li x1, FAILED                                                  ;\
    j exit                                                         ;\
    user_code:                                                     ;\
    li t1, 0x45                                                    ;\
    .if(TEST != VM_MXR_UNSET_TEST)                                 ;\
        la s10, test_mepc_U                                        ;\
        test_mepc_U:                                               ;\
        .if(R == ENABLE_READ_CHECK)                                ;\
            lw t1, 0(t4)                                           ;\
        .endif                                                     ;\
        .if(W == ENABLE_WRITE_CHECK)                               ;\
            sw t1, 0(t4)                                           ;\
        .endif                                                     ;\
    .else                                                          ;\
        la s10, test_mepc_MXR_U                                    ;\
        li s11, LOAD_PAGE_FAULT                                    ;\
        test_mepc_MXR_U:                                           ;\
        lw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    li x1, FAILED                                                  ;\
    j exit                                                         ;

 #define PMP_ALL_MEM                                               ;\
    li t2, -1                                                      ;\
    WRITE_CSR (pmpaddr0, t2)                                       ;\
    CLEAR_REG(t2)                                                  ;\
    SET_PMP_TOR_RWX(t2, t6, PMPADDR0)                              ;\
    WRITE_CSR (pmpcfg0, t2)                                        ;


#define TEST_UBIT_UNSET(MODE, LEVEL, R, W, X, op)                  ;\
    .if(op == 1)                                                   ;\
        li s11, STORE_AMO_PAGE_FAULT                               ;\
    .endif                                                         ;\
    .if(op == 0)                                                   ;\
        li s11, LOAD_PAGE_FAULT                                    ;\
    .endif                                                         ;\
    .if(X == 0)                                                    ;\
        li s11, INSTRUCTION_PAGE_FAULT                             ;\
    .endif                                                         ;\
    li t2, -1                                                      ;\
    csrw pmpaddr0, t2                                              ;\
    li t2, 0x0F                                                    ;\
    csrw pmpcfg0, t2                                               ;\
    li t2, 0x23                                                    ;\
    la t1, test_seg                                                ;\
    sw t2, 0(t1)                                                   ;\
    .if(LEVEL == 0)                                                ;\
        la a1, pgtb_l0                                             ;\
        GEN_VA(a1, a0, 0x003, 0x002)                               ;\
        SET_PTE_V(a2, REG_CLEAR)                                   ;\
        PTE_SETUP_RV32(a1, a2, t1, a0, 1)                          ;\
    .endif                                                         ;\
    .if(MODE == PRV_S)                                             ;\
        la a1, supervisor_code                                     ;\
    .else                                                          ;\
        la a1, user_code                                           ;\
    .endif                                                         ;\
    GEN_VA(a1, a0, 0x003, 0x000)                                   ;\
    mv t3, a0                                                      ;\
    SET_PTE_A(a2, REG_CLEAR)                                       ;\
    .if(X == 1)                                                    ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    SET_PTE_W(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_X(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_R(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la a1, test_seg                                                ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x004)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x004, 0x000)                               ;\
    .endif                                                         ;\
    mv t4, a0                                                      ;\
    .if(R == 1)                                                    ;\
        SET_PTE_R(a2, REG_CLEAR)                                   ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        SET_PTE_W(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    SET_PTE_X(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la t1, tohost                                                  ;\
    mv a1, t1                                                      ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x005)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x005, 0x000)                               ;\
    .endif                                                         ;\
    mv s1, a0                                                      ;\
    SET_RWXV_BITS(a2, REG_CLEAR)                                   ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    SATP_SETUP_SV32                                                ;\
    la t2, trap_handler                                            ;\
    WRITE_CSR (mtvec, t2)                                          ;\
    WRITE_CSR (mepc, t3)                                           ;\
    li t2, MSTATUS_MPP                                             ;\
    CLEAR_CSR (mstatus, t2)                                        ;\
    .if(MODE == PRV_S)                                             ;\
        li t2,  MSTATUS_MPP & (MSTATUS_MPP >> 1)                   ;\
    .else                                                          ;\
        li t2, MSTATUS_MPP & (MSTATUS_MPP >> 2)                    ;\
    .endif                                                         ;\
    SET_CSR (mstatus, t2)                                          ;\
    mv s10,t3                                                      ;\
           .if(X == 1)                                             ;\
        srli t3, t3, SHIFT_12                                      ;\
        slli t3, t3, SHIFT_12                                      ;\
        .if(MODE == PRV_S)                                         ;\
            la s2, test_mepc_S                                     ;\
        .else                                                      ;\
            la s2, test_mepc_U                                     ;\
        .endif                                                     ;\
        slli s2, s2, SHIFT_20                                      ;\
        srli s2, s2, SHIFT_20                                      ;\
        or s10, t3, s2                                             ;\
    .endif                                                         ;\
    MRET                                                           ;\
    supervisor_code:                                               ;\
    li t1, 0x45                                                    ;\
    test_mepc_S:                                                   ;\
    .if(R != 1)                                                    ;\
        lw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
        li x1, FAILED                                              ;\
    j exit                                                         ;\
    user_code:                                                     ;\
    li t1, 0x45                                                    ;\
    test_mepc_U:                                                   ;\
    .if(op != 1)                                                   ;\
        lw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    .if(op == 1)                                                   ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
        li x1, FAILED                                              ;\
    j exit                                                         ;

#define TEST_UBIT_SET(MODE, LEVEL, R, W, X, op)                    ;\
    .if(op == 1)                                                   ;\
        li s11, STORE_AMO_PAGE_FAULT                               ;\
    .endif                                                         ;\
    .if(op == 0)                                                   ;\
        li s11, LOAD_PAGE_FAULT                                    ;\
    .endif                                                         ;\
    .if(X == 0)                                                    ;\
        li s11, INSTRUCTION_PAGE_FAULT                             ;\
    .endif                                                         ;\
    PMP_ALL_MEM                                                    ;\
    li t2, 0x23                                                    ;\
    la t1, test_seg                                                ;\
    sw t2, 0(t1)                                                   ;\
    .if(LEVEL == LEVEL0)                                           ;\
        la a1, pgtb_l0                                             ;\
        GEN_VA(a1, a0, 0x003, 0x002)                               ;\
        SET_PTE_V(a2, REG_CLEAR)                                   ;\
        PTE_SETUP_RV32(a1, a2, t1, a0, 1)                          ;\
    .endif                                                         ;\
    .if(MODE == PRV_S)                                             ;\
        la a1, supervisor_code                                     ;\
    .else                                                          ;\
        la a1, user_code                                           ;\
    .endif                                                         ;\
    GEN_VA(a1, a0, 0x003, 0x000)                                   ;\
    mv t3, a0                                                      ;\
    SET_PTE_A(a2, REG_CLEAR)                                       ;\
    .if(X == 1)                                                    ;\
        SET_PTE_X(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    SET_PTE_W(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_U(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_R(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la a1, test_seg                                                ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x004)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x004, 0x000)                               ;\
    .endif                                                         ;\
    mv t4, a0                                                      ;\
    SET_PTE_A(a2, REG_CLEAR)                                       ;\
    .if (X==1)                                                     ;\
    SET_PTE_X(a2, NO_REG_CLEAR)                                    ;\
    .endif                                                         ;\
    .if(R == 1)                                                    ;\
        SET_PTE_R(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        SET_PTE_W(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_U(a2, NO_REG_CLEAR)                                    ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la t1, tohost                                                  ;\
    mv a1, t1                                                      ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x005)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x005, 0x000)                               ;\
    .endif                                                         ;\
    mv s1, a0                                                      ;\
    SET_RWXV_BITS(a2, REG_CLEAR)                                   ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    SATP_SETUP_SV32                                                ;\
    la t2, trap_handler                                            ;\
    WRITE_CSR (mtvec, t2)                                          ;\
    WRITE_CSR (mepc, t3)                                           ;\
    li t2, MSTATUS_MPP                                             ;\
    CLEAR_CSR (mstatus, t2)                                        ;\
    .if(MODE == PRV_S)                                             ;\
        li t2,  MSTATUS_MPP & (MSTATUS_MPP >> 1)                   ;\
    .else                                                          ;\
        li t2, MSTATUS_MPP & (MSTATUS_MPP >> 2)                    ;\
    .endif                                                         ;\
    SET_CSR (mstatus, t2)                                          ;\
    mv s10,t3                                                      ;\
           .if(X == 1)                                             ;\
        srli t3, t3, SHIFT_12                                      ;\
        slli t3, t3, SHIFT_12                                      ;\
        .if(MODE == PRV_S)                                         ;\
            la s2, test_mepc_S                                     ;\
        .else                                                      ;\
            la s2, test_mepc_U                                     ;\
        .endif                                                     ;\
        slli s2, s2, SHIFT_20                                      ;\
        srli s2, s2, SHIFT_20                                      ;\
        or s10, t3, s2                                             ;\
    .endif                                                         ;\
    MRET                                                           ;\
    supervisor_code:                                               ;\
    li t1, 0x45                                                    ;\
    test_mepc_S:                                                   ;\
    .if(R != 1)                                                    ;\
        lw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    j exit                                                         ;\
    user_code:                                                     ;\
    li t1, 0x45                                                    ;\
    test_mepc_U:                                                   ;\
    .if(op != 1)                                                   ;\
        lw t1, 0(t4)                                               ;\
        li s11, 110                                                ;\
    .endif                                                         ;\
    .if(op == 1)                                                   ;\
        sw t1, 0(t4)                                               ;\
        li s11, 110                                                ;\
    .endif                                                         ;\
     mret                                                          ;

#define TRAP_HANDLER( TRAP )                                       ;\
    la t1, TRAP                                                    ;\
    WRITE_CSR( mtvec,t1 )                                          ;

#define RVTEST_DATA_SECTION                                        ;\
    .data                                                          ;\
    arr:                                                           ;\
        .word 0x23                                                 ;\
    .align 12                                                      ;\
    pgtb_l1:                                                       ;\
        .zero 4096                                                 ;\
    pgtb_l0:                                                       ;\
        .zero 4096                                                 ;
#define TEST_Nonleaf_PTE(MODE, LEVEL, R, W, X,XS, op)              ;\
    .if(op == 0)                                                   ;\
        li s11, LOAD_PAGE_FAULT                                    ;\
    .endif                                                         ;\
    .if(op == 1)                                                   ;\
        li s11, STORE_AMO_PAGE_FAULT                               ;\
    .endif                                                         ;\
    .if(XS == 0)                                                   ;\
        li s11, INSTRUCTION_PAGE_FAULT                             ;\
    .endif                                                         ;\
    PMP_ALL_MEM                                                    ;\
    li t2, 0x23                                                    ;\
    la t1, test_seg                                                ;\
    sw t2, 0(t1)                                                   ;\
    .if(LEVEL == LEVEL0)                                           ;\
        la a1, pgtb_l0                                             ;\
        GEN_VA(a1, a0, 0x003, 0x002)                               ;\
        SET_PTE_V(a2, REG_CLEAR)                                   ;\
        PTE_SETUP_RV32(a1, a2, t1, a0, 1)                          ;\
    .endif                                                         ;\
    SET_PTE_A(a2, REG_CLEAR)                                       ;\
    SET_PTE_W(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_R(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    .if(MODE == PRV_S)                                             ;\
        la a1, supervisor_code                                     ;\
    .else                                                          ;\
        la a1, user_code                                           ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if (XS == OP_EXECUTE)                                         ;\
       SET_PTE_X(a2, NO_REG_CLEAR)                                 ;\
    .endif                                                         ;\
    GEN_VA(a1, a0, 0x003, 0x000)                                   ;\
    mv t3, a0                                                      ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la a1, test_seg                                                ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x004)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x004, 0x000)                               ;\
    .endif                                                         ;\
    mv t4, a0                                                      ;\
    SET_PTE_A(a2, REG_CLEAR)                                       ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    .if(R == 1)                                                    ;\
        SET_PTE_R(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        SET_PTE_W(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(X == 1)                                                    ;\
        SET_PTE_X(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la t1, tohost                                                  ;\
    mv a1, t1                                                      ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x005)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x005, 0x000)                               ;\
    .endif                                                         ;\
    mv s1, a0                                                      ;\
    SET_RWXV_BITS(a2, REG_CLEAR)                                   ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    SATP_SETUP_SV32                                                ;\
    la t2, trap_handler                                            ;\
    WRITE_CSR (mtvec, t2)                                          ;\
    WRITE_CSR (mepc, t3)                                           ;\
    li t2, MSTATUS_MPP                                             ;\
    CLEAR_CSR (mstatus, t2)                                        ;\
    .if(MODE == PRV_S)                                             ;\
        li t2, MSTATUS_MPP & (MSTATUS_MPP>>1)                      ;\
    .else                                                          ;\
        li t2, MSTATUS_MPP & (MSTATUS_MPP>>2)                      ;\
    .endif                                                         ;\
    SET_CSR (mstatus, t2)                                          ;\
    mv s10,t3                                                      ;\
    .if(XS == 1)                                                   ;\
        srli t3, t3, SHIFT_12                                      ;\
        slli t3, t3, SHIFT_12                                      ;\
        .if(MODE == PRV_S)                                         ;\
            la s2, test_mepc_S                                     ;\
        .else                                                      ;\
            la s2, test_mepc_U                                     ;\
        .endif                                                     ;\
        slli s2, s2, SHIFT_20                                      ;\
        srli s2, s2, SHIFT_20                                      ;\
        or s10, t3, s2                                             ;\
    .endif                                                         ;\
    MRET                                                           ;\
    supervisor_code:                                               ;\
    test_mepc_S:                                                   ;\
    .if (op==OP_READ)                                              ;\
        lw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    .if (op==OP_WRITE)                                             ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    j exit                                                         ;\
    user_code:                                                     ;\
    test_mepc_U:                                                   ;\
    .if (op==0)                                                    ;\
        lw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    .if (op==0x01)                                                 ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    j exit                                                         ;

#define TEST_Reserved_RWX(MODE, LEVEL, R, W, X,XS, op)             ;\
    .if(op == 0)                                                   ;\
        li s11, LOAD_PAGE_FAULT                                    ;\
    .endif                                                         ;\
    .if(op == 1)                                                   ;\
        li s11, STORE_AMO_PAGE_FAULT                               ;\
    .endif                                                         ;\
    .if(XS == 0)                                                   ;\
        li s11, INSTRUCTION_PAGE_FAULT                             ;\
    .endif                                                         ;\
    PMP_ALL_MEM                                                    ;\
    li t2, 0x23                                                    ;\
    la t1, test_seg                                                ;\
    sw t2, 0(t1)                                                   ;\
    .if(LEVEL == LEVEL0)                                           ;\
        la a1, pgtb_l0                                             ;\
        GEN_VA(a1, a0, 0x003, 0x002)                               ;\
        SET_PTE_V(a2, REG_CLEAR)                                   ;\
        PTE_SETUP_RV32(a1, a2, t1, a0, 1)                          ;\
    .endif                                                         ;\
    .if(MODE == PRV_S)                                             ;\
        la a1, supervisor_code                                     ;\
    .else                                                          ;\
        la a1, user_code                                           ;\
        SET_PTE_U(a2, REG_CLEAR)                                   ;\
    .endif                                                         ;\
    GEN_VA(a1, a0, 0x003, 0x000)                                   ;\
    mv t3, a0                                                      ;\
    .if (XS == 1)                                                  ;\
       SET_PTE_X(a2, NO_REG_CLEAR)                                 ;\
    .endif                                                         ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_W(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_R(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la a1, test_seg                                                ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x004)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x004, 0x000)                               ;\
    .endif                                                         ;\
    mv t4, a0                                                      ;\
    SET_PTE_A(a2, REG_CLEAR)                                       ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    .if(R == 1)                                                    ;\
        SET_PTE_R(a2, REG_CLEAR)                                   ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        SET_PTE_W(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(X == 1)                                                    ;\
        SET_PTE_X(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la t1, tohost                                                  ;\
    mv a1, t1                                                      ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x005)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x005, 0x000)                               ;\
    .endif                                                         ;\
    mv s1, a0                                                      ;\
    SET_RWXV_BITS(a2, REG_CLEAR)                                   ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    SATP_SETUP_SV32                                                ;\
    la t2, trap_handler                                            ;\
    WRITE_CSR (mtvec, t2)                                          ;\
    WRITE_CSR (mepc, t3)                                           ;\
    li t2, MSTATUS_MPP                                             ;\
    CLEAR_CSR (mstatus, t2)                                        ;\
    .if(MODE == PRV_S)                                             ;\
        li t2, MSTATUS_MPP & (MSTATUS_MPP>>1)                      ;\
    .else                                                          ;\
        li t2, MSTATUS_MPP & (MSTATUS_MPP>>2)                      ;\
    .endif                                                         ;\
    SET_CSR (mstatus, t2)                                          ;\
    mv s10, t3                                                     ;\
    .if(XS == 1)                                                   ;\
        srli t3, t3, SHIFT_12                                      ;\
        slli t3, t3, SHIFT_12                                      ;\
        .if(MODE == PRV_S)                                         ;\
            la s2, test_mepc_S                                     ;\
        .else                                                      ;\
            la s2, test_mepc_U                                     ;\
        .endif                                                     ;\
        slli s2, s2, SHIFT_20                                      ;\
        srli s2, s2, SHIFT_20                                      ;\
        or s10, t3, s2                                             ;\
    .endif                                                         ;\
    MRET                                                           ;\
    supervisor_code:                                               ;\
    test_mepc_S:                                                   ;\
    .if (op==0)                                                    ;\
        lw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    .if (op==0x01)                                                 ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    j exit                                                         ;\
    user_code:                                                     ;\
    test_mepc_U:                                                   ;\
    .if (op==0)                                                    ;\
        lw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    .if (op==0x01)                                                 ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    j exit                                                         ;

#define TEST_MXR_SET(MODE, LEVEL, R, W, X)                         ;\
    PMP_ALL_MEM                                                    ;\
    li t2, 0x23                                                    ;\
    la t1, test_seg                                                ;\
    sw t2, 0(t1)                                                   ;\
    .if(LEVEL == LEVEL0)                                           ;\
        la a1, pgtb_l0                                             ;\
        GEN_VA(a1, a0, 0x003, 0x002)                               ;\
        SET_PTE_V(a2, REG_CLEAR)                                   ;\
        PTE_SETUP_RV32(a1, a2, t1, a0, 1)                          ;\
    .endif                                                         ;\
    .if(MODE == PRV_S)                                             ;\
        la a1, supervisor_code                                     ;\
        SET_PTE_X(a2, REG_CLEAR)                                   ;\
    .else                                                          ;\
        la a1, user_code                                           ;\
        SET_PTE_U(a2, REG_CLEAR)                                   ;\
        SET_PTE_X(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    GEN_VA(a1, a0, 0x003, 0x000)                                   ;\
    mv t3, a0                                                      ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_W(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_R(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la a1, test_seg                                                ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x004)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x004, 0x000)                               ;\
    .endif                                                         ;\
    mv t4, a0                                                      ;\
    SET_PTE_A(a2, REG_CLEAR)                                       ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_X(a2, NO_REG_CLEAR)                                    ;\
    .if(R == 1)                                                    ;\
        SET_PTE_R(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        SET_PTE_W(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la t1, tohost                                                  ;\
    mv a1, t1                                                      ;\
    .if(LEVEL == LEVEL0)                                           ;\
        GEN_VA(a1, a0, 0x003, 0x005)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x005, 0x000)                               ;\
    .endif                                                         ;\
    mv s1, a0                                                      ;\
    SET_RWXV_BITS(a2, REG_CLEAR)                                   ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_REG_CLEAR)                                ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    SATP_SETUP_SV32                                                ;\
    la t2, trap_handler                                            ;\
    WRITE_CSR (mtvec, t2)                                          ;\
    WRITE_CSR (mepc, t3)                                           ;\
    li t2, MSTATUS_MPP                                             ;\
    CLEAR_CSR (mstatus, t2)                                        ;\
    .if(MODE == PRV_S)                                             ;\
        li t2, MSTATUS_MXR | (MSTATUS_MPP & (MSTATUS_MPP>>1))      ;\
    .else                                                          ;\
        li t2, MSTATUS_MXR|(MSTATUS_MPP & (MSTATUS_MPP>>2))        ;\
    .endif                                                         ;\
    SET_CSR (mstatus, t2)                                          ;\
    MRET                                                           ;\
    supervisor_code:                                               ;\
    lw t1, 0(t4)                                                   ;\
    li s11, NO_EXCEP_NO                                            ;\
    mret                                                           ;\
    user_code:                                                     ;\
    lw t1, 0(t4)                                                   ;\
    li s11, NO_EXCEP_NO                                            ;\
    mret                                                           ;

#define TEST_MSTATUS_TVM_SATP(MODE, LEVEL, op)                     ;\
    li s11, ILLEGAL_INSTRUCTION                                    ;\
    PMP_ALL_MEM                                                    ;\
    li t2, 0x23                                                    ;\
    la t1, test_seg                                                ;\
    sw t2, 0(t1)                                                   ;\
    .if(LEVEL == LEVEL0)                                           ;\
        la a1, pgtb_l0                                             ;\
        GEN_VA(a1, a0, 0x003, 0x002)                               ;\
        SET_PTE_V(a2, REG_CLEAR)                                   ;\
        PTE_SETUP_RV32(a1, a2, t1, a0, 1)                          ;\
    .endif                                                         ;\
    .if(MODE == PRV_S)                                             ;\
        la a1, supervisor_code                                     ;\
    .else                                                          ;\
        la a1, user_code                                           ;\
        SET_PTE_U(a2, REG_CLEAR)                                   ;\
    .endif                                                         ;\
    GEN_VA(a1, a0, 0x003, 0x000)                                   ;\
    mv t3, a0                                                      ;\
    SET_PTE_X(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_A(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_W(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_R(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_D(a2, NO_REG_CLEAR)                                    ;\
    SET_PTE_V(a2, NO_REG_CLEAR)                                    ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    SATP_SETUP_SV32                                                ;\
    la t2, trap_handler                                            ;\
    WRITE_CSR (mtvec, t2)                                          ;\
    WRITE_CSR (mepc, t3)                                           ;\
    li t2, MSTATUS_MPP                                             ;\
    CLEAR_CSR (mstatus, t2)                                        ;\
    .if(MODE == PRV_S)                                             ;\
        li t2, MSTATUS_TVM |(MSTATUS_MPP & (MSTATUS_MPP>>1))       ;\
    .else                                                          ;\
        li t2, MSTATUS_TVM | (MSTATUS_MPP & (MSTATUS_MPP>>2))      ;\
    .endif                                                         ;\
    SET_CSR (mstatus, t2)                                          ;\
    MRET                                                           ;\
    supervisor_code:                                               ;\
    test_mepc_S:                                                   ;\
    .if (op==0)                                                    ;\
        sfence.vma                                                 ;\
    .endif                                                         ;\
    .if (op==0x01)                                                 ;\
        csrw satp,t2                                               ;\
    .endif                                                         ;\
    j exit                                                         ;\
    user_code:                                                     ;\
    test_mepc_U:                                                   ;\
    .if (op==0)                                                    ;\
        sfence.vma                                                 ;\
    .endif                                                         ;\
    .if (op==0x01)                                                 ;\
        csrw satp,t2                                               ;\
    .endif                                                         ;\
    j exit                                                         ;

#define PTE2_SETUP_RV32(PA, PR, TMP, VA, level)                    ;\
    PTE(PA, PR)                                                    ;\
    .if (level==LEVEL1)                                            ;\
        la   TMP, pgtb2_l1                                         ;\
        srli VA,  VA, SHIFT_22                                     ;\
    .endif                                                         ;\
    .if (level==LEVEL0)                                            ;\
        la   TMP, pgtb2_l0                                         ;\
        slli VA,  VA, PTE_PPN_SHIFT                                ;\
        srli VA,  VA, SHIFT_22                                     ;\
    .endif                                                         ;\
    slli     VA,  VA,  PGTB_INDEX_SHIFT                            ;\
    add      TMP, TMP, VA                                          ;\
    SREG     PA,  0(TMP)                                           ;

#define SATP_SETUP2_SV32                                           ;\
    la   t6,   pgtb2_l1                                            ;\
    li   t5,   SATP32_MODE                                         ;\
    srli t6,   t6, SHIFT_12                                        ;\
    or   t6,   t6, t5                                              ;\
    li s5,1                                                        ;\
    slli s5,s5, SHIFT_22                                           ;\
    or t6, t6, s5                                                  ;\
    WRITE_CSR(satp, t6)                                            ;

#define ERROR1 0x4                                                 ;
#define ERROR2 0x5                                                 ;
#define ERROR3 0x6                                                 ;

#define TEST_PTE_VM_PMP_CHECK(MODE, LEVEL, R, W, X, A)             ;\
    .if(R == 1)                                                    ;\
        li s11, LOAD_ACCESS_FAULT                                  ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        li s11, STORE_AMO_ACCESS_FAULT                             ;\
    .endif                                                         ;\
    .if(X == 1)                                                    ;\
        li s11, INSTRUCTION_ACCESS_FAULT                           ;\
    .endif                                                         ;\
    .if(W & X == 1)                                                ;\
        li s11, STORE_AMO_ACCESS_FAULT                             ;\
    .endif                                                         ;\
    li t2, 0x80000800                                              ;\
    srli t2, t2, 2                                                 ;\
    csrw pmpaddr0, t2                                              ;\
    li t2, 0x82000000                                              ;\
    srli t2, t2, 2                                                 ;\
    csrw pmpaddr1, t2                                              ;\
    li t2, 0x84000000                                              ;\
    srli t2, t2, 2                                                 ;\
    csrw pmpaddr2, t2                                              ;\
    la t2, test_seg                                                ;\
    srli t2, t2, 2                                                 ;\
    ori t2, t2, 0x0                                                ;\
    csrw pmpaddr3, t2                                              ;\
    .if((R|W)==0&X==1)                                             ;\
        li t2, 0x1F0B000F                                          ;\
    .endif                                                         ;\
    .if(R==0)                                                      ;\
        .if(W==1)                                                  ;\
        li t2, 0x1F0D000F                                          ;\
        .endif                                                     ;\
    .endif                                                         ;\
    .if(R==1)                                                      ;\
        .if(W==0)                                                  ;\
        li t2, 0x1F0E000F                                          ;\
        .endif                                                     ;\
    .endif                                                         ;\
    csrw pmpcfg0, t2                                               ;\
    li t2, 0x23                                                    ;\
    la t1, test_seg                                                ;\
    sw t2, 0(t1)                                                   ;\
    .if(LEVEL == 0)                                                ;\
        la a1, pgtb_l0                                             ;\
        GEN_VA(a1, a0, 0x003, 0x002)                               ;\
        SET_PTE_V(a2, FLUSH)                                       ;\
        PTE_SETUP_RV32(a1, a2, t1, a0, 1)                          ;\
    .endif                                                         ;\
    .if(MODE == PRV_S)                                             ;\
        la a1, supervisor_code                                     ;\
    .else                                                          ;\
        la a1, user_code                                           ;\
        SET_PTE_U(a2, FLUSH)                                       ;\
    .endif                                                         ;\
    GEN_VA(a1, a0, 0x003, 0x000)                                   ;\
    mv t3, a0                                                      ;\
    .if(X == 1)                                                    ;\
        SET_PTE_X(a2, NO_FLUSH)                                    ;\
    .endif                                                         ;\
    SET_PTE_A(a2, NO_FLUSH)                                        ;\
    SET_PTE_W(a2, NO_FLUSH)                                        ;\
    SET_PTE_R(a2, NO_FLUSH)                                        ;\
    SET_PTE_D(a2, NO_FLUSH)                                        ;\
    SET_PTE_V(a2, NO_FLUSH)                                        ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la a1, pgtb_l1                                                 ;\
    .if(LEVEL == 0)                                                ;\
        GEN_VA(a1, a0, 0x003, 0x004)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x004, 0x000)                               ;\
    .endif                                                         ;\
    mv t4, a0                                                      ;\
    SET_PTE_R(a2, FLUSH)                                           ;\
    SET_PTE_W(a2, NO_FLUSH)                                        ;\
    SET_PTE_X(a2, NO_FLUSH)                                        ;\
    SET_PTE_A(a2, NO_FLUSH)                                        ;\
    SET_PTE_D(a2, NO_FLUSH)                                        ;\
    SET_PTE_V(a2, NO_FLUSH)                                        ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_FLUSH)                                    ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    la t1, tohost                                                  ;\
    mv a1, t1                                                      ;\
    .if(LEVEL == 0)                                                ;\
        GEN_VA(a1, a0, 0x003, 0x005)                               ;\
    .else                                                          ;\
        GEN_VA(a1, a0, 0x005, 0x000)                               ;\
    .endif                                                         ;\
    mv s1, a0                                                      ;\
    SET_RWXV_BITS(a2, FLUSH)                                       ;\
    SET_PTE_A(a2, NO_FLUSH)                                        ;\
    SET_PTE_D(a2, NO_FLUSH)                                        ;\
    .if(MODE == PRV_U)                                             ;\
        SET_PTE_U(a2, NO_FLUSH)                                    ;\
    .endif                                                         ;\
    PTE_SETUP_RV32(a1, a2, t1, a0, LEVEL)                          ;\
    SATP_SETUP_SV32                                                ;\
    la t2, trap_handler                                            ;\
    WRITE_CSR (mtvec, t2)                                          ;\
    WRITE_CSR (mepc, t3)                                           ;\
    li t2, 0x1800                                                  ;\
    CLEAR_CSR (mstatus, t2)                                        ;\
    .if(MODE == PRV_S)                                             ;\
        li t2,  0x00800                                            ;\
    .else                                                          ;\
        li t2, 0xC0000                                             ;\
    .endif                                                         ;\
    SET_CSR (mstatus, t2)                                          ;\
        .if(X == 1)                                                ;\
        srli t3, t3, 12                                            ;\
        slli t3, t3, 12                                            ;\
        .if(MODE == PRV_S)                                         ;\
            la s2, test_mepc_S                                     ;\
        .else                                                      ;\
            la s2, test_mepc_U                                     ;\
        .endif                                                     ;\
        slli s2, s2, 20                                            ;\
        srli s2, s2, 20                                            ;\
        or s10, t3, s2                                             ;\
    .endif                                                         ;\
    MRET                                                           ;\
    supervisor_code:                                               ;\
    li t1, 0x45                                                    ;\
    test_mepc_S:                                                   ;\
    .if(R == 1)                                                    ;\
        lw t1, 8(t1)                                               ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    j exit                                                         ;\
    user_code:                                                     ;\
    test_mepc_U:                                                   ;\
    li t1, 0x45                                                    ;\
    .if(R == 1)                                                    ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    .if(W == 1)                                                    ;\
        sw t1, 0(t4)                                               ;\
    .endif                                                         ;\
    li x1, 1                                                       ;\
    j exit                                                         ;

#define RVTEST_EXIT_LOGIC                                          ;\
exit:                                                              ;\
    la t0, tohost                                                  ;\
    li t1, 1                                                       ;\
    EXIT_LOGIC(t0, t1)                                             ;\
    j exit                                                         ;

#define COREV_VERIF_EXIT_LOGIC                                     ;\
exit:                                                              ;\
    slli x1, x1, 1                                                 ;\
    addi x1, x1, 1                                                 ;\
    mv x30, s1                                                     ;\
    sw x1, tohost, x30                                             ;\
    self_loop: j self_loop                                         ;


#define _start   rvtest_entry_point                                ;

#define RVTEST_DATA_SECTION_MISALIGNED                             ;\
    .data                                                          ;\
    pgtb_l1:                                                       ;\
        .zero 4096                                                 ;\
    pgtb_l0:                                                       ;\
        .zero 4096                                                 ;\
    .align 16                                                      ;\
    arr:                                                           ;\
        .word 0x23                                                 ;

