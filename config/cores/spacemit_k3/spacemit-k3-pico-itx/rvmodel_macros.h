// rvmodel_macros.h
// DUT-specific macro definitions for the SpacemiT K3 Pico-ITX (X100 cores)
// SPDX-License-Identifier: BSD-3-Clause
//
// Hardware addresses, measured on the board (runner repo
// artifacts/onboarding/spacemit_k3_20261019/):
//   DRAM:                        0x1_0000_0000 - 0x8_FFFF_FFFF (32 GiB); 0x0 is TCM
//   UART0 (8250, xscale):        0xD4017000, reg-shift 2, already configured by SPL
//   M-mode CLINT (riscv,clint0): 0xF1810000 (DTB the boot chain hands to OpenSBI)
//     MSIP  (hart 0):            0xF1810000
//     MTIMECMP (hart 0):         0xF1814000
//     MTIME:                     0xF181BFF8 (24 MHz; advances with the time CSR)
//   Interrupts: AIA (APLIC/IMSIC), no PLIC.
//
// Memory layout for the ACT runner (runner preset spacemit_k3_pico_itx):
//   Runner load+entry:  0x1_0000_0000 (the stock OpenSBI slot)
//   Test ELF load:      0x1_1000_0000 (link.ld)
//   UART staging:       0x1_3000_0000
//
// sail.json maps a small RAM region at 0x0200_0000: tests/env/sail_macros.h hard-codes
// RVMODEL_MTIMECMP_ADDRESS 0x02004000 for signature builds, and the K3's DRAM starts at
// 0x1_0000_0000, so without it Sail takes store access faults the board never takes.

#ifndef _RVMODEL_MACROS_H
#define _RVMODEL_MACROS_H

#define LOAD_ADDR32(_REG, _ADDR)               \
    li   _REG, _ADDR                          ;\
    slli _REG, _REG, 32                       ;\
    srli _REG, _REG, 32

#define K3_UART0_BASE    0xD4017000
#define K3_UART_THR_OFF  0x00   /* Transmit Holding Register */
#define K3_UART_LSR_OFF  0x14   /* Line Status Register      */
#define K3_UART_LSR_THRE 0x20   /* Bit 5: TX Holding Empty   */

// K3 M-mode CLINT
#define K3_MSIP_ADDRESS     0xF1810000
#define K3_MTIME_ADDRESS    0xF181BFF8
#define K3_MTIMECMP_ADDRESS 0xF1814000

#define RVMODEL_DATA_SECTION \
    .pushsection .data,"aw",@progbits;  \
    .p2align 3;                          \
    .global tohost;                      \
tohost:                                  \
    .dword 0;                            \
    .global rvmodel_runner_mtvec;        \
rvmodel_runner_mtvec:                    \
    .dword 0;                            \
    .popsection

#define STANDARD_SM_SUPPORTED

##### STARTUP #####

// The runner's trap handler, saved before ACT installs its own: the halt macros put it back
// so their ecall reaches the runner even on failure paths that skip the trap epilogs.
// misa.H is 0 when the runner starts (the stock OpenSBI sets it) but writable (csr_probe),
// so the test turns H on itself; Sail has H fixed on.
#define RVMODEL_BOOT                     \
    csrr T1, mtvec                      ;\
    la   T2, rvmodel_runner_mtvec       ;\
    sd   T1, 0(T2)                      ;\
    csrr T1, misa                       ;\
    ori  T1, T1, 0x80                   ;\
    csrw misa, T1

//#define RVMODEL_BOOT_TO_MMODE

##### TERMINATION #####

// Write the HTIF status to tohost (1 = PASS, 3 = FAIL), restore the runner's mtvec (saved by
// RVMODEL_BOOT) and ecall. The K3's monitor hart does not run, so nothing polls tohost: the
// runner hart ends the case on this M-mode ecall (runner_machine_trap.c, ecall_m_tohost).
// Restoring mtvec matters on failure paths, which call the halt with ACT's handler installed.
#define RVMODEL_HALT_PASS                              \
    la   a0, tohost                                   ;\
    li   a1, 1                                        ;\
    sd   a1, 0(a0)                                    ;\
    la   a0, rvmodel_runner_mtvec                     ;\
    ld   a0, 0(a0)                                    ;\
    csrw mtvec, a0                                    ;\
    fence rw, rw                                      ;\
    ecall                                             ;\
    _rvmodel_halt_pass_loop:                          ;\
    wfi                                               ;\
    j    _rvmodel_halt_pass_loop

#define RVMODEL_HALT_FAIL                              \
    la   a0, tohost                                   ;\
    li   a1, 3                                        ;\
    sd   a1, 0(a0)                                    ;\
    la   a0, rvmodel_runner_mtvec                     ;\
    ld   a0, 0(a0)                                    ;\
    csrw mtvec, a0                                    ;\
    fence rw, rw                                      ;\
    ecall                                             ;\
    _rvmodel_halt_fail_loop:                          ;\
    wfi                                               ;\
    j    _rvmodel_halt_fail_loop

##### IO #####

#define RVMODEL_IO_INIT(_R1, _R2, _R3)                \
    LOAD_ADDR32(_R1, K3_UART0_BASE)                  ;\
    li   _R2, 0x03                                   ;\
    sb   _R2, 0x0C(_R1)                              ; /* LCR: 8N1 */

#define RVMODEL_IO_WRITE_STR(_R1, _R2, _R3, _STR_PTR) \
1:                                                    ;\
    lbu  _R1, 0(_STR_PTR)                            ;\
    beqz _R1, 3f                                     ;\
2:                                                    ;\
    LOAD_ADDR32(_R2, K3_UART0_BASE)                  ;\
    addi _R2, _R2, K3_UART_LSR_OFF                  ;\
4:                                                    ;\
    lbu  _R3, 0(_R2)                                 ;\
    andi _R3, _R3, K3_UART_LSR_THRE                 ;\
    beqz _R3, 4b                                     ;\
    LOAD_ADDR32(_R2, K3_UART0_BASE)                  ;\
    sb   _R1, K3_UART_THR_OFF(_R2)                  ;\
    addi _STR_PTR, _STR_PTR, 1                       ;\
    j    1b                                          ;\
3:

##### Access Fault #####

// RVMODEL_ACCESS_FAULT_ADDRESS is deliberately not defined, so ACT skips its access-fault
// subtests (tests/env/check_defines.h). On the K3 a load from 0x0 (TCM) never completes and
// hangs the core (csr_probe trace, 2026-10-19); no address that faults cleanly is known yet.

// The CLINT is far from the test image: ACT must load CLINT addresses absolutely.
#define RVMODEL_CLINT_ABSOLUTE 1
#define RVMODEL_MTIMECMP_ADDRESS K3_MTIMECMP_ADDRESS

#define RVMODEL_LOAD_MTIMECMP_ADDR(_REG) LOAD_ADDR32(_REG, K3_MTIMECMP_ADDRESS)

##### Machine Interrupts #####

#define RVMODEL_INTERRUPT_LATENCY 50

#define RVMODEL_TIMER_INT_SOON_DELAY 200

#define RVMODEL_MAX_CYCLES_PER_TIMER_TICK 100

#define RVMODEL_MSIP_ADDRESS K3_MSIP_ADDRESS

#define RVMODEL_SET_MEXT_INT(_R1, _R2)
#define RVMODEL_CLR_MEXT_INT(_R1, _R2)

#define RVMODEL_SET_MSW_INT(_R1, _R2)  \
    LOAD_ADDR32(_R2, K3_MSIP_ADDRESS) ;\
    li _R1, 1                         ;\
    sw _R1, 0(_R2);

#define RVMODEL_CLR_MSW_INT(_R1, _R2)  \
    LOAD_ADDR32(_R2, K3_MSIP_ADDRESS) ;\
    sw zero, 0(_R2);

##### Supervisor Interrupts #####

#define RVMODEL_SET_SEXT_INT(_R1, _R2)
#define RVMODEL_CLR_SEXT_INT(_R1, _R2)
#define RVMODEL_SET_SSW_INT(_R1, _R2)
#define RVMODEL_CLR_SSW_INT(_R1, _R2)

#endif // _RVMODEL_MACROS_H
