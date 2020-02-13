/*
 *
 * Copyright (c) 2005-2019 Imperas Software Ltd., www.imperas.com
 *
 * The contents of this file are provided under the Software License
 * Agreement that you accepted before downloading this file.
 *
 * This source forms part of the Software and can be used for educational,
 * training, and demonstration purposes but cannot be used for derivative
 * works except in cases where the derivative works require OVP technology
 * to run.
 *
 * For open source models released under licenses that you can use for
 * derivative works, please visit www.OVPworld.org or www.imperas.com
 * for the location of the open source models.
 *
 */


////////////////////////////////////////////////////////////////////////////////
//
// -------------------------------------
// COMMON FRAMEWORK FOR VALIDATION TESTS
// -------------------------------------
//
// NOTES ON REGISTER USAGE
// -----------------------
// In accordance with the RISC-V ABI, registers are used as follows:
//
// Function Arguments (a0-a7)
// --------------------------
// Caller must save these if required.
//
// Function Return Values
// ----------------------
// Results are returned in a0 and a1 (if required).
//
// Temporaries
// -----------
// t0-t6 are available for use within a function. Caller must save these if
// required.
//
// Preserved
// ---------
// s0-s11 are preserved within a function. Callee must save these if required.
//
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
// INITIALIZE I/O
////////////////////////////////////////////////////////////////////////////////

#undef SX
#undef LX
#ifdef XLEN32
    #define SX sw
    #define LX lw
#else
    #define SX sd
    #define LX ld
#endif


.macro IO_INIT
#if (USE_FU540_LOG==1)
    #ifdef SIFIVE_FU540
        // executing on board
        csrr    t0, mhartid     // 4-byte op
        li      t1, 4           // 2-byte op
1:      bne     t1, t0, 1b      // 4-byte op
        lui     t5, 0x10010     // 4-byte op
        li      a0, 0x1         // 2-byte op
        sw      a0, 8(t5)       // 4-byte op
    #else
        // board-compatible simulation
        .word 0x00000013        // 4-byte nop (match board code size)
        .word 0x00000013        // 4-byte nop (match board code size)
        .word 0x00000013        // 4-byte nop (match board code size)
        .word 0x00000013        // 4-byte nop (match board code size)
        .word 0x00000013        // 4-byte nop (match board code size)
    #endif
#endif
.endm

////////////////////////////////////////////////////////////////////////////////
// WRITE CHARACTER
////////////////////////////////////////////////////////////////////////////////

.macro IO_PUTC _R
#if (USE_FU540_LOG==1)
    #ifdef SIFIVE_FU540
        // executing on board
        lui         t5, 0x10010
        L1\@:
        lw          t6, (t5)
        bnez        t6, L1\@
        sw          \_R, (t5)
    #else
        // board-compatible simulation
        lui         t5, 0x10010
        lw          t6, (t5)
        .word 0x00000013    // 4-byte nop (match board code size)
        sw          \_R, (t5)
    #endif
#elif (USE_ECALL_LOG==1) 
    SX a0,-40(sp)
    SX a1,-48(sp)
    SX a2,-56(sp)
    SX a3,-64(sp)
    SX a7,-72(sp)
    la a1, stdiobuf	// a1 = ptr to buffer
    sb a0, 0(a1)
    li a0, 1
    li a2, 1		// a2 = character count
    li a3, 0		// a3 = ?
    li a7, 64 		// Write code
    ecall
    LX a0,-40(sp)
    LX a1,-48(sp)
    LX a2,-56(sp)
    LX a3,-64(sp)
    LX a7,-72(sp)
#else
        // normal test case simulation - custome instruction
        .word 0x0005200B
#endif
.endm

        .globl  _start

////////////////////////////////////////////////////////////////////////////////
// JUMP TO START OF TEST
////////////////////////////////////////////////////////////////////////////////

_start:
        IO_INIT
#if (INSTALL_TRAPHANDLER==1)
        la      a0, _traphandler
        csrw    mtvec, a0
#endif
        j       START_TEST

////////////////////////////////////////////////////////////////////////////////
// EXIT_TEST: terminate test (destroys a0)
// NOTE: t5 and t6 may be used here as scratch registers if required
////////////////////////////////////////////////////////////////////////////////

#if (USE_FU540_LOG==1)
    exit_test:
    #ifdef SIFIVE_FU540
        // executing on board
        j exit_test         // 2-byte op
        .word 0x00000013    // 4-byte nop (match simulator code size)
    #else
        // board-compatible simulation
        li          a0,0    // 2-byte op
        .word 0x0005200B    // 4-byte op
    #endif
#endif

.macro EXIT_TEST
#if (USE_FU540_LOG==1)
        // executing on board or simulation of board
        j exit_test
#elif (USE_ECALL_LOG==1) 
        li a7, 93 // Exit code
        ecall
#else
        // normal test case simulation
        li          a0,0
        .word 0x0005200B
#endif
.endm

////////////////////////////////////////////////////////////////////////////////
// Install a trap handler to exit
////////////////////////////////////////////////////////////////////////////////
#if (INSTALL_TRAPHANDLER==1)
_traphandler:
	j shutDown
#endif

////////////////////////////////////////////////////////////////////////////////
// WRITE_A0: write character in a0
// NOTE: t5 and t6 may be used here as scratch registers if required
////////////////////////////////////////////////////////////////////////////////

.macro WRITE_A0
#ifdef SYS_QUIET
        // Do nothing
#else
    IO_PUTC a0
#endif
.endm

////////////////////////////////////////////////////////////////////////////////
// WRITE_NL: write newline (destroys a0)
////////////////////////////////////////////////////////////////////////////////

.macro WRITE_NL
        li          a0,10
        WRITE_A0
.endm

////////////////////////////////////////////////////////////////////////////////
// WRITE_RAW <gpr>: write raw register (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro WRITE_RAW _R
#ifndef SYS_QUIET
        mv          a0, \_R
        jal         writeA0
#endif
.endm

////////////////////////////////////////////////////////////////////////////////
// WRITE_RAWS <gpr>: write raw register, short form with no leading zeros
// (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro WRITE_RAWS _R
#ifndef SYS_QUIET
        mv          a0, \_R
        jal         writeA0Short
#endif
.endm

////////////////////////////////////////////////////////////////////////////////
// WRITE_RAW4 <gpr>: write 32-bit raw register (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro WRITE_RAW4 _R
#ifndef SYS_QUIET
        mv          a0, \_R
        jal         writeA0_4
#endif
.endm

////////////////////////////////////////////////////////////////////////////////
// WRITE_S <string>: write string (destroys a0, t0, lr)
////////////////////////////////////////////////////////////////////////////////

.macro WRITE_S _R
#ifndef SYS_QUIET
        la          a0, \_R
        jal         writeS
#endif
.endm

////////////////////////////////////////////////////////////////////////////////
// WRITE_LOG_N <string>: write log message without newline (destroys a0, t0, lr)
////////////////////////////////////////////////////////////////////////////////

.macro WRITE_LOG_N _M
        WRITE_S     logM
        WRITE_S     \_M
.endm

////////////////////////////////////////////////////////////////////////////////
// WRITE_LOG <string>: write log message with newline (destroys a0, t0, lr)
////////////////////////////////////////////////////////////////////////////////

.macro WRITE_LOG _M
        WRITE_LOG_N \_M
        WRITE_NL
.endm

////////////////////////////////////////////////////////////////////////////////
// GPR_LOG <gpr>: log gpr value with newline (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro GPR_LOG _GPR
        mv          t2, \_GPR
        WRITE_S     logM
        WRITE_S     LABEL_\_GPR
        WRITE_S     equalsXL
        WRITE_RAW   t2
        WRITE_NL
.endm

////////////////////////////////////////////////////////////////////////////////
// FPR_LOG_S <gpr>: log SP fpr value with newline (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro FPR_LOG_S _FPR
        fmv.x.s     t2, \_FPR
        WRITE_S     logM
        WRITE_S     LABEL_\_FPR
        WRITE_S     equalsXL
        WRITE_RAW   t2
        WRITE_NL
.endm

////////////////////////////////////////////////////////////////////////////////
// FPR_LOG_D <gpr>: log DP fpr value with newline (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro FPR_LOG_D _FPR
        fmv.x.d     t2, \_FPR
        WRITE_S     logM
        WRITE_S     LABEL_\_FPR
        WRITE_S     equalsXL
        WRITE_RAW   t2
        WRITE_NL
.endm

////////////////////////////////////////////////////////////////////////////////
// CSR_R <gpr>, <csr>: log csr read to gpr (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro CSR_R _GPR, _CSR
        csrr        \_GPR, \_CSR
        WRITE_S     LABEL_\_CSR
        WRITE_S     rarrowXL
        WRITE_RAW   \_GPR
.endm

////////////////////////////////////////////////////////////////////////////////
// CSR_R_LOG <gpr>, <csr>: log csr read to gpr (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro CSR_R_LOG_N _GPR, _CSR
        csrr        \_GPR, \_CSR
        WRITE_S     logM
        WRITE_S     LABEL_\_CSR
        WRITE_S     rarrowXL
        WRITE_RAW   \_GPR
.endm

////////////////////////////////////////////////////////////////////////////////
// CSR_R_LOG <gpr>, <csr>: log csr read to gpr (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro CSR_R_LOG _GPR, _CSR
        CSR_R_LOG_N \_GPR, \_CSR
        WRITE_NL
.endm

////////////////////////////////////////////////////////////////////////////////
// CSR_W_LOG <csr>, <gpr>: log csr write from gpr (destroys a0, t0-t2, lr)
////////////////////////////////////////////////////////////////////////////////

.macro CSR_W_LOG _CSR, _GPR
        csrw        \_CSR, \_GPR
#ifndef SYS_QUIET
        li          t1, -1
        csrr        t1, \_CSR
#endif
        WRITE_S     logM
        WRITE_S     LABEL_\_CSR
        WRITE_S     larrowXL
        WRITE_RAW   t1
        WRITE_NL
.endm

////////////////////////////////////////////////////////////////////////////////
// writeS: write string in a0 (destroys a0, t0)
////////////////////////////////////////////////////////////////////////////////

writeS:

#ifndef SYS_QUIET

        mv          t0, a0
10000:
        lbu         a0, (t0)
        addi        t0, t0, 1
        beq         a0, zero, 10000f
        WRITE_A0
        j           10000b

#endif
10000:  ret

// stabilize function size (WRITE_A0 implementation may change)
.align 7

////////////////////////////////////////////////////////////////////////////////
// writeA0: write register a0 (destroys a0, t0-t2)
////////////////////////////////////////////////////////////////////////////////

writeA0:

#ifndef SYS_QUIET

        mv          t0, a0

        // determine architectural register width
        li          a0, -1
        srli        a0, a0, 31
        srli        a0, a0, 1
        bnez        a0, writeA0_64

#endif
writeA0_32:
#ifndef SYS_QUIET

        // reverse register when xlen is 32
        li          t1, 8
10000:  slli        t2, t2, 4
        andi        a0, t0, 0xf
        srli        t0, t0, 4
        or          t2, t2, a0
        addi        t1, t1, -1
        bnez        t1, 10000b
        li          t1, 8
        j           writeA0_common

#endif
writeA0_64:
#ifndef SYS_QUIET

        // reverse register when xlen is 64
        li          t1, 16
10000:  slli        t2, t2, 4
        andi        a0, t0, 0xf
        srli        t0, t0, 4
        or          t2, t2, a0
        addi        t1, t1, -1
        bnez        t1, 10000b
        li          t1, 16

writeA0_common:

        // write reversed characters
        li          t0, 10
10000:  andi        a0, t2, 0xf
        blt         a0, t0, 10001f
        addi        a0, a0, 'a'-10
        j           10002f
10001:  addi        a0, a0, '0'
10002:  WRITE_A0
        srli        t2, t2, 4
        addi        t1, t1, -1
        bnez        t1, 10000b

#endif

        ret

////////////////////////////////////////////////////////////////////////////////
// writeA0_4: write 32-bit register a0 (destroys a0, t0-t2)
////////////////////////////////////////////////////////////////////////////////

writeA0_4:

#ifndef SYS_QUIET
        mv          t0, a0
        li          t2, 0
#endif
        j           writeA0_32

// stabilize function size (WRITE_A0 implementation may change)
.align 7

////////////////////////////////////////////////////////////////////////////////
// writeA0Short: write register a0 with no leading zeros (destroys a0, t0-t2)
////////////////////////////////////////////////////////////////////////////////

writeA0Short:

#ifndef SYS_QUIET

        mv          t0, a0

        // reverse register
        mv          t2, zero
10000:  slli        t2, t2, 4
        andi        a0, t0, 0xf
        srli        t0, t0, 4
        or          t2, t2, a0
        bnez        t0, 10000b

        // write reversed characters
        li          t0, 10
10000:  andi        a0, t2, 0xf
        blt         a0, t0, 10001f
        addi        a0, a0, 'a'-10
        j           10002f
10001:  addi        a0, a0, '0'
10002:  WRITE_A0
        srli        t2, t2, 4
        bnez        t2, 10000b

#endif

        ret

// stabilize function size (WRITE_A0 implementation may change)
.align 7

////////////////////////////////////////////////////////////////////////////////
// shutDown: terminate test abnormally
////////////////////////////////////////////////////////////////////////////////

shutDown:

        WRITE_LOG   abortMessage
        EXIT_TEST

// stabilize function size (WRITE_A0 implementation may change)
.align 7

////////////////////////////////////////////////////////////////////////////////
// ABORT <msg>: terminate test on abnormal state
////////////////////////////////////////////////////////////////////////////////

.macro ABORT _MSG
        WRITE_LOG   \_MSG
        j           shutDown
.endm

////////////////////////////////////////////////////////////////////////////////
// STRINGS
////////////////////////////////////////////////////////////////////////////////

equalsXL:
        .string " = 0x"
rarrowXL:
        .string " => 0x"
larrowXL:
        .string " <= 0x"
logM:
        .string "LOG: "
exitM:
        .string "TEST ENDED"
abortMessage:
        .string "*** TEST ABORTED ****"

////////////////////////////////////////////////////////////////////////////////
// DEFINE_REG_LABEL: define register name string
////////////////////////////////////////////////////////////////////////////////

.macro DEFINE_REG_LABEL _L
        LABEL_\_L : .string "\_L"
.endm

////////////////////////////////////////////////////////////////////////////////
// GPR LABELS
////////////////////////////////////////////////////////////////////////////////

DEFINE_REG_LABEL     zero
DEFINE_REG_LABEL     ra
DEFINE_REG_LABEL     sp
DEFINE_REG_LABEL     gp
DEFINE_REG_LABEL     tp
DEFINE_REG_LABEL     t0
DEFINE_REG_LABEL     t1
DEFINE_REG_LABEL     t2
DEFINE_REG_LABEL     s0
DEFINE_REG_LABEL     s1
DEFINE_REG_LABEL     a0
DEFINE_REG_LABEL     a1
DEFINE_REG_LABEL     a2
DEFINE_REG_LABEL     a3
DEFINE_REG_LABEL     a4
DEFINE_REG_LABEL     a5
DEFINE_REG_LABEL     a6
DEFINE_REG_LABEL     a7
DEFINE_REG_LABEL     s2
DEFINE_REG_LABEL     s3
DEFINE_REG_LABEL     s4
DEFINE_REG_LABEL     s5
DEFINE_REG_LABEL     s6
DEFINE_REG_LABEL     s7
DEFINE_REG_LABEL     s8
DEFINE_REG_LABEL     s9
DEFINE_REG_LABEL     s10
DEFINE_REG_LABEL     s11
DEFINE_REG_LABEL     t3
DEFINE_REG_LABEL     t4
DEFINE_REG_LABEL     t5
DEFINE_REG_LABEL     t6

////////////////////////////////////////////////////////////////////////////////
// FPR LABELS
////////////////////////////////////////////////////////////////////////////////

DEFINE_REG_LABEL     ft0
DEFINE_REG_LABEL     ft1
DEFINE_REG_LABEL     ft2
DEFINE_REG_LABEL     ft3
DEFINE_REG_LABEL     ft4
DEFINE_REG_LABEL     ft5
DEFINE_REG_LABEL     ft6
DEFINE_REG_LABEL     ft7
DEFINE_REG_LABEL     fs0
DEFINE_REG_LABEL     fs1
DEFINE_REG_LABEL     fa0
DEFINE_REG_LABEL     fa1
DEFINE_REG_LABEL     fa2
DEFINE_REG_LABEL     fa3
DEFINE_REG_LABEL     fa4
DEFINE_REG_LABEL     fa5
DEFINE_REG_LABEL     fa6
DEFINE_REG_LABEL     fa7
DEFINE_REG_LABEL     fs2
DEFINE_REG_LABEL     fs3
DEFINE_REG_LABEL     fs4
DEFINE_REG_LABEL     fs5
DEFINE_REG_LABEL     fs6
DEFINE_REG_LABEL     fs7
DEFINE_REG_LABEL     fs8
DEFINE_REG_LABEL     fs9
DEFINE_REG_LABEL     fs10
DEFINE_REG_LABEL     fs11
DEFINE_REG_LABEL     ft8
DEFINE_REG_LABEL     ft9
DEFINE_REG_LABEL     ft10
DEFINE_REG_LABEL     ft11

////////////////////////////////////////////////////////////////////////////////
// FPR LABELS
////////////////////////////////////////////////////////////////////////////////

DEFINE_REG_LABEL     f0
DEFINE_REG_LABEL     f1
DEFINE_REG_LABEL     f2
DEFINE_REG_LABEL     f3
DEFINE_REG_LABEL     f4
DEFINE_REG_LABEL     f5
DEFINE_REG_LABEL     f6
DEFINE_REG_LABEL     f7
DEFINE_REG_LABEL     f8
DEFINE_REG_LABEL     f9
DEFINE_REG_LABEL     f10
DEFINE_REG_LABEL     f11
DEFINE_REG_LABEL     f12
DEFINE_REG_LABEL     f13
DEFINE_REG_LABEL     f14
DEFINE_REG_LABEL     f15
DEFINE_REG_LABEL     f16
DEFINE_REG_LABEL     f17
DEFINE_REG_LABEL     f18
DEFINE_REG_LABEL     f19
DEFINE_REG_LABEL     f20
DEFINE_REG_LABEL     f21
DEFINE_REG_LABEL     f22
DEFINE_REG_LABEL     f23
DEFINE_REG_LABEL     f24
DEFINE_REG_LABEL     f25
DEFINE_REG_LABEL     f26
DEFINE_REG_LABEL     f27
DEFINE_REG_LABEL     f28
DEFINE_REG_LABEL     f29
DEFINE_REG_LABEL     f30
DEFINE_REG_LABEL     f31

////////////////////////////////////////////////////////////////////////////////
// CSR INDICES (where assembler does not recognize them)
////////////////////////////////////////////////////////////////////////////////

#define ustatus         0x000
#define uie             0x004
#define utvec           0x005
#define vstart          0x008
#define vxsat           0x009
#define vxrm            0x00A
#define uscratch        0x040
#define uepc            0x041
#define ucause          0x042
#define utval           0x043
#define uip             0x044
#define sedeleg         0x102
#define sideleg         0x103
#define stval           0x143
#define satp            0x180
#define mcountinhibit   0x320
#define mtval           0x343
#define vl              0xC20
#define vtype           0xC21
#define vlenb           0xC22

.macro DEFINE_REG_LABEL_X _L, _S
        LABEL_\_L : .string "\_S"
.endm

////////////////////////////////////////////////////////////////////////////////
// CSR LABELS
////////////////////////////////////////////////////////////////////////////////

// User Trap Setup
DEFINE_REG_LABEL_X   ustatus,  "ustatus"    // not recognized by assembler
DEFINE_REG_LABEL_X   uie,      "uie"        // not recognized by assembler
DEFINE_REG_LABEL_X   utvec,    "utvec"      // not recognized by assembler

// User Trap Handling
DEFINE_REG_LABEL_X   uscratch, "uscratch"   // not recognized by assembler
DEFINE_REG_LABEL_X   uepc,     "uepc"       // not recognized by assembler
DEFINE_REG_LABEL_X   ucause,   "ucause"     // not recognized by assembler
DEFINE_REG_LABEL_X   utval,    "utval"      // not recognized by assembler
DEFINE_REG_LABEL_X   uip       "uip"        // not recognized by assembler

// User Floating-Point CSR
DEFINE_REG_LABEL     fflags
DEFINE_REG_LABEL     frm
DEFINE_REG_LABEL     fcsr

// User Counter Timers
DEFINE_REG_LABEL     cycle
DEFINE_REG_LABEL     time
DEFINE_REG_LABEL     instret
DEFINE_REG_LABEL     cycleh
DEFINE_REG_LABEL     timeh
DEFINE_REG_LABEL     instreth
DEFINE_REG_LABEL     hpmcounter3
DEFINE_REG_LABEL     hpmcounter4
DEFINE_REG_LABEL     hpmcounter5
DEFINE_REG_LABEL     hpmcounter6
DEFINE_REG_LABEL     hpmcounter7
DEFINE_REG_LABEL     hpmcounter8
DEFINE_REG_LABEL     hpmcounter9
DEFINE_REG_LABEL     hpmcounter10
DEFINE_REG_LABEL     hpmcounter11
DEFINE_REG_LABEL     hpmcounter12
DEFINE_REG_LABEL     hpmcounter13
DEFINE_REG_LABEL     hpmcounter14
DEFINE_REG_LABEL     hpmcounter15
DEFINE_REG_LABEL     hpmcounter16
DEFINE_REG_LABEL     hpmcounter17
DEFINE_REG_LABEL     hpmcounter18
DEFINE_REG_LABEL     hpmcounter19
DEFINE_REG_LABEL     hpmcounter20
DEFINE_REG_LABEL     hpmcounter21
DEFINE_REG_LABEL     hpmcounter22
DEFINE_REG_LABEL     hpmcounter23
DEFINE_REG_LABEL     hpmcounter24
DEFINE_REG_LABEL     hpmcounter25
DEFINE_REG_LABEL     hpmcounter26
DEFINE_REG_LABEL     hpmcounter27
DEFINE_REG_LABEL     hpmcounter28
DEFINE_REG_LABEL     hpmcounter29
DEFINE_REG_LABEL     hpmcounter30
DEFINE_REG_LABEL     hpmcounter31
DEFINE_REG_LABEL     hpmcounterh3
DEFINE_REG_LABEL     hpmcounterh4
DEFINE_REG_LABEL     hpmcounterh5
DEFINE_REG_LABEL     hpmcounterh6
DEFINE_REG_LABEL     hpmcounterh7
DEFINE_REG_LABEL     hpmcounterh8
DEFINE_REG_LABEL     hpmcounterh9
DEFINE_REG_LABEL     hpmcounterh10
DEFINE_REG_LABEL     hpmcounterh11
DEFINE_REG_LABEL     hpmcounterh12
DEFINE_REG_LABEL     hpmcounterh13
DEFINE_REG_LABEL     hpmcounterh14
DEFINE_REG_LABEL     hpmcounterh15
DEFINE_REG_LABEL     hpmcounterh16
DEFINE_REG_LABEL     hpmcounterh17
DEFINE_REG_LABEL     hpmcounterh18
DEFINE_REG_LABEL     hpmcounterh19
DEFINE_REG_LABEL     hpmcounterh20
DEFINE_REG_LABEL     hpmcounterh21
DEFINE_REG_LABEL     hpmcounterh22
DEFINE_REG_LABEL     hpmcounterh23
DEFINE_REG_LABEL     hpmcounterh24
DEFINE_REG_LABEL     hpmcounterh25
DEFINE_REG_LABEL     hpmcounterh26
DEFINE_REG_LABEL     hpmcounterh27
DEFINE_REG_LABEL     hpmcounterh28
DEFINE_REG_LABEL     hpmcounterh29
DEFINE_REG_LABEL     hpmcounterh30
DEFINE_REG_LABEL     hpmcounterh31

// Supervisor Trap Setup
DEFINE_REG_LABEL     sstatus
DEFINE_REG_LABEL_X   sedeleg, "sedeleg"     // not recognized by assembler
DEFINE_REG_LABEL_X   sideleg, "sideleg"     // not recognized by assembler
DEFINE_REG_LABEL     sie
DEFINE_REG_LABEL     stvec
DEFINE_REG_LABEL     scounteren

// Supervisor Trap Handling
DEFINE_REG_LABEL     sscratch
DEFINE_REG_LABEL     sepc
DEFINE_REG_LABEL     scause
DEFINE_REG_LABEL_X   stval, "stval"         // not recognized by assembler
DEFINE_REG_LABEL     sip

// Supervisor Protection and Translation
DEFINE_REG_LABEL_X   satp,  "satp"          // not recognized by assembler

// Machine Information Registers
DEFINE_REG_LABEL     mvendorid
DEFINE_REG_LABEL     marchid
DEFINE_REG_LABEL     mimpid
DEFINE_REG_LABEL     mhartid

// Machine Trap Setup
DEFINE_REG_LABEL     mstatus
DEFINE_REG_LABEL     misa
DEFINE_REG_LABEL     medeleg
DEFINE_REG_LABEL     mideleg
DEFINE_REG_LABEL     mie
DEFINE_REG_LABEL     mtvec
DEFINE_REG_LABEL     mcycle
DEFINE_REG_LABEL     mcycleh
DEFINE_REG_LABEL     minstret
DEFINE_REG_LABEL     minstreth
DEFINE_REG_LABEL     mcounteren

// Machine Trap Handling
DEFINE_REG_LABEL     mscratch
DEFINE_REG_LABEL     mepc
DEFINE_REG_LABEL     mcause
DEFINE_REG_LABEL_X   mtval, "mtval"         // not recognized by assembler
DEFINE_REG_LABEL     mip
DEFINE_REG_LABEL_X   mcountinhibit, "mcountinhibit" // not recognized by assembler

// Machine Protection and Translation
DEFINE_REG_LABEL     pmpcfg0
DEFINE_REG_LABEL     pmpcfg1
DEFINE_REG_LABEL     pmpcfg2
DEFINE_REG_LABEL     pmpcfg3
DEFINE_REG_LABEL     pmpaddr0
DEFINE_REG_LABEL     pmpaddr1
DEFINE_REG_LABEL     pmpaddr2
DEFINE_REG_LABEL     pmpaddr3
DEFINE_REG_LABEL     pmpaddr4
DEFINE_REG_LABEL     pmpaddr5
DEFINE_REG_LABEL     pmpaddr6
DEFINE_REG_LABEL     pmpaddr7
DEFINE_REG_LABEL     pmpaddr8
DEFINE_REG_LABEL     pmpaddr9
DEFINE_REG_LABEL     pmpaddr10
DEFINE_REG_LABEL     pmpaddr11
DEFINE_REG_LABEL     pmpaddr12
DEFINE_REG_LABEL     pmpaddr13
DEFINE_REG_LABEL     pmpaddr14
DEFINE_REG_LABEL     pmpaddr15

// Profiling
DEFINE_REG_LABEL     mhpmcounter3
DEFINE_REG_LABEL     mhpmcounter4
DEFINE_REG_LABEL     mhpmcounter5
DEFINE_REG_LABEL     mhpmcounter6
DEFINE_REG_LABEL     mhpmcounter7
DEFINE_REG_LABEL     mhpmcounter8
DEFINE_REG_LABEL     mhpmcounter9
DEFINE_REG_LABEL     mhpmcounter10
DEFINE_REG_LABEL     mhpmcounter11
DEFINE_REG_LABEL     mhpmcounter12
DEFINE_REG_LABEL     mhpmcounter13
DEFINE_REG_LABEL     mhpmcounter14
DEFINE_REG_LABEL     mhpmcounter15
DEFINE_REG_LABEL     mhpmcounter16
DEFINE_REG_LABEL     mhpmcounter17
DEFINE_REG_LABEL     mhpmcounter18
DEFINE_REG_LABEL     mhpmcounter19
DEFINE_REG_LABEL     mhpmcounter20
DEFINE_REG_LABEL     mhpmcounter21
DEFINE_REG_LABEL     mhpmcounter22
DEFINE_REG_LABEL     mhpmcounter23
DEFINE_REG_LABEL     mhpmcounter24
DEFINE_REG_LABEL     mhpmcounter25
DEFINE_REG_LABEL     mhpmcounter26
DEFINE_REG_LABEL     mhpmcounter27
DEFINE_REG_LABEL     mhpmcounter28
DEFINE_REG_LABEL     mhpmcounter29
DEFINE_REG_LABEL     mhpmcounter30
DEFINE_REG_LABEL     mhpmcounter31
DEFINE_REG_LABEL     mhpmcounter3h
DEFINE_REG_LABEL     mhpmcounter4h
DEFINE_REG_LABEL     mhpmcounter5h
DEFINE_REG_LABEL     mhpmcounter6h
DEFINE_REG_LABEL     mhpmcounter7h
DEFINE_REG_LABEL     mhpmcounter8h
DEFINE_REG_LABEL     mhpmcounter9h
DEFINE_REG_LABEL     mhpmcounter10h
DEFINE_REG_LABEL     mhpmcounter11h
DEFINE_REG_LABEL     mhpmcounter12h
DEFINE_REG_LABEL     mhpmcounter13h
DEFINE_REG_LABEL     mhpmcounter14h
DEFINE_REG_LABEL     mhpmcounter15h
DEFINE_REG_LABEL     mhpmcounter16h
DEFINE_REG_LABEL     mhpmcounter17h
DEFINE_REG_LABEL     mhpmcounter18h
DEFINE_REG_LABEL     mhpmcounter19h
DEFINE_REG_LABEL     mhpmcounter20h
DEFINE_REG_LABEL     mhpmcounter21h
DEFINE_REG_LABEL     mhpmcounter22h
DEFINE_REG_LABEL     mhpmcounter23h
DEFINE_REG_LABEL     mhpmcounter24h
DEFINE_REG_LABEL     mhpmcounter25h
DEFINE_REG_LABEL     mhpmcounter26h
DEFINE_REG_LABEL     mhpmcounter27h
DEFINE_REG_LABEL     mhpmcounter28h
DEFINE_REG_LABEL     mhpmcounter29h
DEFINE_REG_LABEL     mhpmcounter30h
DEFINE_REG_LABEL     mhpmcounter31h
DEFINE_REG_LABEL     mhpmevent3
DEFINE_REG_LABEL     mhpmevent4
DEFINE_REG_LABEL     mhpmevent5
DEFINE_REG_LABEL     mhpmevent6
DEFINE_REG_LABEL     mhpmevent7
DEFINE_REG_LABEL     mhpmevent8
DEFINE_REG_LABEL     mhpmevent9
DEFINE_REG_LABEL     mhpmevent10
DEFINE_REG_LABEL     mhpmevent11
DEFINE_REG_LABEL     mhpmevent12
DEFINE_REG_LABEL     mhpmevent13
DEFINE_REG_LABEL     mhpmevent14
DEFINE_REG_LABEL     mhpmevent15
DEFINE_REG_LABEL     mhpmevent16
DEFINE_REG_LABEL     mhpmevent17
DEFINE_REG_LABEL     mhpmevent18
DEFINE_REG_LABEL     mhpmevent19
DEFINE_REG_LABEL     mhpmevent20
DEFINE_REG_LABEL     mhpmevent21
DEFINE_REG_LABEL     mhpmevent22
DEFINE_REG_LABEL     mhpmevent23
DEFINE_REG_LABEL     mhpmevent24
DEFINE_REG_LABEL     mhpmevent25
DEFINE_REG_LABEL     mhpmevent26
DEFINE_REG_LABEL     mhpmevent27
DEFINE_REG_LABEL     mhpmevent28
DEFINE_REG_LABEL     mhpmevent29
DEFINE_REG_LABEL     mhpmevent30
DEFINE_REG_LABEL     mhpmevent31

// Vector registers
DEFINE_REG_LABEL_X   vstart, "vstart"   // not recognized by assembler
DEFINE_REG_LABEL_X   vxsat,  "vxsat"    // not recognized by assembler
DEFINE_REG_LABEL_X   vxrm,   "vxrm"     // not recognized by assembler
DEFINE_REG_LABEL_X   vtype,  "vtype"    // not recognized by assembler
DEFINE_REG_LABEL_X   vl,     "vl"       // not recognized by assembler
DEFINE_REG_LABEL_X   vlenb,  "vlenb"    // not recognized by assembler

#if (USE_ECALL_LOG==1) 
.align 4
stdiobuf:
	.word 0x0
#endif

// leave space for new labels
.align 11
# RISC-V Bit Manipulation Instruction Support
#
# Copyright (c) 2019, Imperas Software Ltd. Additions
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#      * Redistributions of source code must retain the above copyright
#        notice, this list of conditions and the following disclaimer.
#      * Redistributions in binary form must reproduce the above copyright
#        notice, this list of conditions and the following disclaimer in the
#        documentation and/or other materials provided with the distribution.
#      * the name of Imperas Software Ltd. nor the
#        names of its contributors may be used to endorse or promote products
#        derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
# IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Codasip Ltd., Imperas Software Ltd.
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
.include "extB.S.include"

# use s0(r8)  - s1(r9)
# use s2(r18) - s11(r27)

.macro test_PCNT imm
    WRITE_LOG_N str1
    WRITE_S sep
    li s0, \imm
    PCNT 9 8
    WRITE_RAW s0
    WRITE_S gives
    WRITE_RAW s1
    WRITE_NL
.endm

#if defined(XLEN64)
    #define test_OP(i1) \
        test_PCNT 0x ## i1; \
        test_PCNT 0x ## i1 ## i1; \
        test_PCNT ~0x ## i1; \
        test_PCNT ~0x ## i1 ## i1;
#else
    #define test_OP(i1) \
        test_PCNT 0x ## i1; \
        test_PCNT ~0x ## i1;
#endif

START_TEST:
    test_OP(00000000)
    test_OP(00000001)
    test_OP(00000002)
    test_OP(00000004)
    test_OP(00000008)
    test_OP(00000010)
    test_OP(00000020)
    test_OP(00000040)
    test_OP(00000080)
    test_OP(00000100)
    test_OP(00000200)
    test_OP(00000400)
    test_OP(00000800)
    test_OP(00001000)
    test_OP(00002000)
    test_OP(00004000)
    test_OP(00008000)
    test_OP(00010000)
    test_OP(00020000)
    test_OP(00040000)
    test_OP(00080000)
    test_OP(00100000)
    test_OP(00200000)
    test_OP(00400000)
    test_OP(00800000)
    test_OP(01000000)
    test_OP(02000000)
    test_OP(04000000)
    test_OP(08000000)
    test_OP(10000000)
    test_OP(20000000)
    test_OP(40000000)
    test_OP(80000000)
    test_OP(00000001)
    test_OP(00000003)
    test_OP(00000007)
    test_OP(0000000F)
    test_OP(0000001F)
    test_OP(0000003F)
    test_OP(0000007F)
    test_OP(000000FF)
    test_OP(000001FF)
    test_OP(000003FF)
    test_OP(000007FF)
    test_OP(00000FFF)
    test_OP(00001FFF)
    test_OP(00003FFF)
    test_OP(00007FFF)
    test_OP(0000FFFF)
    test_OP(0001FFFF)
    test_OP(0003FFFF)
    test_OP(0007FFFF)
    test_OP(000FFFFF)
    test_OP(001FFFFF)
    test_OP(003FFFFF)
    test_OP(007FFFFF)
    test_OP(00FFFFFF)
    test_OP(01FFFFFF)
    test_OP(03FFFFFF)
    test_OP(07FFFFFF)
    test_OP(0FFFFFFF)
    test_OP(1FFFFFFF)
    test_OP(3FFFFFFF)
    test_OP(7FFFFFFF)
    test_OP(FFFFFFFF)
    test_OP(FFFFFFFF)
    test_OP(FFFFFFFE)
    test_OP(FFFFFFFC)
    test_OP(FFFFFFF8)
    test_OP(FFFFFFF0)
    test_OP(FFFFFFE0)
    test_OP(FFFFFFC0)
    test_OP(FFFFFF80)
    test_OP(FFFFFF00)
    test_OP(FFFFFE00)
    test_OP(FFFFFC00)
    test_OP(FFFFF800)
    test_OP(FFFFF000)
    test_OP(FFFFE000)
    test_OP(FFFFC000)
    test_OP(FFFF8000)
    test_OP(FFFF0000)
    test_OP(FFFE0000)
    test_OP(FFFC0000)
    test_OP(FFF80000)
    test_OP(FFF00000)
    test_OP(FFE00000)
    test_OP(FFC00000)
    test_OP(FF800000)
    test_OP(FF000000)
    test_OP(FE000000)
    test_OP(FC000000)
    test_OP(F8000000)
    test_OP(F0000000)
    test_OP(E0000000)
    test_OP(C0000000)
    test_OP(80000000)
    test_OP(0000000a)
    test_OP(000000aa)
    test_OP(00000aaa)
    test_OP(0000aaaa)
    test_OP(000aaaaa)
    test_OP(00aaaaaa)
    test_OP(0aaaaaaa)
    test_OP(aaaaaaaa)
    test_OP(00000001)
    test_OP(00000011)
    test_OP(00000111)
    test_OP(00001111)
    test_OP(00011111)
    test_OP(00111111)
    test_OP(01111111)
    test_OP(11111111)

    EXIT_TEST

str1:
    .string "Testing PCNT"

sep:
    .string " "

gives:
    .string " => "
