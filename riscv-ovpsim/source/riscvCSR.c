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

// VMI header files
#include "vmi/vmiMessage.h"
#include "vmi/vmiMt.h"
#include "vmi/vmiRt.h"

// model header files
#include "riscvBus.h"
#include "riscvCSR.h"
#include "riscvCSRTypes.h"
#include "riscvExceptions.h"
#include "riscvMessage.h"
#include "riscvMorph.h"
#include "riscvRegisters.h"
#include "riscvStructure.h"
#include "riscvVariant.h"
#include "riscvUtils.h"
#include "riscvVM.h"
#include "riscvVMConstants.h"


////////////////////////////////////////////////////////////////////////////////
// UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// Return current program counter
//
inline static Uns64 getPC(riscvP riscv) {
    return vmirtGetPC((vmiProcessorP)riscv);
}

//
// Return riscvCSRId for riscvCSRAttrsCP (forward reference)
//
static riscvCSRId getCSRId(riscvCSRAttrsCP attrs);


////////////////////////////////////////////////////////////////////////////////
// ISA REGISTER
////////////////////////////////////////////////////////////////////////////////

//
// Write misa
//
static RISCV_CSR_WRITEFN(misaW) {

    riscvArchitecture arch     = riscv->configInfo.arch;
    riscvArchitecture archMask = riscv->configInfo.archMask;
    Uns64             oldValue = RD_CSR(riscv, misa);
    Uns64             mask     = RD_CSR_MASK(riscv, misa);

    // get new value using writable bit mask
    newValue = ((newValue & mask) | (oldValue & ~mask));

    if((arch&ISA_DF)!=ISA_DF) {

        // no action unless both D and F implemented

    } else if((archMask&ISA_DF)==ISA_DF) {

        // handle case where D feature requires F feature
        if(!riscv->configInfo.d_requires_f) {
            // no action
        } else if(!(newValue&ISA_F)) {
            newValue &= ~ISA_D;
        }

    } else if((archMask&ISA_DF)==ISA_D) {

        // F feature tracks D feature if both are implemented but F is read-only
        if(newValue&ISA_D) {
            newValue |= ISA_F;
        } else {
            newValue &= ~ISA_F;
        }

    } else if((archMask&ISA_DF)==ISA_F) {

        // D feature tracks F feature if both are implemented but D is read-only
        if(newValue&ISA_F) {
            newValue |= ISA_D;
        } else {
            newValue &= ~ISA_D;
        }
    }

    // update the CSR
    WR_CSR(riscv, misa, newValue);

    // update current architecture if required
    riscvSetCurrentArch(riscv);

    // return composed value
    return RD_CSR(riscv, misa);
}


////////////////////////////////////////////////////////////////////////////////
// FLOATING POINT REGISTERS
////////////////////////////////////////////////////////////////////////////////

//
// Read fflags
//
static RISCV_CSR_READFN(fflagsR) {

    CSR_REG_DECL(fflags) = {u32 : {bits:0}};

    // compose register value
    fflags.u32.fields.NX = riscv->fpFlags.f.P;
    fflags.u32.fields.UF = riscv->fpFlags.f.U;
    fflags.u32.fields.OF = riscv->fpFlags.f.O;
    fflags.u32.fields.DZ = riscv->fpFlags.f.Z;
    fflags.u32.fields.NV = riscv->fpFlags.f.I;

    // return composed value
    return fflags.u32.bits;
}

//
// Write fflags
//
static RISCV_CSR_WRITEFN(fflagsW) {

    CSR_REG_DECL(fflags) = {u32 : {bits : newValue & WM32_fflags}};

    // extract flags
    riscv->fpFlags.f.P = fflags.u32.fields.NX;
    riscv->fpFlags.f.U = fflags.u32.fields.UF;
    riscv->fpFlags.f.O = fflags.u32.fields.OF;
    riscv->fpFlags.f.Z = fflags.u32.fields.DZ;
    riscv->fpFlags.f.I = fflags.u32.fields.NV;

    // return written value
    return fflags.u32.bits;
}

//
// Read frm
//
static RISCV_CSR_READFN(frmR) {

    CSR_REG_DECL(frm) = {u32 : {bits:0}};

    // compose register value
    frm.u32.fields.frm = RD_CSR_FIELD(riscv, fcsr, frm);

    // return composed value
    return frm.u32.bits;
}

//
// Force reload of floating point control word if active mode is dynamic and RM
// has changed
//
static void refreshFPCR(riscvP riscv, Uns8 oldRM) {

    Uns8 newRM = RD_CSR_FIELD(riscv, fcsr, frm);

    if((oldRM!=newRM) && (riscv->fpActiveRM==RV_RM_CURRENT)) {
        riscv->fpActiveRM = RV_RM_NA;
    }
}

//
// Write frm
//
static RISCV_CSR_WRITEFN(frmW) {

    Uns8 oldRM = RD_CSR_FIELD(riscv, fcsr, frm);

    CSR_REG_DECL(frm) = {u32 : {bits : newValue & WM32_frm}};

    // compose register value
    WR_CSR_FIELD(riscv, fcsr, frm, frm.u32.fields.frm);

    // handle change to rounding mode
    refreshFPCR(riscv, oldRM);

    // return written value
    return frm.u32.bits;
}

//
// Read fcsr
//
static RISCV_CSR_READFN(fcsrR) {

    // compose register value
    WR_CSR_FIELD(riscv, fcsr, NX, riscv->fpFlags.f.P);
    WR_CSR_FIELD(riscv, fcsr, UF, riscv->fpFlags.f.U);
    WR_CSR_FIELD(riscv, fcsr, OF, riscv->fpFlags.f.O);
    WR_CSR_FIELD(riscv, fcsr, DZ, riscv->fpFlags.f.Z);
    WR_CSR_FIELD(riscv, fcsr, NV, riscv->fpFlags.f.I);

    // return composed value
    return RD_CSR(riscv, fcsr);
}

//
// Write fcsr
//
static RISCV_CSR_WRITEFN(fcsrW) {

    Uns8 oldRM = RD_CSR_FIELD(riscv, fcsr, frm);

    WR_CSR(riscv, fcsr, newValue & WM32_fcsr);

    // extract flags
    riscv->fpFlags.f.P = RD_CSR_FIELD(riscv, fcsr, NX);
    riscv->fpFlags.f.U = RD_CSR_FIELD(riscv, fcsr, UF);
    riscv->fpFlags.f.O = RD_CSR_FIELD(riscv, fcsr, OF);
    riscv->fpFlags.f.Z = RD_CSR_FIELD(riscv, fcsr, DZ);
    riscv->fpFlags.f.I = RD_CSR_FIELD(riscv, fcsr, NV);

    // handle change to rounding mode
    refreshFPCR(riscv, oldRM);

    // return written value
    return RD_CSR(riscv, fcsr);
}


////////////////////////////////////////////////////////////////////////////////
// STATUS REGISTERS
////////////////////////////////////////////////////////////////////////////////

//
// Common routine to read status using mstatus, sstatus or ustatus alias
//
static Uns64 statusR(riscvP riscv) {

    Uns8 FS = RD_CSR_FIELD(riscv, mstatus, FS);
    Uns8 XS = RD_CSR_FIELD(riscv, mstatus, XS);

    // if fs_always_dirty is set, force mstatus.FS to be either 0 or 3 (so if
    // it is enabled, it is always seen as dirty)
    if(FS && (FS!=3) && riscv->configInfo.fs_always_dirty) {
        FS = 3;
        WR_CSR_FIELD(riscv, mstatus, FS, FS);
    }

    // overall state is dirty if either FS==3 or XS==3
    Bool SD = ((FS==3) || (XS==3));

    // clear derived SD aliases (inconveniently changes location)
    riscv->csr.mstatus.u32.fields.SD = 0;
    riscv->csr.mstatus.u64.fields.SD = 0;

    // compose read-only SD dirty field
    WR_CSR_FIELD(riscv, mstatus, SD, SD);

    // return composed value
    return RD_CSR(riscv, mstatus);
}

//
// Common routine to write status using mstatus, sstatus or ustatus alias
//
static void statusW(riscvP riscv, Uns64 newValue, Uns64 mask) {

    Uns64 oldValue = RD_CSR(riscv, mstatus);

    // get new value using writable bit mask
    Uns32 oldIE = oldValue & WM_mstatus_IE;
    newValue = ((newValue & mask) | (oldValue & ~mask));
    Uns32 newIE = newValue & WM_mstatus_IE;

    // update the CSR
    Uns8 oldMPP = RD_CSR_FIELD(riscv, mstatus, MPP);
    WR_CSR(riscv, mstatus, newValue);
    Uns8 newMPP = RD_CSR_FIELD(riscv, mstatus, MPP);

    // revert mstatus.MPP if target mode is not implemented (this field changes
    // from WLRL to WARL in privileged Specification version 1.11)
    if(!riscvHasMode(riscv, newMPP)) {
        WR_CSR_FIELD(riscv, mstatus, MPP, oldMPP);
    }

    // update current architecture if required
    riscvSetCurrentArch(riscv);

    // changes in MSTATUS.SUM or MSTATUS.MXR affect effective ASID
    riscvVMSetASID(riscv);

    // changes in MSTATUS.MPRV affect current data domain
    riscvVMRefreshMPRVDomain(riscv);

    // handle and exceptions that have been enabled
    if(newIE & ~oldIE) {
        riscvTestInterrupt(riscv);
    }
}

//
// Read mstatus
//
static RISCV_CSR_READFN(mstatusR) {

    // return composed value
    return statusR(riscv);
}

//
// Write mstatus
//
static RISCV_CSR_WRITEFN(mstatusW) {

    Uns64 mask = RD_CSR_MASK(riscv, mstatus);

    // update the CSR
    statusW(riscv, newValue, mask);

    // return written value
    return RD_CSR(riscv, mstatus);
}

//
// Read sstatus
//
static RISCV_CSR_READFN(sstatusR) {

    // return composed value
    return statusR(riscv) & sstatus_AMASK;
}

//
// Write sstatus
//
static RISCV_CSR_WRITEFN(sstatusW) {

    Uns64 mask = RD_CSR_MASK(riscv, mstatus) & sstatus_AMASK;

    // update the CSR
    statusW(riscv, newValue, mask);

    // return written value
    return RD_CSR(riscv, mstatus) & sstatus_AMASK;
}

//
// Read ustatus
//
static RISCV_CSR_READFN(ustatusR) {

    // return composed value
    return statusR(riscv) & ustatus_AMASK;
}

//
// Write ustatus
//
static RISCV_CSR_WRITEFN(ustatusW) {

    Uns64 mask = RD_CSR_MASK(riscv, mstatus) & ustatus_AMASK;

    // update the CSR
    statusW(riscv, newValue, mask);

    // return written value
    return RD_CSR(riscv, mstatus) & ustatus_AMASK;
}


////////////////////////////////////////////////////////////////////////////////
// INTERRUPT ENABLE/PENDING/DELEGATION REGISTERS
////////////////////////////////////////////////////////////////////////////////

//
// Return mask of interrupts visible in Supervisor mode
//
inline static Uns32 getSIRMask(riscvP riscv) {
    return RD_CSR(riscv, mideleg);
}

//
// Return mask of interrupts visible in User mode
//
inline static Uns32 getUIRMask(riscvP riscv) {
    return RD_CSR(riscv, mideleg) & RD_CSR(riscv, sideleg);
}

//
// Common routine to read ip using mip, sip or uip alias (NOTE: if this is a
// read/write operation, only software-writable bits are seen)
//
static Uns64 ipR(riscvP riscv, Uns64 rMask, Bool isWrite) {

    Uns64 result = riscv->swip;

    // in save/restore mode, return raw software-writable value
    if(!riscv->inSaveRestore) {
        result = (isWrite ? result : RD_CSR(riscv, mip)) & rMask;
    }

    return result;
}

//
// Common routine to write ip using mip, sip or uip alias
//
static Uns64 ipW(riscvP riscv, Uns64 newValue, Uns64 rMask) {

    Uns32 oldValue = riscv->swip;

    // in save/restore mode, update value unmasked
    if(!riscv->inSaveRestore) {

        Uns32 wMask = RD_CSR_MASK(riscv, mie) & rMask;

        // update value using writable bit mask
        newValue = ((newValue & wMask) | (oldValue & ~wMask));
    }

    riscv->swip = newValue;

    // handle any interrupts that are now pending and enabled
    if(oldValue!=newValue) {
        riscvUpdatePending(riscv);
    }

    // return readable bits
    return ipR(riscv, rMask, True);
}

//
// Read mip (read/write context)
//
static RISCV_CSR_READFN(mipRW) {
    return ipR(riscv, WM32_mip, True);
}

//
// Write mip
//
static RISCV_CSR_WRITEFN(mipW) {
    return ipW(riscv, newValue, WM32_mip);
}

//
// Read mip
//
static RISCV_CSR_READFN(mipR) {
    return ipR(riscv, -1, False);
}

//
// Read sip
//
static RISCV_CSR_READFN(sipR) {
    return ipR(riscv, getSIRMask(riscv), False);
}

//
// Read sip (read/write context)
//
static RISCV_CSR_READFN(sipRW) {
    return ipR(riscv, getSIRMask(riscv) & WM32_sip, True);
}

//
// Write sip
//
static RISCV_CSR_WRITEFN(sipW) {
    return ipW(riscv, newValue, getSIRMask(riscv) & WM32_sip);
}

//
// Read uip
//
static RISCV_CSR_READFN(uipR) {
    return ipR(riscv, getUIRMask(riscv), False);
}

//
// Read uip (read/write context)
//
static RISCV_CSR_READFN(uipRW) {
    return ipR(riscv, getUIRMask(riscv) & WM32_uip, True);
}

//
// Write uip
//
static RISCV_CSR_WRITEFN(uipW) {
    return ipW(riscv, newValue, getUIRMask(riscv) & WM32_uip);
}

//
// Common routine to read ie using mie, sie or uie alias
//
inline static Uns32 ieR(riscvP riscv, Uns32 rMask) {
    return RD_CSR(riscv, mie) & rMask;
}

//
// Common routine to write ie using mie, sie or uie alias
//
static Uns32 ieW(riscvP riscv, Uns32 newValue, Uns32 rMask) {

    Uns32 oldValue = RD_CSR(riscv, mie);
    Uns32 wMask    = RD_CSR_MASK(riscv, mie) & rMask;

    // get new value using writable bit mask
    newValue = ((newValue & wMask) | (oldValue & ~wMask));

    // update the CSR
    WR_CSR(riscv, mie, newValue);

    // handle any interrupts that are now pending and enabled
    if(oldValue!=newValue) {
        riscvTestInterrupt(riscv);
    }

    // return readable bits
    return ieR(riscv, rMask);
}

//
// Write mie
//
static RISCV_CSR_WRITEFN(mieW) {
    return ieW(riscv, newValue, -1);
}

//
// Read sie
//
static RISCV_CSR_READFN(sieR) {
    return ieR(riscv, getSIRMask(riscv));
}

//
// Write sie
//
static RISCV_CSR_WRITEFN(sieW) {
    return ieW(riscv, newValue, getSIRMask(riscv));
}

//
// Read uie
//
static RISCV_CSR_READFN(uieR) {
    return ieR(riscv, getUIRMask(riscv));
}

//
// Write uie
//
static RISCV_CSR_WRITEFN(uieW) {
    return ieW(riscv, newValue, getUIRMask(riscv));
}

//
// Write mideleg
//
static RISCV_CSR_WRITEFN(midelegW) {

    Uns32 oldValue = RD_CSR(riscv, mideleg);
    Uns32 mask     = RD_CSR_MASK(riscv, mideleg);

    // get new value using writable bit mask
    newValue = ((newValue & mask) | (oldValue & ~mask));

    // update the CSR
    WR_CSR(riscv, mideleg, newValue);

    // handle any interrupts that are now pending and enabled
    if(oldValue!=newValue) {
        riscvTestInterrupt(riscv);
    }

    // return written value
    return newValue;
}

//
// Write sideleg
//
static RISCV_CSR_WRITEFN(sidelegW) {

    Uns32 oldValue = RD_CSR(riscv, sideleg);
    Uns32 mask     = RD_CSR_MASK(riscv, sideleg);

    // get new value using writable bit mask
    newValue = ((newValue & mask) | (oldValue & ~mask));

    // update the CSR
    WR_CSR(riscv, sideleg, newValue);

    // handle any interrupts that are now pending and enabled
    if(oldValue!=newValue) {
        riscvTestInterrupt(riscv);
    }

    // return written value
    return newValue;
}


////////////////////////////////////////////////////////////////////////////////
// TRAP VECTOR REGISTERS
////////////////////////////////////////////////////////////////////////////////

//
// Derive new value for trap vector register based on given value, rounding to
// configured alignment if vector format is specified
//
static Uns64 tvecW(riscvP riscv, Uns64 newValue, Uns64 oldValue, Uns64 mask) {

    Int32 tvec_align = riscv->configInfo.tvec_align;

    // mask new value
    newValue = ((newValue & mask) | (oldValue & ~mask));

    // apply any additional alignment constraint in vectored mode
    if(tvec_align && (newValue&1)) {
        newValue &= -tvec_align;
        newValue |= 1;
    }

    // return written value
    return newValue;
}

//
// Write mtvec
//
static RISCV_CSR_WRITEFN(mtvecW) {

    Uns64 oldValue = RD_CSR(riscv, mtvec);

    newValue = tvecW(riscv, newValue, oldValue, RD_CSR_MASK(riscv, mtvec));

    // update the CSR
    WR_CSR(riscv, mtvec, newValue);

    // return written value
    return newValue;
}

//
// Write stvec
//
static RISCV_CSR_WRITEFN(stvecW) {

    Uns64 oldValue = RD_CSR(riscv, stvec);

    newValue = tvecW(riscv, newValue, oldValue, RD_CSR_MASK(riscv, stvec));

    // update the CSR
    WR_CSR(riscv, stvec, newValue);

    // return written value
    return newValue;
}

//
// Write utvec
//
static RISCV_CSR_WRITEFN(utvecW) {

    Uns64 oldValue = RD_CSR(riscv, utvec);

    newValue = tvecW(riscv, newValue, oldValue, RD_CSR_MASK(riscv, utvec));

    // update the CSR
    WR_CSR(riscv, utvec, newValue);

    // return written value
    return newValue;
}


////////////////////////////////////////////////////////////////////////////////
// PERFORMANCE MONITOR REGISTERS
////////////////////////////////////////////////////////////////////////////////

//
// Return register index for CSR
//
static Uns32 getCSRNum(riscvCSRAttrsCP attrs);

//
// Return mask of Performance Monitor registers accessible in the current mode
//
static Uns32 getHPMMask(riscvP riscv) {

    riscvMode mode  = getCurrentMode(riscv);
    Uns32     valid = RD_CSR_MASK(riscv, mcounteren);

    if(mode<RISCV_MODE_MACHINE) {
        valid &= RD_CSR(riscv, mcounteren);
    }
    if(mode<RISCV_MODE_SUPERVISOR) {
        valid &= RD_CSR(riscv, scounteren);
    }

    return valid;
}

//
// Return a Boolean indicating if an access to the indicated Performance
// Monitor register is valid (and take an Undefined Instruction exception
// if not)
//
static Bool hpmAccessValid(riscvCSRAttrsCP attrs, riscvP riscv) {

    Uns32 index = getCSRNum(attrs);
    Uns32 mask  = (1<<(index&31));

    if(riscv->artifactAccess) {

        // all artifact accesses are allowed
        return True;

    } else if(mask & getHPMMask(riscv)) {

        // access allowed by current mask settings
        return True;

    } else {

        // report the disabled instruction
        if(!riscv->verbose) {
            // no action
        } else if(mask & RD_CSR_MASK(riscv, mcounteren)) {
            vmiMessage("W", CPU_PREFIX "_IHPMA",
                SRCREF_FMT "Illegal instruction (access disallowed in current mode)",
                SRCREF_ARGS(riscv, getPC(riscv))
            );
        } else {
            vmiMessage("W", CPU_PREFIX "_IHPMU",
                SRCREF_FMT "Illegal instruction (CSR unimplemented)",
                SRCREF_ARGS(riscv, getPC(riscv))
            );
        }

        // take Illegal Instruction exception
        riscvIllegalInstruction(riscv);

        return False;
    }
}

//
// Return value created by modifying indexed half of oldValue with newValue
//
inline static Uns64 setHalf(Uns32 newValue, Uns64 oldValue, Uns32 index) {

    union {Uns64 u64; Uns32 u32[2];} u = {oldValue};

    u.u32[index] = newValue;

    return u.u64;
}

//
// Return value created by modifying lower half of oldValue with newValue
//
inline static Uns64 setLower(Uns32 newValue, Uns64 oldValue) {
    return setHalf(newValue, oldValue, 0);
}

//
// Return value created by modifying upper half of oldValue with newValue
//
inline static Uns64 setUpper(Uns32 newValue, Uns64 oldValue) {
    return setHalf(newValue, oldValue, 1);
}

//
// Return value based in current XLEN
//
inline static Uns64 getXLENValue(riscvP riscv, Uns64 result) {
    return RISCV_XLEN_IS_32(riscv) ? (Uns32)result : result;
}

//
// Return current cycle count
//
inline static Uns64 getCycles(riscvP riscv) {
    return vmirtGetICount((vmiProcessorP)riscv);
}

//
// Return current instruction count
//
inline static Uns64 getInstructions(riscvP riscv) {
    return vmirtGetExecutedICount((vmiProcessorP)riscv);
}

//
// Common routine to read cycle counter
//
static Uns64 cycleR(riscvP riscv) {
    return getCycles(riscv) - riscv->baseCycles;
}

//
// Common routine to write cycle counter (NOTE: count is notionally incremented
// *before* the write)
//
static void cycleW(riscvP riscv, Uns64 newValue) {

    riscv->baseCycles = getCycles(riscv) - newValue;

    if(!riscv->artifactAccess) {
        riscv->baseCycles++;
    }
}

//
// Read mcycle or an alias of it
//
static RISCV_CSR_READFN(mcycleR) {

    Uns64 result = 0;

    if(hpmAccessValid(attrs, riscv)) {
        result = getXLENValue(riscv, cycleR(riscv));
    }

    return result;
}

//
// Write mcycle
//
static RISCV_CSR_WRITEFN(mcycleW) {

    if(!hpmAccessValid(attrs, riscv)) {
        // no action
    } else if(RISCV_XLEN_IS_32(riscv)) {
        cycleW(riscv, setLower(newValue, cycleR(riscv)));
    } else {
        cycleW(riscv, newValue);
    }

    return newValue;
}

//
// Read mcycleh or an alias of it
//
static RISCV_CSR_READFN(mcyclehR) {

    Uns64 result = 0;

    if(hpmAccessValid(attrs, riscv)) {
        result = cycleR(riscv) >> 32;
    }

    return result;
}

//
// Write mcycleh
//
static RISCV_CSR_WRITEFN(mcyclehW) {

    if(hpmAccessValid(attrs, riscv)) {
        cycleW(riscv, setUpper(newValue, cycleR(riscv)));
    }

    return newValue;
}

//
// Common routine to read time
//
static Uns64 timeR(riscvP riscv) {
    return (Uns64)(1000000*vmirtGetMonotonicTime((vmiProcessorP)riscv));
}

//
// Read time or an alias of it
//
static RISCV_CSR_READFN(mtimeR) {

    Uns64 result = 0;

    if(hpmAccessValid(attrs, riscv)) {
        result = getXLENValue(riscv, timeR(riscv));
    }

    return result;
}

//
// Read timeh or an alias of it
//
static RISCV_CSR_READFN(mtimehR) {

    Uns64 result = 0;

    if(hpmAccessValid(attrs, riscv)) {
        result = timeR(riscv) >> 32;
    }

    return result;
}

//
// Common routine to read instret counter
//
static Uns64 instretR(riscvP riscv) {
    return getInstructions(riscv) - riscv->baseInstructions;
}

//
// Common routine to write instret counter (NOTE: count is notionally
// incremented *before* the write)
//
static void instretW(riscvP riscv, Uns64 newValue) {
    riscv->baseInstructions = getInstructions(riscv) - newValue + 1;
}

//
// Read minstret or an alias of it
//
static RISCV_CSR_READFN(minstretR) {

    Uns64 result = 0;

    if(hpmAccessValid(attrs, riscv)) {
        result = getXLENValue(riscv, instretR(riscv));
    }

    return result;
}

//
// Write minstret
//
static RISCV_CSR_WRITEFN(minstretW) {

    if(!hpmAccessValid(attrs, riscv)) {
        // no action
    } else if(RISCV_XLEN_IS_32(riscv)) {
        instretW(riscv, setLower(newValue, instretR(riscv)));
    } else {
        instretW(riscv, newValue);
    }

    return newValue;
}

//
// Read minstreth or an alias of it
//
static RISCV_CSR_READFN(minstrethR) {

    Uns64 result = 0;

    if(hpmAccessValid(attrs, riscv)) {
        result = instretR(riscv) >> 32;
    }

    return result;
}

//
// Write minstreth
//
static RISCV_CSR_WRITEFN(minstrethW) {

    if(hpmAccessValid(attrs, riscv)) {
        instretW(riscv, setUpper(newValue, instretR(riscv)));
    }

    return newValue;
}

//
// Read unimplemented performance monitor register
//
static RISCV_CSR_READFN(mhpmR) {

    if(hpmAccessValid(attrs, riscv)) {
        // no action
    }

    return 0;
}

//
// Write unimplemented performance monitor register
//
static RISCV_CSR_WRITEFN(mhpmW) {

    if(hpmAccessValid(attrs, riscv)) {
        // no action
    }

    return 0;
}


////////////////////////////////////////////////////////////////////////////////
// VIRTUAL MEMORY MANAGEMENT REGISTERS
////////////////////////////////////////////////////////////////////////////////

//
// Write satp
//
static RISCV_CSR_WRITEFN(satpW) {

    Uns64 old = RD_CSR(riscv, satp);

    // write value
    WR_CSR(riscv, satp, newValue);

    // mask ASID value to implemented width
    Uns32 ASIDmask = getASIDMask(riscv);
    Uns32 ASID     = RD_CSR_FIELD(riscv, satp, ASID) & ASIDmask;
    WR_CSR_FIELD(riscv, satp, ASID, ASID);

    // mask PPN value to implemented width
    Uns64 PPNMask = ((1ULL<<riscv->extBits)-1) >> RISCV_PAGE_SHIFT;
    Uns64 PPN     = RD_CSR_FIELD(riscv, satp, PPN) & PPNMask;
    WR_CSR_FIELD(riscv, satp, PPN, PPN);

    // get requested mode
    Uns32 targetMode = RD_CSR_FIELD(riscv, satp, MODE);

    if(!((1<<targetMode) & riscv->configInfo.Sv_modes)) {

        // discard write if invalid mode was specified
        if(riscv->verbose) {
            vmiMessage("W", CPU_PREFIX"_ISPV",
                SRCREF_FMT
                "satp write with 0x"FMT_Ax" ignored (invalid mode %u)",
                SRCREF_ARGS(riscv, getPC(riscv)),
                newValue, targetMode
            );
        }

        // revert value
        WR_CSR(riscv, satp, old);

    } else {

        // change in SATP.MODE enables/disables VM
        riscvSetMode(riscv, getCurrentMode(riscv));

        // change in SATP.ASID affects effective ASID
        riscvVMSetASID(riscv);
    }

    // return written value
    return RD_CSR(riscv, satp);
}


////////////////////////////////////////////////////////////////////////////////
// PHYSICAL MEMORY MANAGEMENT REGISTERS
////////////////////////////////////////////////////////////////////////////////

//
// Read pmpcfg0-pmpcfg3
//
static RISCV_CSR_READFN(pmpcfgR) {
    return riscvVMReadPMPCFG(riscv, getCSRId(attrs)-CSR_ID(pmpcfg0));
}

//
// Write pmpcfg0-pmpcfg3
//
static RISCV_CSR_WRITEFN(pmpcfgW) {
    return riscvVMWritePMPCFG(riscv, getCSRId(attrs)-CSR_ID(pmpcfg0), newValue);
}

//
// Read pmpaddr0-pmpaddr15
//
static RISCV_CSR_READFN(pmpaddrR) {
    return riscvVMReadPMPAddr(riscv, getCSRId(attrs)-CSR_ID(pmpaddr0));
}

//
// Write pmpaddr0-pmpaddr15
//
static RISCV_CSR_WRITEFN(pmpaddrW) {
    return riscvVMWritePMPAddr(riscv, getCSRId(attrs)-CSR_ID(pmpaddr0), newValue);
}


////////////////////////////////////////////////////////////////////////////////
// MACROS FOR UNIMPLEMENTED CSRS
////////////////////////////////////////////////////////////////////////////////

//
// Unimplemented (ignore reads and writes)
//
#define CSR_ATTR_NIP( \
    _ID, _NUM, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC \
) [CSR_ID(_ID)] = {                                 \
    name          : #_ID,                           \
    desc          : _DESC" (not implemented)",      \
    csrNum        : _NUM,                           \
    arch          : _ARCH,                          \
    wEndBlock     : _ENDB,                          \
    wEndRM        : _ENDRM,                         \
    noTraceChange : _NOTR,                          \
    TVMT          : _TVMT,                          \
}


////////////////////////////////////////////////////////////////////////////////
// MACROS FOR IMPLEMENTED CSRS
////////////////////////////////////////////////////////////////////////////////

//
// Implemented using vmiReg and optional callbacks, no mask
//
#define CSR_ATTR_T__( \
    _ID, _NUM, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) [CSR_ID(_ID)] = { \
    name          : #_ID,                   \
    desc          : _DESC,                  \
    csrNum        : _NUM,                   \
    arch          : _ARCH,                  \
    wEndBlock     : _ENDB,                  \
    wEndRM        : _ENDRM,                 \
    noTraceChange : _NOTR,                  \
    TVMT          : _TVMT,                  \
    readCB        : _RCB,                   \
    readWriteCB   : _RWCB,                  \
    writeCB       : _WCB,                   \
    reg32         : CSR_REG32_MT(_ID),      \
    reg64         : CSR_REG64_MT(_ID)       \
}

//
// Implemented using vmiReg and optional callbacks, constant write mask
//
#define CSR_ATTR_TC_( \
    _ID, _NUM, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) [CSR_ID(_ID)] = { \
    name          : #_ID,                   \
    desc          : _DESC,                  \
    csrNum        : _NUM,                   \
    arch          : _ARCH,                  \
    wEndBlock     : _ENDB,                  \
    wEndRM        : _ENDRM,                 \
    noTraceChange : _NOTR,                  \
    TVMT          : _TVMT,                  \
    readCB        : _RCB,                   \
    readWriteCB   : _RWCB,                  \
    writeCB       : _WCB,                   \
    reg32         : CSR_REG32_MT(_ID),      \
    writeMaskC32  : WM32_##_ID,             \
    reg64         : CSR_REG64_MT(_ID),      \
    writeMaskC64  : WM64_##_ID              \
}

//
// Implemented using vmiReg and optional callbacks, variable write mask
//
#define CSR_ATTR_TV_( \
    _ID, _NUM, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) [CSR_ID(_ID)] = { \
    name          : #_ID,                   \
    desc          : _DESC,                  \
    csrNum        : _NUM,                   \
    arch          : _ARCH,                  \
    wEndBlock     : _ENDB,                  \
    wEndRM        : _ENDRM,                 \
    noTraceChange : _NOTR,                  \
    TVMT          : _TVMT,                  \
    readCB        : _RCB,                   \
    readWriteCB   : _RWCB,                  \
    writeCB       : _WCB,                   \
    reg32         : CSR_REG32_MT(_ID),      \
    writeMaskV32  : CSR_MASK32_MT(_ID),     \
    reg64         : CSR_REG64_MT(_ID),      \
    writeMaskV64  : CSR_MASK64_MT(_ID)      \
}

//
// Implemented using callbacks only
//
#define CSR_ATTR_P__( \
    _ID, _NUM, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) [CSR_ID(_ID)] = { \
    name          : #_ID,                   \
    desc          : _DESC,                  \
    csrNum        : _NUM,                   \
    arch          : _ARCH,                  \
    wEndBlock     : _ENDB,                  \
    wEndRM        : _ENDRM,                 \
    noTraceChange : _NOTR,                  \
    TVMT          : _TVMT,                  \
    readCB        : _RCB,                   \
    readWriteCB   : _RWCB,                  \
    writeCB       : _WCB                    \
}

//
// Implemented using callbacks only, append number
//
#define CSR_ATTR_P__NUM( \
    _ID, _NUM, _I, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) \
    CSR_ATTR_P__(_ID##_I, _NUM+_I, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC#_I, _RCB, _RWCB, _WCB)

//
// Implemented using callbacks only, numbers 0..15
//
#define CSR_ATTR_P__0_15( \
    _ID, _NUM, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) \
    CSR_ATTR_P__NUM(_ID, _NUM,  0, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM,  1, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM,  2, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM,  3, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM,  4, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM,  5, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM,  6, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM,  7, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM,  8, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM,  9, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 10, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 11, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 12, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 13, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 14, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 15, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB)

//
// Implemented using callbacks only, numbers 0..9
//
#define CSR_ATTR_P__0_9( \
    _ID, _NUM, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) \
    CSR_ATTR_P__NUM(_ID, _NUM, 0, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 1, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 2, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 3, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 4, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 5, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 6, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 7, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 8, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID, _NUM, 9, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB)

//
// Implemented using callbacks only, numbers 3..31
//
#define CSR_ATTR_P__3_31( \
    _ID, _NUM, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) \
    CSR_ATTR_P__NUM(_ID,    _NUM, 3, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC,    _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID,    _NUM, 4, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC,    _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID,    _NUM, 5, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC,    _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID,    _NUM, 6, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC,    _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID,    _NUM, 7, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC,    _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID,    _NUM, 8, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC,    _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID,    _NUM, 9, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC,    _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__0_9(_ID##1, _NUM+10, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC"1", _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__0_9(_ID##2, _NUM+20, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC"2", _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID,    _NUM,30, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC,    _RCB, _RWCB, _WCB), \
    CSR_ATTR_P__NUM(_ID,    _NUM,31, _ARCH, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC,    _RCB, _RWCB, _WCB)


//
// CSR table
//
static const riscvCSRAttrs csrs[CSR_ID(LAST)] = {

    //                name          num    arch         attrs     description                                      rCB         rwCB   wCB
    CSR_ATTR_P__     (ustatus,      0x000, ISA_N,       0,0,0,0,  "User Status",                                   ustatusR,   0,     ustatusW  ),
    CSR_ATTR_P__     (fflags,       0x001, ISA_DF,      0,0,0,0,  "Floating-Point Flags",                          fflagsR,    0,     fflagsW   ),
    CSR_ATTR_P__     (frm,          0x002, ISA_DF,      0,1,0,0,  "Floating-Point Rounding Mode",                  frmR,       0,     frmW      ),
    CSR_ATTR_P__     (fcsr ,        0x003, ISA_DF,      0,1,0,0,  "Floating-Point Control and Status",             fcsrR,      0,     fcsrW     ),
    CSR_ATTR_P__     (uie,          0x004, ISA_N,       1,0,0,0,  "User Interrupt Enable",                         uieR,       0,     uieW      ),
    CSR_ATTR_T__     (utvec,        0x005, ISA_N,       0,0,0,0,  "User Trap-Vector Base-Address",                 0,          0,     utvecW    ),
    CSR_ATTR_T__     (uscratch,     0x040, ISA_N,       0,0,0,0,  "User Scratch",                                  0,          0,     0         ),
    CSR_ATTR_TV_     (uepc,         0x041, ISA_N,       0,0,0,0,  "User Exception Program Counter",                0,          0,     0         ),
    CSR_ATTR_TV_     (ucause,       0x042, ISA_N,       0,0,0,0,  "User Cause",                                    0,          0,     0         ),
    CSR_ATTR_T__     (utval,        0x043, ISA_N,       0,0,0,0,  "User Trap Value",                               0,          0,     0         ),
    CSR_ATTR_P__     (uip,          0x044, ISA_N,       0,0,0,0,  "User Interrupt Pending",                        uipR,       uipRW, uipW      ),
    CSR_ATTR_P__     (cycle,        0xC00, 0,           0,0,1,0,  "Cycle Counter",                                 mcycleR,    0,     0         ),
    CSR_ATTR_P__     (time,         0xC01, 0,           0,0,1,0,  "Timer",                                         mtimeR,     0,     0         ),
    CSR_ATTR_P__     (instret,      0xC02, 0,           0,0,1,0,  "Instructions Retired",                          minstretR,  0,     0         ),
    CSR_ATTR_P__3_31 (hpmcounter,   0xC00, 0,           0,0,0,0,  "Performance Monitor Counter ",                  mhpmR,      0,     mhpmW     ),
    CSR_ATTR_P__     (cycleh,       0xC80, ISA_XLEN_32, 0,0,1,0,  "Cycle Counter High",                            mcyclehR,   0,     0         ),
    CSR_ATTR_P__     (timeh,        0xC81, ISA_XLEN_32, 0,0,1,0,  "Timer High",                                    mtimehR,    0,     0         ),
    CSR_ATTR_P__     (instreth,     0xC82, ISA_XLEN_32, 0,0,1,0,  "Instructions Retired High",                     minstrethR, 0,     0         ),
    CSR_ATTR_P__3_31 (hpmcounterh,  0xC80, ISA_XLEN_32, 0,0,0,0,  "Performance Monitor High ",                     mhpmR,      0,     mhpmW     ),

    //                name          num    arch         attrs     description                                      rCB         rwCB   wCB
    CSR_ATTR_P__     (sstatus,      0x100, ISA_S,       0,0,0,0,  "Supervisor Status",                             sstatusR,   0,     sstatusW  ),
    CSR_ATTR_TV_     (sedeleg,      0x102, ISA_SandN,   0,0,0,0,  "Supervisor Exception Delegation",               0,          0,     0         ),
    CSR_ATTR_T__     (sideleg,      0x103, ISA_SandN,   1,0,0,0,  "Supervisor Interrupt Delegation",               0,          0,     sidelegW  ),
    CSR_ATTR_P__     (sie,          0x104, ISA_S,       1,0,0,0,  "Supervisor Interrupt Enable",                   sieR,       0,     sieW      ),
    CSR_ATTR_T__     (stvec,        0x105, ISA_S,       0,0,0,0,  "Supervisor Trap-Vector Base-Address",           0,          0,     stvecW    ),
    CSR_ATTR_TV_     (scounteren,   0x106, ISA_S,       0,0,0,0,  "Supervisor Counter Enable",                     0,          0,     0         ),
    CSR_ATTR_T__     (sscratch,     0x140, ISA_S,       0,0,0,0,  "Supervisor Scratch",                            0,          0,     0         ),
    CSR_ATTR_TV_     (sepc,         0x141, ISA_S,       0,0,0,0,  "Supervisor Exception Program Counter",          0,          0,     0         ),
    CSR_ATTR_TV_     (scause,       0x142, ISA_S,       0,0,0,0,  "Supervisor Cause",                              0,          0,     0         ),
    CSR_ATTR_T__     (stval,        0x143, ISA_S,       0,0,0,0,  "Supervisor Trap Value",                         0,          0,     0         ),
    CSR_ATTR_P__     (sip,          0x144, ISA_S,       0,0,0,0,  "Supervisor Interrupt Pending",                  sipR,       sipRW, sipW      ),
    CSR_ATTR_T__     (satp,         0x180, ISA_S,       0,0,0,1,  "Supervisor Address Translation and Protection", 0,          0,     satpW     ),

    //                name          num    arch         attrs     description                                      rCB         rwCB   wCB
    CSR_ATTR_T__     (mvendorid,    0xF11, 0,           0,0,0,0,  "Vendor ID",                                     0,          0,     0         ),
    CSR_ATTR_T__     (marchid,      0xF12, 0,           0,0,0,0,  "Architecture ID",                               0,          0,     0         ),
    CSR_ATTR_T__     (mimpid,       0xF13, 0,           0,0,0,0,  "Implementation ID",                             0,          0,     0         ),
    CSR_ATTR_T__     (mhartid,      0xF14, 0,           0,0,0,0,  "Hardware Thread ID",                            0,          0,     0         ),
    CSR_ATTR_TV_     (mstatus,      0x300, 0,           0,0,0,0,  "Machine Status",                                mstatusR,   0,     mstatusW  ),
    CSR_ATTR_T__     (misa,         0x301, 0,           1,0,0,0,  "ISA and Extensions",                            0,          0,     misaW     ),
    CSR_ATTR_TV_     (medeleg,      0x302, ISA_SorN,    0,0,0,0,  "Machine Exception Delegation",                  0,          0,     0         ),
    CSR_ATTR_T__     (mideleg,      0x303, ISA_SorN,    1,0,0,0,  "Machine Interrupt Delegation",                  0,          0,     midelegW  ),
    CSR_ATTR_T__     (mie,          0x304, 0,           1,0,0,0,  "Machine Interrupt Enable",                      0,          0,     mieW      ),
    CSR_ATTR_T__     (mtvec,        0x305, 0,           0,0,0,0,  "Machine Trap-Vector Base-Address",              0,          0,     mtvecW    ),
    CSR_ATTR_TV_     (mcounteren,   0x306, ISA_SorU,    0,0,0,0,  "Machine Counter Enable",                        0,          0,     0         ),
    CSR_ATTR_T__     (mscratch,     0x340, 0,           0,0,0,0,  "Machine Scratch",                               0,          0,     0         ),
    CSR_ATTR_TV_     (mepc,         0x341, 0,           0,0,0,0,  "Machine Exception Program Counter",             0,          0,     0         ),
    CSR_ATTR_TV_     (mcause,       0x342, 0,           0,0,0,0,  "Machine Cause",                                 0,          0,     0         ),
    CSR_ATTR_T__     (mtval,        0x343, 0,           0,0,0,0,  "Machine Trap Value",                            0,          0,     0         ),
    CSR_ATTR_T__     (mip,          0x344, 0,           0,0,0,0,  "Machine Interrupt Pending",                     mipR,       mipRW, mipW      ),

    //                name          num    arch         attrs     description                                      rCB         rwCB   wCB
    CSR_ATTR_P__     (pmpcfg0,      0x3A0, 0,           0,0,0,0,  "Physical Memory Protection Configuration 0",    pmpcfgR,    0,     pmpcfgW   ),
    CSR_ATTR_P__     (pmpcfg1,      0x3A1, ISA_XLEN_32, 0,0,0,0,  "Physical Memory Protection Configuration 1",    pmpcfgR,    0,     pmpcfgW   ),
    CSR_ATTR_P__     (pmpcfg2,      0x3A2, 0,           0,0,0,0,  "Physical Memory Protection Configuration 2",    pmpcfgR,    0,     pmpcfgW   ),
    CSR_ATTR_P__     (pmpcfg3,      0x3A3, ISA_XLEN_32, 0,0,0,0,  "Physical Memory Protection Configuration 3",    pmpcfgR,    0,     pmpcfgW   ),
    CSR_ATTR_P__0_15 (pmpaddr,      0x3B0, 0,           0,0,0,0,  "Physical Memory Protection Address ",           pmpaddrR,   0,     pmpaddrW  ),

    //                name          num    arch         attrs     description                                      rCB         rwCB   wCB
    CSR_ATTR_P__     (mcycle,       0xB00, 0,           0,0,1,0,  "Machine Cycle Counter",                         mcycleR,    0,     mcycleW   ),
    CSR_ATTR_P__     (minstret,     0xB02, 0,           0,0,1,0,  "Machine Instructions Retired",                  minstretR,  0,     minstretW ),
    CSR_ATTR_P__3_31 (mhpmcounter,  0xB00, 0,           0,0,0,0,  "Machine Performance Monitor Counter ",          mhpmR,      0,     mhpmW     ),
    CSR_ATTR_P__     (mcycleh,      0xB80, ISA_XLEN_32, 0,0,1,0,  "Machine Cycle Counter High",                    mcyclehR,   0,     mcyclehW  ),
    CSR_ATTR_P__     (minstreth,    0xB82, ISA_XLEN_32, 0,0,1,0,  "Machine Instructions Retired High",             minstrethR, 0,     minstrethW),
    CSR_ATTR_P__3_31 (mhpmcounterh, 0xB80, ISA_XLEN_32, 0,0,0,0,  "Machine Performance Monitor Counter High ",     mhpmR,      0,     mhpmW     ),
    CSR_ATTR_P__3_31 (mhpmevent,    0x320, 0,           0,0,0,0,  "Machine Performance Monitor Event Select ",     mhpmR,      0,     mhpmW     ),

    //                name          num    arch         attrs     description                                      rCB         rwCB   wCB
    CSR_ATTR_NIP     (tselect,      0x7A0, 0,           0,0,0,0,  "Debug/Trace Trigger Register Select"                                         ),
    CSR_ATTR_NIP     (tdata1,       0x7A1, 0,           0,0,0,0,  "Debug/Trace Trigger Data 1"                                                  ),
    CSR_ATTR_NIP     (tdata2,       0x7A2, 0,           0,0,0,0,  "Debug/Trace Trigger Data 2"                                                  ),
    CSR_ATTR_NIP     (tdata3,       0x7A3, 0,           0,0,0,0,  "Debug/Trace Trigger Data 3"                                                  ),

    //                name          num    arch         attrs     description                                      rCB         rwCB   wCB
    // TODO: these are undefined in all modes
    CSR_ATTR_NIP     (dcsr,         0x7B0, 0,           0,0,0,0,  "Debug Control and Status"                                                    ),
    CSR_ATTR_NIP     (dpc,          0x7B1, 0,           0,0,0,0,  "Debug PC"                                                                    ),
    CSR_ATTR_NIP     (dscratch,     0x7B2, 0,           0,0,0,0,  "Debug Scratch"                                                               ),
};


////////////////////////////////////////////////////////////////////////////////
// REGISTER ACCESS UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// Union used to decompose CSR index fields
//
typedef union CSRFieldsU {
    Uns32 u32;
    struct {
        Uns32 index  : 8;   // index within group
        Uns32 mode   : 2;   // lowest mode for which access is possible
        Uns32 access : 2;   // read/write or read-only access encoding
    };
} CSRFields;

//
// Return riscvCSRId for riscvCSRAttrsCP
//
static riscvCSRId getCSRId(riscvCSRAttrsCP attrs) {

    return attrs - csrs;
}

//
// Return register number for CSR
//
static Uns32 getCSRNum(riscvCSRAttrsCP attrs) {

    return attrs->csrNum;
}

//
// Return read/write access constraints for the register
//
inline static vmiRegAccess getAccess(riscvCSRAttrsCP attrs) {

    CSRFields fields = {attrs->csrNum};

    return (fields.access==3) ? vmi_RA_R : vmi_RA_RW;
}

//
// Is this CSR supported, either architecturally (if normal is True) or for
// the purposes of a gdb access (if normal is False)? If not, return missing
// but required architectural features
//
static riscvArchitecture getMissingCSRFeatures(
    riscvCSRAttrsCP   attrs,
    riscvArchitecture actual,
    Bool              normal
) {
    if(!normal) {

        // gdb access always supported
        return 0;

    } else {

        riscvArchitecture required = attrs->arch & ~ISA_and;

        if(attrs->arch & ISA_and) {

            // all specified features are required
            return required & ~actual;

        } else {

            // one or more of the specified features is required
            return !(actual & required) ? required : 0;
        }
    }
}

//
// Return the processor mode with which the CSR should be associated
//
static riscvMode getCSRMode(riscvCSRAttrsCP attrs, riscvArchitecture arch) {

    CSRFields fields = {attrs->csrNum};
    riscvMode mode   = fields.mode;

    // promote User-accessible registers to Supervisor mode if User mode is
    // absent
    if((mode==RISCV_MODE_USER) && !(arch&ISA_U)) {
        mode = RISCV_MODE_SUPERVISOR;
    }

    // promote Supervisor-accessible registers to Machine mode if Supervisor
    // mode is absent
    if((mode==RISCV_MODE_SUPERVISOR) && !(arch&ISA_S)) {
        mode = RISCV_MODE_MACHINE;
    }

    return mode;
}

//
// Return raw register to be used for value access, based on configured
// architecture
//
inline static vmiReg getRawArch(riscvCSRAttrsCP attrs, riscvArchitecture arch) {
    return (arch&ISA_XLEN_64) ? attrs->reg64 : attrs->reg32;
}

//
// Return constant write mask for the register
//
inline Uns64 getWriteMaskCArch(riscvCSRAttrsCP attrs, riscvArchitecture arch) {
    return (arch&ISA_XLEN_64) ? attrs->writeMaskC64 : attrs->writeMaskC32;
}

//
// Return configurable write mask for the register
//
inline vmiReg getWriteMaskVArch(riscvCSRAttrsCP attrs, riscvArchitecture arch) {
    return (arch&ISA_XLEN_64) ? attrs->writeMaskV64 : attrs->writeMaskV32;
}

//
// Get pointer to plain register value in processor structure
//
inline static void *getVMIRegValue(vmiReg reg, riscvP riscv) {
    return VMI_ISNOREG(reg) ? 0 : ((Uns8 *)riscv) + reg.index;
}

//
// Get pointer to Uns32 plain register value in processor structure
//
inline static Uns32 *getVMIRegValue32(vmiReg reg, riscvP riscv) {
    return getVMIRegValue(reg, riscv);
}

//
// Get pointer to Uns64 plain register value in processor structure
//
inline static Uns64 *getVMIRegValue64(vmiReg reg, riscvP riscv) {
    return getVMIRegValue(reg, riscv);
}

//
// Get pointer to plain CSR value in processor structure
//
static void *getCSRRegValue(riscvCSRAttrsCP attrs, riscvP riscv) {

    riscvArchitecture arch = riscv->configInfo.arch;
    vmiReg            reg  = getRawArch(attrs, arch);

    return getVMIRegValue(reg, riscv);
}

//
// Return 32-bit CSR write mask (sign-extended to 64 bits)
//
static Int32 getCSRWriteMask32(riscvCSRAttrsCP attrs, riscvP riscv) {

    vmiReg writeMaskV = attrs->writeMaskV32;

    if(VMI_ISNOREG(writeMaskV)) {
        return attrs->writeMaskC32 ? : -1;
    } else {
        return *getVMIRegValue32(writeMaskV, riscv);
    }
}

//
// Return 64-bit CSR write mask
//
static Uns64 getCSRWriteMask64(riscvCSRAttrsCP attrs, riscvP riscv) {

    vmiReg writeMaskV = attrs->writeMaskV64;

    if(VMI_ISNOREG(writeMaskV)) {
        return attrs->writeMaskC64 ? : -1;
    } else {
        return *getVMIRegValue64(writeMaskV, riscv);
    }
}

//
// Return Uns64 CSR write mask for the current processor state
//
static Uns64 getCSRWriteMask(riscvCSRAttrsCP attrs, riscvP riscv) {

    if(RISCV_XLEN_IS_32(riscv)) {
        return getCSRWriteMask32(attrs, riscv);
    } else {
        return getCSRWriteMask64(attrs, riscv);
    }
}

//
// Return riscvCSRAttrsCP got table entry
//
inline static riscvCSRAttrsCP getEntryCSRAttrs(vmiRangeEntryP entry) {

    riscvCSRAttrsCP result = 0;

    if(entry) {
        result = (riscvCSRAttrsCP)(UnsPS)vmirtGetRangeEntryUserData(entry);
    }

    return result;
}

//
// Register new CSR
//
void riscvNewCSR(riscvCSRAttrsCP attrs, riscvP riscv) {

    Uns32           csrNum = attrs->csrNum;
    vmiRangeTablePP tableP = &riscv->csrTable;
    vmiRangeEntryP  entry  = vmirtGetFirstRangeEntry(tableP, csrNum, csrNum);

    // create new entry for this CSR if required
    if(!entry) {
        entry = vmirtInsertRangeEntry(tableP, csrNum, csrNum, 0);
    }

    // register attributes and entry
    vmirtSetRangeEntryUserData(entry, (UnsPS)attrs);
}

//
// Return CSR attributes for the given CSR index
//
static riscvCSRAttrsCP getCSRAttrs(riscvP riscv, Uns32 csrNum) {

    vmiRangeTablePP tableP = &riscv->csrTable;
    vmiRangeEntryP  entry  = vmirtGetFirstRangeEntry(tableP, csrNum, csrNum);

    return getEntryCSRAttrs(entry);
}

//
// Return the next CSR in index order given the previous one
//
static riscvCSRAttrsCP getNextCSR(riscvCSRAttrsCP prev, riscvP riscv) {

    Uns32           csrNum = prev ? prev->csrNum+1 : 0;
    vmiRangeTablePP tableP = &riscv->csrTable;
    vmiRangeEntryP  entry  = vmirtGetFirstRangeEntry(tableP, csrNum, -1);

    return getEntryCSRAttrs(entry);
}


////////////////////////////////////////////////////////////////////////////////
// IMPLEMENTING CSR REGISTERS USING ARTIFACT BUS
////////////////////////////////////////////////////////////////////////////////

//
// Return memory attributes for artifact CSR bus access
//
inline static memAccessAttrs getCSRMemAttrs(riscvP riscv) {
    return riscv->artifactAccess ? MEM_AA_FALSE : MEM_AA_TRUE;
}

//
// Return address for artifact CSR bus access
//
inline static Uns32 getCSRBusAddress(riscvCSRAttrsCP attrs) {
    return attrs->csrNum << 4;
}

//
// Do externally-implemented 32-bit CSR read
//
static RISCV_CSR_READFN(csrExternalRead32) {

    memDomainP     domain   = riscvGetExternalCSRDomain(riscv);
    memEndian      endian   = MEM_ENDIAN_LITTLE;
    memAccessAttrs memAttrs = getCSRMemAttrs(riscv);
    Uns32          address  = getCSRBusAddress(attrs);

    riscv->externalActive = True;

    // do read from external system domain
    Uns32 result = vmirtRead4ByteDomain(domain, address, endian, memAttrs);

    riscv->externalActive = False;

    // return new value
    return result;
}

//
// Do externally-implemented 32-bit CSR write
//
static RISCV_CSR_WRITEFN(csrExternalWrite32) {

    memDomainP     domain   = riscvGetExternalCSRDomain(riscv);
    memEndian      endian   = MEM_ENDIAN_LITTLE;
    memAccessAttrs memAttrs = getCSRMemAttrs(riscv);
    Uns32          address  = getCSRBusAddress(attrs);

    riscv->externalActive = True;

    // do write to external system domain
    vmirtWrite4ByteDomain(domain, address, endian, newValue, memAttrs);

    // get new value
    Uns32 result = vmirtRead4ByteDomain(domain, address, endian, MEM_AA_FALSE);

    riscv->externalActive = False;

    // return new value
    return result;
}

//
// Do externally-implemented 64-bit CSR read
//
static RISCV_CSR_READFN(csrExternalRead64) {

    memDomainP     domain   = riscvGetExternalCSRDomain(riscv);
    memEndian      endian   = MEM_ENDIAN_LITTLE;
    memAccessAttrs memAttrs = getCSRMemAttrs(riscv);
    Uns32          address  = getCSRBusAddress(attrs);

    riscv->externalActive = True;

    // do read from external system domain
    Uns64 result = vmirtRead8ByteDomain(domain, address, endian, memAttrs);

    riscv->externalActive = False;

    // return new value
    return result;
}

//
// Do externally-implemented 64-bit CSR write
//
static RISCV_CSR_WRITEFN(csrExternalWrite64) {

    memDomainP     domain   = riscvGetExternalCSRDomain(riscv);
    memEndian      endian   = MEM_ENDIAN_LITTLE;
    memAccessAttrs memAttrs = getCSRMemAttrs(riscv);
    Uns32          address  = getCSRBusAddress(attrs);

    riscv->externalActive = True;

    // do write to external system domain
    vmirtWrite8ByteDomain(domain, address, endian, newValue, memAttrs);

    // get new value
    Uns64 result = vmirtRead8ByteDomain(domain, address, endian, MEM_AA_FALSE);

    riscv->externalActive = False;

    // return new value
    return result;
}

//
// Is the CSR implemented externally for the required access type?
//
static Bool csrImplementExternal(
    riscvCSRAttrsCP attrs,
    riscvP          riscv,
    memPriv         priv
) {
    memDomainP domain = riscvGetExternalCSRDomain(riscv);

    if(riscv->externalActive) {

        // don't nest external access calls (assume that a nested read or write
        // should instead access the register inside the model)
        return False;

    } else if(domain) {

        Uns32 address = getCSRBusAddress(attrs);

        if(!vmirtGetDomainMapped(domain, address, address)) {
            return False;
        } else {
            return (vmirtGetDomainPrivileges(domain, address) & priv) && True;
        }

    } else {

        return False;
    }
}

//
// Is the CSR implemented externally for read?
//
inline static Bool csrImplementExternalRead(
    riscvCSRAttrsCP attrs,
    riscvP          riscv
) {
    return csrImplementExternal(attrs, riscv, MEM_PRIV_R);
}

//
// Is the CSR implemented externally for write?
//
inline static Bool csrImplementExternalWrite(
    riscvCSRAttrsCP attrs,
    riscvP          riscv
) {
    return csrImplementExternal(attrs, riscv, MEM_PRIV_W);
}

//
// Return callback for read of externally-implemented CSR
//
inline static riscvCSRReadFn getCSRExternalReadCB(Uns32 bits) {
    return (bits==32) ? csrExternalRead32 : csrExternalRead64;
}

//
// Return callback for write of externally-implemented CSR
//
inline static riscvCSRWriteFn getCSRExternalWriteCB(Uns32 bits) {
    return (bits==32) ? csrExternalWrite32 : csrExternalWrite64;
}

//
// Return any callback implementing a read of the CSR externally
//
static riscvCSRReadFn getCSRReadCB(
    riscvCSRAttrsCP attrs,
    riscvP          riscv,
    Uns32           bits,
    Bool            isWrite
) {
    if(csrImplementExternalRead(attrs, riscv)) {
        return getCSRExternalReadCB(bits);
    } else if(isWrite && attrs->readWriteCB) {
        return attrs->readWriteCB;
    } else {
        return attrs->readCB;
    }
}

//
// Return any callback implementing a write of the CSR externally
//
static riscvCSRWriteFn getCSRWriteCB(
    riscvCSRAttrsCP attrs,
    riscvP          riscv,
    Uns32           bits
) {
    if(csrImplementExternalWrite(attrs, riscv)) {
        return getCSRExternalWriteCB(bits);
    } else {
        return attrs->writeCB;
    }
}


////////////////////////////////////////////////////////////////////////////////
// XLEN CHANGE HANDLING
////////////////////////////////////////////////////////////////////////////////

//
// Switch register to configured architecture format if not current
//
static void toConfiguredArch(riscvCSRAttrsCP attrs, riscvP riscv) {

    Uns32 XLEN1 = riscvGetXlenMode(riscv);
    Uns32 XLEN2 = riscvGetXlenArch(riscv);

    // TODO: change XLEN in currentArch to configArch
    // TODO: swap CSR format to longer
    VMI_ASSERT(XLEN1==XLEN2, "unimplemented");
}

//
// Switch register from configured architecture format if not current
//
static void fromConfiguredArch(riscvCSRAttrsCP attrs, riscvP riscv) {

    // TODO: revert XLEN in currentArch
    // TODO: swap CSR format to shorter
}


////////////////////////////////////////////////////////////////////////////////
// INITIALIZATION
////////////////////////////////////////////////////////////////////////////////

// set mask to the given value in 32-bit CSR mask
#define SET_CSR_MASK_V_32(_CPU, _RNAME, _VALUE) \
    (_CPU)->csrMask._RNAME.u32.bits = _VALUE

// set mask to the given value in 64-bit CSR mask
#define SET_CSR_MASK_V_64(_CPU, _RNAME, _VALUE) \
    (_CPU)->csrMask._RNAME.u64.bits = _VALUE

// set mask to the given value in all CSR masks
#define SET_CSR_MASK_V(_CPU, _RNAME, _VALUE) \
    SET_CSR_MASK_V_32(_CPU, _RNAME, _VALUE); \
    SET_CSR_MASK_V_64(_CPU, _RNAME, _VALUE)

// set field mask to the given value in 32-bit CSR mask
#define SET_CSR_FIELD_MASK_V_32(_CPU, _RNAME, _FIELD, _VALUE) \
    (_CPU)->csrMask._RNAME.u32.fields._FIELD = _VALUE

// set field mask to the given value in 64-bit CSR mask
#define SET_CSR_FIELD_MASK_V_64(_CPU, _RNAME, _FIELD, _VALUE) \
    (_CPU)->csrMask._RNAME.u64.fields._FIELD = _VALUE

// set field mask to the given value in all CSR masks
#define SET_CSR_FIELD_MASK_V(_CPU, _RNAME, _FIELD, _VALUE) \
    SET_CSR_FIELD_MASK_V_32(_CPU, _RNAME, _FIELD, _VALUE); \
    SET_CSR_FIELD_MASK_V_64(_CPU, _RNAME, _FIELD, _VALUE)

// set field mask to all 1's in 32-bit CSR mask
#define SET_CSR_FIELD_MASK_1_32(_CPU, _RNAME, _FIELD) \
    SET_CSR_FIELD_MASK_V_32(_CPU, _RNAME, _FIELD, -1)

// set field mask to all 1's in 64-bit CSR mask
#define SET_CSR_FIELD_MASK_1_64(_CPU, _RNAME, _FIELD) \
    SET_CSR_FIELD_MASK_V_64(_CPU, _RNAME, _FIELD, -1)

// set field mask to all 1's in all CSR masks
#define SET_CSR_FIELD_MASK_1(_CPU, _RNAME, _FIELD) \
    SET_CSR_FIELD_MASK_1_32(_CPU, _RNAME, _FIELD); \
    SET_CSR_FIELD_MASK_1_64(_CPU, _RNAME, _FIELD)

//
// Reset CSR state
//
void riscvCSRReset(riscvP riscv) {

    riscvConfigP      cfg  = &riscv->configInfo;
    riscvArchitecture arch = cfg->arch;

    // switch all register state to the widest supported state
    toConfiguredArch(0, riscv);

    // reset misa
    WR_CSR_FIELD(riscv, misa, Extensions, arch);
    WR_CSR_FIELD(riscv, misa, MXL,        arch>>XLEN_SHIFT);

    // reset mstatus
    WR_CSR(riscv, mstatus, cfg->csr.mstatus.u64.bits);

    // update cause register (to zero)
    WR_CSR(riscv, mcause, 0);

    // update current architecture on change to misa or mstatus
    riscvSetCurrentArch(riscv);

    // reset PMP unit
    riscvVMResetPMP(riscv);

    // clear exclusive tag
    riscv->exclusiveTag = RISCV_NO_TAG;
}

//
// Perform initial CSR reset
//
static void riscvCSRInitialReset(riscvP riscv) {

    riscvConfigP      cfg     = &riscv->configInfo;
    riscvArchitecture arch    = cfg->arch;
    Uns32             MXL     = arch>>XLEN_SHIFT;
    riscvMode         minMode = riscvGetMinMode(riscv);

    // set reset value of mstatus.MPP
    if(cfg->csr.mstatus.u64.fields.MPP < minMode) {
        cfg->csr.mstatus.u64.fields.MPP = minMode;
    }

    // set reset value of mstatus.SPP
    if(!(arch&ISA_S)) {
        cfg->csr.mstatus.u64.fields.SPP = 0;
    } else if(cfg->csr.mstatus.u64.fields.SPP < minMode) {
        cfg->csr.mstatus.u64.fields.SPP = minMode;
    }

    // mstatus.UXL and mstatus.SXL mirror Machine mode XLEN
    if(arch&ISA_U) {
        cfg->csr.mstatus.u64.fields.UXL = MXL;
    }
    if(arch&ISA_S) {
        cfg->csr.mstatus.u64.fields.SXL = MXL;
    }

    // do reset
    riscvCSRReset(riscv);
}

//
// Return mask bit for an exception
//
static Uns64 getExceptionMask(riscvException code) {

    VMI_ASSERT(code<riscv_E_Interrupt, "bad exception id %u", code);

    return 1ULL << code;
}

//
// Return mask bit for an interrupt
//
static Uns64 getInterruptMask(riscvException code) {

    VMI_ASSERT(code>=riscv_E_Interrupt, "bad interrupt id %u", code);

    return 1ULL << (code-riscv_E_Interrupt);
}

//
// Initialize CSR state
//
void riscvCSRInit(riscvP riscv, Uns32 index) {

    riscvConfigCP     cfg      = &riscv->configInfo;
    riscvArchitecture arch     = cfg->arch;
    riscvArchitecture archMask = cfg->archMask;
    riscvCSRId        id;

    //--------------------------------------------------------------------------
    // CSR table support
    //--------------------------------------------------------------------------

    // allocate CSR lookup table
    vmirtNewRangeTable(&riscv->csrTable);

    // allocate CSR message range table
    vmirtNewRangeTable(&riscv->csrUIMessage);

    // insert all standard CSRs into CSR lookup table
    for(id=0; id<CSR_ID(LAST); id++) {
        riscvNewCSR(&csrs[id], riscv);
    }

    //--------------------------------------------------------------------------
    // do initial CSR reset
    //--------------------------------------------------------------------------

    riscvCSRInitialReset(riscv);

    //--------------------------------------------------------------------------
    // mvendorid, marchid, mimpid, mhartid values
    //--------------------------------------------------------------------------

    WR_CSR(riscv, mvendorid, cfg->csr.mvendorid.u64.bits);
    WR_CSR(riscv, marchid,   cfg->csr.marchid.u64.bits);
    WR_CSR(riscv, mimpid,    cfg->csr.mimpid.u64.bits);
    WR_CSR(riscv, mhartid,   cfg->csr.mhartid.u64.bits+index);

    //--------------------------------------------------------------------------
    // misa mask
    //--------------------------------------------------------------------------

    SET_CSR_FIELD_MASK_V(riscv, misa, Extensions, archMask);
    SET_CSR_FIELD_MASK_V(riscv, misa, MXL,        archMask>>XLEN_SHIFT);

    //--------------------------------------------------------------------------
    // mstatus mask
    //--------------------------------------------------------------------------

    // initialize mstatus write mask (Machine mode)
    SET_CSR_FIELD_MASK_1(riscv, mstatus, MIE);
    SET_CSR_FIELD_MASK_1(riscv, mstatus, MPIE);

    // mstatus.MPP is only writable if there is some lower-level mode
    if(arch&(ISA_U|ISA_S)) {
        SET_CSR_FIELD_MASK_1(riscv, mstatus, MPP);
    }

    if(arch&ISA_S) {

        // initialize mstatus write mask (Supervisor mode)
        SET_CSR_FIELD_MASK_1(riscv, mstatus, SIE);
        SET_CSR_FIELD_MASK_1(riscv, mstatus, SPIE);
        SET_CSR_FIELD_MASK_1(riscv, mstatus, SUM);
        SET_CSR_FIELD_MASK_1(riscv, mstatus, MXR);
        SET_CSR_FIELD_MASK_1(riscv, mstatus, TVM);
        SET_CSR_FIELD_MASK_1(riscv, mstatus, TW);
        SET_CSR_FIELD_MASK_1(riscv, mstatus, TSR);

        // mstatus.SPP is only writable if there is some lower-level mode
        if(arch&ISA_U) {
            SET_CSR_FIELD_MASK_1(riscv, mstatus, SPP);
        }
    }

    // initialize mstatus write mask (User mode)
    if(arch&ISA_U) {
        SET_CSR_FIELD_MASK_1(riscv, mstatus, MPRV);
    }

    // initialize N-extension write masks
    if(arch&ISA_N) {
        SET_CSR_FIELD_MASK_1(riscv, mstatus, UIE);
        SET_CSR_FIELD_MASK_1(riscv, mstatus, UPIE);
    }

    // initialize F/D-extension write masks
    if(arch&ISA_DF) {
        SET_CSR_FIELD_MASK_1(riscv, mstatus, FS);
    }

    //--------------------------------------------------------------------------
    // uepc, sepc, mepc masks
    //--------------------------------------------------------------------------

    // initialize uepc, sepc and mepc write masks (dependent on whether
    // compressed instructions are present)
    Uns64 maskEPC = (arch&ISA_C) ? -2 : -4;
    SET_CSR_MASK_V(riscv, uepc, maskEPC);
    SET_CSR_MASK_V(riscv, sepc, maskEPC);
    SET_CSR_MASK_V(riscv, mepc, maskEPC);

    //--------------------------------------------------------------------------
    // exception and interrupt masks
    //--------------------------------------------------------------------------

    // get mask of implemented exceptions/interrupts visible in Monitor mode
    Uns64 mExceptions = riscv->exceptionMask;
    Uns64 mInterrupts = riscv->interruptMask;

    // get mask of implemented exceptions visible in Supervisor mode
    Uns64 sExceptions = (
        mExceptions &
        ~(
            getExceptionMask(riscv_E_EnvironmentCallFromMMode)
        )
    );

    // get mask of implemented interrupts visible in Supervisor mode
    Uns64 sInterrupts = (
        mInterrupts &
        ~(
            getInterruptMask(riscv_E_MSWInterrupt)       |
            getInterruptMask(riscv_E_MTimerInterrupt)    |
            getInterruptMask(riscv_E_MExternalInterrupt) |
            // supplemental local interrupts are Machine mode only
            riscvGetLocalIntMask(riscv)
        )
    );

    // get mask of implemented exceptions visible in Hypervisor mode
    Uns64 hExceptions = (
        sExceptions &
        ~(
            getExceptionMask(riscv_E_EnvironmentCallFromSMode)
        )
    );

    // get mask of implemented interrupts visible in Hypervisor mode
    Uns64 hInterrupts = (
        sInterrupts &
        ~(
            getInterruptMask(riscv_E_SSWInterrupt)       |
            getInterruptMask(riscv_E_STimerInterrupt)    |
            getInterruptMask(riscv_E_SExternalInterrupt)
        )
    );

    // get mask of implemented exceptions visible in User mode
    Uns64 uExceptions = (
        hExceptions &
        ~(
            getExceptionMask(riscv_E_EnvironmentCallFromHMode)
        )
    );

    // get mask of implemented interrupts visible in User mode
    Uns64 uInterrupts = (
        hInterrupts &
        ~(
            getInterruptMask(riscv_E_HSWInterrupt)       |
            getInterruptMask(riscv_E_HTimerInterrupt)    |
            getInterruptMask(riscv_E_HExternalInterrupt)
        )
    );

    //--------------------------------------------------------------------------
    // mie, medeleg, sedeleg, mideleg, sideleg masks
    //--------------------------------------------------------------------------

    // override enable masks
    SET_CSR_MASK_V(riscv, mie, mInterrupts);

    // override delegation masks
    SET_CSR_MASK_V(riscv, medeleg, sExceptions);
    SET_CSR_MASK_V(riscv, sedeleg, uExceptions);
    SET_CSR_MASK_V(riscv, mideleg, sInterrupts);
    SET_CSR_MASK_V(riscv, sideleg, uInterrupts);

    //--------------------------------------------------------------------------
    // sedeleg, sideleg initial values (N extension and no Supervisor mode)
    //--------------------------------------------------------------------------

    if((arch&ISA_SorN) == ISA_N) {
        WR_CSR(riscv, sedeleg, -1);
        WR_CSR(riscv, sideleg, -1);
    }

     //--------------------------------------------------------------------------
    // mtvec, stvec, utvec masks and initial value
    //--------------------------------------------------------------------------

    // use defined masks from configuration
    Uns64 mtvecMask = (cfg->csrMask.mtvec.u64.bits ? : -1) & WM64_mtvec;
    Uns64 stvecMask = (cfg->csrMask.stvec.u64.bits ? : -1) & WM64_stvec;
    Uns64 utvecMask = (cfg->csrMask.utvec.u64.bits ? : -1) & WM64_utvec;

    // mtvec may be read only, if mtvec_is_ro parameter is set
    if(cfg->mtvec_is_ro) {mtvecMask = 0;}

    // set mtvec, stvec, utvec masks
    SET_CSR_MASK_V(riscv, mtvec, mtvecMask);
    SET_CSR_MASK_V(riscv, stvec, stvecMask);
    SET_CSR_MASK_V(riscv, utvec, utvecMask);

    // set mtvec initial value
    WR_CSR(riscv, mtvec, cfg->csr.mtvec.u64.bits);

    //--------------------------------------------------------------------------
    // mcause, scause, ucause masks
    //--------------------------------------------------------------------------

    // use defined masks from configuration
    Uns32 causeMask32 = cfg->csrMask.cause.u32.bits ? : -1;
    Uns64 causeMask64 = cfg->csrMask.cause.u64.bits ? : -1;

    // set mcause, scause, ucause masks (per instruction length)
    SET_CSR_MASK_V_32(riscv, mcause, causeMask32);
    SET_CSR_MASK_V_32(riscv, scause, causeMask32);
    SET_CSR_MASK_V_32(riscv, ucause, causeMask32);
    SET_CSR_MASK_V_64(riscv, mcause, causeMask64);
    SET_CSR_MASK_V_64(riscv, scause, causeMask64);
    SET_CSR_MASK_V_64(riscv, ucause, causeMask64);

    //--------------------------------------------------------------------------
    // mcounteren, scounteren masks
    //--------------------------------------------------------------------------

    Uns32 counterenMask = WM32_counteren_HPM;

    // CY, TM and IR bits are writable only if the cycle, time and instret
    // registers are defined
    if(!cfg->cycle_undefined) {
        counterenMask |= WM32_counteren_CY;
    }
    if(!cfg->time_undefined) {
        counterenMask |= WM32_counteren_TM;
    }
    if(!cfg->instret_undefined) {
        counterenMask |= WM32_counteren_IR;
    }

    // set mcounteren, scounteren masks
    SET_CSR_MASK_V(riscv, mcounteren, counterenMask);
    SET_CSR_MASK_V(riscv, scounteren, counterenMask);

    //--------------------------------------------------------------------------
    // scounteren implied value
    //--------------------------------------------------------------------------

    // if User mode is present but not Supervisor mode, scounteren has an
    // implied value of -1 (allowing User mode access to any timer that is
    // permitted by mcounteren)
    if((arch&ISA_U) && !(arch&ISA_S)) {
        WR_CSR(riscv, scounteren, -1);
    }
}

//
// Free CSR state
//
void riscvCSRFree(riscvP riscv) {

    // free CSR lookup table
    vmirtFreeRangeTable(&riscv->csrTable);

    // free CSR message range table
    vmirtFreeRangeTable(&riscv->csrUIMessage);
}


////////////////////////////////////////////////////////////////////////////////
// DISASSEMBLER INTERFACE ACCESS FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Return CSR name for the given index number (or NULL if undefined)
//
const char *riscvGetCSRName(riscvP riscv, Uns32 csrNum) {

    riscvCSRAttrsCP attrs = getCSRAttrs(riscv, csrNum);

    return attrs ? attrs->name : 0;
}


////////////////////////////////////////////////////////////////////////////////
// DEBUG INTERFACE ACCESS FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Read a CSR given its id
//
Bool riscvReadCSR(riscvCSRAttrsCP attrs, riscvP riscv, void *buffer) {

    riscvArchitecture arch     = riscv->configInfo.arch;
    Uns32             bits     = riscvGetXlenArch(riscv);
    Bool              is64Bit  = (bits==64);
    void             *rawValue = getCSRRegValue(attrs, riscv);
    Bool              ok       = !getMissingCSRFeatures(attrs, arch, True);

    if(ok) {

        // switch state to architectural one before read
        toConfiguredArch(attrs, riscv);

        // get read callback function
        riscvCSRReadFn readCB = getCSRReadCB(attrs, riscv, bits, False);

        // this function should only be used when there is a read callback
        VMI_ASSERT(readCB, "require read callback");

        // read value, indicating an artifact access
        riscv->artifactAccess = True;
        Uns64 value = readCB(attrs, riscv);
        riscv->artifactAccess = False;

        // assign to buffer of correct size
        if(is64Bit) {
            *(Uns64*)buffer = value;
        } else {
            *(Uns32*)buffer = value;
        }

        // update raw value if register is implemented externally
        if(!rawValue) {
            // no action
        } else if(!csrImplementExternalRead(attrs, riscv)) {
            // no action
        } else if(is64Bit) {
            *(Uns64*)rawValue = value;
        } else {
            *(Uns32*)rawValue = value;
        }

        // switch state to architectural one before read
        fromConfiguredArch(attrs, riscv);

    } else {

        // read failure
        if(is64Bit) {
            *(Uns64*)buffer = 0;
        } else {
            *(Uns32*)buffer = 0;
        }
    }

    return ok;
}

//
// Write a CSR given its id
//
Bool riscvWriteCSR(riscvCSRAttrsCP attrs, riscvP riscv, const void *buffer) {

    riscvArchitecture arch     = riscv->configInfo.arch;
    Uns32             bits     = riscvGetXlenArch(riscv);
    Bool              is64Bit  = (bits==64);
    void             *rawValue = getCSRRegValue(attrs, riscv);
    Bool              ok       = !getMissingCSRFeatures(attrs, arch, True);

    if(ok) {

        Uns64 newValue;

        // get new value to be written
        if(is64Bit) {
            newValue = *(const Uns64 *)buffer;
        } else {
            newValue = *(const Uns32 *)buffer;
        }

        // switch state to architectural one before read
        toConfiguredArch(attrs, riscv);

        // get any write callback function
        riscvCSRWriteFn writeCB = getCSRWriteCB(attrs, riscv, bits);

        if(writeCB) {

            // write value using callback, indicating an artifact access
            riscv->artifactAccess = True;
            writeCB(attrs, riscv, newValue);
            riscv->artifactAccess = False;

        } else if(rawValue) {

            // write value directly
            Uns64 writeMask = getCSRWriteMask(attrs, riscv);
            Uns64 oldValue;

            if(is64Bit) {
                oldValue = *(Uns64*)rawValue;
            } else {
                oldValue = *(Uns32*)rawValue;
            }

            newValue = (newValue & writeMask) | (oldValue & ~writeMask);

            if(is64Bit) {
                *(Uns64*)rawValue = newValue;
            } else {
                *(Uns32*)rawValue = newValue;
            }
        }

        // update raw value if register is implemented externally
        if(!rawValue) {
            // no action
        } else if(!csrImplementExternalWrite(attrs, riscv)) {
            // no action
        } else if(is64Bit) {
            *(Uns64*)rawValue = newValue;
        } else {
            *(Uns32*)rawValue = newValue;
        }

        // switch state to architectural one before read
        fromConfiguredArch(attrs, riscv);
    }

    return ok;
}


////////////////////////////////////////////////////////////////////////////////
// MORPH-TIME INTERFACE ACCESS FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Emit warning on first access to an unimplemented CSR
//
static void warnUnimplementedCSR(riscvCSRAttrsCP attrs, riscvP riscv) {

    Uns32 csrNum = attrs->csrNum;

    if(!vmirtGetFirstRangeEntry(&riscv->csrUIMessage, csrNum, csrNum)) {

        vmirtInsertRangeEntry(&riscv->csrUIMessage, csrNum, csrNum, 0);

        vmiMessage("W", CPU_PREFIX"_UICSR",
            SRCREF_FMT
            "Unimplemented CSR (hardwired to zero)",
            SRCREF_ARGS(riscv, getPC(riscv))
        );
    }
}

//
// Emit warning on first access to an unimplemented CSR
//
static void emitWarnUnimplementedCSR(riscvCSRAttrsCP attrs, riscvP riscv) {

    if(riscv->verbose) {
        vmimtArgNatAddress(attrs);
        vmimtArgProcessor();
        vmimtCall((vmiCallFn)warnUnimplementedCSR);
    }
}

//
// Validate CSR with the given index can be accessed for read or write in the
// current processor mode, and return either a true CSR id or an error code id
//
riscvCSRAttrsCP riscvValidateCSRAccess(
    riscvP riscv,
    Uns32  csrNum,
    Bool   read,
    Bool   write
) {
    riscvArchitecture arch   = riscv->currentArch;
    CSRFields         fields = {csrNum};
    riscvCSRAttrsCP   attrs  = getCSRAttrs(riscv, csrNum);
    riscvArchitecture missing;

    if(!attrs) {

        // CSR is not implemented
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "CSR_UNIMP", "Unimplemented CSR");
        return 0;

    } else if((missing=getMissingCSRFeatures(attrs, arch, True))) {

        // CSR requires missing or disabled features
        riscvRequireArchPresentMT(riscv, missing);
        return 0;

    } else if(write && !(getAccess(attrs) & vmi_RA_W)) {

        // CSR does not have write access
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "CSR_NWA", "CSR has no write access");
        return 0;

    } else if(getCurrentMode(riscv)<fields.mode) {

        // CSR cannot be accessed in the current mode
        riscvEmitIllegalInstructionMode(riscv);
        return 0;

    } else {

        // CSR access ok
        return attrs;
    }
}

//
// Emit code to read a CSR
//
void riscvEmitCSRRead(
    riscvCSRAttrsCP attrs,
    riscvP          riscv,
    vmiReg          rd,
    Bool            isWrite
) {
    riscvArchitecture arch   = riscv->currentArch;
    Uns32             bits   = riscvGetXlenMode(riscv);
    riscvCSRReadFn    readCB = getCSRReadCB(attrs, riscv, bits, isWrite);
    vmiReg            raw    = getRawArch(attrs, arch);

    // indicate that this register has been read
    vmimtRegReadImpl(attrs->name);

    if(readCB) {

        // if CSR is implemented externally, mirror the result into any raw
        // register in the model (otherwise discard the result)
        if(!csrImplementExternalRead(attrs, riscv)) {
            raw = VMI_NOREG;
        }

        // emit code to call the write function
        vmimtArgNatAddress(attrs);
        vmimtArgProcessor();
        vmimtCallResult((vmiCallFn)readCB, bits, rd);
        vmimtMoveRR(bits, raw, rd);

    } else if(VMI_ISNOREG(raw)) {

        // emit warning for unimplemented CSR
        emitWarnUnimplementedCSR(attrs, riscv);
        vmimtMoveRC(bits, rd, 0);

    } else {

        // simple register read
        vmimtMoveRR(bits, rd, raw);
    }
}

//
// Emit code to write a CSR, returning any architectural constraints
//
riscvArchitecture riscvEmitCSRWrite(
    riscvCSRAttrsCP attrs,
    riscvP          riscv,
    vmiReg          rs,
    vmiReg          tmp
) {
    riscvArchitecture arch    = riscv->currentArch;
    Uns32             bits    = riscvGetXlenMode(riscv);
    riscvCSRWriteFn   writeCB = getCSRWriteCB(attrs, riscv, bits);
    vmiReg            raw     = getRawArch(attrs, arch);
    Uns64             mask    = getCSRWriteMask(attrs, riscv);

    // indicate that this register has been written
    vmimtRegWriteImpl(attrs->name);

    if(writeCB) {

        // if CSR is implemented externally, mirror the result into any raw
        // register in the model (otherwise discard the result)
        if(!csrImplementExternalWrite(attrs, riscv)) {
            raw = VMI_NOREG;
        }

        // emit code to call the write function (NOTE: argument is always 64
        // bits, irrespective of the architecture size)
        vmimtArgNatAddress(attrs);
        vmimtArgProcessor();
        vmimtArgRegSimAddress(bits, rs);
        vmimtCallResult((vmiCallFn)writeCB, bits, raw);

        // terminate the current block if required
        if(attrs->wEndBlock || attrs->wEndRM) {
            vmimtEndBlock();
        }

    } else if(VMI_ISNOREG(raw)) {

        // emit warning for unimplemented CSR
        emitWarnUnimplementedCSR(attrs, riscv);

    } else if(mask==-1) {

        // new value is written unmasked
        vmimtMoveRR(bits, raw, rs);

    } else if(mask) {

        // apparent reads of register below are artifacts only
        vmimtRegNotReadR(bits, raw);

        // new value is written masked
        vmimtBinopRC(bits, vmi_ANDN, raw, mask, 0);
        vmimtBinopRRC(bits, vmi_AND, tmp, rs, mask, 0);
        vmimtBinopRR(bits, vmi_OR, raw, tmp, 0);
    }

    // return architectural constraints that apply to this register
    return attrs->arch;
}


////////////////////////////////////////////////////////////////////////////////
// CSR ITERATOR
////////////////////////////////////////////////////////////////////////////////

//
// Iterator filling 'details' with the next CSR register details -
// 'details.name' should be initialized to NULL prior to the first call
//
Bool riscvGetCSRDetails(riscvP riscv, riscvCSRDetailsP details, Bool normal) {

    riscvArchitecture arch  = riscv->configInfo.arch;
    riscvCSRAttrsCP   attrs = details->attrs;
    Uns32             bits  = riscvGetXlenArch(riscv);

    while((attrs=getNextCSR(attrs, riscv))) {

        if(!getMissingCSRFeatures(attrs, arch, normal)) {

            // fill basic details
            details->attrs  = attrs;
            details->mode   = getCSRMode(attrs, arch);
            details->raw    = getRawArch(attrs, arch);
            details->access = getAccess(attrs);

            // indicate whether raw read access is possible
            details->rdRaw = (
                (details->access & vmi_RA_R) &&
                !getCSRReadCB(attrs, riscv, bits, False)
            );

            // indicate whether raw write access is possible
            details->wrRaw = (
                (details->access & vmi_RA_W) &&
                !getCSRWriteCB(attrs, riscv, bits) &&
                !getWriteMaskCArch(attrs, arch) &&
                VMI_ISNOREG(getWriteMaskVArch(attrs, arch))
            );

            // indicate whether this is an extension library register
            details->extension = attrs->object;

            return True;
        }
    }

    return False;
}


////////////////////////////////////////////////////////////////////////////////
// SAVE/RESTORE SUPPORT
////////////////////////////////////////////////////////////////////////////////

//
// Save CSR state not covered by register read/write API
//
void riscvCSRSave(
    riscvP              riscv,
    vmiSaveContextP     cxt,
    vmiSaveRestorePhase phase
) {
    switch(phase) {

        case SRT_BEGIN:
            // start of SMP cluster
            break;

        case SRT_BEGIN_CORE:
            // start of individual core
           break;

        case SRT_END_CORE:
            // end of individual core
            VMIRT_SAVE_FIELD(cxt, riscv, baseCycles);
            VMIRT_SAVE_FIELD(cxt, riscv, baseInstructions);
            break;

        case SRT_END:
            // end of SMP cluster
            break;

        default:
            // not reached
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }
}

//
// Restore CSR state not covered by register read/write API
//
void riscvCSRRestore(
    riscvP              riscv,
    vmiRestoreContextP  cxt,
    vmiSaveRestorePhase phase
) {
    switch(phase) {

        case SRT_BEGIN:
            // start of SMP cluster
            break;

        case SRT_BEGIN_CORE:
            // start of individual core
            break;

        case SRT_END_CORE:
            // end of individual core
            VMIRT_RESTORE_FIELD(cxt, riscv, baseCycles);
            VMIRT_RESTORE_FIELD(cxt, riscv, baseInstructions);
            break;

        case SRT_END:
            // end of SMP cluster
            break;

        default:
            // not reached
            VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            break;
    }
}

