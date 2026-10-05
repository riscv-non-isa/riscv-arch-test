# rvmodel_macros.hl
# Jordan Carlin jcarlin@hmc.edu October 2025, Sadhvi Narayana sanarayanan@hmc.edu February 2026
# SPDX-License-Identifier: BSD-3-Clause

#ifndef _RVMODEL_MACROS_H
#define _RVMODEL_MACROS_H
#define STANDARD_SM_SUPPORTED

// Milk-V Megrez (ESWIN EIC7700X, SiFive P550). The UART runner dispatches
// ACT payloads on hart 1 (BOARD_RUNNER_HART_ID); Sail/Spike run on hart 0.
// Hardware addresses: Linux DTB eic7700-milkv-megrez-no-npu.dtb (Milk-V
// release 2025-0219): UART0 snps,dw-apb-uart @0x50900000, reg-shift 2,
// reg-io-width 4, PLIC source 100; PLIC sifive,plic-1.0.0 @0x0c000000 with
// contexts hart0-M=0, hart0-S=1, hart1-M=2, hart1-S=3; 520 sources.
#define MEGREZ_UART0_IER      0x50900004
#define MEGREZ_PLIC_PRIO_U0   0x0c000190  /* priority, source 100 */
#define MEGREZ_PLIC_PEND_U0   0x0c00100c  /* pending word 3 (sources 96..127) */
#define MEGREZ_PLIC_EN_M_U0   0x0c00210c  /* hart1 M (ctx 2) enable word 3 */
#define MEGREZ_PLIC_EN_S_U0   0x0c00218c  /* hart1 S (ctx 3) enable word 3 */
#define MEGREZ_PLIC_THR_M     0x0c202000  /* ctx 2 threshold */
#define MEGREZ_PLIC_CLAIM_M   0x0c202004  /* ctx 2 claim/complete */
#define MEGREZ_PLIC_THR_S     0x0c203000  /* ctx 3 threshold */
#define MEGREZ_PLIC_CLAIM_S   0x0c203004  /* ctx 3 claim/complete */
#define MEGREZ_U0_BIT         0x10        /* source 100 = bit 4 of word 3 */

#define CLINT_BASE_ADDRESS 0x02000000

#define RVMODEL_DATA_SECTION \
        .pushsection .tohost,"aw",@progbits;                \
        .p2align 8; .global tohost; tohost: .dword 0;       \
        .p2align 8; .global fromhost; fromhost: .dword 0;   \
        .p2align 8; .global rvmodel_boot_hartid;            \
        rvmodel_boot_hartid: .dword 0;                      \
        .p2align 8; .global rvmodel_last_plic_claim;         \
        rvmodel_last_plic_claim: .dword 0;                   \
        .p2align 8; .global irqdbg_first_valid;              \
        irqdbg_first_valid: .dword 0;                        \
        .global irqdbg_first_mode; irqdbg_first_mode: .dword 0; \
        .global irqdbg_first_xepc; irqdbg_first_xepc: .dword 0; \
        .global irqdbg_first_xcause; irqdbg_first_xcause: .dword 0; \
        .global irqdbg_first_xtval; irqdbg_first_xtval: .dword 0; \
        .global irqdbg_first_xstatus; irqdbg_first_xstatus: .dword 0; \
        .global irqdbg_first_mideleg; irqdbg_first_mideleg: .dword 0; \
        .global irqdbg_first_mip; irqdbg_first_mip: .dword 0; \
        .global irqdbg_first_mie; irqdbg_first_mie: .dword 0; \
        .global irqdbg_first_sip; irqdbg_first_sip: .dword 0; \
        .global irqdbg_first_sie; irqdbg_first_sie: .dword 0; \
        .global irqdbg_stage; irqdbg_stage: .dword 0;         \
        .global irqdbg_pre_mideleg; irqdbg_pre_mideleg: .dword 0; \
        .global irqdbg_pre_mie; irqdbg_pre_mie: .dword 0;     \
        .global irqdbg_pre_mip; irqdbg_pre_mip: .dword 0;     \
        .global irqdbg_pre_mstatus; irqdbg_pre_mstatus: .dword 0; \
        .global irqdbg_pre_sip; irqdbg_pre_sip: .dword 0;     \
        .global irqdbg_pre_sie; irqdbg_pre_sie: .dword 0;     \
        .popsection

##### STARTUP #####

# Perform boot operations. Can be empty or left undefined unless needed for
# DUT-specific behavior such as turning on a memory controller or
# initializing custom state.
#define RVMODEL_BOOT                                                \
  csrr T1, mhartid;                                                 \
  la T2, rvmodel_boot_hartid;                                      \
  SREG T1, 0(T2);                                                  \
  beqz T1, 9f;                 /* Sail/Spike hart 0: no Megrez MMIO */ \
  li T2, MEGREZ_UART0_IER;     /* UART0 IER, 32-bit access */      \
  lw T3, 0(T2);                                                     \
  andi T3, T3, -3;             /* THRE interrupt off */            \
  sw T3, 0(T2);                                                     \
  li T2, 0x0c002100;           /* hart 1 M-context (ctx 2) enables */ \
  li T3, 17;                   /* EIC7700X sources 0..543 */        \
1:                                                                  \
  sw zero, 0(T2);                                                   \
  addi T2, T2, 4;                                                   \
  addi T3, T3, -1;                                                  \
  bnez T3, 1b;                                                      \
  li T2, 0x0c002180;           /* hart 1 S-context (ctx 3) enables */ \
  li T3, 17;                                                        \
2:                                                                  \
  sw zero, 0(T2);                                                   \
  addi T2, T2, 4;                                                   \
  addi T3, T3, -1;                                                  \
  bnez T3, 2b;                                                      \
9:                                                                  \
  fence iorw, iorw

// Custom RVMODEL_BOOT_TO_MMODE overrides default RVTEST_BOOT_TO_MMODE
// if defined.  For most DUTs, the default should work and this macro
// should not be defined.  If no M-mode or CSRs are implemented, define this
// macro as blank to bypass the boot process.  If a nonconforming
// M-mode is implemented, define this macro to set up the necessary
// state in a fashion similar to RVTEST_BOOT_TO_MMODE.
// #define RVMODEL_BOOT_TO_MMODE 

##### TERMINATION #####

// SAIL uses HTIF (Host-Target Interface) to terminate simulation.
// Writing to 'tohost' with value 1 indicates success, 3 indicates failure.

#define RVMODEL_UART_BASE_ADDR   0x50900000
#define RVMODEL_UART_REG_SHIFT   2
#define RVMODEL_UART_THR         (RVMODEL_UART_BASE_ADDR + (0 << RVMODEL_UART_REG_SHIFT))
#define RVMODEL_UART_LSR         (RVMODEL_UART_BASE_ADDR + (5 << RVMODEL_UART_REG_SHIFT))
#define RVMODEL_UART_LSR_THRE    0x20

# Terminate test with a pass indication.
# When the test is run in simulation, this should end the simulation.
#define RVMODEL_HALT_PASS                                             \
  la   t0, 1f                                                         ;\
  RVMODEL_IO_WRITE_STR(t1, t2, t3, t0)                                ;\
  fence rw, rw                                                        ;\
  li   t4, 1                                                          ;\
  la   t0, tohost                                                     ;\
  sd   t4, 0(t0)                                                      ;\
  nop                                                               ;\
  j    .                                                              ;\
1: .asciz "PASS\n"

#define RVMODEL_HALT_FAIL                                             \
  la   t0, 1f                                                         ;\
  RVMODEL_IO_WRITE_STR(t1, t2, t3, t0)                                ;\
  fence rw, rw                                                        ;\
  li   t4, 3                                                          ;\
  la   t0, tohost                                                     ;\
  sd   t4, 0(t0)                                                      ;\
  nop                                                               ;\
  j    .                                                              ;\
1: .asciz "FAIL\n"


##### IO #####

# Initialization steps needed prior to writing to the console
# _R1, _R2, and _R3 can be used as temporary registers if needed.
# Do not modify any other registers (or make sure to restore them).
# Can be empty or left undefined if no initialization is needed.
// #define RVMODEL_IO_INIT(_R1, _R2, _R3)


# Prints a null-terminated string using a DUT specific mechanism.
# A pointer to the string is passed in _STR_PTR.
# _R1, _R2, and _R3 can be used as temporary registers if needed.
# Do not modify any other registers (or make sure to restore them).

#define RVMODEL_IO_WRITE_STR(_R1, _R2, _R3, _STR_PTR) \
    1:                                                \
    lbu _R1, 0(_STR_PTR)                            ; \
    beqz _R1, 3f                                    ; \
    li _R2, RVMODEL_UART_LSR                        ; \
    2:                                                \
    lw _R3, 0(_R2)                                   ; \
    andi _R3, _R3, RVMODEL_UART_LSR_THRE             ; \
    beqz _R3, 2b                                     ; \
    li _R2, RVMODEL_UART_THR                        ; \
    sw _R1, 0(_R2)                                  ; \
    addi _STR_PTR, _STR_PTR, 1                      ; \
    j 1b                                            ; \
    3:                                                \
    fence rw, rw                                     ;\


#define RVMODEL_DATA_BEGIN                                            \
  .p2align 4;                                                         \
  .global begin_signature;                                            \
  begin_signature:

#define RVMODEL_DATA_END                                              \
  .p2align 4;                                                         \
  .global end_signature;                                              \
  end_signature:

#define RVMODEL_FENCEI
#define RVMODEL_SYNC


##### Access Fault #####

#define RVMODEL_ACCESS_FAULT_ADDRESS 0x00000000
#### Machine Timer #####

// The Megrez runner dispatches ACT payloads on P550 hart 1.  CLINT mtimecmp is an
// 8-byte array indexed by hart, so the hardware ELF must target mtimecmp[1].
// sail_macros.h overrides this back to mtimecmp[0] for Sail's hart-0 run.
#define RVMODEL_MTIMECMP_ADDRESS  0x02004008

#define RVMODEL_MTIME_ADDRESS  0x0200BFF8  /* Address of mtime CSR */

##### Machine Interrupts #####
// P550 runs at up to 1.8 GHz (Milk-V Megrez overview) and mtime ticks at
// 1 MHz (OpenSBI aclint-mtimer, measured by the runner): about 1800 core
// cycles per tick.  Use a conservative upper bound so
// RVTEST_IDLE_FOR_TIMER_INTERRUPT does not race the CLINT.
#define RVMODEL_MAX_CYCLES_PER_TIMER_TICK 2048

// Sail's simple interrupt generator remains in use for the software-interrupt
// macros below.  External interrupts use the real UART0 -> PLIC backend.
#define SIG_ADDRESS  (0x0c000000 + 0x4)

// Interrupt latency configuration. Real UART/PLIC delivery is asynchronous.
#define RVMODEL_INTERRUPT_LATENCY 6000

#define RVMODEL_TIMER_INT_SOON_DELAY 1000

#define RVMODEL_SET_MEXT_INT(_R1, _R2)                              \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R1, 0(_R2);                                                 \
  beqz _R1, 1f;                 /* Megrez P550 hart 1 */            \
  li _R2, MEGREZ_PLIC_PRIO_U0;  /* PLIC priority: source 100 */     \
  li _R1, 1;                                                        \
  sw _R1, 0(_R2);                                                  \
  li _R2, MEGREZ_PLIC_EN_M_U0;  /* hart 1 M context, source 100 */  \
  lw _R1, 0(_R2);                                                  \
  ori _R1, _R1, MEGREZ_U0_BIT;                                     \
  sw _R1, 0(_R2);                                                  \
  li _R2, MEGREZ_PLIC_THR_M;    /* hart 1 M threshold */            \
  sw zero, 0(_R2);                                                  \
  j 2f;                                                             \
1:                                                                  \
  li _R2, 0x0c000004;           /* Spike priority: source 1 */      \
  li _R1, 1;                                                        \
  sw _R1, 0(_R2);                                                  \
  li _R2, 0x0c002000;           /* hart 0 M context, source 1 */    \
  lw _R1, 0(_R2);                                                  \
  ori _R1, _R1, 2;                                                 \
  sw _R1, 0(_R2);                                                  \
  li _R2, 0x0c200000;           /* hart 0 M threshold */            \
  sw zero, 0(_R2);                                                  \
2:                                                                  \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R2, 0(_R2);                                                 \
  beqz _R2, 3f;                 /* no UART on the Sail/Spike hart */ \
  li _R2, MEGREZ_UART0_IER;     /* UART0 IER, 32-bit access */      \
  lw _R1, 0(_R2);                                                  \
  ori _R1, _R1, 2;             /* THRE interrupt enable */         \
  sw _R1, 0(_R2);                                                   \
3:                                                                  \
  /* This helper can execute after entry to S/U mode, so poll the PLIC */ \
  /* pending MMIO register rather than the privileged mip CSR. */     \
  fence iorw, iorw;                                                 \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R2, 0(_R2);                                                 \
  beqz _R2, 7f;                                                     \
  li _R1, 100000;                                                   \
5:                                                                  \
  li _R2, MEGREZ_PLIC_PEND_U0;  /* pending sources 96..127 */      \
  lw _R2, 0(_R2);                                                  \
  andi _R2, _R2, MEGREZ_U0_BIT; /* Megrez UART0 source 100 */      \
  bnez _R2, 9f;                                                     \
  addi _R1, _R1, -1;                                               \
  bnez _R1, 5b;                                                     \
  j 9f;                                                             \
7:                                                                  \
  li _R1, 100000;                                                   \
8:                                                                  \
  li _R2, 0x0c001000;           /* pending sources 0..31 */        \
  lw _R2, 0(_R2);                                                  \
  andi _R2, _R2, 2;             /* fallback source 1 */            \
  bnez _R2, 9f;                                                     \
  addi _R1, _R1, -1;                                               \
  bnez _R1, 8b;                                                     \
9:

#define RVMODEL_CLR_MEXT_INT(_R1, _R2)                              \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R1, 0(_R2);                                                 \
  beqz _R1, 1f;                 /* no UART on the Sail/Spike hart */ \
  li _R2, MEGREZ_UART0_IER;     /* Deassert UART THRE first */      \
  lw _R1, 0(_R2);                                                  \
  andi _R1, _R1, -3;                                                \
  sw _R1, 0(_R2);                                                   \
  fence iorw, iorw;                                                 \
  li _R2, MEGREZ_PLIC_CLAIM_M;  /* hart 1 M claim/complete */       \
  lw _R1, 0(_R2);                                                  \
  beqz _R1, 3f;                                                     \
  la _R2, rvmodel_last_plic_claim;                                 \
  SREG _R1, 0(_R2);                                                \
  li _R2, MEGREZ_PLIC_CLAIM_M;                                     \
  sw _R1, 0(_R2);                                                  \
3:                                                                  \
  li _R2, MEGREZ_PLIC_EN_M_U0;                                      \
  lw _R1, 0(_R2);                                                  \
  andi _R1, _R1, ~MEGREZ_U0_BIT;                                    \
  sw _R1, 0(_R2);                                                  \
  li _R2, MEGREZ_PLIC_PRIO_U0;                                      \
  sw zero, 0(_R2);                                                  \
  j 2f;                                                             \
1:                                                                  \
  li _R2, 0x0c200004;           /* hart 0 M claim/complete */       \
  lw _R1, 0(_R2);                                                  \
  beqz _R1, 4f;                                                     \
  la _R2, rvmodel_last_plic_claim;                                 \
  SREG _R1, 0(_R2);                                                \
  li _R2, 0x0c200004;                                              \
  sw _R1, 0(_R2);                                                  \
4:                                                                  \
  li _R2, 0x0c002000;                                               \
  lw _R1, 0(_R2);                                                  \
  andi _R1, _R1, -3;                                                \
  sw _R1, 0(_R2);                                                  \
  li _R2, 0x0c000004;                                               \
  sw zero, 0(_R2);                                                  \
2:                                                                  \
  fence iorw, iorw;                                                 \
  /* UART THRE and the PLIC gateway are asynchronous to the hart. */ \
  /* Wait until Megrez source 100 is no longer pending before reuse. */ \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R1, 0(_R2);                                                 \
  beqz _R1, 6f;                                                     \
  li _R1, 100000;                                                   \
5:                                                                  \
  li _R2, MEGREZ_PLIC_PEND_U0;  /* pending sources 96..127 */      \
  lw _R2, 0(_R2);                                                  \
  andi _R2, _R2, MEGREZ_U0_BIT; /* Megrez UART0 source 100 */      \
  beqz _R2, 6f;                                                     \
  addi _R1, _R1, -1;                                               \
  bnez _R1, 5b;                                                     \
6:                                                                  \
  fence iorw, iorw

#define RVMODEL_SET_MSW_INT(_R1, _R2)                         \
  /* This macro is also invoked after the test enters S/U mode. */ \
  /* Use the hart ID saved by RVMODEL_BOOT instead of mhartid. */   \
  la _R2, rvmodel_boot_hartid;                                \
  LREG _R2, 0(_R2);                                           \
  slli _R2, _R2, 2;       /* CLINT MSIP stride = 4 bytes */   \
  li _R1, CLINT_BASE_ADDRESS;                                 \
  add _R2, _R2, _R1;                                         \
  li _R1, 1;                                                  \
  sw _R1, 0(_R2);                                             \
  /* The test's idle/handler path synchronizes interrupt delivery. */ \
  /* Do not poll MSIP: its readback behavior is platform-specific. */ \
  fence iorw, iorw


#define RVMODEL_CLR_MSW_INT(_R1, _R2)                         \
  /* Do not read mhartid or mip here: this may execute in S/U. */ \
  la _R2, rvmodel_boot_hartid;                                \
  LREG _R2, 0(_R2);                                           \
  slli _R2, _R2, 2;       /* CLINT MSIP stride = 4 bytes */   \
  li _R1, CLINT_BASE_ADDRESS;                                 \
  add _R2, _R2, _R1;                                         \
  sw zero, 0(_R2);                                            \
  fence iorw, iorw



##### Supervisor Interrupts #####

#define RVMODEL_SET_SEXT_INT(_R1, _R2)                              \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R1, 0(_R2);                                                 \
  beqz _R1, 1f;                 /* Megrez P550 hart 1 */            \
  li _R2, MEGREZ_PLIC_PRIO_U0;  /* PLIC priority: source 100 */     \
  li _R1, 1;                                                        \
  sw _R1, 0(_R2);                                                  \
  li _R2, MEGREZ_PLIC_EN_S_U0;  /* hart 1 S context, source 100 */  \
  lw _R1, 0(_R2);                                                  \
  ori _R1, _R1, MEGREZ_U0_BIT;                                     \
  sw _R1, 0(_R2);                                                  \
  li _R2, MEGREZ_PLIC_THR_S;    /* hart 1 S threshold */            \
  sw zero, 0(_R2);                                                  \
  j 2f;                                                             \
1:                                                                  \
  li _R2, 0x0c000004;           /* Spike priority: source 1 */      \
  li _R1, 1;                                                        \
  sw _R1, 0(_R2);                                                  \
  li _R2, 0x0c002080;           /* hart 0 S context, source 1 */    \
  lw _R1, 0(_R2);                                                  \
  ori _R1, _R1, 2;                                                 \
  sw _R1, 0(_R2);                                                  \
  li _R2, 0x0c201000;           /* hart 0 S threshold */            \
  sw zero, 0(_R2);                                                  \
2:                                                                  \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R2, 0(_R2);                                                 \
  beqz _R2, 3f;                 /* no UART on the Sail/Spike hart */ \
  li _R2, MEGREZ_UART0_IER;     /* UART0 IER, 32-bit access */      \
  lw _R1, 0(_R2);                                                  \
  ori _R1, _R1, 2;             /* THRE interrupt enable */         \
  sw _R1, 0(_R2);                                                   \
3:                                                                  \
  /* This helper can execute after entry to S/U mode, so poll the PLIC */ \
  /* pending MMIO register rather than the privileged mip CSR. */     \
  fence iorw, iorw;                                                 \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R2, 0(_R2);                                                 \
  beqz _R2, 7f;                                                     \
  li _R1, 100000;                                                   \
5:                                                                  \
  li _R2, MEGREZ_PLIC_PEND_U0;  /* pending sources 96..127 */      \
  lw _R2, 0(_R2);                                                  \
  andi _R2, _R2, MEGREZ_U0_BIT; /* Megrez UART0 source 100 */      \
  bnez _R2, 9f;                                                     \
  addi _R1, _R1, -1;                                               \
  bnez _R1, 5b;                                                     \
  j 9f;                                                             \
7:                                                                  \
  li _R1, 100000;                                                   \
8:                                                                  \
  li _R2, 0x0c001000;           /* pending sources 0..31 */        \
  lw _R2, 0(_R2);                                                  \
  andi _R2, _R2, 2;             /* fallback source 1 */            \
  bnez _R2, 9f;                                                     \
  addi _R1, _R1, -1;                                               \
  bnez _R1, 8b;                                                     \
9:

#define RVMODEL_CLR_SEXT_INT(_R1, _R2)                              \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R1, 0(_R2);                                                 \
  beqz _R1, 1f;                 /* no UART on the Sail/Spike hart */ \
  li _R2, MEGREZ_UART0_IER;     /* Deassert UART THRE first */      \
  lw _R1, 0(_R2);                                                  \
  andi _R1, _R1, -3;                                                \
  sw _R1, 0(_R2);                                                   \
  fence iorw, iorw;                                                 \
  li _R2, MEGREZ_PLIC_CLAIM_S;  /* hart 1 S claim/complete */       \
  lw _R1, 0(_R2);                                                  \
  beqz _R1, 3f;                                                     \
  la _R2, rvmodel_last_plic_claim;                                 \
  SREG _R1, 0(_R2);                                                \
  li _R2, MEGREZ_PLIC_CLAIM_S;                                     \
  sw _R1, 0(_R2);                                                  \
3:                                                                  \
  li _R2, MEGREZ_PLIC_EN_S_U0;                                      \
  lw _R1, 0(_R2);                                                  \
  andi _R1, _R1, ~MEGREZ_U0_BIT;                                    \
  sw _R1, 0(_R2);                                                  \
  li _R2, MEGREZ_PLIC_PRIO_U0;                                      \
  sw zero, 0(_R2);                                                  \
  j 2f;                                                             \
1:                                                                  \
  li _R2, 0x0c201004;           /* hart 0 S claim/complete */       \
  lw _R1, 0(_R2);                                                  \
  beqz _R1, 4f;                                                     \
  la _R2, rvmodel_last_plic_claim;                                 \
  SREG _R1, 0(_R2);                                                \
  li _R2, 0x0c201004;                                              \
  sw _R1, 0(_R2);                                                  \
4:                                                                  \
  li _R2, 0x0c002080;                                               \
  lw _R1, 0(_R2);                                                  \
  andi _R1, _R1, -3;                                                \
  sw _R1, 0(_R2);                                                  \
  li _R2, 0x0c000004;                                               \
  sw zero, 0(_R2);                                                  \
2:                                                                  \
  fence iorw, iorw;                                                 \
  /* UART THRE and the PLIC gateway are asynchronous to the hart. */ \
  /* Wait until Megrez source 100 is no longer pending before reuse. */ \
  la _R2, rvmodel_boot_hartid;                                      \
  LREG _R1, 0(_R2);                                                 \
  beqz _R1, 6f;                                                     \
  li _R1, 100000;                                                   \
5:                                                                  \
  li _R2, MEGREZ_PLIC_PEND_U0;  /* pending sources 96..127 */      \
  lw _R2, 0(_R2);                                                  \
  andi _R2, _R2, MEGREZ_U0_BIT; /* Megrez UART0 source 100 */      \
  beqz _R2, 6f;                                                     \
  addi _R1, _R1, -1;                                               \
  bnez _R1, 5b;                                                     \
6:                                                                  \
  fence iorw, iorw

#define RVMODEL_SET_SSW_INT(_R1, _R2)        \
  li _R1, (1 << 31) | (1 << 1);               \
  li _R2, SIG_ADDRESS;    \
  sw _R1, 0(_R2)            ; /* Set SSW interrupt */ \

#define RVMODEL_CLR_SSW_INT(_R1, _R2)        \
  li _R1, (1 << 1);               \
  li _R2, SIG_ADDRESS;    \
  sw _R1, 0(_R2)            ; /* Clear SSW interrupt */ \

// The P550 implements privileged ISA 1.11: menvcfg, senvcfg and henvcfg do not
// exist and trap (csr_probe 2026-10-05). The UDB config declares S/Sm 1.12 only
// because UDB's H 1.0 model requires it, so drop the derived 1.12 markers here
// (included after derived_config.h). On RV64 they only gate those *envcfg writes
// in the test boot code; the other uses are RV32 mstatush accesses.
#undef SM1P12P0_OR_LATER_SUPPORTED
#undef S1P12P0_OR_LATER_SUPPORTED

#endif // _RVMODEL_MACROS_H
