/*
 * Copyright (c) 2005-2019 Imperas Software Ltd., www.imperas.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

// Standard header files
#include "string.h"

// Imperas header files
#include "hostapi/impAlloc.h"

// VMI header files
#include "vmi/vmiMessage.h"
#include "vmi/vmiRt.h"

// model header files
#include "riscvDecode.h"
#include "riscvExceptions.h"
#include "riscvExceptionDefinitions.h"
#include "riscvFunctions.h"
#include "riscvMessage.h"
#include "riscvStructure.h"
#include "riscvUtils.h"
#include "riscvVM.h"
#include "riscvVMConstants.h"


////////////////////////////////////////////////////////////////////////////////
// EXCEPTION DEFINITIONS
////////////////////////////////////////////////////////////////////////////////

//
// Fill one member of exceptions
//
#define RISCV_EXCEPTION(_NAME, _ARCH, _DESC) { \
    vmiInfo : {name:#_NAME, code:riscv_E_##_NAME, description:_DESC},    \
    arch    : _ARCH                                                      \
}

//
// Fill one member of exceptions with number
//
#define RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, _NUM) \
    RISCV_EXCEPTION(_NAME##_NUM, _ARCH, _DESC#_NUM)

//
// Fill eight members of exceptions
//
#define RISCV_EXCEPTIONx8(_NAME, _ARCH, _DESC) \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 0), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 1), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 2), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 3), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 4), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 5), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 6), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 7)

//
// Fill ten members of exceptions
//
#define RISCV_EXCEPTIONx10(_NAME, _ARCH, _DESC) \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 0), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 1), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 2), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 3), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 4), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 5), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 6), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 7), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 8), \
    RISCV_EXCEPTION_N(_NAME, _ARCH, _DESC, 9)

//
// Table of exception descriptors
//
static const riscvExceptionDesc exceptions[] = {

    ////////////////////////////////////////////////////////////////////
    // EXCEPTIONS
    ////////////////////////////////////////////////////////////////////

    RISCV_EXCEPTION   (InstructionAddressMisaligned, 0,     "Fetch from unaligned address"),
    RISCV_EXCEPTION   (InstructionAccessFault,       0,     "No access permission for fetch"),
    RISCV_EXCEPTION   (IllegalInstruction,           0,     "Undecoded, unimplemented or disabled instruction"),
    RISCV_EXCEPTION   (Breakpoint,                   0,     "EBREAK instruction executed"),
    RISCV_EXCEPTION   (LoadAddressMisaligned,        0,     "Load from unaligned address"),
    RISCV_EXCEPTION   (LoadAccessFault,              0,     "No access permission for load"),
    RISCV_EXCEPTION   (StoreAMOAddressMisaligned,    0,     "Store/atomic memory operation at unaligned address"),
    RISCV_EXCEPTION   (StoreAMOAccessFault,          0,     "No access permission for store/atomic memory operation"),
    RISCV_EXCEPTION   (EnvironmentCallFromUMode,     ISA_U, "ECALL instruction executed in User mode"),
    RISCV_EXCEPTION   (EnvironmentCallFromSMode,     ISA_S, "ECALL instruction executed in Supervisor mode"),
    RISCV_EXCEPTION   (EnvironmentCallFromMMode,     0,     "ECALL instruction executed in Machine mode"),
    RISCV_EXCEPTION   (InstructionPageFault,         0,     "Page fault at fetch address"),
    RISCV_EXCEPTION   (LoadPageFault,                0,     "Page fault at load address"),
    RISCV_EXCEPTION   (StoreAMOPageFault,            0,     "Page fault at store/atomic memory operation address"),

    ////////////////////////////////////////////////////////////////////
    // INTERRUPTS
    ////////////////////////////////////////////////////////////////////

    RISCV_EXCEPTION   (USWInterrupt,                 ISA_N, "User software interrupt"),
    RISCV_EXCEPTION   (SSWInterrupt,                 ISA_S, "Supervisor software interrupt"),
    RISCV_EXCEPTION   (MSWInterrupt,                 0,     "Machine software interrupt"),
    RISCV_EXCEPTION   (UTimerInterrupt,              ISA_N, "User timer interrupt"),
    RISCV_EXCEPTION   (STimerInterrupt,              ISA_S, "Supervisor timer interrupt"),
    RISCV_EXCEPTION   (MTimerInterrupt,              0,     "Machine timer interrupt"),
    RISCV_EXCEPTION   (UExternalInterrupt,           ISA_N, "User external interrupt"),
    RISCV_EXCEPTION   (SExternalInterrupt,           ISA_S, "Supervisor external interrupt"),
    RISCV_EXCEPTION   (MExternalInterrupt,           0,     "Machine external interrupt"),
    RISCV_EXCEPTIONx10(LocalInterrupt,               0,     "Local interrupt "),
    RISCV_EXCEPTIONx10(LocalInterrupt1,              0,     "Local interrupt 1"),
    RISCV_EXCEPTIONx10(LocalInterrupt2,              0,     "Local interrupt 2"),
    RISCV_EXCEPTIONx10(LocalInterrupt3,              0,     "Local interrupt 3"),
    RISCV_EXCEPTIONx8 (LocalInterrupt4,              0,     "Local interrupt 4"),

    ////////////////////////////////////////////////////////////////////
    // TERMINATOR
    ////////////////////////////////////////////////////////////////////

    {{0}}
};


////////////////////////////////////////////////////////////////////////////////
// UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// Return current PC
//
inline static Uns64 getPC(riscvP riscv) {
    return vmirtGetPC((vmiProcessorP)riscv);
}

//
// Set current PC
//
inline static void setPC(riscvP riscv, Uns64 newPC) {
    vmirtSetPC((vmiProcessorP)riscv, newPC);
}

//
// Is the processor halted?
//
inline static Bool isHalted(riscvP riscv) {
    return vmirtIsHalted((vmiProcessorP)riscv);
}

//
// Clear any active exclusive access
//
inline static void clearEA(riscvP riscv) {
    riscv->exclusiveTag = RISCV_NO_TAG;
}


////////////////////////////////////////////////////////////////////////////////
// TAKING EXCEPTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Return PC to which to return after taking an exception. For processors with
// instruction table extensions, the address should be the original instruction,
// not the table instruction.
//
static Uns64 getEPC(riscvP riscv) {

    Uns8  dsOffset;
    Uns64 eretPC = vmirtGetPCDS((vmiProcessorP)riscv, &dsOffset);

    return dsOffset ? riscv->jumpBase : eretPC;
}

//
// Return the mode to which to take the given exception or interrupt (mode X)
//
static riscvMode getModeX(
    riscvP         riscv,
    Uns32          mMask,
    Uns32          sMask,
    riscvException ecode
) {
    riscvMode modeY = getCurrentMode(riscv);
    riscvMode modeX;

    // get mode X implied by delegation registers
    if(!(mMask & (1<<ecode))) {
        modeX = RISCV_MODE_MACHINE;
    } else if(!(sMask & (1<<ecode))) {
        modeX = RISCV_MODE_SUPERVISOR;
    } else {
        modeX = RISCV_MODE_USER;
    }

    // exception cannot be taken to lower-privilege mode
    return (modeX>modeY) ? modeX : modeY;
}

//
// Return the mode to which to take the given interrupt (mode X)
//
static riscvMode getInterruptModeX(riscvP riscv, riscvException ecode) {
    return getModeX(riscv, RD_CSR(riscv, mideleg), RD_CSR(riscv, sideleg), ecode);
}

//
// Return the mode to which to take the given exception (mode X)
//
static riscvMode getExceptionModeX(riscvP riscv, riscvException ecode) {
    return getModeX(riscv, RD_CSR(riscv, medeleg), RD_CSR(riscv, sedeleg), ecode);
}

//
// Is exception an interrupt?
//
#define IS_INTERRUPT(_EXCEPTION) ((_EXCEPTION) & riscv_E_Interrupt)

//
// Get code from exception
//
#define GET_ECODE(_EXCEPTION) ((_EXCEPTION) & ~riscv_E_Interrupt)

//
// Return interrupt mode (0:direct, 1:vectored) - from privileged ISA version
// 1.10 this is encoded in the [msu]tvec register, but previous versions did
// not support vectored mode except in some custom manner (for example, Andes
// N25 and NX25 processors)
//
inline static Uns8 getIMode(Uns8 customMode, Uns8 tvecMode) {
    return tvecMode ? tvecMode : customMode;
}

//
// Update exception state when taking exception to mode X from mode Y
//
#define TARGET_MODE_X(_P, _X, _x, _IS_INT, _ECODE, _EPC, _BASE, _MODE, _TVAL) { \
                                                                                \
    /* get interrupt enable bit for mode X */                                   \
    Uns8 _IE = RD_CSR_FIELD(riscv, mstatus, _X##IE);                            \
                                                                                \
    /* update interrupt enable and interrupt enable stack */                    \
    WR_CSR_FIELD(riscv, mstatus, _X##PIE, _IE);                                 \
    WR_CSR_FIELD(riscv, mstatus, _X##IE, 0);                                    \
                                                                                \
    /* update cause register */                                                 \
    WR_CSR_FIELD(riscv, _x##cause,  ExceptionCode, _ECODE);                     \
    WR_CSR_FIELD(riscv, _x##cause,  Interrupt,     _IS_INT);                    \
                                                                                \
    /* update writable bits in epc register */                                  \
    Uns64 epcMask = RD_CSR_MASK(riscv, _x##epc);                                \
    WR_CSR_FIELD(riscv, _x##epc, value, (_EPC) & epcMask);                      \
                                                                                \
    /* update tval register */                                                  \
    WR_CSR_FIELD(riscv, _x##tval, value, _TVAL);                                \
                                                                                \
    /* get exception base address and mode */                                   \
    _BASE = (Addr)RD_CSR_FIELD(riscv, _x##tvec, BASE) << 2;                     \
    _MODE = getIMode(riscv->_X##IMode, RD_CSR_FIELD(riscv, _x##tvec, MODE));    \
}

//
// Does this exception code correspond to a retired instruction?
//
static Bool retiredCode(riscvException exception) {

    switch(exception) {

        case riscv_E_Breakpoint:
        case riscv_E_EnvironmentCallFromUMode:
        case riscv_E_EnvironmentCallFromSMode:
        case riscv_E_EnvironmentCallFromHMode:
        case riscv_E_EnvironmentCallFromMMode:
            return True;

        default:
            return False;
    }
}

//
// Does this exception code correspond to an Access Fault?
//
static Bool accessFaultCode(riscvException exception) {

    switch(exception) {

        case riscv_E_InstructionAccessFault:
        case riscv_E_LoadAccessFault:
        case riscv_E_StoreAMOAccessFault:
            return True;

        default:
            return False;
    }
}

//
// Notify a derived model of trap entry or exception return if required
//
inline static void notifyTrapDerived(
    riscvP              riscv,
    riscvMode           mode,
    riscvTrapNotifierFn notifier
) {
    if(notifier) {
        notifier(riscv, mode);
    }
}

//
// Notify a derived model of exception return if required
//
inline static void notifyERETDerived(riscvP riscv, riscvMode mode) {
    notifyTrapDerived(riscv, mode, riscv->cb.ERETNotifier);
}

//
// Take processor exception
//
void riscvTakeException(
    riscvP         riscv,
    riscvException exception,
    Uns64          tval
) {
    Bool      isInterrupt = IS_INTERRUPT(exception);
    Uns32     ecode       = GET_ECODE(exception);
    Uns64     EPC         = getEPC(riscv);
    Uns64     handlerPC   = 0;
    riscvMode modeY       = getCurrentMode(riscv);
    riscvMode modeX;
    Uns64     base;
    Uns8      mode;

    // adjust baseInstructions based on the exception code to take into account
    // whether the previous instruction has retired
    if(!retiredCode(exception)) {
        riscv->baseInstructions++;
    }

    // latch or clear Access Fault detail depending on exception type
    if(accessFaultCode(exception)) {
        riscv->AFErrorOut = riscv->AFErrorIn;
    } else {
        riscv->AFErrorOut = riscv_AFault_None;
    }

    // clear any active exclusive access
    clearEA(riscv);

    // get exception target mode (X)
    if(isInterrupt) {
        modeX = getInterruptModeX(riscv, ecode);
    } else {
        modeX = getExceptionModeX(riscv, ecode);
    }

    // update state dependent on target exception level
    if(modeX==RISCV_MODE_USER) {

        // target user mode
        TARGET_MODE_X(riscv, U, u, isInterrupt, ecode, EPC, base, mode, tval);

    } else if(modeX==RISCV_MODE_SUPERVISOR) {

        // target supervisor mode
        TARGET_MODE_X(riscv, S, s, isInterrupt, ecode, EPC, base, mode, tval);
        WR_CSR_FIELD(riscv, mstatus, SPP, modeY);

    } else {

        // target machine mode
        TARGET_MODE_X(riscv, M, m, isInterrupt, ecode, EPC, base, mode, tval);
        WR_CSR_FIELD(riscv, mstatus, MPP, modeY);
    }

    // handle direct or vectored exception
    if((mode == 0) || !isInterrupt) {
        handlerPC = base;
    } else {
        handlerPC = base + (4 * ecode);
    }

    // switch to target mode
    riscvSetMode(riscv, modeX);

    // indicate the taken exception
    riscv->exception = exception;

    // set address at which to execute
    vmirtSetPCException((vmiProcessorP)riscv, handlerPC);

    // notify derived model of exception entry if required
    notifyTrapDerived(riscv, modeX, riscv->cb.trapNotifier);
}

//
// Take Illegal Instruction exception
//
void riscvIllegalInstruction(riscvP riscv) {

    Uns64 tval = 0;

    // tval is either 0 or the instruction pattern
    if(riscv->configInfo.tval_ii_code) {
        tval = riscvGetInstruction(riscv, getPC(riscv));
    }

    riscvTakeException(riscv, riscv_E_IllegalInstruction, tval);
}

//
// Take Instruction Address Misaligned exception
//
void riscvInstructionAddressMisaligned(riscvP riscv, Uns64 tval) {
    riscvTakeException(riscv, riscv_E_InstructionAddressMisaligned, tval & -2);
}

//
// Take ECALL exception
//
void riscvECALL(riscvP riscv) {

    riscvMode      mode      = getCurrentMode(riscv);
    riscvException exception = riscv_E_EnvironmentCallFromUMode + mode;

    riscvTakeException(riscv, exception, 0);
}

//
// Take EBREAK exception
//
void riscvEBREAK(riscvP riscv) {
    riscvTakeException(riscv, riscv_E_Breakpoint, getPC(riscv));
}


////////////////////////////////////////////////////////////////////////////////
// EXCEPTION RETURN
////////////////////////////////////////////////////////////////////////////////

//
// Given a mode to which the processor is attempting to return, check that the
// mode is implemented on this processor and return the minimum implemented
// mode if not
//
static riscvMode getERETMode(riscvP riscv, riscvMode newMode, riscvMode minMode) {
    return riscvHasMode(riscv, newMode) ? newMode : minMode;
}

//
// Return from M-mode exception
//
void riscvMRET(riscvP riscv) {

    Uns32     MPP     = RD_CSR_FIELD(riscv, mstatus, MPP);
    riscvMode minMode = riscvGetMinMode(riscv);
    riscvMode newMode = getERETMode(riscv, MPP, minMode);

    // clear any active exclusive access
    clearEA(riscv);

    // restore previous MIE
    WR_CSR_FIELD(riscv, mstatus, MIE, RD_CSR_FIELD(riscv, mstatus, MPIE))

    // MPIE=1
    WR_CSR_FIELD(riscv, mstatus, MPIE, 1);

    // MPP=<minimum_supported_mode>
    WR_CSR_FIELD(riscv, mstatus, MPP, minMode);

    // switch to target mode
    riscvSetMode(riscv, newMode);

    // jump to exception address
    setPC(riscv, RD_CSR_FIELD(riscv, mepc, value));

    // notify derived model of exception return if required
    notifyERETDerived(riscv, RISCV_MODE_MACHINE);

    // check for pending interrupts
    riscvTestInterrupt(riscv);
}

//
// Return from S-mode exception
//
void riscvSRET(riscvP riscv) {

    Uns32     SPP     = RD_CSR_FIELD(riscv, mstatus, SPP);
    riscvMode minMode = riscvGetMinMode(riscv);
    riscvMode newMode = getERETMode(riscv, SPP, minMode);

    // clear any active exclusive access
    clearEA(riscv);

    // restore previous SIE
    WR_CSR_FIELD(riscv, mstatus, SIE, RD_CSR_FIELD(riscv, mstatus, SPIE))

    // SPIE=1
    WR_CSR_FIELD(riscv, mstatus, SPIE, 1);

    // SPP=<minimum_supported_mode>
    WR_CSR_FIELD(riscv, mstatus, SPP, minMode);

    // switch to target mode
    riscvSetMode(riscv, newMode);

    // jump to exception address
    setPC(riscv, RD_CSR_FIELD(riscv, sepc, value));

    // notify derived model of exception return if required
    notifyERETDerived(riscv, RISCV_MODE_SUPERVISOR);

    // check for pending interrupts
    riscvTestInterrupt(riscv);
}

//
// Return from U-mode exception
//
void riscvURET(riscvP riscv) {

    riscvMode newMode = RISCV_MODE_USER;

    // clear any active exclusive access
    clearEA(riscv);

    // restore previous UIE
    WR_CSR_FIELD(riscv, mstatus, UIE, RD_CSR_FIELD(riscv, mstatus, UPIE))

    // UPIE=1
    WR_CSR_FIELD(riscv, mstatus, UPIE, 1);

    // switch to target mode
    riscvSetMode(riscv, newMode);

    // jump to exception address
    setPC(riscv, RD_CSR_FIELD(riscv, uepc, value));

    // notify derived model of exception return if required
    notifyERETDerived(riscv, RISCV_MODE_USER);

    // check for pending interrupts
    riscvTestInterrupt(riscv);
}


////////////////////////////////////////////////////////////////////////////////
// VMI INTERFACE ROUTINES
////////////////////////////////////////////////////////////////////////////////

//
// Read privilege exception handler
//
VMI_RD_PRIV_EXCEPT_FN(riscvRdPrivExcept) {

    riscvP riscv = (riscvP)processor;

    if(!riscvVMMiss(riscv, domain, MEM_PRIV_R, address, bytes, attrs)) {
        *action = VMI_LOAD_STORE_CONTINUE;
    }
}

//
// Write privilege exception handler
//
VMI_WR_PRIV_EXCEPT_FN(riscvWrPrivExcept) {

    riscvP riscv = (riscvP)processor;

    if(!riscvVMMiss(riscv, domain, MEM_PRIV_W, address, bytes, attrs)) {
        *action = VMI_LOAD_STORE_CONTINUE;
    }
}

//
// Read alignment exception handler
//
VMI_RD_ALIGN_EXCEPT_FN(riscvRdAlignExcept) {

    riscvP riscv = (riscvP)processor;

    riscvTakeException(riscv, riscv_E_LoadAddressMisaligned, address);

    return 0;
}

//
// Write alignment exception handler
//
VMI_WR_ALIGN_EXCEPT_FN(riscvWrAlignExcept) {

    riscvP riscv = (riscvP)processor;

    riscvTakeException(riscv, riscv_E_StoreAMOAddressMisaligned, address);

    return 0;
}

//
// Read abort exception handler
//
VMI_RD_ABORT_EXCEPT_FN(riscvRdAbortExcept) {

    riscvP riscv = (riscvP)processor;

    if(riscv->PTWActive) {
        riscv->PTWBadAddr = True;
    } else {
        riscvTakeException(riscv, riscv_E_LoadAccessFault, address);
    }
}

//
// Write abort exception handler
//
VMI_WR_ABORT_EXCEPT_FN(riscvWrAbortExcept) {

    riscvP riscv = (riscvP)processor;

    if(riscv->PTWActive) {
        riscv->PTWBadAddr = True;
    } else {
        riscvTakeException(riscv, riscv_E_StoreAMOAccessFault, address);
    }
}

//
// Fetch addresses are always snapped to a 2-byte boundary, irrespective of
// whether compressed instructions are implemented (see comments associated
// with the JALR instruction in the RISC-V User-level ISA)
//
VMI_FETCH_SNAP_FN(riscvFetchSnap) {

    return thisPC & -2;
}

//
// Validate instruction fetch from the passed address
//
static Bool validateFetchAddressInt(
    riscvP     riscv,
    memDomainP domain,
    Uns64      thisPC,
    Bool       complete
) {
    vmiProcessorP  processor = (vmiProcessorP)riscv;
    memAccessAttrs attrs     = complete ? MEM_AA_TRUE : MEM_AA_FALSE;

    if(vmirtIsExecutable(processor, thisPC)) {

        // no exception pending
        return True;

    } else if(riscvVMMiss(riscv, domain, MEM_PRIV_X, thisPC, 2, attrs)) {

        // permission exception of some kind, handled by riscvVMMiss, so no
        // further action required here.
        return False;

    } else if(!vmirtIsExecutable(processor, thisPC)) {

        // bus error if address is not executable
        if(complete) {
            riscvTakeException(riscv, riscv_E_InstructionAccessFault, thisPC);
        }

        return False;

    } else {

        // no exception pending
        return True;
    }
}

//
// Validate that the passed address is a mapped fetch address (NOTE: address
// alignment is not validated here but by the preceding branch instruction)
//
static Bool validateFetchAddress(
    riscvP     riscv,
    memDomainP domain,
    Uns64      thisPC,
    Bool       complete
) {
    if(!validateFetchAddressInt(riscv, domain, thisPC, complete)) {

        // fetch exception (handled in validateFetchAddressInt)
        return False;

    } else if(riscvGetInstructionSize(riscv, thisPC) <= 2) {

        // instruction at simPC is a two-byte instruction
        return True;

    } else if(!validateFetchAddressInt(riscv, domain, thisPC+2, complete)) {

        // fetch exception (handled in validateFetchAddressInt)
        return False;

    } else {

        // no exception
        return True;
    }

    // no exception pending
    return True;
}

//
// Return interrupt enable for the passed mode, given a raw interrupt enable
// bit
//
inline static Bool getIE(riscvP riscv, Bool IE, riscvMode modeIE) {

    riscvMode mode = getCurrentMode(riscv);

    return (mode<modeIE) ? True : (mode>modeIE) ? False : IE;
}

//
// Return mask of pending interrupts that would cause resumption from WFI (note
// that these could however be masked by global interrupt bits or delegation
// bits - see the Privileged Architecture specification)
//
inline static Uns64 getPendingInterrupts(riscvP riscv) {
    return RD_CSR(riscv, mie) & RD_CSR(riscv, mip);
}

//
// Return mask of pending-and-enabled interrupts
//
static Uns64 getPendingAndEnabledInterrupts(riscvP riscv) {

    Uns64 result = getPendingInterrupts(riscv);

    if(result) {

        // get raw interrupt enable bits
        Bool MIE = RD_CSR_FIELD(riscv, mstatus, MIE);
        Bool SIE = RD_CSR_FIELD(riscv, mstatus, SIE);
        Bool UIE = RD_CSR_FIELD(riscv, mstatus, UIE);

        // modify effective interrupt enables based on current mode
        MIE = getIE(riscv, MIE, RISCV_MODE_MACHINE);
        SIE = getIE(riscv, SIE, RISCV_MODE_SUPERVISOR);
        UIE = getIE(riscv, UIE, RISCV_MODE_USER);

        // get interrupt mask applicable for each mode
        Uns64 mideleg = RD_CSR(riscv, mideleg);
        Uns64 sideleg = RD_CSR(riscv, sideleg) & mideleg;
        Uns64 mMask   = ~mideleg;
        Uns64 sMask   = mideleg & ~sideleg;
        Uns64 uMask   = sideleg;

        // handle masked interrupts
        if(!MIE) {result &= ~mMask;}
        if(!SIE) {result &= ~sMask;}
        if(!UIE) {result &= ~uMask;}
    }

    // return pending and enabled interrupts
    return result;
}

//
// Process highest-priority interrupt in the given mask of pending-and-enabled
// interrupts
//
static void doInterrupt(riscvP riscv, Uns64 intMask) {

    Uns32 ecode = -1;

    // sanity check there are pending-and-enabled interrupts
    VMI_ASSERT(intMask, "expected pending-and-enabled interrupts");

    // find the highest priority pending interrupt
    while(intMask) {
        intMask >>= 1;
        ecode++;
    }

    // take the interrupt
    riscvTakeException(riscv, riscv_E_Interrupt+ecode, 0);
}

//
// This is called by the simulator when fetching from an instruction address.
// It gives the model an opportunity to take an exception instead.
//
VMI_IFETCH_FN(riscvIFetchExcept) {

    riscvP riscv   = (riscvP)processor;
    Uns64  thisPC  = address;
    Bool   fetchOK = False;
    Uns64  intMask = getPendingAndEnabledInterrupts(riscv);

    if(intMask) {

        // handle pending interrupt
        fetchOK = False;

        if(complete) {
            doInterrupt(riscv, intMask);
        }

    } else if(!validateFetchAddress(riscv, domain, thisPC, complete)) {

        // fetch exception (handled in validateFetchAddress)
        fetchOK = False;

    } else {

        // no exception pending
        fetchOK = True;
    }

    if(fetchOK) {
        return VMI_FETCH_NONE;
    } else if(complete) {
        return VMI_FETCH_EXCEPTION_COMPLETE;
    } else {
        return VMI_FETCH_EXCEPTION_PENDING;
    }
}

//
// Return the number of distinct exceptions defined by this model
//
inline static Uns32 getNumExceptions(void) {
    return sizeof(exceptions)/sizeof(exceptions[0]) - 1;
}

//
// Is the exception descriptor the dummy terminator entry in this model?
//
static Bool isExceptionTerminator(riscvExceptionDescCP desc) {
    return (desc-exceptions) == getNumExceptions();
}

//
// Get last-activated exception
//
VMI_GET_EXCEPTION_FN(riscvGetException) {

    riscvP               riscv     = (riscvP)processor;
    riscvExceptionDescCP thisDesc  = &exceptions[0];
    riscvException       exception = riscv->exception;

    for(;;) {

        // get the first exception with matching code
        while(thisDesc->vmiInfo.name && (thisDesc->vmiInfo.code!=exception)) {
            thisDesc++;
        }

        if(thisDesc->vmiInfo.name) {

            // match found in this table
            return &thisDesc->vmiInfo;

        } else if(!isExceptionTerminator(thisDesc)) {

            // no more exceptions and not local table
            return 0;

        } else if(!riscv->cb.firstException) {

            // no derived model exceptions
            return 0;

        } else {

            // try derived model if required
            thisDesc = (riscvExceptionDescCP)riscv->cb.firstException(riscv);
        }
    }
}

//
// Does the processor implement the exception or interrupt?
//
static Bool hasException(riscvP riscv, riscvException code) {

    if(code<riscv_E_Interrupt) {
        return riscv->exceptionMask & (1ULL<<code);
    } else {
        return riscv->interruptMask & (1ULL<<(code-riscv_E_Interrupt));
    }
}

//
// Iterate exceptions implemented on this variant
//
VMI_EXCEPTION_INFO_FN(riscvExceptionInfo) {

    riscvP               riscv    = (riscvP)processor;
    riscvExceptionDescCP prevDesc = (riscvExceptionDescCP)prev;
    riscvExceptionDescCP thisDesc = prevDesc ? prevDesc+1 : exceptions;

    for(;;) {

        // skip to the next implemented exception
        while(
            (thisDesc->vmiInfo.name) &&
            !hasException(riscv, thisDesc->vmiInfo.code)
        ) {
            thisDesc++;
        }

        if(thisDesc->vmiInfo.name) {

            // match found in this table
            return &thisDesc->vmiInfo;

        } else if(!isExceptionTerminator(thisDesc)) {

            // no more exceptions and not local table
            return 0;

        } else if(!riscv->cb.firstException) {

            // no derived model exceptions
            return 0;

        } else {

            // try derived model if required
            thisDesc = (riscvExceptionDescCP)riscv->cb.firstException(riscv);
        }
    }
}

//
// Return mask of implemented local interrupts
//
Uns64 riscvGetLocalIntMask(riscvP riscv) {

    Uns64 local_int_mask = (1ULL<<riscv->configInfo.local_int_num)-1;

    return local_int_mask << riscv_E_Local;
}

//
// Initialize mask of implemented exceptions
//
void riscvSetExceptionMask(riscvP riscv) {

    riscvArchitecture    arch          = riscv->configInfo.arch;
    Uns64                exceptionMask = 0;
    Uns64                interruptMask = 0;
    riscvExceptionDescCP thisDesc;

    // get exceptions supported on the current architecture
    for(thisDesc=exceptions; thisDesc->vmiInfo.name; thisDesc++) {

        riscvException code = thisDesc->vmiInfo.code;

        if((arch&thisDesc->arch)!=thisDesc->arch) {
            // not implemented by this variant
        } else if(code<riscv_E_Interrupt) {
            exceptionMask |= 1ULL<<code;
        } else if(code<riscv_E_LocalInterrupt) {
            interruptMask |= 1ULL<<(code-riscv_E_Interrupt);
        }
    }

    // save composed exception mask result
    riscv->exceptionMask = exceptionMask;

    // save composed interrupt mask result (including extra local interrupts)
    riscv->interruptMask = interruptMask | riscvGetLocalIntMask(riscv);
}


////////////////////////////////////////////////////////////////////////////////
// EXTERNAL INTERRUPT UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// Detect rising edge
//
inline static Bool posedge(Bool old, Bool new) {
    return !old && new;
}

//
// Detect falling edge
//
inline static Bool negedge(Uns32 old, Uns32 new) {
    return old && !new;
}

//
// Detect any edge
//
inline static Bool change(Uns32 old, Uns32 new) {
    return old != new;
}

//
// Halt the passed processor
//
static void haltProcessor(riscvP riscv, riscvDisableReason reason) {

    if(!riscv->disable) {
        vmirtHalt((vmiProcessorP)riscv);
    }

    riscv->disable |= reason;
}

//
// Restart the passed processor
//
static void restartProcessor(riscvP riscv, riscvDisableReason reason) {

    riscv->disable &= ~reason;

    // restart if no longer disabled (maybe from blocked state not visible in
    // disable code)
    if(!riscv->disable) {
        vmirtRestartNext((vmiProcessorP)riscv);
    }
}

//
// Halt the processor in WFI state if required
//
void riscvWFI(riscvP riscv) {

    if(!getPendingInterrupts(riscv)) {
        haltProcessor(riscv, RVD_WFI);
    }
}

//
// Check for pending interrupts
//
void riscvTestInterrupt(riscvP riscv) {

    Uns64 pendingEnabled = getPendingAndEnabledInterrupts(riscv);

    // print exception status
    if(RISCV_DEBUG_EXCEPT(riscv)) {

        // get factors contributing to interrupt state
        riscvIntState intState = {
            .pendingEnabled  = pendingEnabled,
            .pending         = RD_CSR(riscv, mip),
            .pendingExternal = riscv->netValue.ip,
            .pendingInternal = riscv->swip,
            .mideleg         = RD_CSR(riscv, mideleg),
            .sideleg         = RD_CSR(riscv, sideleg),
            .mie             = RD_CSR_FIELD(riscv, mstatus, MIE),
            .sie             = RD_CSR_FIELD(riscv, mstatus, SIE),
            .uie             = RD_CSR_FIELD(riscv, mstatus, UIE),
        };

        // report only if interrupt state changes
        if(memcmp(&riscv->intState, &intState, sizeof(intState))) {

            vmiMessage("I", CPU_PREFIX "_IS",
                SRCREF_FMT
                "PENDING+ENABLED="FMT_A08x" PENDING="FMT_A08x" "
                "[EXTERNAL_IP="FMT_A08x",SW_IP=%08x] "
                "MIDELEG=%08x SIDELEG=%08x MSTATUS.[MSU]IE=%u%u%u",
                SRCREF_ARGS(riscv, getPC(riscv)),
                intState.pendingEnabled,
                intState.pending,
                intState.pendingExternal,
                intState.pendingInternal,
                intState.mideleg,
                intState.sideleg,
                intState.mie,
                intState.sie,
                intState.uie
            );

            // track previous pending state
            riscv->intState = intState;
        }
    }

    // restart processor if it is halted in WFI state and local interrupts are
    // pending (even if masked)
    if(getPendingInterrupts(riscv)) {
        restartProcessor(riscv, RVD_RESTART_WFI);
    }

    // schedule asynchronous interrupt handling if interrupts are pending and
    // enabled
    if(pendingEnabled) {
        vmirtDoSynchronousInterrupt((vmiProcessorP)riscv);
    }
}

//
// Reset the processor
//
void riscvReset(riscvP riscv) {

    // restart the processor from any halted state
    restartProcessor(riscv, RVD_RESTART_RESET);

    // switch to Machine mode
    riscvSetMode(riscv, RISCV_MODE_MACHINE);

    // reset CSR state
    riscvCSRReset(riscv);

    // notify dependent model of reset event
    if(riscv->cb.resetNotifier) {
        riscv->cb.resetNotifier(riscv);
    }

    // indicate the taken exception
    riscv->exception = 0;

    // set address at which to execute
    vmirtSetPCException((vmiProcessorP)riscv, riscv->configInfo.reset_address);
}

//
// Do NMI interrupt
//
static void doNMI(riscvP riscv) {

    // restart the processor from any halted state
    restartProcessor(riscv, RVD_RESTART_NMI);

    // switch to Machine mode
    riscvSetMode(riscv, RISCV_MODE_MACHINE);

    // update cause register (to zero)
    WR_CSR(riscv, mcause, 0);

    // update mepc to hold next instruction address
    WR_CSR(riscv, mepc, getEPC(riscv));

    // indicate the taken exception
    riscv->exception = 0;

    // set address at which to execute
    vmirtSetPCException((vmiProcessorP)riscv, riscv->configInfo.nmi_address);
}


////////////////////////////////////////////////////////////////////////////////
// EXTERNAL INTERRUPT INTERFACE FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Update interrupt state because of some pending state change (either from
// external interrupt source or software pending register)
//
void riscvUpdatePending(riscvP riscv) {

    Uns64 oldValue = RD_CSR(riscv, mip);

    // compose new value from discrete sources
    Uns64 newValue = (riscv->netValue.ip | riscv->swip);

    // update register value and exception state on a change
    if(oldValue != newValue) {
        WR_CSR(riscv, mip, newValue);
        riscvTestInterrupt(riscv);
    }
}

//
// Reset signal
//
static VMI_NET_CHANGE_FN(resetPortCB) {

    riscvInterruptInfoP ii       = userData;
    riscvP              riscv    = ii->hart;
    Bool                oldValue = riscv->netValue.reset;

    if(posedge(oldValue, newValue)) {

        // halt the processor while signal goes high
        haltProcessor(riscv, RVD_RESET);

    } else if(negedge(oldValue, newValue)) {

        // reset the processor when signal goes low
        riscvReset(riscv);
    }

    riscv->netValue.reset = newValue;
}

//
// NMI signal
//
static VMI_NET_CHANGE_FN(nmiPortCB) {

    riscvInterruptInfoP ii       = userData;
    riscvP              riscv    = ii->hart;
    Bool                oldValue = riscv->netValue.nmi;

    if(posedge(oldValue, newValue)) {

        // halt the processor while signal goes high
        haltProcessor(riscv, RVD_NMI);

    } else if(negedge(oldValue, newValue)) {

        // do NMI actions when signal goes low
        doNMI(riscv);
    }

    riscv->netValue.nmi = newValue;
}

//
// Generic interrupt signal
//
static VMI_NET_CHANGE_FN(interruptPortCB) {

    riscvInterruptInfoP ii    = userData;
    riscvP              riscv = ii->hart;
    Uns32               index = ii->userData;
    Uns64               mask  = 1ULL << index;

    // sanity check
    VMI_ASSERT(index<64, "interrupt port index %u out of range", index);

    if(newValue) {
        riscv->netValue.ip |= mask;
    } else {
        riscv->netValue.ip &= ~mask;
    }

    riscvUpdatePending(riscv);
}


////////////////////////////////////////////////////////////////////////////////
// NET PORT CREATION
////////////////////////////////////////////////////////////////////////////////

//
// Allocate a new port and append to the tail of the list
//
static riscvNetPortPP newNetPort(
    riscvP         hart,
    riscvNetPortPP tail,
    const char    *name,
    vmiNetPortType type,
    vmiNetChangeFn portCB,
    const char    *desc,
    Uns32          code
) {
    riscvNetPortP       this = STYPE_CALLOC(riscvNetPort);
    vmiNetPortP         info = &this->desc;
    riscvInterruptInfoP ii   = &this->ii;

    // fill port fields
    info->name        = name;
    info->type        = type;
    info->netChangeCB = portCB;
    info->description = desc;
    info->userData    = ii;

    // initialize interrupt information structure to enable vectoring interrupt
    // to specific processor instance and use as userData on netChange callback
    ii->hart     = hart;
    ii->userData = code;

    // append to list
    *tail = this;

    // return new tail
    return &this->next;
}

//
// Allocate ports for this variant
//
void riscvNewNetPorts(riscvP riscv) {

    riscvNetPortPP tail = &riscv->netPorts;

    // allocate reset port
    tail = newNetPort(
        riscv, tail, "reset", vmi_NP_INPUT, resetPortCB, "Reset", 0
    );

    // allocate nmi port
    tail = newNetPort(
        riscv, tail, "nmi",   vmi_NP_INPUT, nmiPortCB,   "NMI",   0
    );

    // allocate implemented interrupt ports
    riscvExceptionDescCP this;

    // get exceptions supported on the current architecture
    for(this=exceptions; this->vmiInfo.name; this++) {

        vmiExceptionInfoCP info = &this->vmiInfo;
        riscvException     code = info->code;

        if((code>=riscv_E_Interrupt) && hasException(riscv, code)) {
            tail = newNetPort(
                riscv,
                tail,
                info->name,
                vmi_NP_INPUT,
                interruptPortCB,
                info->description,
                code - riscv_E_Interrupt
            );
        }
    }
}

//
// Free ports
//
void riscvFreeNetPorts(riscvP riscv) {

    riscvNetPortP next = riscv->netPorts;
    riscvNetPortP this;

    while((this=next)) {
        next = this->next;
        STYPE_FREE(this);
    }

    riscv->netPorts = 0;
}

//
// Get the next net port
//
VMI_NET_PORT_SPECS_FN(riscvNetPortSpecs) {

    riscvP        riscv = (riscvP)processor;
    riscvNetPortP this;

    if(!prev) {
        this = riscv->netPorts;
    } else {
        this = ((riscvNetPortP)prev)->next;
    }

    return this ? &this->desc : 0;
}


////////////////////////////////////////////////////////////////////////////////
// SAVE/RESTORE SUPPORT
////////////////////////////////////////////////////////////////////////////////

//
// Save net state not covered by register read/write API
//
void riscvNetSave(
    riscvP              riscv,
    vmiSaveContextP     cxt,
    vmiSaveRestorePhase phase
) {
    if(phase==SRT_END_CORE) {

        // save latched control input state
        VMIRT_SAVE_FIELD(cxt, riscv, netValue);
        VMIRT_SAVE_FIELD(cxt, riscv, intState);
    }
}

//
// Restore net state not covered by register read/write API
//
void riscvNetRestore(
    riscvP              riscv,
    vmiRestoreContextP  cxt,
    vmiSaveRestorePhase phase
) {
    if(phase==SRT_END_CORE) {

        // restore latched control input state
        VMIRT_RESTORE_FIELD(cxt, riscv, netValue);
        VMIRT_RESTORE_FIELD(cxt, riscv, intState);

        // refresh core state
        riscvTestInterrupt(riscv);
    }
}

