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
#include "riscvBlockState.h"
#include "riscvCSRTypes.h"
#include "riscvDecode.h"
#include "riscvDecodeTypes.h"
#include "riscvExceptions.h"
#include "riscvFunctions.h"
#include "riscvMessage.h"
#include "riscvMorph.h"
#include "riscvRegisters.h"
#include "riscvSoftFloat.h"
#include "riscvStructure.h"
#include "riscvTypeRefs.h"
#include "riscvUtils.h"
#include "riscvVM.h"


////////////////////////////////////////////////////////////////////////////////
// TYPES
////////////////////////////////////////////////////////////////////////////////

//
// Generic JIT code emission callback
//
#define RISCV_MORPH_FN(_NAME) void _NAME(riscvMorphStateP state)
typedef RISCV_MORPH_FN((*riscvMorphFn));

//
// Floating point control
//
typedef enum riscvFPCtrlE {

    // normal native operation configuration
    RVFP_NORMAL,

    // FMIN/FMAX configurations
    RVFP_FMIN,      // special for FMIN (2.2 specification)
    RVFP_FMAX,      // special for FMAX (2.2 specification)
    RVFP_FMIN_2_3,  // special for FMIN (2.3 specification)
    RVFP_FMAX_2_3,  // special for FMAX (2.3 specification)

    // Emulated operations (FMM rounding)
    RVFP_FADD,
    RVFP_FSUB,
    RVFP_FMUL,
    RVFP_FDIV,
    RVFP_FSQRT,
    RVFP_FMADD,
    RVFP_FMSUB,
    RVFP_FNMADD,
    RVFP_FNMSUB,

    // Emulated conversion operations (FMM rounding)
    RVFP_CVT,       // generic control value
    RVFP_CVTIF32,   // convert from F32 to I32/I64
    RVFP_CVTUF32,   // convert from F32 to U32/U64
    RVFP_CVTFF64,   // convert from F64 to F32
    RVFP_CVTIF64,   // convert from F64 to I32/I64
    RVFP_CVTUF64,   // convert from F64 to U32/U64
    RVFP_CVTFI32,   // convert from I32 to F32/F64
    RVFP_CVTFI64,   // convert from I64 to F32/F64
    RVFP_CVTFU32,   // convert from U32 to F32/F64
    RVFP_CVTFU64,   // convert from U64 to F32/F64

    RVFP_LAST       // KEEP LAST

} riscvFPCtrl;

//
// Attributes controlling JIT code translation
//
typedef struct riscvMorphAttrS {
    riscvMorphFn          morph;        // function to translate one instruction
    octiaInstructionClass iClass;       // supplemental instruction class
    vmiBinop              binop    : 8; // integer binary operation
    vmiFUnop              fpUnop   : 8; // floating-point unary operation
    vmiFBinop             fpBinop  : 8; // floating-point binary operation
    vmiFTernop            fpTernop : 8; // floating-point ternary operation
    riscvFPCtrl           fpConfig : 8; // floating point configuration
    riscvFPCtrl           fpRMMCfg : 8; // floating point configuration (RMM)
    vmiFPRelation         fpRel    : 4; // floating point comparison relation
    vmiCondition          cond     : 4; // comparison condition
    Bool                  fpQNaNOk : 1; // allow QNaN in floating point compare?
    Bool                  clearFS1 : 1; // clear FS1 sign (FSgn operation)
    Bool                  negFS2   : 1; // negate FS2 sign (FSgn operation)
} riscvMorphAttr;

//
// Context for JIT code translation (decoded instruction information and
// translation attributes)
//
typedef struct riscvMorphStateS {
    riscvInstrInfo   info;          // decoded instruction information
    riscvMorphAttrCP attrs;         // instruction attributes
    riscvP           riscv;         // current processor
    Bool             inDelaySlot;   // whether in delay slot
} riscvMorphState;


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
// Return endian for data accesses
//
inline static memEndian getDataEndian(riscvP riscv) {
    return riscv->dendian;
}

//
// Is the given vmiReg the link register?
//
static Bool isLR(vmiReg r) {
    return VMI_REG_EQUAL(r, RISCV_LR);
}

//
// Disable instruction translation (test mode)
//
inline static Bool disableMorph(riscvMorphStateP state) {
    return RISCV_DISASSEMBLE(state->riscv);
}

//
// Get the currently-enabled architectural features
//
static riscvArchitecture getCurrentArch(riscvP riscv) {
    return riscv->currentArch;
}


////////////////////////////////////////////////////////////////////////////////
// ILLEGAL INSTRUCTION HANDLING (REQUIRING PROCESSOR ONLY)
////////////////////////////////////////////////////////////////////////////////

//
// Emit call to take Illegal Instruction exception
//
static void emitIllegalInstruction(void) {
    vmimtArgProcessor();
    vmimtCallAttrs((vmiCallFn)riscvIllegalInstruction, VMCA_EXCEPTION);
}

//
// Emit Illegal Instruction description message
//
static void illegalInstructionMessageDesc(riscvP riscv, illegalDescP desc) {
    vmiMessage("W", desc->id,
        SRCREF_FMT "%s",
        SRCREF_ARGS(riscv, getPC(riscv)),
        desc->detail
    );
}

//
// Emit Illegal Instruction message and take Illegal Instruction exception
//
void riscvEmitIllegalInstructionMessageDesc(riscvP riscv, illegalDescP desc) {

    // emit message in verbose mode
    if(riscv->verbose) {
        vmimtArgProcessor();
        vmimtArgNatAddress(desc);
        vmimtCall((vmiCallFn)illegalInstructionMessageDesc);
    }

    // take Illegal Instruction exception
    emitIllegalInstruction();
}

//
// Get description for the first feature identified by the given feature id
//
static const char *getFeatureDesc(riscvArchitecture feature) {

    // get feature description
    const char *description = riscvGetFeatureName(feature);

    // sanity check description is valid
    VMI_ASSERT(
        description,
        "require non-zero feature name (feature %c)",
        riscvGetFeatureChar(feature)
    );

    return description;
}

//
// Take Illegal Instruction exception when feature is absent or not enabled
//
static void illegalInstructionAbsentArch(
    riscvP            riscv,
    riscvArchitecture missing
) {
    // report the absent or disabled feature by name
    if(riscv->verbose) {
        vmiMessage("W", CPU_PREFIX "_ADF",
            SRCREF_FMT "Illegal instruction - %s absent or inactive",
            SRCREF_ARGS(riscv, getPC(riscv)),
            getFeatureDesc(missing)
        );
    }

    // take Illegal Instruction exception
    riscvIllegalInstruction(riscv);
}

//
// Take Illegal Instruction exception when feature is present
//
static void illegalInstructionPresentArch(
    riscvP            riscv,
    riscvArchitecture present
) {
    // report the absent or disabled feature by name
    if(riscv->verbose) {
        vmiMessage("W", CPU_PREFIX "_EFE",
            SRCREF_FMT "Illegal instruction - %s present",
            SRCREF_ARGS(riscv, getPC(riscv)),
            getFeatureDesc(present)
        );
    }

    // take Illegal Instruction exception
    riscvIllegalInstruction(riscv);
}

//
// Emit code to take Illegal Instruction exception when feature is absent or not
// enabled
//
static void emitIllegalInstructionAbsentArch(riscvArchitecture missing) {
    vmimtArgProcessor();
    vmimtArgUns32(missing);
    vmimtCallAttrs((vmiCallFn)illegalInstructionAbsentArch, VMCA_EXCEPTION);
}

//
// Emit code to take Illegal Instruction exception when feature is present
//
static void emitIllegalInstructionPresentArch(riscvArchitecture present) {
    vmimtArgProcessor();
    vmimtArgUns32(present);
    vmimtCallAttrs((vmiCallFn)illegalInstructionPresentArch, VMCA_EXCEPTION);
}

//
// Emit code to indicate that a custom instruction is not present if verbose
//
static void emitCustomAbsent() {
    emitIllegalInstructionAbsentArch(ISA_X);
}

//
// Use block mask to validate the value of architectural features that can
// change at run time
//
static void emitBlockMask(riscvP riscv, riscvArchitecture feature) {

    // instruction width is implemented using a different code dictionary,
    // so block mask check is not required
    feature &= ~ISA_XLEN_ANY;

    // select features that can change dynamically (note that D and F features
    // can be enabled or disabled by mstatus.FS, so are included here even if
    // the misa configuration bits are read-only)
    feature &= (riscv->configInfo.archMask | ISA_DF);

    // emit block mask check for dynamic features
    if(feature) {
        vmimtValidateBlockMask(feature);
    }
}

//
// Determine if the given required feature is present and enabled (using
// blockMask if necessary)
//
static Bool isFeaturePresentMT(riscvP riscv, riscvArchitecture feature) {

    riscvArchitecture current = getCurrentArch(riscv);
    riscvArchitecture actual  = current & feature;
    riscvArchitecture present = feature & actual;

    // validate values of fields that can change at run time
    emitBlockMask(riscv, feature);

    return present;
}

//
// Validate that the given required feature is present and enabled (using
// blockMask if necessary)
//
Bool riscvRequireArchPresentMT(riscvP riscv, riscvArchitecture feature) {

    riscvArchitecture current = getCurrentArch(riscv);
    riscvArchitecture actual  = current & feature;
    riscvArchitecture absent  = feature & ~actual;

    // validate values of fields that can change at run time
    emitBlockMask(riscv, feature);

    // handle absent or disabled feature
    if(absent) {
        emitIllegalInstructionAbsentArch(absent);
    }

    return !absent;
}

//
// Validate that the given required feature is absent
//
Bool riscvRequireArchAbsentMT(riscvP riscv, riscvArchitecture feature) {

    riscvArchitecture current = getCurrentArch(riscv);
    riscvArchitecture actual  = current & feature;
    riscvArchitecture present = feature & actual;

    // handle present feature
    if(present) {
        emitIllegalInstructionPresentArch(present);
    }

    return !present;
}

//
// Validate that the given required feature is enabled (using blockMask if
// necessary)
//
static Bool requireMISAMT(riscvP riscv, char feature) {

    // sanity check missing is valid
    VMI_ASSERT(feature, "require non-zero feature letter");

    return riscvRequireArchPresentMT(riscv, 1<<(feature-'A'));
}

//
// Validate that the instruction is supported and enabled and take an Illegal
// Instruction exception if not
//
Bool riscvInstructionEnabled(riscvP riscv, riscvArchitecture requiredVariant) {

    // get current XLEN
    Uns32             XLEN     = riscvGetXlenMode(riscv);
    riscvArchitecture XLENarch = (XLEN==32) ? ISA_XLEN_32 : ISA_XLEN_64;

    // check whether instruction is supported for the current XLEN
    if(!(requiredVariant & XLENarch)) {
        emitIllegalInstructionAbsentArch(requiredVariant & ISA_XLEN_ANY);
        return False;
    }

    // validate remaining architectural feature requirements
    return riscvRequireArchPresentMT(riscv, requiredVariant & ~ISA_XLEN_ANY);
}

//
// Emit Illegal Instruction because the current mode has insufficient
// privilege
//
void riscvEmitIllegalInstructionMode(riscvP riscv) {

    riscvMode mode = getCurrentMode(riscv);

    switch(mode) {
        case RISCV_MODE_SUPERVISOR:
            ILLEGAL_INSTRUCTION_MESSAGE(riscv, "UDM", "Illegal in Supervisor mode");
            break;
        case RISCV_MODE_USER:
            ILLEGAL_INSTRUCTION_MESSAGE(riscv, "UDM", "Illegal in User mode");
            break;
        default:
            VMI_ABORT("Unexpected mode %u", mode); // LCOV_EXCL_LINE
            break;
    }
}

//
// Validate that the processor is executing at or above the given mode
//
static Bool requireModeMT(riscvP riscv, riscvMode required) {

    riscvMode actual = getCurrentMode(riscv);

    if(actual<required) {
        riscvEmitIllegalInstructionMode(riscv);
        return False;
    } else {
        return True;
    }
}

//
// Validate that the processor has Supervisor mode enabled
//
static Bool checkHaveSModeMT(riscvP riscv) {

    riscvMode actual = getCurrentMode(riscv);

    if(actual==RISCV_MODE_SUPERVISOR) {

        // always ok if currently in Supervisor mode
        return True;

    } else {

        // otherwise, require 'S' mode to be present and enabled
        return requireMISAMT(riscv, 'S');
    }
}

//
// Validate that the processor has User mode enabled
//
static Bool checkHaveUModeMT(riscvP riscv) {

    riscvMode actual = getCurrentMode(riscv);

    if(actual==RISCV_MODE_USER) {

        // always ok if currently in User mode
        return True;

    } else {

        // otherwise, require 'U' mode to be present and enabled
        return requireMISAMT(riscv, 'U');
    }
}


////////////////////////////////////////////////////////////////////////////////
// TRAPPED INSTRUCTION HANDLING
////////////////////////////////////////////////////////////////////////////////

//
// Macro encapsulating test for trapped instruction from Supervisor to Monitor
// mode when a bit is set or clear in a register
//
#define EMIT_TRAP_MASK_FIELD(_RISCV, _R, _BIT, _VALUE) \
    emitTrapInstructionMask(                \
        _RISCV,                             \
        CSR_REG_MT(_R),                     \
        WM_##_R##_##_BIT,                   \
        _VALUE ? vmi_COND_Z : vmi_COND_NZ,  \
        #_R"."#_BIT"="#_VALUE               \
    )

//
// Function called when instruction is trapped
//
static void trapInstruction(riscvP riscv, const char *reason) {

    // report the absent or disabled feature by name
    if(riscv->verbose) {
        vmiMessage("W", CPU_PREFIX "_TI",
            SRCREF_FMT "Trapped because %s",
            SRCREF_ARGS(riscv, getPC(riscv)),
            reason
        );
    }

    // take Illegal Instruction exception
    riscvIllegalInstruction(riscv);
}

//
// Emit test for Illegal Instruction instruction when a bit is set or clear in a
// register
//
static void emitTrapInstructionMask(
    riscvP       riscv,
    vmiReg       r,
    Uns32        mask,
    vmiCondition cond,
    const char  *reason
) {
    if(getCurrentMode(riscv)!=RISCV_MODE_MACHINE) {;

        vmiLabelP ok = vmimtNewLabel();

        // skip undefined instruction exception if bit is set
        vmimtTestRCJumpLabel(32, cond, r, mask, ok);

        // emit call generating Illegal Instruction exception
        vmimtArgProcessor();
        vmimtArgNatAddress(reason);
        vmimtCallAttrs((vmiCallFn)trapInstruction, VMCA_EXCEPTION);

        // here if access is legal
        vmimtInsertLabel(ok);
    }
}


////////////////////////////////////////////////////////////////////////////////
// REGISTER ACCESS
////////////////////////////////////////////////////////////////////////////////

//
// Set mstatus.FS if this is the first floating point instruction in this block
//
static void updateFS(riscvP riscv) {

    riscvBlockStateP blockState = riscv->blockState;

    if(!blockState->fpInstDone) {
        blockState->fpInstDone = True;
        vmimtBinopRC(32, vmi_OR, RISCV_CPU_REG(csr.mstatus), WM_mstatus_FS, 0);
    }
}

//
// Return VMI register for a temporary
//
static vmiReg getTmp(Uns32 i) {

    // sanity check temporary index
    VMI_ASSERT(
        i<NUM_TEMPS,
        "bad temporary index %u (maximum is %u)",
        i, NUM_TEMPS-1
    );

    return RISCV_CPU_TEMP(TMP[i]);
}

//
// Return riscvRegDesc for the indexed register
//
inline static riscvRegDesc getRVReg(riscvMorphStateP state, Uns32 argNum) {
    return state->info.r[argNum];
}

//
// Get mask for the register in a 32-bit word
//
inline static Uns32 getRegMask(riscvRegDesc r) {
    return 1 << getRIndex(r);
}

//
// Return floating point type for the given abstract register
//
static vmiFType getRegFType(riscvRegDesc r) {

    Uns32 bits = getRBits(r);

    if(isFReg(r)) {
        return VMI_FT_IEEE_754 | bits;
    } else if(isUReg(r)) {
        return VMI_FT_UNS | bits;
    } else {
        return VMI_FT_INT | bits;
    }
}

//
// Return VMI register for the given abstract register
//
vmiReg riscvGetVMIReg(riscvP riscv, riscvRegDesc r) {

    Uns32  bits   = getRBits(r);
    Uns32  index  = getRIndex(r);
    vmiReg result = VMI_NOREG;

    if(isXReg(r)) {

        // 64-bit register requires ISA_XLEN_64 feature
        if(bits==64) {
            riscvRequireArchPresentMT(riscv, ISA_XLEN_64);
        }

        // register indices >= 15 are illegal for E extension (this does not
        // conform to other features, because E actually indicates a *reduced*
        // capability)
        if((index<16) || riscvRequireArchAbsentMT(riscv, ISA_E)) {
            result = index ? RISCV_GPR(index) : VMI_NOREG;
        }

    } else if(isFReg(r)) {

        // require either D or F
        if(riscvRequireArchPresentMT(riscv, (bits==64) ? ISA_D : ISA_F)) {
            result = RISCV_FPR(index);
        }

    } else {

        VMI_ABORT("Bad register specifier 0x%x", r); // LCOV_EXCL_LINE
    }

    return result;
}

//
// Return VMI register for the given abstract register
//
inline static vmiReg getVMIReg(riscvP riscv, riscvRegDesc r) {
    return riscvGetVMIReg(riscv, r);
}

//
// Do actions when a register is written (sign extending or NaN boxing, if
// required)
//
void riscvWriteRegSize(riscvP riscv, riscvRegDesc r, Uns32 srcBits) {

    vmiReg dst = getVMIReg(riscv, r);

    if(isXReg(r)) {

        Uns32 dstBits = riscvGetXlenArch(riscv);

        // sign-extend result
        vmimtMoveExtendRR(dstBits, dst, srcBits, dst, True);

        // add to record of X registers written by this instruction
        riscv->writtenXMask |= getRegMask(r);

    } else if(isFReg(r)) {

        riscvBlockStateP blockState = riscv->blockState;
        Uns32            dstBits    = riscvGetFlenArch(riscv);
        Uns32            fprMask    = getRegMask(r);

        // NaN-box result
        if(dstBits>srcBits) {
            vmimtMoveRC(dstBits-srcBits, VMI_REG_DELTA(dst,srcBits/8), -1);
            blockState->fpNaNBoxMask |= fprMask;
        } else {
            blockState->fpNaNBoxMask &= ~fprMask;
        }

        // set mstatus.FS
        updateFS(riscv);

    } else {

        VMI_ABORT("Bad register specifier 0x%x", r); // LCOV_EXCL_LINE
    }
}

//
// Do actions when a register is written (sign extending or NaN boxing, if
// required)
//
inline static void writeRegSize(riscvP riscv, riscvRegDesc r, Uns32 srcBits) {
    riscvWriteRegSize(riscv, r, srcBits);
}

//
// Do actions when a register is written (sign extending or NaN boxing, if
// required) using the derived register size
//
void riscvWriteReg(riscvP riscv, riscvRegDesc r) {
    writeRegSize(riscv, r, getRBits(r));
}

//
// Do actions when a register is written (sign extending or NaN boxing, if
// required) using the derived register size
//
inline static void writeReg(riscvP riscv, riscvRegDesc r) {
    riscvWriteReg(riscv, r);
}


////////////////////////////////////////////////////////////////////////////////
// LOAD/STORE UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// Load value from memory
//
static void emitLoadCommon(
    riscvMorphStateP state,
    vmiReg           rd,
    Uns32            rdBits,
    vmiReg           ra,
    memConstraint    constraint
) {
    Uns32     memBits = state->info.memBits;
    Uns64     offset  = state->info.c;
    Bool      sExtend = !state->info.unsExt;
    memEndian endian  = getDataEndian(state->riscv);

    vmimtLoadRRO(rdBits, memBits, offset, rd, ra, endian, sExtend, constraint);
}

//
// Store value to memory
//
static void emitStoreCommon(
    riscvMorphStateP state,
    vmiReg           rs,
    vmiReg           ra,
    memConstraint    constraint
) {
    Uns32     memBits = state->info.memBits;
    Uns64     offset  = state->info.c;
    memEndian endian  = getDataEndian(state->riscv);

    vmimtStoreRRO(memBits, offset, ra, rs, endian, constraint);
}


////////////////////////////////////////////////////////////////////////////////
// BASE INSTRUCTION CALLBACKS
////////////////////////////////////////////////////////////////////////////////

//
// No operation
//
static RISCV_MORPH_FN(emitNOP) {
    // no action
}

//
// Move value (two registers)
//
static RISCV_MORPH_FN(emitMoveRR) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc rsA   = getRVReg(state, 1);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       rs    = getVMIReg(riscv, rsA);
    Uns32        bits  = getRBits(rdA);

    vmimtMoveRR(bits, rd, rs);

    writeReg(riscv, rdA);
}

//
// Move value (one register and constant)
//
static RISCV_MORPH_FN(emitMoveRC) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    Uns32        bits  = getRBits(rdA);
    Uns64        c     = state->info.c;

    vmimtMoveRC(bits, rd, c);

    writeReg(riscv, rdA);
}

//
// Move PC-relative constant
//
static RISCV_MORPH_FN(emitMoveRPC) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    Uns32        bits  = getRBits(rdA);
    Uns64        c     = state->info.c;

    // when in a delayed instruction context, base on that address
    if(state->inDelaySlot) {
        vmimtMoveRR(bits, rd, RISCV_JUMP_BASE);
    } else {
        vmimtMoveRSimPC(bits, rd);
    }

    vmimtBinopRC(bits, state->attrs->binop, rd, c, 0);

    writeReg(riscv, rdA);
}

//
// Implement generic Binop (three registers)
//
static RISCV_MORPH_FN(emitBinopRRR) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc rs1A  = getRVReg(state, 1);
    riscvRegDesc rs2A  = getRVReg(state, 2);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       rs1   = getVMIReg(riscv, rs1A);
    vmiReg       rs2   = getVMIReg(riscv, rs2A);
    Uns32        bits  = getRBits(rdA);

    vmimtBinopRRR(bits, state->attrs->binop, rd, rs1, rs2, 0);

    writeReg(riscv, rdA);
}

//
// Implement generic Mulop (three registers, selecting result upper half)
//
static RISCV_MORPH_FN(emitMulopHRRR) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc rs1A  = getRVReg(state, 1);
    riscvRegDesc rs2A  = getRVReg(state, 2);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       rs1   = getVMIReg(riscv, rs1A);
    vmiReg       rs2   = getVMIReg(riscv, rs2A);
    Uns32        bits  = getRBits(rdA);

    vmimtMulopRRR(bits, state->attrs->binop, rd, VMI_NOREG, rs1, rs2, 0);

    writeReg(riscv, rdA);
}

//
// Do arithmetic negation of rH:rL and return the upper half of the result
//
static Uns64 doNEG128H(Uns64 rL, Uns64 rH) {

    // bitwise negate value
    rH = ~rH;
    rL = ~rL;

    // increment bitwise-negated value
    rL += 1;
    if(!rL) {rH++;}

    // return result upper half
    return rH;
}

//
// Emit code to negate the given register
//
static void emitNegate(Uns32 bits, vmiReg rL, vmiReg rH) {

    if(bits<=64) {

        // implement using VMI primitive
        vmimtUnopRR(bits, vmi_NEG, rL, rL, 0);

    } else if(bits==128) {

        // implement using embedded call (updating only
        vmimtArgReg(64, rL);
        vmimtArgReg(64, rH);
        vmimtCallResultAttrs((vmiCallFn)doNEG128H, 64, rH, VMCA_PURE);

    } else {

        // report unimplemented bits
        VMI_ABORT("Bad bits %u", bits); // LCOV_EXCL_LINE
    }
}

//
// Implement MULHSU instruction  (three registers, selecting result upper half)
//
static RISCV_MORPH_FN(emitMULHSU) {

    riscvP       riscv    = state->riscv;
    riscvRegDesc rdA      = getRVReg(state, 0);
    riscvRegDesc rs1A     = getRVReg(state, 1);
    riscvRegDesc rs2A     = getRVReg(state, 2);
    vmiReg       rd       = getVMIReg(riscv, rdA);
    vmiReg       rs1      = getVMIReg(riscv, rs1A);
    vmiReg       rs2      = getVMIReg(riscv, rs2A);
    Uns32        bits     = getRBits(rdA);
    vmiReg       flag     = getTmp(0);
    vmiReg       temprs1  = getTmp(1);
    vmiReg       resultHL = getTmp(1);
    vmiReg       resultL  = resultHL;
    vmiReg       resultH  = VMI_REG_DELTA(resultHL, bits/8);
    vmiLabelP    pos1     = vmimtNewLabel();
    vmiLabelP    pos2     = vmimtNewLabel();

    // determine if rs1 is negative
    vmimtCompareRC(bits, vmi_COND_L, rs1, 0, flag);

    // negate rs1 if it is negative
    vmimtMoveRR(bits, temprs1, rs1);
    vmimtCondJumpLabel(flag, False, pos1);
    vmimtUnopRR(bits, vmi_NEG, temprs1, temprs1, 0);
    vmimtInsertLabel(pos1);

    // unsigned multiply (rs1 * rs2)
    vmimtMulopRRR(bits, vmi_MUL, resultH, resultL, temprs1, rs2, 0);

    // negate rd if rs1 was negative
    vmimtCondJumpLabel(flag, False, pos2);
    emitNegate(bits*2, resultL, resultH);
    vmimtInsertLabel(pos2);

    // save result
    vmimtMoveRR(bits, rd, resultH);

    writeReg(riscv, rdA);
}

//
// Implement generic Cmpop (three registers)
//
static RISCV_MORPH_FN(emitCmpopRRR) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc rs1A  = getRVReg(state, 1);
    riscvRegDesc rs2A  = getRVReg(state, 2);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       rs1   = getVMIReg(riscv, rs1A);
    vmiReg       rs2   = getVMIReg(riscv, rs2A);
    Uns32        bits  = getRBits(rdA);

    vmimtCompareRR(bits, state->attrs->cond, rs1, rs2, rd);

    writeRegSize(riscv, rdA, 8);
}

//
// Implement generic Binop (two registers and constant)
//
static RISCV_MORPH_FN(emitBinopRRC) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc rs1A  = getRVReg(state, 1);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       rs1   = getVMIReg(riscv, rs1A);
    Uns32        bits  = getRBits(rdA);
    Uns64        c     = state->info.c;

    vmimtBinopRRC(bits, state->attrs->binop, rd, rs1, c, 0);

    writeReg(riscv, rdA);
}

//
// Implement generic Cmpop (two registers and constant)
//
static RISCV_MORPH_FN(emitCmpopRRC) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc rs1A  = getRVReg(state, 1);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       rs1   = getVMIReg(riscv, rs1A);
    Uns32        bits  = getRBits(rdA);
    Uns64        c     = state->info.c;

    vmimtCompareRC(bits, state->attrs->cond, rs1, c, rd);

    writeRegSize(riscv, rdA, 8);
}

//
// Get alignment constraint for load/store operations
//
static memConstraint getLoadStoreConstraint(riscvMorphStateP state) {

    Bool unaligned = state->riscv->configInfo.unaligned;

    return unaligned ? MEM_CONSTRAINT_NONE : MEM_CONSTRAINT_ALIGNED;
}

//
// Get alignment constraint for atomic operations (must be aligned prior to
// version 2.3)
//
static memConstraint getLoadStoreConstraintA(riscvMorphStateP state) {

    riscvP riscv = state->riscv;

    if(
        (RISCV_USER_VERSION(riscv) >= RVUV_2_3) ||
        (RISCV_PRIV_VERSION(riscv) >= RVPV_1_11)
    ) {
        return getLoadStoreConstraint(state);
    } else {
        return MEM_CONSTRAINT_ALIGNED;
    }
}

//
// Load value from memory
//
static RISCV_MORPH_FN(emitLoad) {

    riscvP        riscv      = state->riscv;
    riscvRegDesc  rdA        = getRVReg(state, 0);
    riscvRegDesc  raA        = getRVReg(state, 1);
    vmiReg        rd         = getVMIReg(riscv, rdA);
    vmiReg        ra         = getVMIReg(riscv, raA);
    Uns32         rdBits     = getRBits(rdA);
    memConstraint constraint = getLoadStoreConstraint(state);

    // call common code to perform load
    emitLoadCommon(state, rd, rdBits, ra, constraint);

    writeReg(riscv, rdA);
}

//
// Store value to memory
//
static RISCV_MORPH_FN(emitStore) {

    riscvP        riscv      = state->riscv;
    riscvRegDesc  rsA        = getRVReg(state, 0);
    riscvRegDesc  raA        = getRVReg(state, 1);
    vmiReg        rs         = getVMIReg(riscv, rsA);
    vmiReg        ra         = getVMIReg(riscv, raA);
    memConstraint constraint = getLoadStoreConstraint(state);

    // call common code to perform store
    emitStoreCommon(state, rs, ra, constraint);
}

//
// Is constant target address aligned?
//
static Bool isTargetAddressAlignedC(riscvP riscv, Uns64 tgt) {

    if(!(tgt&0x2)) {

        // address is aligned
        return True;

    } else if(isFeaturePresentMT(riscv, ISA_C)) {

        // compressed instructions enabled
        return True;

    } else {

        // address is not aligned
        return False;
    }
}

//
// Take Instruction Address Misaligned exception
//
static void emitTargetAddressUnalignedC(riscvP riscv, Uns64 tgt) {

    vmiCallFn exceptCB = (vmiCallFn)riscvInstructionAddressMisaligned;

    // emit call generating Instruction Address Misaligned exception
    vmimtArgProcessor();
    vmimtArgUns64(tgt);
    vmimtCallAttrs(exceptCB, VMCA_EXCEPTION);
}

//
// Validate target address in register is aligned and take exception if not
//
static void checkTargetAddressAlignedR(riscvP riscv, Uns32 bits, vmiReg ra) {

    if(!isFeaturePresentMT(riscv, ISA_C)) {

        vmiLabelP ok       = vmimtNewLabel();
        vmiCallFn exceptCB = (vmiCallFn)riscvInstructionAddressMisaligned;

        // skip misaligned instruction exception if bit[1] is clear
        vmimtTestRCJumpLabel(32, vmi_COND_Z, ra, 0x2, ok);

        // extend target address to 64 bits
        vmiReg tmp = getTmp(0);
        vmimtMoveExtendRR(64, tmp, bits, ra, False);

        // emit call generating Illegal Instruction exception
        vmimtArgProcessor();
        vmimtArgReg(64, ra);
        vmimtCallAttrs(exceptCB, VMCA_EXCEPTION);

        // here if access is legal
        vmimtInsertLabel(ok);
    }
}

//
// Branch based on register comparison
//
static RISCV_MORPH_FN(emitBranchRR) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rs1A  = getRVReg(state, 0);
    riscvRegDesc rs2A  = getRVReg(state, 1);
    vmiReg       rs1   = getVMIReg(riscv, rs1A);
    vmiReg       rs2   = getVMIReg(riscv, rs2A);
    Uns32        bits  = getRBits(rs1A);
    Uns64        tgt   = state->info.c;
    vmiReg       tmp   = getTmp(0);

    // do comparison
    vmimtCompareRR(bits, state->attrs->cond, rs1, rs2, tmp);

    // validate target address alignment
    if(!isTargetAddressAlignedC(riscv, tgt)) {

        vmiLabelP noBranch = vmimtNewLabel();

        // skip alignment test if condition is False
        vmimtCondJumpLabel(tmp, False, noBranch);

        // take Instruction Address Misaligned exception
        emitTargetAddressUnalignedC(riscv, tgt);

        // here if address is aligned
        vmimtInsertLabel(noBranch);
    }

    // do branch
    vmimtCondJump(tmp, True, 0, tgt, VMI_NOREG, vmi_JH_RELATIVE);
}

//
// Return link address if the current instruction requires it
//
static Uns64 getLinkPC(riscvMorphStateP state, vmiReg *lrP) {

    Uns64 linkPC = state->info.thisPC + state->info.bytes;

    if(state->inDelaySlot) {

        vmimtGetDelaySlotNextPC(*lrP, True);

        *lrP   = VMI_NOREG;
        linkPC = 0;
    }

    return linkPC;
}

//
// Jump to constant target address
//
static RISCV_MORPH_FN(emitJAL) {

    riscvP       riscv  = state->riscv;
    riscvRegDesc lrA    = getRVReg(state, 0);
    vmiReg       lr     = getVMIReg(riscv, lrA);
    Uns64        tgt    = state->info.c;
    vmiJumpHint  hint   = isLR(lr) ? vmi_JH_CALL : vmi_JH_NONE;

    // validate target address alignment
    if(!isTargetAddressAlignedC(riscv, tgt)) {
        emitTargetAddressUnalignedC(riscv, tgt);
    }

    // emit call using calculated linkPC and adjusted lr
    Uns64 linkPC = getLinkPC(state, &lr);
    vmimtUncondJump(linkPC, tgt, lr, hint|vmi_JH_RELATIVE);
}

//
// Jump to register target address
//
static RISCV_MORPH_FN(emitJALR) {

    riscvP       riscv  = state->riscv;
    riscvRegDesc lrA    = getRVReg(state, 0);
    riscvRegDesc raA    = getRVReg(state, 1);
    vmiReg       lr     = getVMIReg(riscv, lrA);
    vmiReg       ra     = getVMIReg(riscv, raA);
    Uns32        bits   = getRBits(lrA);
    Uns64        offset = state->info.c;
    vmiJumpHint  hint;

    // calculate target address if required
    if(offset) {
        vmiReg tmp = getTmp(0);
        vmimtBinopRRC(bits, vmi_ADD, tmp, ra, offset, 0);
        ra = tmp;
    }

    // validate target address alignment
    checkTargetAddressAlignedR(riscv, bits, ra);

    // derive jump hint
    if(isLR(ra)) {
        hint = vmi_JH_RETURN;
    } else if(isLR(lr)) {
        hint = vmi_JH_CALL;
    } else {
        hint = vmi_JH_NONE;
    }

    // emit call using calculated linkPC and adjusted lr
    Uns64 linkPC = getLinkPC(state, &lr);
    vmimtUncondJumpReg(linkPC, ra, lr, hint|vmi_JH_RELATIVE);
}


////////////////////////////////////////////////////////////////////////////////
// ATOMIC MEMORY OPERATIONS
////////////////////////////////////////////////////////////////////////////////

//
// Function type implement generic AMO operation
//
#define AMO_FN(_NAME) void _NAME( \
    riscvMorphStateP state, \
    Uns32            bits,  \
    vmiReg           rd,    \
    vmiReg           ra,    \
    vmiReg           rb     \
)
typedef AMO_FN((*amoCB));

//
// Atomic memory operation using defined VMI binop
//
static void emitAMOCommonRRR(riscvMorphStateP state, amoCB opCB) {

    riscvP        riscv      = state->riscv;
    riscvRegDesc  rdA        = getRVReg(state, 0);
    riscvRegDesc  rsA        = getRVReg(state, 1);
    riscvRegDesc  raA        = getRVReg(state, 2);
    vmiReg        rd         = getVMIReg(riscv, rdA);
    vmiReg        rs         = getVMIReg(riscv, rsA);
    vmiReg        ra         = getVMIReg(riscv, raA);
    Uns32         bits       = getRBits(rdA);
    memConstraint constraint = getLoadStoreConstraintA(state);
    vmiReg        tmp1       = getTmp(0);
    vmiReg        tmp2       = getTmp(1);

    // for this instruction, memBits is bits
    state->info.memBits = bits;

    // this is an atomic operation
    vmimtAtomic();

    // generate Store/AMO exception in preference to Load exception
    vmimtTryStoreRC(bits, 0, ra, constraint);

    // generate results using tmp1 and tmp2
    emitLoadCommon(state, tmp1, bits, ra, constraint);
    opCB(state, bits, tmp2, tmp1, rs);
    emitStoreCommon(state, tmp2, ra, constraint);
    vmimtMoveRR(bits, rd, tmp1);

    writeReg(riscv, rdA);
}

//
// AMO binop callback
//
static AMO_FN(emitAMOBinopRRRCB) {
    vmimtBinopRRR(bits, state->attrs->binop, rd, ra, rb, 0);
}

//
// AMO cmpop callback
//
static AMO_FN(emitAMOCmpopRRRCB) {

    vmiReg tf = getTmp(2);

    vmimtCompareRR(bits, state->attrs->cond, ra, rb, tf);
    vmimtCondMoveRRR(bits, tf, True, rd, ra, rb);
}

//
// AMO swap callback
//
static AMO_FN(emitAMOSwapRRRCB) {
    vmimtMoveRR(bits, rd, rb);
}

//
// Atomic memory operation using defined VMI binop
//
static RISCV_MORPH_FN(emitAMOBinopRRR) {
    emitAMOCommonRRR(state, emitAMOBinopRRRCB);
}

//
// Atomic memory operation using defined VMI cmpop
//
static RISCV_MORPH_FN(emitAMOCmpopRRR) {
    emitAMOCommonRRR(state, emitAMOCmpopRRRCB);
}

//
// Atomic memory operation using swap
//
static RISCV_MORPH_FN(emitAMOSwapRRR) {
    emitAMOCommonRRR(state, emitAMOSwapRRRCB);
}


////////////////////////////////////////////////////////////////////////////////
// LR/SC INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// This defines exclusive tag bits
//
inline static Uns32 getEABits(riscvMorphStateP state) {
    return riscvGetXlenArch(state->riscv);
}

//
// This defines exclusive tag bits
//
inline static Uns32 getModeBits(riscvMorphStateP state) {
    return riscvGetXlenMode(state->riscv);
}

//
// Generate exclusive access tag address ra in register rtag
//
static void generateEATag(riscvMorphStateP state, vmiReg rtag, vmiReg ra) {

    Uns32 bits   = getEABits(state);
    Uns32 raBits = getModeBits(state);

    vmimtMoveExtendRR(bits, rtag, raBits, ra, 0);
    vmimtBinopRC(bits, vmi_AND, rtag, state->riscv->exclusiveTagMask, 0);
}

//
// Emit code to start exclusive access to address ra
//
static void startEA(riscvMorphStateP state, vmiReg ra) {

    // instruction must execute atomically but should not be classed as atomic
    // by instruction attributes (it is OCL_IC_EXCLUSIVE)
    vmimtAtomic();
    vmimtInstructionClassSub(OCL_IC_ATOMIC);

    // generate exclusive access tag for this address
    generateEATag(state, RISCV_EA_TAG, ra);
}

//
// Validate the exclusive access and jump to label 'done' if it is invalid,
// setting rd to 1
//
static vmiLabelP validateEA(
    riscvMorphStateP state,
    vmiReg           ra,
    vmiReg           rd,
    Uns32            rdBits
) {
    vmiLabelP done = vmimtNewLabel();
    vmiLabelP ok   = vmimtNewLabel();
    vmiReg    t    = getTmp(0);

    // generate exclusive access tag for this address
    generateEATag(state, t, ra);

    // do load and store tags match?
    vmimtCompareRR(getEABits(state), vmi_COND_EQ, RISCV_EA_TAG, t, t);

    // commit store if tags match
    vmimtCondJumpLabel(t, True, ok);

    // indicate store failed
    vmimtMoveRC(rdBits, rd, 1);

    // jump to instruction end
    vmimtUncondJumpLabel(done);

    // here to commit store
    vmimtInsertLabel(ok);

    return done;
}

//
// Do actions required to terminate exclusive access
//
static void clearEA(riscvMorphStateP state) {

    // exclusiveTag becomes RISCV_NO_TAG to indicate no active access
    vmimtMoveRC(getEABits(state), RISCV_EA_TAG, RISCV_NO_TAG);
}

//
// Do actions required to complete exclusive access
//
static void endEA(
    riscvMorphStateP state,
    vmiReg           rd,
    Uns32            rdBits,
    vmiLabelP        done
) {
    // indicate store succeeded
    vmimtMoveRC(rdBits, rd, 0);

    // insert target label for aborted stores
    vmimtInsertLabel(done);

    // terminate exclusive access
    clearEA(state);
}

//
// Emit code for LR
//
static RISCV_MORPH_FN(emitLR) {

    riscvP        riscv      = state->riscv;
    riscvRegDesc  rdA        = getRVReg(state, 0);
    riscvRegDesc  raA        = getRVReg(state, 1);
    vmiReg        rd         = getVMIReg(riscv, rdA);
    vmiReg        ra         = getVMIReg(riscv, raA);
    Uns32         rdBits     = getRBits(rdA);
    memConstraint constraint = getLoadStoreConstraintA(state);

    // for this instruction, memBits is rdBits
    state->info.memBits = rdBits;

    // indicate LR is now active at address ra
    startEA(state, ra);

    // call common code to perform load
    emitLoadCommon(state, rd, rdBits, ra, constraint);

    writeReg(riscv, rdA);
}

//
// Emit code for SC
//
static RISCV_MORPH_FN(emitSC) {

    riscvP        riscv      = state->riscv;
    riscvRegDesc  rdA        = getRVReg(state, 0);
    riscvRegDesc  rsA        = getRVReg(state, 1);
    riscvRegDesc  raA        = getRVReg(state, 2);
    vmiReg        rd         = getVMIReg(riscv, rdA);
    vmiReg        rs         = getVMIReg(riscv, rsA);
    vmiReg        ra         = getVMIReg(riscv, raA);
    Uns32         rdBits     = getRBits(rdA);
    memConstraint constraint = getLoadStoreConstraintA(state);

    // for this instruction, memBits is rsBits
    state->info.memBits = getRBits(rsA);

    // validate SC attempt at address ra
    vmiLabelP done = validateEA(state, ra, rd, rdBits);

    // call common code to perform store
    emitStoreCommon(state, rs, ra, constraint);

    // complete SC attempt
    endEA(state, rd, rdBits, done);

    writeReg(riscv, rdA);
}


////////////////////////////////////////////////////////////////////////////////
// SYSTEM INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// This defines the type of a non-returning exception callback
//
#define EXCEPTION_FN(_NAME) void _NAME(riscvP riscv)
typedef EXCEPTION_FN((*exceptionFn));

//
// Emit code to an embedded exception function
//
static void emitException(exceptionFn cb) {
    vmimtArgProcessor();
    vmimtCallAttrs((vmiCallFn)cb, VMCA_EXCEPTION);
}

//
// Implement ECALL instruction
//
static RISCV_MORPH_FN(emitECALL) {
    emitException(riscvECALL);
}

//
// Implement EBREAK instruction
//
static RISCV_MORPH_FN(emitEBREAK) {
    emitException(riscvEBREAK);
}

//
// Implement MRET instruction
//
static RISCV_MORPH_FN(emitMRET) {

    riscvP riscv = state->riscv;

    // this instruction must be executed in Machine mode
    requireModeMT(riscv, RISCV_MODE_MACHINE);

    emitException(riscvMRET);
}

//
// Implement SRET instruction
//
static RISCV_MORPH_FN(emitSRET) {

    riscvP riscv = state->riscv;

    // this instruction requires Supervisor mode to be implemented
    checkHaveSModeMT(riscv);

    // this instruction must be executed in Machine mode or Supervisor mode
    requireModeMT(riscv, RISCV_MODE_SUPERVISOR);

    // instruction is trapped if mstatus.TSR=1
    EMIT_TRAP_MASK_FIELD(riscv, mstatus, TSR, 1);

    emitException(riscvSRET);
}

//
// Implement URET instruction
//
static RISCV_MORPH_FN(emitURET) {

    riscvP riscv = state->riscv;

    // this instruction requires User mode to be implemented
    checkHaveUModeMT(riscv);

    emitException(riscvURET);
}

//
// Implement WFI instruction
//
static RISCV_MORPH_FN(emitWFI) {

    riscvP            riscv = state->riscv;
    riscvArchitecture arch  = getCurrentArch(riscv);

    // this instruction must be executed in Machine mode or Supervisor mode
    // unless User mode interrupts are implemented
    if(!(arch&ISA_N)) {
        requireModeMT(riscv, RISCV_MODE_SUPERVISOR);
    }

    // instruction is trapped if mstatus.TW=1
    EMIT_TRAP_MASK_FIELD(riscv, mstatus, TW, 1);

    // wait for interrupt (unless this is treated as a NOP)
    if(!riscv->configInfo.wfi_is_nop) {
        vmimtArgProcessor();
        vmimtCall((vmiCallFn)riscvWFI);
    }
}

//
// Implement SFENCE.VMA instruction
//
static RISCV_MORPH_FN(emitSFENCE_VMA) {

    riscvP       riscv      = state->riscv;
    riscvRegDesc VADDRrA    = getRVReg(state, 0);
    riscvRegDesc ASIDrA     = getRVReg(state, 1);
    vmiReg       VADDRr     = getVMIReg(riscv, VADDRrA);
    vmiReg       ASIDr      = getVMIReg(riscv, ASIDrA);
    Uns32        bits       = getRBits(VADDRrA);
    Bool         haveVADDRr = !VMI_ISNOREG(VADDRr);
    Bool         haveASIDr  = !VMI_ISNOREG(ASIDr);

    // this instruction must be executed in Machine mode or Supervisor mode
    requireModeMT(riscv, RISCV_MODE_SUPERVISOR);

    // instruction is trapped if mstatus.TVM=1
    EMIT_TRAP_MASK_FIELD(riscv, mstatus, TVM, 1);

    // emit processor argument
    vmimtArgProcessor();

    // emit VA argument if required
    if(haveVADDRr) {
        vmiReg tmp = getTmp(0);
        vmimtMoveExtendRR(64, tmp, bits, VADDRr, 0);
        vmimtArgReg(64, tmp);
    }

    // emit ASID argument if required
    if(haveASIDr) {
        vmimtArgReg(32, ASIDr);
    }

    // emit call
    if(!haveVADDRr && !haveASIDr) {
        vmimtCall((vmiCallFn)riscvVMInvalidateAll);
    } else if(!haveVADDRr) {
        vmimtCall((vmiCallFn)riscvVMInvalidateAllASID);
    } else if(!haveASIDr) {
        vmimtCall((vmiCallFn)riscvVMInvalidateVA);
    } else {
        vmimtCall((vmiCallFn)riscvVMInvalidateVAASID);
    }
}


////////////////////////////////////////////////////////////////////////////////
// CSR ACCESS INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Indicate whether CSR must be read
//
static Bool doCSRRead(riscvMorphStateP state, vmiReg rd) {
    return (!VMI_ISNOREG(rd) || (state->info.csrUpdate!=RV_CSR_RW));
}

//
// Indicate whether CSR must be written (depending on whether rs1 is zero)
//
static Bool doCSRWriteRS1(riscvMorphStateP state, vmiReg rs1) {
    return (!VMI_ISNOREG(rs1) || (state->info.csrUpdate==RV_CSR_RW));
}

//
// Indicate whether CSR must be written (depending on whether imm is zero)
//
static Bool doCSRWriteImm(riscvMorphStateP state, Uns64 imm) {
    return (imm || (state->info.csrUpdate==RV_CSR_RW));
}

//
// Implement CSR access, either with two GPRs or GPR and immediate
//
static void emitCSRRCommon(riscvMorphStateP state, vmiReg rs1, Bool write) {

    riscvP          riscv = state->riscv;
    Uns32           csr   = state->info.csr;
    riscvRegDesc    rdA   = getRVReg(state, 0);
    vmiReg          rd    = getVMIReg(riscv, rdA);
    Uns32           bits  = getRBits(rdA);
    Bool            read  = doCSRRead(state, rd);
    riscvCSRAttrsCP attrs = riscvValidateCSRAccess(riscv, csr, read, write);

    // action only required for valid access
    if(attrs) {

        vmiReg rdTmp = read ? getTmp(0) : VMI_NOREG;

        // handle traps if mstatus.TVM=1 (e.g. satp register)
        if(attrs->TVMT) {
            EMIT_TRAP_MASK_FIELD(riscv, mstatus, TVM, 1);
        }

        // emit code to read the CSR if required
        if(read) {
            riscvEmitCSRRead(attrs, riscv, rdTmp, write);
        }

        // emit code to write the CSR if required
        if(write) {

            vmiReg rs1Tmp = write ? getTmp(1) : VMI_NOREG;
            vmiReg cbTmp  = getTmp(2);
            Bool   useRS1 = !VMI_ISNOREG(rs1);
            Uns64  c      = state->info.c;

            switch(state->info.csrUpdate) {

                case RV_CSR_RW:
                    if(useRS1) {
                        rs1Tmp = rs1;
                    } else {
                        vmimtMoveRC(bits, rs1Tmp, c);
                    }
                    break;

                case RV_CSR_RS:
                    if(useRS1) {
                        vmimtBinopRRR(bits, vmi_OR, rs1Tmp, rdTmp, rs1, 0);
                    } else {
                        vmimtBinopRRC(bits, vmi_OR, rs1Tmp, rdTmp, c, 0);
                    }
                    break;

                case RV_CSR_RC:
                    if(useRS1) {
                        vmimtBinopRRR(bits, vmi_ANDN, rs1Tmp, rdTmp, rs1, 0);
                    } else {
                        vmimtBinopRRC(bits, vmi_ANDN, rs1Tmp, rdTmp, c, 0);
                    }
                    break;

                default:
                    VMI_ABORT("unimplemented case"); // LCOV_EXCL_LINE
            }

            // do the write and update mstatus.FS if required
            if(riscvEmitCSRWrite(attrs, riscv, rs1Tmp, cbTmp) & ISA_DF) {
                updateFS(riscv);
            }

            // handle writes that invalidate any morph-time assumptions about
            // the currently-active rounding mode (e.g. frm or fcsr)
            if(attrs->wEndRM) {
                riscv->blockState->fpActiveRMMT = RV_RM_NA;
            }
        }

        // commit read value
        vmimtMoveRR(bits, rd, rdTmp);
        writeReg(riscv, rdA);
    }
}

//
// Implement CSR access (two GPRs)
//
static RISCV_MORPH_FN(emitCSRR) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rs1A  = getRVReg(state, 1);
    vmiReg       rs1   = getVMIReg(riscv, rs1A);
    Bool         write = doCSRWriteRS1(state, rs1);

    emitCSRRCommon(state, rs1, write);
}

//
// Implement CSR access (GPR and immediate)
//
static RISCV_MORPH_FN(emitCSRRI) {

    Bool write = doCSRWriteImm(state, state->info.c);

    emitCSRRCommon(state, VMI_NOREG, write);
}


////////////////////////////////////////////////////////////////////////////////
// FLOATING POINT DATA HANDLING UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// Int32 macros
//
#define INT32_MIN           0x80000000
#define INT32_MAX           0x7fffffff

//
// Uns32 macros
//
#define UNS32_MIN           0x00000000
#define UNS32_MAX           0xffffffff

//
// Int64 macros
//
#define INT64_MIN           0x8000000000000000ULL
#define INT64_MAX           0x7fffffffffffffffULL

//
// Uns64 macros
//
#define UNS64_MIN           0x0000000000000000ULL
#define UNS64_MAX           0xffffffffffffffffULL

//
// Flt32 macros
//
#define FP32_EXP_ONES       0xff
#define FP32_EXP_SHIFT      23
#define FP32_SIGN_SHIFT     31
#define FP32_SIGN_MASK      (1<<FP32_SIGN_SHIFT)

#define FP32_SIGN(_F)       (((_F) & FP32_SIGN_MASK) != 0)
#define FP32_EXPONENT(_F)   (((_F) & 0x7f800000) >> FP32_EXP_SHIFT)
#define FP32_FRACTION(_F)   ((_F) & ((1<<FP32_EXP_SHIFT)-1))

#define FP32_PLUS_ZERO      (0)
#define FP32_MINUS_ZERO     (FP32_SIGN_MASK)
#define FP32_ISZERO(_F)     (((_F) & ~0x80000000) == 0)
#define FP32_ZERO(_S)       ((_S) ? FP32_MINUS_ZERO : FP32_PLUS_ZERO)

#define FP32_PLUS_INFINITY  (0x7f800000)
#define FP32_MINUS_INFINITY (0xff800000)
#define FP32_INFINITY(_S)   ((_S) ? FP32_MINUS_INFINITY : FP32_PLUS_INFINITY)

#define FP32_DEFAULT_QNAN   0x7fc00000
#define FP32_QNAN_MASK      0x00400000

//
// Flt64 macros
//
#define FP64_EXP_ONES       0x7ff
#define FP64_EXP_SHIFT      52
#define FP64_SIGN_SHIFT     63
#define FP64_SIGN_MASK      (1ULL<<FP64_SIGN_SHIFT)

#define FP64_SIGN(_F)       (((_F) & FP64_SIGN_MASK) != 0)
#define FP64_EXPONENT(_F)   (((_F) & 0x7ff0000000000000ULL) >> FP64_EXP_SHIFT)
#define FP64_FRACTION(_F)   ((_F) & ((1ULL<<FP64_EXP_SHIFT)-1))

#define FP64_PLUS_ZERO      (0ULL)
#define FP64_MINUS_ZERO     (FP64_SIGN_MASK)
#define FP64_ISZERO(_F)     ((_F) & ~0x8000000000000000ULL) == 0)
#define FP64_ZERO(_S)       ((_S) ? FP64_MINUS_ZERO : FP64_PLUS_ZERO)

#define FP64_PLUS_INFINITY  (0x7ff0000000000000ULL)
#define FP64_MINUS_INFINITY (0xfff0000000000000ULL)
#define FP64_INFINITY(_S)   ((_S) ? FP64_MINUS_INFINITY : FP64_PLUS_INFINITY)

#define FP64_DEFAULT_QNAN   0x7ff8000000000000ULL
#define FP64_QNAN_MASK      0x0008000000000000ULL


//
// Is the Flt32 value a NaN or infinity?
//
inline static Bool isNaNorInf32(Uns32 value) {
    return FP32_EXPONENT(value)==FP32_EXP_ONES;
}

//
// Is the Flt64 value a NaN or infinity?
//
inline static Bool isNaNorInf64(Uns64 value) {
    return FP64_EXPONENT(value)==FP64_EXP_ONES;
}

//
// Is the Flt32 value a NaN?
//
inline static Bool isNaN32(Uns32 value) {
    return isNaNorInf32(value) && FP32_FRACTION(value);
}

//
// Is the Flt64 value a NaN?
//
inline static Bool isNaN64(Uns64 value) {
    return isNaNorInf64(value) && FP64_FRACTION(value);
}

//
// Is the Flt32 value an infinity?
//
inline static Bool isInf32(Uns32 value) {
    return isNaNorInf32(value) && !FP32_FRACTION(value);
}

//
// Is the Flt64 value an infinity?
//
inline static Bool isInf64(Uns64 value) {
    return isNaNorInf64(value) && !FP64_FRACTION(value);
}

//
// Is the Flt32 value a denormal?
//
inline static Bool isDenorm32(Uns32 value) {
    return !FP32_EXPONENT(value) && FP32_FRACTION(value);
}

//
// Is the Flt64 value a denormal?
//
inline static Bool isDenorm64(Uns64 value) {
    return !FP64_EXPONENT(value) && FP64_FRACTION(value);
}

//
// Is the Flt32 value a zero?
//
inline static Bool isZero32(Uns32 value) {
    return !(value & ~FP32_SIGN_MASK);
}

//
// Is the Flt64 value a zero?
//
inline static Bool isZero64(Uns64 value) {
    return !(value & ~FP64_SIGN_MASK);
}

//
// Is the Flt32 value a QNaN?
//
inline static Bool isQNaN32(Uns32 value) {
    return isNaN32(value) && (value & FP32_QNAN_MASK);
}

//
// Is the Flt64 value a QNaN?
//
inline static Bool isQNaN64(Uns64 value) {
    return isNaN64(value) && (value & FP64_QNAN_MASK);
}

//
// Is the Flt32 value an SNaN?
//
inline static Bool isSNaN32(Uns32 value) {
    return isNaN32(value) && !(value & FP32_QNAN_MASK);
}

//
// Is the Flt64 value an SNaN?
//
inline static Bool isSNaN64(Uns64 value) {
    return isNaN64(value) && !(value & FP64_QNAN_MASK);
}

//
// Return VMI register for the given abstract register which may require a NaN
// box test if it is floating point
//
vmiReg riscvGetVMIRegFS(riscvP riscv, riscvRegDesc r, vmiReg tmp) {

    Uns32  bits   = getRBits(r);
    vmiReg result = getVMIReg(riscv, r);

    if(isFReg(r)) {

        Uns32 archBits = riscvGetFlenArch(riscv);
        Uns32 fprMask  = getRegMask(r);

        // handle possible switch to QNaN-valued temporary if the source
        // register is smaller than the architectural register size and not
        // known to be NaN-boxed
        if((archBits>bits) && !(riscv->blockState->fpNaNBoxMask&fprMask)) {

            // use temporary corresponding to the input argument
            vmiReg upper = VMI_REG_DELTA(result,bits/8);

            // is the upper half all ones?
            vmimtCompareRC(bits, vmi_COND_EQ, upper, -1, tmp);

            // seed the apparent value, depending on whether the source is
            // correctly NaN-boxed
            vmimtCondMoveRRC(bits, tmp, True, tmp, result, FP32_DEFAULT_QNAN);

            // use the temporary as a source
            result = tmp;
        }
    }

    return result;
}

//
// Return VMI register for the given abstract register which may require a NaN
// box test if it is floating point
//
inline static vmiReg getVMIRegFS(riscvP riscv, riscvRegDesc r, vmiReg tmp) {
    return riscvGetVMIRegFS(riscv, r, tmp);
}


////////////////////////////////////////////////////////////////////////////////
// GENERAL QNAN/INDETERMINATE HANDLERS
////////////////////////////////////////////////////////////////////////////////

//
// 32-bit QNaN result - return default QNaN
//
static VMI_FP_QNAN32_RESULT_FN(handleQNaN32) {
    return FP32_DEFAULT_QNAN;
}

//
// 64-bit QNaN result - return default QNaN
//
static VMI_FP_QNAN64_RESULT_FN(handleQNaN64) {
    return FP64_DEFAULT_QNAN;
}

//
// 32-bit indeterminate result (NOTE: signed and unsigned results have distinct
// indeterminate patterns)
//
static VMI_FP_IND32_RESULT_FN(handleIndeterminate32) {

    Uns32 result = 0;

    if(value.type == vmi_FT_32_IEEE_754) {
        if(value.f32Parts.sign && !isNaN32(value.u32)) {
            result = isSigned ? INT32_MIN : UNS32_MIN;
        } else {
            result = isSigned ? INT32_MAX : UNS32_MAX;
        }
    } else if(value.type == vmi_FT_64_IEEE_754) {
        if(value.f64Parts.sign && !isNaN64(value.u64)) {
            result = isSigned ? INT32_MIN : UNS32_MIN;
        } else {
            result = isSigned ? INT32_MAX : UNS32_MAX;
        }
    } else {
        VMI_ABORT("unimplemented type %u", value.type); // LCOV_EXCL_LINE
    }

    return result;
}

//
// 64-bit indeterminate result (NOTE: signed and unsigned results have distinct
// indeterminate patterns)
//
static VMI_FP_IND64_RESULT_FN(handleIndeterminate64) {

    Uns64 result = 0;

    if(value.type == vmi_FT_32_IEEE_754) {
        if(value.f32Parts.sign && !isNaN32(value.u32)) {
            result = isSigned ? INT64_MIN : UNS64_MIN;
        } else {
            result = isSigned ? INT64_MAX : UNS64_MAX;
        }
    } else if(value.type == vmi_FT_64_IEEE_754) {
        if(value.f64Parts.sign && !isNaN64(value.u64)) {
            result = isSigned ? INT64_MIN : UNS64_MIN;
        } else {
            result = isSigned ? INT64_MAX : UNS64_MAX;
        }
    } else {
        VMI_ABORT("unimplemented type %u", value.type); // LCOV_EXCL_LINE
    }

    return result;
}


////////////////////////////////////////////////////////////////////////////////
// ISA VERSION 2.2 MIN/MAX RESULT HANDLERS
////////////////////////////////////////////////////////////////////////////////

//
// Common routine for 32-bit FMIN/FMAX result
//
static Uns32 doMinMax32_2_2(
    Uns32       result32,
    vmiFPArgP   args,
    vmiFPFlagsP setFlags
) {
    Uns32 arg0 = args[0].u32;
    Uns32 arg1 = args[1].u32;

    if(isSNaN32(arg0) || isSNaN32(arg1)) {
        setFlags->f.I = 1;
        result32 = FP32_DEFAULT_QNAN;
    } else if(isNaN32(arg0) && isNaN32(arg1)) {
        result32 = FP32_DEFAULT_QNAN;
    } else if(isNaN32(arg0)) {
        result32 = arg1;
    } else if(isNaN32(arg1)) {
        result32 = arg0;
    }

    return result32;
}

//
// Common routine for 64-bit FMIN/FMAX result
//
static Uns64 doMinMax64_2_2(
    Uns64       result64,
    vmiFPArgP   args,
    vmiFPFlagsP setFlags
) {
    Uns64 arg0 = args[0].u64;
    Uns64 arg1 = args[1].u64;

    if(isSNaN64(arg0) || isSNaN64(arg1)) {
        setFlags->f.I = 1;
        result64 = FP64_DEFAULT_QNAN;
    } else if(isNaN64(arg0) && isNaN64(arg1)) {
        result64 = FP64_DEFAULT_QNAN;
    } else if(isNaN64(arg0)) {
        result64 = arg1;
    } else if(isNaN64(arg1)) {
        result64 = arg0;
    }

    return result64;
}

//
// 32-bit FMIN result handler
//
static VMI_FP_32_RESULT_FN(doFMin32_2_2) {

    if(isZero32(args[0].u32) && isZero32(args[1].u32)) {
        result32 = args[1].u32;
    } else if(isNaNorInf32(result32)) {
        result32 = doMinMax32_2_2(result32, args, setFlags);
    }

    return result32;
}

//
// 32-bit FMAX result handler
//
static VMI_FP_32_RESULT_FN(doFMax32_2_2) {

    if(isZero32(args[0].u32) && isZero32(args[1].u32)) {
        result32 = args[0].u32;
    } else if(isNaNorInf32(result32)) {
        result32 = doMinMax32_2_2(result32, args, setFlags);
    }

    return result32;
}

//
// 64-bit FMIN result handler
//
static VMI_FP_64_RESULT_FN(doFMin64_2_2) {

    if(isZero64(args[0].u64) && isZero64(args[1].u64)) {
        result64 = args[1].u64;
    } else if(isNaNorInf64(result64)) {
        result64 = doMinMax64_2_2(result64, args, setFlags);
    }

    return result64;
}

//
// 64-bit FMAX result handler
//
static VMI_FP_64_RESULT_FN(doFMax64_2_2) {

    if(isZero64(args[0].u64) && isZero64(args[1].u64)) {
        result64 = args[0].u64;
    } else if(isNaNorInf64(result64)) {
        result64 = doMinMax64_2_2(result64, args, setFlags);
    }

    return result64;
}


////////////////////////////////////////////////////////////////////////////////
// ISA VERSION 2.3 MIN/MAX RESULT HANDLERS
////////////////////////////////////////////////////////////////////////////////

//
// Common routine for 32-bit FMIN/FMAX result
//
static Uns32 doMinMax32_2_3(
    Uns32       result32,
    vmiFPArgP   args,
    vmiFPFlagsP setFlags
) {
    Uns32 arg0 = args[0].u32;
    Uns32 arg1 = args[1].u32;

    if(isSNaN32(arg0) || isSNaN32(arg1)) {
        setFlags->f.I = 1;
    }

    if(isNaN32(arg0) && isNaN32(arg1)) {
        result32 = FP32_DEFAULT_QNAN;
    } else if(isNaN32(arg0)) {
        result32 = arg1;
    } else if(isNaN32(arg1)) {
        result32 = arg0;
    }

    return result32;
}

//
// Common routine for 64-bit FMIN/FMAX result
//
static Uns64 doMinMax64_2_3(
    Uns64       result64,
    vmiFPArgP   args,
    vmiFPFlagsP setFlags
) {
    Uns64 arg0 = args[0].u64;
    Uns64 arg1 = args[1].u64;

    if(isSNaN64(arg0) || isSNaN64(arg1)) {
        setFlags->f.I = 1;
    }

    if(isNaN64(arg0) && isNaN64(arg1)) {
        result64 = FP64_DEFAULT_QNAN;
    } else if(isNaN64(arg0)) {
        result64 = arg1;
    } else if(isNaN64(arg1)) {
        result64 = arg0;
    }

    return result64;
}

//
// 32-bit FMIN result handler
//
static VMI_FP_32_RESULT_FN(doFMin32_2_3) {

    if(isZero32(args[0].u32) && isZero32(args[1].u32)) {
        result32 = args[0].u32 | args[1].u32;
    } else if(isNaNorInf32(result32)) {
        result32 = doMinMax32_2_3(result32, args, setFlags);
    }

    return result32;
}

//
// 32-bit FMAX result handler
//
static VMI_FP_32_RESULT_FN(doFMax32_2_3) {

    if(isZero32(args[0].u32) && isZero32(args[1].u32)) {
        result32 = args[0].u32 & args[1].u32;
    } else if(isNaNorInf32(result32)) {
        result32 = doMinMax32_2_3(result32, args, setFlags);
    }

    return result32;
}

//
// 64-bit FMIN result handler
//
static VMI_FP_64_RESULT_FN(doFMin64_2_3) {

    if(isZero64(args[0].u64) && isZero64(args[1].u64)) {
        result64 = args[0].u64 | args[1].u64;
    } else if(isNaNorInf64(result64)) {
        result64 = doMinMax64_2_3(result64, args, setFlags);
    }

    return result64;
}

//
// 64-bit FMAX result handler
//
static VMI_FP_64_RESULT_FN(doFMax64_2_3) {

    if(isZero64(args[0].u64) && isZero64(args[1].u64)) {
        result64 = args[0].u64 & args[1].u64;
    } else if(isNaNorInf64(result64)) {
        result64 = doMinMax64_2_3(result64, args, setFlags);
    }

    return result64;
}


////////////////////////////////////////////////////////////////////////////////
// FLOATING POINT CONFIGURATION AND CONTROL
////////////////////////////////////////////////////////////////////////////////

//
// Define one vmiFPConfig
//
#define FPU_CONFIG(_QH32, _QH64, _R32,  _R64) {         \
    .QNaN32                  = FP32_DEFAULT_QNAN,       \
    .QNaN64                  = FP64_DEFAULT_QNAN,       \
    .QNaN32ResultCB          = _QH32,                   \
    .QNaN64ResultCB          = _QH64,                   \
    .indeterminate32ResultCB = handleIndeterminate32,   \
    .indeterminate64ResultCB = handleIndeterminate64,   \
    .fp32ResultCB            = _R32,                    \
    .fp64ResultCB            = _R64,                    \
    .suppressFlags           = {f:{D:1}},               \
    .stickyFlags             = True,                    \
    .tininessAfterRounding   = True,                    \
}

//
// Table of floating point operation configurations
//
const static vmiFPConfig fpConfigs[RVFP_LAST] = {

    // normal native operation configuration
    [RVFP_NORMAL]   = FPU_CONFIG(handleQNaN32, handleQNaN64, 0, 0),

    // FMIN/FMAX configurations
    [RVFP_FMIN]     = FPU_CONFIG(0, 0, doFMin32_2_2, doFMin64_2_2),
    [RVFP_FMAX]     = FPU_CONFIG(0, 0, doFMax32_2_2, doFMax64_2_2),
    [RVFP_FMIN_2_3] = FPU_CONFIG(0, 0, doFMin32_2_3, doFMin64_2_3),
    [RVFP_FMAX_2_3] = FPU_CONFIG(0, 0, doFMax32_2_3, doFMax64_2_3),

    // Emulated operations (FMM rounding)
    [RVFP_FADD]     = FPU_CONFIG(0, 0, riscvFADD32,    riscvFADD64  ),
    [RVFP_FSUB]     = FPU_CONFIG(0, 0, riscvFSUB32,    riscvFSUB64  ),
    [RVFP_FMUL]     = FPU_CONFIG(0, 0, riscvFMUL32,    riscvFMUL64  ),
    [RVFP_FDIV]     = FPU_CONFIG(0, 0, riscvFDIV32,    riscvFDIV64  ),
    [RVFP_FSQRT]    = FPU_CONFIG(0, 0, riscvFSQRT32,   riscvFSQRT64 ),
    [RVFP_FMADD]    = FPU_CONFIG(0, 0, riscvFMADD32,   riscvFMADD64 ),
    [RVFP_FMSUB]    = FPU_CONFIG(0, 0, riscvFMSUB32,   riscvFMSUB64 ),
    [RVFP_FNMADD]   = FPU_CONFIG(0, 0, riscvFNMADD32,  riscvFNMADD64),
    [RVFP_FNMSUB]   = FPU_CONFIG(0, 0, riscvFNMSUB32,  riscvFNMSUB64),

    // Emulated conversion operations (FMM rounding)
    [RVFP_CVTIF32]  = FPU_CONFIG(0, 0, riscvFCVTI32F32, riscvFCVTI64F32),
    [RVFP_CVTUF32]  = FPU_CONFIG(0, 0, riscvFCVTU32F32, riscvFCVTU64F32),
    [RVFP_CVTFF64]  = FPU_CONFIG(0, 0, riscvFCVTF32F64, 0              ),
    [RVFP_CVTIF64]  = FPU_CONFIG(0, 0, riscvFCVTI32F64, riscvFCVTI64F64),
    [RVFP_CVTUF64]  = FPU_CONFIG(0, 0, riscvFCVTU32F64, riscvFCVTU64F64),
    [RVFP_CVTFI32]  = FPU_CONFIG(0, 0, riscvFCVTF32I32, 0              ),
    [RVFP_CVTFI64]  = FPU_CONFIG(0, 0, riscvFCVTF32I64, riscvFCVTF64I64),
    [RVFP_CVTFU32]  = FPU_CONFIG(0, 0, riscvFCVTF32U32, 0              ),
    [RVFP_CVTFU64]  = FPU_CONFIG(0, 0, riscvFCVTF32U64, riscvFCVTF64U64),
};

//
// Configure FPU
//
void riscvConfigureFPU(riscvP riscv) {
    vmirtConfigureFPU((vmiProcessorP)riscv, &fpConfigs[RVFP_NORMAL]);
}

//
// Return rounding control for riscvRMDesc
//
static vmiFPRC mapRMDescToRC(riscvRMDesc rm) {

    static const vmiFPRC map[] = {
        [RV_RM_CURRENT] = vmi_FPR_CURRENT,
        [RV_RM_RTE]     = vmi_FPR_NEAREST,
        [RV_RM_RTZ]     = vmi_FPR_ZERO,
        [RV_RM_RDN]     = vmi_FPR_NEG_INF,
        [RV_RM_RUP]     = vmi_FPR_POS_INF,
        [RV_RM_RMM]     = vmi_FPR_AWAY,
        [RV_RM_BAD5]    = vmi_FPR_CURRENT,
        [RV_RM_BAD6]    = vmi_FPR_CURRENT
    };

    return map[rm];
}

//
// Return rounding control for rounding mode in FPSR
//
static vmiFPRC mapFRMToRC(Uns8 frm) {

    static const vmiFPRC map[] = {
        [0] = vmi_FPR_NEAREST,
        [1] = vmi_FPR_ZERO,
        [2] = vmi_FPR_NEG_INF,
        [3] = vmi_FPR_POS_INF,
        [4] = vmi_FPR_AWAY,
        [5] = -1,
        [6] = -1,
        [7] = -1
    };

    return map[frm];
}

//
// Update floating point control word to use the given rounding control
//
static void setFPCW(riscvP riscv, vmiFPRC rc) {

    if(rc!=vmi_FPR_AWAY) {

        vmiFPControlWord cw = {
            .IM = 1,
            .DM = 1,
            .ZM = 1,
            .OM = 1,
            .UM = 1,
            .PM = 1,
            .RC = rc
        };

        vmirtSetFPControlWord((vmiProcessorP)riscv, cw);
    }
}

//
// Set simulator floating point control word
//
static void refreshFPCW(riscvP riscv, riscvRMDesc rm) {

    if(rm == RV_RM_CURRENT) {

        // switch to use current rounding mode (if valid)
        Uns8    frm = RD_CSR_FIELD(riscv, fcsr, frm);
        vmiFPRC rc  = mapFRMToRC(frm);

        if(rc==-1) {

            // invalid current rounding mode
            if(riscv->verbose) {
                vmiMessage("W", CPU_PREFIX "_IRM",
                    SRCREF_FMT "Invalid rounding mode %u",
                    SRCREF_ARGS(riscv, getPC(riscv)),
                    frm
                );
            }

            // take Illegal Instruction exception
            riscvIllegalInstruction(riscv);

        } else {

            // update model floating point control word
            setFPCW(riscv, rc);

            // indicate current rounding mode is in force
            riscv->fpActiveRM = RV_RM_CURRENT;
        }

    } else {

        // switch to use specified rounding mode
        vmiFPRC rc = mapRMDescToRC(rm);

        // update model floating point control word
        setFPCW(riscv, rc);

        // indicate current rounding mode is in force
        riscv->fpActiveRM = rm;
    }
}


////////////////////////////////////////////////////////////////////////////////
// FLOATING POINT INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// This forces use of SoftFloat floating point for all operations
//
#define FORCE_SOFT_FLOAT 0

//
// Is RMM rounding mode required for the current instruction?
//
static Bool isRMMActive(riscvMorphStateP state) {

    Bool result;

    if(!state->attrs->fpRMMCfg) {
        result = False;
    } else if(FORCE_SOFT_FLOAT || (state->info.rm==RV_RM_RMM)) {
        result = True;
    } else if(state->info.rm!=RV_RM_CURRENT) {
        result = False;
    } else {
        result = (RD_CSR_FIELD(state->riscv, fcsr, frm)==4);
    }

    return result;
}

//
// Validate the given rounding mode is legal and emit an Illegal Instruction
// exception call if not
//
static Bool emitCheckLegalRM(riscvP riscv, riscvRMDesc rm) {

    Bool ok = (rm < RV_RM_BAD5);

    if(!ok) {
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IRM", "Illegal rounding mode");
    }

    return ok;
}

//
// Update current rounding mode if required
//
static void emitSetRM(riscvMorphStateP state) {

    riscvP           riscv      = state->riscv;
    riscvBlockStateP blockState = riscv->blockState;
    riscvRMDesc      rm         = state->info.rm;

    if(emitCheckLegalRM(riscv, rm) && (blockState->fpActiveRMMT!=rm)) {

        // if using current rounding mode 0-3, use blockMask to detect if
        // emulation is required if the rounding mode ever switches to RMM
        if((rm==RV_RM_CURRENT) && (RD_CSR_FIELD(riscv, fcsr, frm)<4)) {
            vmimtValidateBlockMaskR(8, CSR_REG_MT(fcsr), WM32_fcsr_frm_msb);
        }

        // action is only required if required rounding mode differs from that
        // known to be in force at this point
        vmiLabelP ok = vmimtNewLabel();

        // skip update of rounding mode if it is known to match
        vmimtCompareRCJumpLabel(8, vmi_COND_EQ, RISCV_ACTIVE_RM, rm, ok);

        // emit call to refresh the current floating point control word using
        // the specified rounding mode
        vmimtArgProcessor();
        vmimtArgUns32(rm);
        vmimtCallAttrs((vmiCallFn)refreshFPCW, VMCA_NO_INVALIDATE);

        // here if rounding mode matches currently-selected mode
        vmimtInsertLabel(ok);

        // update the known rounding mode
        blockState->fpActiveRMMT = rm;
    }
}

//
// Refine floating point control when converting from F32
//
static riscvFPCtrl refineFPCtrlF32(vmiFType typeD) {

    switch(typeD) {
        case vmi_FT_32_INT:
        case vmi_FT_64_INT:
            return RVFP_CVTIF32;
        case vmi_FT_32_UNS:
        case vmi_FT_64_UNS:
            return RVFP_CVTUF32;
        default:
            VMI_ABORT("unexpected typeD %u", typeD);    // LCOV_EXCL_LINE
            return RVFP_NORMAL;                         // LCOV_EXCL_LINE
    }
}

//
// Refine floating point control when converting from F64
//
static riscvFPCtrl refineFPCtrlF64(vmiFType typeD) {

    switch(typeD) {
        case vmi_FT_32_IEEE_754:
            return RVFP_CVTFF64;
        case vmi_FT_32_INT:
        case vmi_FT_64_INT:
            return RVFP_CVTIF64;
        case vmi_FT_32_UNS:
        case vmi_FT_64_UNS:
            return RVFP_CVTUF64;
        default:
            VMI_ABORT("unexpected typeD %u", typeD);    // LCOV_EXCL_LINE
            return RVFP_NORMAL;                         // LCOV_EXCL_LINE
    }
}

//
// Refine floating point control when converting from I32
//
static riscvFPCtrl refineFPCtrlI32(vmiFType typeD) {

    switch(typeD) {
        case vmi_FT_32_IEEE_754:
            return RVFP_CVTFI32;
        default:
            VMI_ABORT("unexpected typeD %u", typeD);    // LCOV_EXCL_LINE
            return RVFP_NORMAL;                         // LCOV_EXCL_LINE
    }
}

//
// Refine floating point control when converting from I64
//
static riscvFPCtrl refineFPCtrlI64(vmiFType typeD) {

    switch(typeD) {
        case vmi_FT_32_IEEE_754:
        case vmi_FT_64_IEEE_754:
            return RVFP_CVTFI64;
        default:
            VMI_ABORT("unexpected typeD %u", typeD);    // LCOV_EXCL_LINE
            return RVFP_NORMAL;                         // LCOV_EXCL_LINE
    }
}

//
// Refine floating point control when converting from U32
//
static riscvFPCtrl refineFPCtrlU32(vmiFType typeD) {

    switch(typeD) {
        case vmi_FT_32_IEEE_754:
            return RVFP_CVTFU32;
        default:
            VMI_ABORT("unexpected typeD %u", typeD);    // LCOV_EXCL_LINE
            return RVFP_NORMAL;                         // LCOV_EXCL_LINE
    }
}

//
// Refine floating point control when converting from U64
//
static riscvFPCtrl refineFPCtrlU64(vmiFType typeD) {

    switch(typeD) {
        case vmi_FT_32_IEEE_754:
        case vmi_FT_64_IEEE_754:
            return RVFP_CVTFU64;
        default:
            VMI_ABORT("unexpected typeD %u", typeD);    // LCOV_EXCL_LINE
            return RVFP_NORMAL;                         // LCOV_EXCL_LINE
    }
}

//
// If the given floating point control specification is the generic RVFP_CVT
// control, refine it to a specific control for the conversion argument types
//
static riscvFPCtrl refineFPCtrl(riscvMorphStateP state, riscvFPCtrl ctrl) {

    if(ctrl==RVFP_CVT) {

        riscvRegDesc fdA   = getRVReg(state, 0);
        riscvRegDesc fsA   = getRVReg(state, 1);
        vmiFType     typeD = getRegFType(fdA);
        vmiFType     typeS = getRegFType(fsA);
        Uns32        bitsD = getRBits(fdA);
        Uns32        bitsS = getRBits(fsA);

        if((bitsD>bitsS) && VMI_FTYPE_IS_IEEE_754(typeD)) {

            // conversion to F64 from shorter type never causes rounding
            ctrl = RVFP_NORMAL;

        } else switch(typeS) {

            case vmi_FT_32_IEEE_754:
                return refineFPCtrlF32(typeD);
            case vmi_FT_64_IEEE_754:
                return refineFPCtrlF64(typeD);
            case vmi_FT_32_INT:
                return refineFPCtrlI32(typeD);
            case vmi_FT_64_INT:
                return refineFPCtrlI64(typeD);
            case vmi_FT_32_UNS:
                return refineFPCtrlU32(typeD);
            case vmi_FT_64_UNS:
                return refineFPCtrlU64(typeD);
            default:
                VMI_ABORT("unexpected typeS %u", typeS); // LCOV_EXCL_LINE
        }
    }

    return ctrl;
}

//
// Return floating point control to use for the current instruction
//
static vmiFPConfigCP getFPControl(riscvMorphStateP state) {

    riscvFPCtrl   ctrlRMM = state->attrs->fpRMMCfg;
    riscvFPCtrl   ctrl    = state->attrs->fpConfig;
    vmiFPConfigCP result  = 0;

    if(isRMMActive(state)) {

        // use emulation if RMM rounding is active
        ctrl = refineFPCtrl(state, ctrlRMM);

    } else if(ctrl) {

        // fmin/fmax result handling changes from version 2.3
        if(RISCV_USER_VERSION(state->riscv) <= RVUV_2_2) {
            // no action unless User version >= 2.3
        } else if(ctrl==RVFP_FMIN) {
            ctrl = RVFP_FMIN_2_3;
        } else if(ctrl==RVFP_FMAX) {
            ctrl = RVFP_FMAX_2_3;
        } else {
            VMI_ABORT("unexpected control %u", ctrl); // LCOV_EXCL_LINE
        }
    }

    // return selected control
    if(ctrl) {
        result = &fpConfigs[ctrl];
    }

    return result;
}

//
// Move floating point value (two registers)
//
static RISCV_MORPH_FN(emitFMoveRR) {

    riscvP       riscv = state->riscv;
    riscvRegDesc fdA   = getRVReg(state, 0);
    riscvRegDesc fs1A  = getRVReg(state, 1);
    vmiReg       fd    = getVMIReg(riscv, fdA);
    vmiReg       fs1   = getVMIRegFS(riscv, fs1A, getTmp(0));
    Uns32        bits  = getRBits(fdA);

    vmimtMoveRR(bits, fd, fs1);

    writeReg(riscv, fdA);
}

//
// Implement floating point unop
//
static RISCV_MORPH_FN(emitFUnop) {

    riscvP        riscv = state->riscv;
    riscvRegDesc  fdA   = getRVReg(state, 0);
    riscvRegDesc  fs1A  = getRVReg(state, 1);
    vmiReg        fd    = getVMIReg(riscv, fdA);
    vmiReg        fs1   = getVMIRegFS(riscv, fs1A, getTmp(1));
    vmiFType      type  = getRegFType(fdA);
    vmiFUnop      op    = isRMMActive(state) ? vmi_FUNUD : state->attrs->fpUnop;
    vmiFPConfigCP ctrl  = getFPControl(state);

    emitSetRM(state);

    vmimtFUnopRR(type, op, fd, fs1, RISCV_FP_FLAGS, ctrl);

    writeReg(riscv, fdA);
}

//
// Implement floating point binop
//
static RISCV_MORPH_FN(emitFBinop) {

    riscvP        riscv = state->riscv;
    riscvRegDesc  fdA   = getRVReg(state, 0);
    riscvRegDesc  fs1A  = getRVReg(state, 1);
    riscvRegDesc  fs2A  = getRVReg(state, 2);
    vmiReg        fd    = getVMIReg(riscv, fdA);
    vmiReg        fs1   = getVMIRegFS(riscv, fs1A, getTmp(1));
    vmiReg        fs2   = getVMIRegFS(riscv, fs2A, getTmp(2));
    vmiFType      type  = getRegFType(fdA);
    vmiFBinop     op    = isRMMActive(state) ? vmi_FBINUD : state->attrs->fpBinop;
    vmiFPConfigCP ctrl  = getFPControl(state);

    emitSetRM(state);

    vmimtFBinopRRR(type, op, fd, fs1, fs2, RISCV_FP_FLAGS, ctrl);

    writeReg(riscv, fdA);
}

//
// Implement floating point ternop
//
static RISCV_MORPH_FN(emitFTernop) {

    riscvP        riscv = state->riscv;
    riscvRegDesc  fdA   = getRVReg(state, 0);
    riscvRegDesc  fs1A  = getRVReg(state, 1);
    riscvRegDesc  fs2A  = getRVReg(state, 2);
    riscvRegDesc  fs3A  = getRVReg(state, 3);
    vmiReg        fd    = getVMIReg(riscv, fdA);
    vmiReg        fs1   = getVMIRegFS(riscv, fs1A, getTmp(1));
    vmiReg        fs2   = getVMIRegFS(riscv, fs2A, getTmp(2));
    vmiReg        fs3   = getVMIRegFS(riscv, fs3A, getTmp(3));
    vmiFType      type  = getRegFType(fdA);
    vmiFTernop    op    = isRMMActive(state) ? vmi_FTERNUD : state->attrs->fpTernop;
    vmiFPConfigCP ctrl  = getFPControl(state);

    emitSetRM(state);

    vmimtFTernopRRRR(type, op, fd, fs1, fs2, fs3, RISCV_FP_FLAGS, False, ctrl);

    writeReg(riscv, fdA);
}

//
// Implement floating point conversion
//
static RISCV_MORPH_FN(emitFConvert) {

    riscvP        riscv = state->riscv;
    riscvRegDesc  fdA   = getRVReg(state, 0);
    riscvRegDesc  fsA   = getRVReg(state, 1);
    vmiReg        fd    = getVMIReg(riscv, fdA);
    vmiReg        fs    = getVMIRegFS(riscv, fsA, getTmp(1));
    vmiFType      typeD = getRegFType(fdA);
    vmiFType      typeS = getRegFType(fsA);
    Uns32         bitsD = getRBits(fdA);
    Uns32         bitsS = getRBits(fsA);
    vmiFPRC       rc    = mapRMDescToRC(state->info.rm);
    vmiFPConfigCP ctrl  = getFPControl(state);

    // indicate operation must be emulated if required
    if(ctrl) {
        rc |= vmi_FPR_USER;
    }

    // don't set rounding mode if destination type is floating point and wider
    // than source (conversion will be exact in this case) or if non-current
    // mode is specified (can be passed to the conversion primitive)
    if(((bitsD<=bitsS) || !VMI_FTYPE_IS_IEEE_754(typeD)) && (rc==vmi_FPR_CURRENT)) {
        emitSetRM(state);
    } else {
        emitCheckLegalRM(riscv, state->info.rm);
    }

    vmimtFConvertRR(typeD, fd, typeS, fs, rc, RISCV_FP_FLAGS, ctrl);

    writeReg(riscv, fdA);
}

//
// Implement floating point comparison
//
static RISCV_MORPH_FN(emitFCompare) {

    riscvP        riscv     = state->riscv;
    riscvRegDesc  rdA       = getRVReg(state, 0);
    riscvRegDesc  fs1A      = getRVReg(state, 1);
    riscvRegDesc  fs2A      = getRVReg(state, 2);
    vmiReg        rd        = getVMIReg(riscv, rdA);
    vmiReg        fs1       = getVMIRegFS(riscv, fs1A, getTmp(1));
    vmiReg        fs2       = getVMIRegFS(riscv, fs2A, getTmp(2));
    vmiFType      typeS     = getRegFType(fs1A);
    vmiFPRelation relation  = state->attrs->fpRel;
    vmiFlags      flags     = {f:{[vmi_ZF]=rd}, negate:vmi_FN_ZF};
    Bool          allowQNaN = state->attrs->fpQNaNOk;
    vmiFPConfigCP ctrl      = getFPControl(state);

    // set least-significant byte of 'rd' with the required result
    vmimtFCompareRR(typeS, rd, fs1, fs2, RISCV_FP_FLAGS, allowQNaN, ctrl);
    vmimtBinopRC(8, vmi_AND, rd, relation, &flags);

    writeRegSize(riscv, rdA, 8);
}

//
// Implement fsgnj, fsgnjn or fsgnjx operation
//
static RISCV_MORPH_FN(emitFSgn) {

    riscvP       riscv = state->riscv;
    riscvRegDesc fdA   = getRVReg(state, 0);
    riscvRegDesc fs1A  = getRVReg(state, 1);
    riscvRegDesc fs2A  = getRVReg(state, 2);
    vmiReg       fd    = getVMIReg(riscv, fdA);
    vmiReg       fs1   = getVMIRegFS(riscv, fs1A, getTmp(1));
    vmiReg       fs2   = getVMIRegFS(riscv, fs2A, getTmp(2));
    Uns32        bits  = getRBits(fdA);
    Uns64        mask  = (-1ULL<<(bits-1));
    vmiReg       tmp   = getTmp(0);

    // get required section of fs1 in tmp
    if(state->attrs->clearFS1) {
        vmimtBinopRRC(bits, vmi_AND, tmp, fs1, ~mask, 0);
    } else {
        vmimtMoveRR(bits, tmp, fs1);
    }

    // get required section of fs2
    vmimtBinopRRC(bits, vmi_AND, fd, fs2, mask, 0);

    // negate fd sign if required
    if(state->attrs->negFS2) {
        vmimtBinopRC(bits, vmi_XOR, fd, mask, 0);
    }

    // merge with tmp
    vmimtBinopRR(bits, vmi_XOR, fd, tmp, 0);

    writeReg(riscv, fdA);
}

//
// Enumeration of FClass values
//
typedef enum riscvFClassE {
    RVFC_NINF    = 1<<0,
    RVFC_NNORM   = 1<<1,
    RVFC_NDENORM = 1<<2,
    RVFC_NZERO   = 1<<3,
    RVFC_PZERO   = 1<<4,
    RVFC_PDENORM = 1<<5,
    RVFC_PNORM   = 1<<6,
    RVFC_PINF    = 1<<7,
    RVFC_SNAN    = 1<<8,
    RVFC_QNAN    = 1<<9,
} riscvFClass;

//
// Implement 32-bit FClass operation
//
static riscvFClass doFClass32(Uns32 value) {

    Bool        isSigned = (value & FP32_SIGN_MASK) && True;
    riscvFClass result;

    if(isSNaN32(value)) {
        result = RVFC_SNAN;
    } else if(isQNaN32(value)) {
        result = RVFC_QNAN;
    } else if(isInf32(value)) {
        result = isSigned ? RVFC_NINF : RVFC_PINF;
    } else if(isDenorm32(value)) {
        result = isSigned ? RVFC_NDENORM : RVFC_PDENORM;
    } else if(isZero32(value)) {
        result = isSigned ? RVFC_NZERO : RVFC_PZERO;
    } else {
        result = isSigned ? RVFC_NNORM : RVFC_PNORM;
    }

    return result;
}

//
// Implement 64-bit FClass operation
//
static riscvFClass doFClass64(Uns64 value) {

    Bool        isSigned = (value & FP64_SIGN_MASK) && True;
    riscvFClass result;

    if(isSNaN64(value)) {
        result = RVFC_SNAN;
    } else if(isQNaN64(value)) {
        result = RVFC_QNAN;
    } else if(isInf64(value)) {
        result = isSigned ? RVFC_NINF : RVFC_PINF;
    } else if(isDenorm64(value)) {
        result = isSigned ? RVFC_NDENORM : RVFC_PDENORM;
    } else if(isZero64(value)) {
        result = isSigned ? RVFC_NZERO : RVFC_PZERO;
    } else {
        result = isSigned ? RVFC_NNORM : RVFC_PNORM;
    }

    return result;
}

//
// Implement fclass operation
//
static RISCV_MORPH_FN(emitFClass) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc fs1A  = getRVReg(state, 1);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       fs1   = getVMIRegFS(riscv, fs1A, getTmp(1));
    Uns32        bitsD = 32;
    Uns32        bitsS = getRBits(fs1A);
    vmiCallFn    cb    = 0;

    // get function implementing fclass
    if(bitsS==32) {
        cb = (vmiCallFn)doFClass32;
    } else if(bitsS==64) {
        cb = (vmiCallFn)doFClass64;
    } else {
        VMI_ABORT("unimplemented bits %u", bitsS); // LCOV_EXCL_LINE
    }

    // call function
    vmimtArgReg(bitsS, fs1);
    vmimtCallResultAttrs(cb, bitsD, rd, VMCA_PURE);

    writeRegSize(riscv, rdA, bitsD);
}


////////////////////////////////////////////////////////////////////////////////
// INSTRUCTION TABLE
////////////////////////////////////////////////////////////////////////////////

//
// Dispatch table for instruction translation
//
const static riscvMorphAttr dispatchTable[] = {

    // move pseudo-instructions (register and constant source)
    [RV_IT_MV_R]        = {morph:emitMoveRR},
    [RV_IT_MV_C]        = {morph:emitMoveRC},

    // base R-type instructions
    [RV_IT_ADD_R]       = {morph:emitBinopRRR,  binop:vmi_ADD,    iClass:OCL_IC_INTEGER},
    [RV_IT_AND_R]       = {morph:emitBinopRRR,  binop:vmi_AND,    iClass:OCL_IC_INTEGER},
    [RV_IT_OR_R]        = {morph:emitBinopRRR,  binop:vmi_OR,     iClass:OCL_IC_INTEGER},
    [RV_IT_SLL_R]       = {morph:emitBinopRRR,  binop:vmi_SHL,    iClass:OCL_IC_INTEGER},
    [RV_IT_SLT_R]       = {morph:emitCmpopRRR,  cond :vmi_COND_L, iClass:OCL_IC_INTEGER},
    [RV_IT_SLTU_R]      = {morph:emitCmpopRRR,  cond :vmi_COND_B, iClass:OCL_IC_INTEGER},
    [RV_IT_SRA_R]       = {morph:emitBinopRRR,  binop:vmi_SAR,    iClass:OCL_IC_INTEGER},
    [RV_IT_SRL_R]       = {morph:emitBinopRRR,  binop:vmi_SHR,    iClass:OCL_IC_INTEGER},
    [RV_IT_SUB_R]       = {morph:emitBinopRRR,  binop:vmi_SUB,    iClass:OCL_IC_INTEGER},
    [RV_IT_XOR_R]       = {morph:emitBinopRRR,  binop:vmi_XOR,    iClass:OCL_IC_INTEGER},

    // M-extension R-type instructions
    [RV_IT_DIV_R]       = {morph:emitBinopRRR,  binop:vmi_IDIV,   iClass:OCL_IC_INTEGER},
    [RV_IT_DIVU_R]      = {morph:emitBinopRRR,  binop:vmi_DIV,    iClass:OCL_IC_INTEGER},
    [RV_IT_MUL_R]       = {morph:emitBinopRRR,  binop:vmi_MUL,    iClass:OCL_IC_INTEGER},
    [RV_IT_MULH_R]      = {morph:emitMulopHRRR, binop:vmi_IMUL,   iClass:OCL_IC_INTEGER},
    [RV_IT_MULHSU_R]    = {morph:emitMULHSU                   ,   iClass:OCL_IC_INTEGER},
    [RV_IT_MULHU_R]     = {morph:emitMulopHRRR, binop:vmi_MUL,    iClass:OCL_IC_INTEGER},
    [RV_IT_REM_R]       = {morph:emitBinopRRR,  binop:vmi_IREM,   iClass:OCL_IC_INTEGER},
    [RV_IT_REMU_R]      = {morph:emitBinopRRR,  binop:vmi_REM,    iClass:OCL_IC_INTEGER},

    // base I-type instructions
    [RV_IT_ADDI_I]      = {morph:emitBinopRRC,  binop:vmi_ADD,    iClass:OCL_IC_INTEGER},
    [RV_IT_ANDI_I]      = {morph:emitBinopRRC,  binop:vmi_AND,    iClass:OCL_IC_INTEGER},
    [RV_IT_JALR_I]      = {morph:emitJALR                                              },
    [RV_IT_ORI_I]       = {morph:emitBinopRRC,  binop:vmi_OR,     iClass:OCL_IC_INTEGER},
    [RV_IT_SLTI_I]      = {morph:emitCmpopRRC,  cond :vmi_COND_L, iClass:OCL_IC_INTEGER},
    [RV_IT_SLTIU_I]     = {morph:emitCmpopRRC,  cond :vmi_COND_B, iClass:OCL_IC_INTEGER},
    [RV_IT_SLLI_I]      = {morph:emitBinopRRC,  binop:vmi_SHL,    iClass:OCL_IC_INTEGER},
    [RV_IT_SRAI_I]      = {morph:emitBinopRRC,  binop:vmi_SAR,    iClass:OCL_IC_INTEGER},
    [RV_IT_SRLI_I]      = {morph:emitBinopRRC,  binop:vmi_SHR,    iClass:OCL_IC_INTEGER},
    [RV_IT_XORI_I]      = {morph:emitBinopRRC,  binop:vmi_XOR,    iClass:OCL_IC_INTEGER},

    // base I-type instructions for load and store
    [RV_IT_L_I]         = {morph:emitLoad },
    [RV_IT_S_I]         = {morph:emitStore},

    // base I-type instructions for CSR access (register)
    [RV_IT_CSRR_I]      = {morph:emitCSRR,   iClass:OCL_IC_SYSREG  },

    // base I-type instructions for CSR access (constant)
    [RV_IT_CSRRI_I]     = {morph:emitCSRRI,  iClass:OCL_IC_SYSREG  },

    // miscellaneous system I-type instructions
    [RV_IT_EBREAK_I]    = {morph:emitEBREAK, iClass:OCL_IC_SYSTEM  },
    [RV_IT_ECALL_I]     = {morph:emitECALL,  iClass:OCL_IC_SYSTEM  },
    [RV_IT_FENCEI_I]    = {morph:emitNOP,    iClass:OCL_IC_IBARRIER},
    [RV_IT_MRET_I]      = {morph:emitMRET,   iClass:OCL_IC_SYSTEM  },
    [RV_IT_SRET_I]      = {morph:emitSRET,   iClass:OCL_IC_SYSTEM  },
    [RV_IT_URET_I]      = {morph:emitURET,   iClass:OCL_IC_SYSTEM  },
    [RV_IT_WFI_I]       = {morph:emitWFI,    iClass:OCL_IC_SYSTEM  },

    // system fence I-type instruction
    [RV_IT_FENCE_I]     = {morph:emitNOP,    iClass:OCL_IC_DBARRIER},

    // system fence R-type instruction
    [RV_IT_FENCE_VMA_R] = {morph:emitSFENCE_VMA, iClass:OCL_IC_SYSTEM|OCL_IC_MMU},

    // base U-type instructions
    [RV_IT_AUIPC_U]     = {morph:emitMoveRPC, binop:vmi_ADD, iClass:OCL_IC_INTEGER},

    // base B-type instructions
    [RV_IT_BEQ_B]       = {morph:emitBranchRR, cond:vmi_COND_EQ},
    [RV_IT_BGE_B]       = {morph:emitBranchRR, cond:vmi_COND_NL},
    [RV_IT_BGEU_B]      = {morph:emitBranchRR, cond:vmi_COND_NB},
    [RV_IT_BLT_B]       = {morph:emitBranchRR, cond:vmi_COND_L },
    [RV_IT_BLTU_B]      = {morph:emitBranchRR, cond:vmi_COND_B },
    [RV_IT_BNE_B]       = {morph:emitBranchRR, cond:vmi_COND_NE},

    // base J-type instructions
    [RV_IT_JAL_J]       = {morph:emitJAL},

    // A-extension R-type instructions
    [RV_IT_AMOADD_R]    = {morph:emitAMOBinopRRR, binop:vmi_ADD    },
    [RV_IT_AMOAND_R]    = {morph:emitAMOBinopRRR, binop:vmi_AND    },
    [RV_IT_AMOMAX_R]    = {morph:emitAMOCmpopRRR, cond :vmi_COND_NL},
    [RV_IT_AMOMAXU_R]   = {morph:emitAMOCmpopRRR, cond :vmi_COND_NB},
    [RV_IT_AMOMIN_R]    = {morph:emitAMOCmpopRRR, cond :vmi_COND_L },
    [RV_IT_AMOMINU_R]   = {morph:emitAMOCmpopRRR, cond :vmi_COND_B },
    [RV_IT_AMOOR_R]     = {morph:emitAMOBinopRRR, binop:vmi_OR     },
    [RV_IT_AMOSWAP_R]   = {morph:emitAMOSwapRRR                    },
    [RV_IT_AMOXOR_R]    = {morph:emitAMOBinopRRR, binop:vmi_XOR    },
    [RV_IT_LR_R]        = {morph:emitLR, iClass:OCL_IC_EXCLUSIVE   },
    [RV_IT_SC_R]        = {morph:emitSC, iClass:OCL_IC_EXCLUSIVE   },

    // F-extension and D-extension R-type instructions
    [RV_IT_FMV_R]       = {                                            morph:emitFMoveRR                                                      },
    [RV_IT_FABS_R]      = {fpConfig:RVFP_NORMAL,                       morph:emitFUnop,    fpUnop  : vmi_FQABS                                },
    [RV_IT_FADD_R]      = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_FADD,   morph:emitFBinop,   fpBinop : vmi_FADD                                 },
    [RV_IT_FCLASS_R]    = {fpConfig:RVFP_NORMAL,                       morph:emitFClass,                         iClass:OCL_IC_FLOAT          },
    [RV_IT_FCVT_R]      = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_CVT,    morph:emitFConvert                                                     },
    [RV_IT_FDIV_R]      = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_FDIV,   morph:emitFBinop,   fpBinop : vmi_FDIV,   iClass:OCL_IC_DIVIDE         },
    [RV_IT_FEQ_R]       = {fpConfig:RVFP_NORMAL,                       morph:emitFCompare, fpRel   : vmi_FPRL_EQUAL,               fpQNaNOk: 1},
    [RV_IT_FLE_R]       = {fpConfig:RVFP_NORMAL,                       morph:emitFCompare, fpRel   : vmi_FPRL_LESS|vmi_FPRL_EQUAL, fpQNaNOk: 0},
    [RV_IT_FLT_R]       = {fpConfig:RVFP_NORMAL,                       morph:emitFCompare, fpRel   : vmi_FPRL_LESS,                fpQNaNOk: 0},
    [RV_IT_FMAX_R]      = {fpConfig:RVFP_FMAX,                         morph:emitFBinop,   fpBinop : vmi_FMAX                                 },
    [RV_IT_FMIN_R]      = {fpConfig:RVFP_FMIN,                         morph:emitFBinop,   fpBinop : vmi_FMIN                                 },
    [RV_IT_FMUL_R]      = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_FMUL,   morph:emitFBinop,   fpBinop : vmi_FMUL,   iClass:OCL_IC_MULTIPLY       },
    [RV_IT_FNEG_R]      = {fpConfig:RVFP_NORMAL,                       morph:emitFUnop,    fpUnop  : vmi_FQNEG                                },
    [RV_IT_FSGNJ_R]     = {fpConfig:RVFP_NORMAL,                       morph:emitFSgn,     clearFS1:1, negFS2:0, iClass:OCL_IC_FLOAT          },
    [RV_IT_FSGNJN_R]    = {fpConfig:RVFP_NORMAL,                       morph:emitFSgn,     clearFS1:1, negFS2:1, iClass:OCL_IC_FLOAT          },
    [RV_IT_FSGNJX_R]    = {fpConfig:RVFP_NORMAL,                       morph:emitFSgn,     clearFS1:0, negFS2:0, iClass:OCL_IC_FLOAT          },
    [RV_IT_FSQRT_R]     = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_FSQRT,  morph:emitFUnop,    fpUnop  : vmi_FSQRT,  iClass:OCL_IC_SQRT           },
    [RV_IT_FSUB_R]      = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_FSUB,   morph:emitFBinop,   fpBinop : vmi_FSUB                                 },

    // F-extension and D-extension R4-type instructions
    [RV_IT_FMADD_R4]    = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_FMADD,  morph:emitFTernop,  fpTernop: vmi_FMADD,  iClass:OCL_IC_FMA            },
    [RV_IT_FMSUB_R4]    = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_FMSUB,  morph:emitFTernop,  fpTernop: vmi_FMSUB,  iClass:OCL_IC_FMA            },
    [RV_IT_FNMADD_R4]   = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_FNMADD, morph:emitFTernop,  fpTernop: vmi_FNMADD, iClass:OCL_IC_FMA            },
    [RV_IT_FNMSUB_R4]   = {fpConfig:RVFP_NORMAL, fpRMMCfg:RVFP_FNMSUB, morph:emitFTernop,  fpTernop: vmi_FNMSUB, iClass:OCL_IC_FMA            },

    // X-extension instructions
    [RV_IT_CUSTOM]      = {morph:emitCustomAbsent },

    // KEEP LAST
    [RV_IT_LAST]        = {0}
};

//
// Called at the start of a new code block
//
VMI_START_END_BLOCK_FN(riscvStartBlock) {

    riscvP           riscv     = (riscvP)processor;
    riscvBlockStateP thisState = blockState;

    // save currently-active block state and set new state
    thisState->prevState = riscv->blockState;
    riscv->blockState    = thisState;

    // no single-precision registers are known to be NaN-boxed initially
    thisState->fpNaNBoxMask = 0;

    // no floating-point instructions have been seen initially if management
    // of floating point state using mstatus.FS is required
    thisState->fpInstDone = riscv->configInfo.fs_always_dirty;

    // active floating point rounding mode is initially unknown
    thisState->fpActiveRMMT = RV_RM_NA;
}

//
// Called at the end of a new code block
//
VMI_START_END_BLOCK_FN(riscvEndBlock) {

    riscvP           riscv     = (riscvP)processor;
    riscvBlockStateP thisState = blockState;

    // sanity check that the current block is being ended
    VMI_ASSERT(
        thisState==riscv->blockState,
        "unexpected mismatched blockState at end of block"
    );

    // restore previously-active block state
    riscv->blockState = thisState->prevState;
}

//
// Instruction Morpher
//
VMI_MORPH_FN(riscvMorph) {

    riscvP          riscv = (riscvP)processor;
    riscvMorphState state;

    // get instruction and instruction type
    riscvDecode(riscv, thisPC, &state.info);

    state.attrs       = &dispatchTable[state.info.type];
    state.riscv       = riscv;
    state.inDelaySlot = inDelaySlot;

    // clear mask of X registers targeted by this instruction
    riscv->writtenXMask = 0;

    if(disableMorph(&state)) {

        // no action if in disassembly mode

    } else if(state.info.type==RV_IT_LAST) {

        // take Illegal Instruction exception
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "UDEC", "Undecoded instruction");

    } else if(!riscvInstructionEnabled(riscv, state.info.arch)) {

        // instruction not enabled

    } else if(state.attrs->morph) {

        // call derived model preMorph function if required
        if(riscv->cb.preMorph) {
            riscv->cb.preMorph(riscv);
        }

        // translate the instruction
        vmimtInstructionClassAdd(state.attrs->iClass);
        state.attrs->morph(&state);

        // call derived model postMorph function if required
        if(riscv->cb.postMorph) {
            riscv->cb.postMorph(riscv);
        }

    } else {

        // here if no morph callback specified
        vmiMessage("F", CPU_PREFIX "_UIMP", // LCOV_EXCL_LINE
            SRCREF_FMT "unimplemented",
            SRCREF_ARGS(riscv, thisPC)
        );
    }
}

//
// Adjust results for divide-by-zero and integer overflow
//
VMI_ARITH_RESULT_FN(riscvArithResult) {

    if(!divideInfo->divisor) {

        // divide by zero
        divideResults->quotient  = -1;
        divideResults->remainder = divideInfo->dividendLSW;

    } else {

        // integer overflow
        divideResults->quotient  = divideInfo->dividendLSW;
        divideResults->remainder = 0;
    }
}

