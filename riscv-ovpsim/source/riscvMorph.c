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
#include "riscvStructure.h"
#include "riscvTypeRefs.h"
#include "riscvUtils.h"
#include "riscvVM.h"


////////////////////////////////////////////////////////////////////////////////
// TYPES
////////////////////////////////////////////////////////////////////////////////

//
// Abstract type
//
DEFINE_S(iterDesc);

//
// Generic JIT code emission callback
//
#define RISCV_MORPH_FN(_NAME) void _NAME(riscvMorphStateP state)
typedef RISCV_MORPH_FN((*riscvMorphFn));

//
// Generic JIT code emission callback for vector element
//
#define RISCV_MORPHV_FN(_NAME) void _NAME(riscvMorphStateP state, iterDescP id)
typedef RISCV_MORPHV_FN((*riscvMorphVFn));

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

    RVFP_LAST       // KEEP LAST

} riscvFPCtrl;

//
// Vector width control
//
typedef enum riscvVShapeE {

                    // INTEGER ARGUMENTS
    RVVW_111_II,    // SEW
    RVVW_EXT_II,    // SEW, VEXT.X.V
    RVVW_111_PI,    // SEW, Vd is predicate
    RVVW_111_SI,    // SEW, Vd is scalar
    RVVW_CIN_II,    // SEW, mask is carry-in (VADC etc)
    RVVW_CIN_PI,    // SEW, Vd is predicate, mask is carry-in (VMADC etc)
    RVVW_212_SI,    // 2*SEW = SEW   op 2*SEW, Vd is scalar
    RVVW_121_II,    // SEW   = 2*SEW op SEW
    RVVW_121_IIS,   // SEW   = 2*SEW op SEW, saturating result
    RVVW_211_IIQ,   // 2*SEW = SEW   op SEW, implicit widening
    RVVW_211_II,    // 2*SEW = SEW   op SEW
    RVVW_221_II,    // 2*SEW = 2*SEW op SEW

                    // FLOATING POINT ARGUMENTS
    RVVW_111_FF,    // SEW
    RVVW_111_PF,    // SEW, Vd is predicate
    RVVW_111_SF,    // SEW, Vd is scalar
    RVVW_212_SF,    // 2*SEW = SEW   op 2*SEW, Vd is scalar
    RVVW_121_FFQ,   // SEW   = 2*SEW op SEW, implicit widening
    RVVW_211_FFQ,   // 2*SEW = SEW   op SEW, implicit widening
    RVVW_211_FF,    // 2*SEW = SEW   op SEW
    RVVW_221_FF,    // 2*SEW = 2*SEW op SEW

                    // MIXED ARGUMENTS
    RVVW_111_FI,    // SEW, Fd=Is
    RVVW_111_IF,    // SEW, Id=Fs
    RVVW_211_FIQ,   // 2*SEW = SEW, Fd=Is
    RVVW_211_IFQ,   // 2*SEW = SEW, Id=Fs
    RVVW_121_FIQ,   // SEW = 2*SEW, implicit widening
    RVVW_121_IFQ,   // SEW = 2*SEW, implicit widening

                    // MASK ARGUMENTS
    RVVW_111_PP,    // SEW
    RVVW_111_IP,    // SEW

                    // SLIDING ARGUMENTS
    RVVW_111_UP,    // SEW, VSLIDEUP instructions
    RVVW_111_DN,    // SEW, VSLIDEDOWN instructions
    RVVW_111_CMP,   // SEW, VCOMPRESS instruction

    RVVW_LAST       // KEEP LAST: for sizing

} riscvVShape;

//
// Vector argument types
//
typedef enum riscvVArgTypeE {
    RVVX_S1 = (1<<0),
    RVVX_S2 = (1<<1),
    RVVX_UU = 0,
    RVVX_SU = RVVX_S1,
    RVVX_US = RVVX_S2,
    RVVX_SS = RVVX_S1|RVVX_S2,
} riscvVArgType;

//
// Floating point compare relation
//
typedef enum riscvFPRelationE {
    RVFCMP_QNOK = 0x10,
    RVFCMP_ORD  = vmi_FPRL_EQUAL|vmi_FPRL_LESS|vmi_FPRL_GREATER | RVFCMP_QNOK,
    RVFCMP_EQ   = vmi_FPRL_EQUAL                                | RVFCMP_QNOK,
    RVFCMP_NE   = vmi_FPRL_LESS|vmi_FPRL_GREATER                | RVFCMP_QNOK,
    RVFCMP_LT   = vmi_FPRL_LESS,
    RVFCMP_LE   = vmi_FPRL_LESS|vmi_FPRL_EQUAL,
    RVFCMP_GT   = vmi_FPRL_GREATER,
    RVFCMP_GE   = vmi_FPRL_GREATER|vmi_FPRL_EQUAL
} riscvFPRelation;

//
// Attributes controlling JIT code translation
//
typedef struct riscvMorphAttrS {
    riscvMorphFn          morph;            // function to translate one instruction
    riscvMorphVFn         checkCB;          // called to check vector operation arguments
    riscvMorphVFn         initCB;           // called at start of vector operation
    riscvMorphVFn         opTCB;            // element operation when mask=1
    riscvMorphVFn         opFCB;            // element operation when mask=0
    riscvMorphVFn         endCB;            // called at end of vector operation
    octiaInstructionClass iClass;           // supplemental instruction class
    vmiBinop              binop      : 8;   // integer binary operation
    vmiFUnop              fpUnop     : 8;   // floating-point unary operation
    vmiFBinop             fpBinop    : 8;   // floating-point binary operation
    vmiFTernop            fpTernop   : 8;   // floating-point ternary operation
    riscvFPCtrl           fpConfig   : 8;   // floating point configuration
    riscvFPRelation       fpRel      : 8;   // floating point comparison relation
    riscvVShape           vShape     : 8;   // vector operation shape
    vmiCondition          cond       : 4;   // comparison condition
    riscvVArgType         argType    : 4;   // vector argument types
    Bool                  fpQNaNOk   : 1;   // allow QNaN in floating point compare?
    Bool                  clearFS1   : 1;   // clear FS1 sign (FSgn operation)
    Bool                  negFS2     : 1;   // negate FS2 sign (FSgn operation)
    Bool                  vstart0    : 1;   // must vstart be zero?
    Bool                  implicitTZ : 1;   // is top part implicitly zeroed?
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
// Emit code to take Illegal Instruction exception when feature is absent or not
// enabled
//
static void emitIllegalInstructionAbsentArch(riscvArchitecture missing) {
    vmimtArgProcessor();
    vmimtArgUns32(missing);
    vmimtCallAttrs((vmiCallFn)illegalInstructionAbsentArch, VMCA_EXCEPTION);
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

        // register indices >= 15 are illegal for E extension (the inverse of
        // the I feature)
        if((index<16) || riscvRequireArchPresentMT(riscv, ISA_I)) {
            result = index ? RISCV_GPR(index) : VMI_NOREG;
        }

    } else if(isFReg(r)) {

        // require either D or F
        if(riscvRequireArchPresentMT(riscv, (bits==64) ? ISA_D : ISA_F)) {
            result = RISCV_FPR(index);
        }

    } else if(isVReg(r)) {

        // require V feature
        if(riscvRequireArchPresentMT(riscv, ISA_V)) {
            result = riscvGetVReg(riscv, index);
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

    riscvP riscv     = state->riscv;
    Bool   unaligned = riscv->configInfo.unaligned;

    return unaligned ? MEM_CONSTRAINT_NONE : MEM_CONSTRAINT_ALIGNED;
}

//
// Get alignment constraint for atomic operations (must be aligned prior to
// version 2.3)
//
static memConstraint getLoadStoreConstraintAMO(riscvMorphStateP state) {

    riscvP riscv        = state->riscv;
    Bool   unaligned    = riscv->configInfo.unaligned;
    Bool   unalignedAMO = riscv->configInfo.unalignedAMO && unaligned;

    return unalignedAMO ? MEM_CONSTRAINT_NONE : MEM_CONSTRAINT_ALIGNED;
}

//
// Get alignment constraint for LR/SC operations (always aligned)
//
static memConstraint getLoadStoreConstraintLR(riscvMorphStateP state) {

    return MEM_CONSTRAINT_ALIGNED;
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
        vmimtTestRCJumpLabel(bits, vmi_COND_Z, ra, 0x2, ok);

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
// Atomic memory operation (internal interface)
//
static void emitAMOCommonInt(
    riscvMorphStateP state,
    amoCB            opCB,
    vmiReg           rd,
    vmiReg           rs,
    vmiReg           ra,
    Uns32            bits
) {
    memConstraint constraint = getLoadStoreConstraintAMO(state);
    vmiReg        tmp1       = getTmp(1);
    vmiReg        tmp2       = getTmp(2);

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
}

//
// Atomic memory operation (GPR arguments)
//
static void emitAMOCommonRRR(riscvMorphStateP state, amoCB opCB) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc rsA   = getRVReg(state, 1);
    riscvRegDesc raA   = getRVReg(state, 2);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       rs    = getVMIReg(riscv, rsA);
    vmiReg       ra    = getVMIReg(riscv, raA);
    Uns32        bits  = getRBits(rdA);

    emitAMOCommonInt(state, opCB, rd, rs, ra, bits);

    writeReg(riscv, rdA);
}

//
// AMO binop callback
//
static AMO_FN(emitAMOBinopRRRCB) {
    vmimtBinopRRR(bits, state->attrs->binop, rd, ra, rb, 0);
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
    memConstraint constraint = getLoadStoreConstraintLR(state);

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
    memConstraint constraint = getLoadStoreConstraintLR(state);

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

    // this instruction requires Supervisor mode to be implemented
    checkHaveSModeMT(riscv);

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

            // do the write
            riscvEmitCSRWrite(attrs, riscv, rs1Tmp, cbTmp);

            // adjust code generator state after CSR write if required
            if(attrs->wstateCB) {
                attrs->wstateCB(state, useRS1);
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

    vmiReg result = getVMIReg(riscv, r);

    if(isFReg(r)) {

        Uns32 bits     = getRBits(r);
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

//
// Adjust JIT code generator state after write of floating point register
//
void riscvWFS(riscvMorphStateP state, Bool useRS1) {
    updateFS(state->riscv);
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
    .stickyFlags             = True                     \
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
inline static vmiFPRC mapRMDescToRC(riscvRMDesc rm) {

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


////////////////////////////////////////////////////////////////////////////////
// FLOATING POINT INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Validate the given rounding mode is legal and emit an Illegal Instruction
// exception call if not
//
static Bool emitCheckLegalRM(riscvP riscv, riscvRMDesc rm) {

    Bool validRM = True;

    if(rm >= RV_RM_BAD5) {

        // static check for illegal mode
        validRM = False;

    } else if(rm==RV_RM_CURRENT) {

        // dynamic check of current mode required
        vmimtPolymorphicBlock(RISCV_PM_KEY);
        validRM = (riscv->pmKey & RM_VALID_MASK);
    }

    // illegal instruction if invalid rounding mode
    if(!validRM) {
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IRM", "Illegal rounding mode");
    }

    return validRM;
}

//
// Update current rounding mode if required
//
static Bool emitSetOperationRM(riscvMorphStateP state, riscvRMDesc rm) {

    riscvP riscv   = state->riscv;
    Bool   validRM = emitCheckLegalRM(riscv, rm);

    if(validRM) {
        vmimtFSetRounding(mapRMDescToRC(rm));
    }

    return validRM;
}

//
// Return floating point control to use for the current instruction
//
static vmiFPConfigCP getFPControl(riscvMorphStateP state) {

    riscvFPCtrl   ctrl   = state->attrs->fpConfig;
    vmiFPConfigCP result = 0;

    if(ctrl) {

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
    vmiFUnop      op    = state->attrs->fpUnop;
    vmiFPConfigCP ctrl  = getFPControl(state);

    if(emitSetOperationRM(state, state->info.rm)) {
        vmimtFUnopRR(type, op, fd, fs1, RISCV_FP_FLAGS, ctrl);
        writeReg(riscv, fdA);
    }
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
    vmiFBinop     op    = state->attrs->fpBinop;
    vmiFPConfigCP ctrl  = getFPControl(state);

    if(emitSetOperationRM(state, state->info.rm)) {
        vmimtFBinopRRR(type, op, fd, fs1, fs2, RISCV_FP_FLAGS, ctrl);
        writeReg(riscv, fdA);
    }
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
    vmiFTernop    op    = state->attrs->fpTernop;
    vmiFPConfigCP ctrl  = getFPControl(state);

    if(emitSetOperationRM(state, state->info.rm)) {
        vmimtFTernopRRRR(type, op, fd, fs1, fs2, fs3, RISCV_FP_FLAGS, False, ctrl);
        writeReg(riscv, fdA);
    }
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
    vmiFPRC       rc    = mapRMDescToRC(state->info.rm);
    vmiFPConfigCP ctrl  = getFPControl(state);

    if(emitCheckLegalRM(riscv, state->info.rm)) {
        vmimtFConvertRR(typeD, fd, typeS, fs, rc, RISCV_FP_FLAGS, ctrl);
        writeReg(riscv, fdA);
    }
}

//
// Implement floating point comparison, internal interface
//
static void emitFCompareInt(
    riscvMorphStateP state,
    vmiReg           rd,
    vmiReg           fs1,
    vmiReg           fs2,
    vmiFType         typeS
) {
    riscvFPRelation fpRel     = state->attrs->fpRel;
    vmiFPRelation   relation  = fpRel & ~RVFCMP_QNOK;
    Bool            allowQNaN = fpRel &  RVFCMP_QNOK;
    vmiFlags        flags     = {f:{[vmi_ZF]=rd}, negate:vmi_FN_ZF};
    vmiFPConfigCP   ctrl      = getFPControl(state);

    // set least-significant byte of 'rd' with the required result
    vmimtFCompareRR(typeS, rd, fs1, fs2, RISCV_FP_FLAGS, allowQNaN, ctrl);
    vmimtBinopRC(8, vmi_AND, rd, relation, &flags);
}

//
// Implement floating point comparison
//
static RISCV_MORPH_FN(emitFCompare) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc fs1A  = getRVReg(state, 1);
    riscvRegDesc fs2A  = getRVReg(state, 2);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       fs1   = getVMIRegFS(riscv, fs1A, getTmp(1));
    vmiReg       fs2   = getVMIRegFS(riscv, fs2A, getTmp(2));
    vmiFType     typeS = getRegFType(fs1A);

    emitFCompareInt(state, rd, fs1, fs2, typeS);

    writeRegSize(riscv, rdA, 8);
}

//
// Implement fsgnj, fsgnjn or fsgnjx operation, internal interface
//
static void emitFSgnInt(
    riscvMorphAttrCP attrs,
    vmiReg           fd,
    vmiReg           fs1,
    vmiReg           fs2,
    Uns32            bits
) {
    Uns64  mask = (-1ULL<<(bits-1));
    vmiReg tmp  = getTmp(0);

    // mark this instruction as floating point
    vmimtInstructionClassAdd(OCL_IC_FLOAT);

    // get required section of fs1 in tmp
    if(attrs->clearFS1) {
        vmimtBinopRRC(bits, vmi_AND, tmp, fs1, ~mask, 0);
    } else {
        vmimtMoveRR(bits, tmp, fs1);
    }

    // get required section of fs2
    vmimtBinopRRC(bits, vmi_AND, fd, fs2, mask, 0);

    // negate fd sign if required
    if(attrs->negFS2) {
        vmimtBinopRC(bits, vmi_XOR, fd, mask, 0);
    }

    // merge with tmp
    vmimtBinopRR(bits, vmi_XOR, fd, tmp, 0);
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

    emitFSgnInt(state->attrs, fd, fs1, fs2, bits);

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
// Implement fclass operation, internal interface
//
static void emitFClassInt(
    vmiReg rd,
    vmiReg fs1,
    Uns32  bitsS,
    Uns32  bitsD
) {
    vmiCallFn cb = 0;

    // mark this instruction as floating point
    vmimtInstructionClassAdd(OCL_IC_FLOAT);

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

    emitFClassInt(rd, fs1, bitsS, bitsD);

    writeRegSize(riscv, rdA, bitsD);
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR UNIT CONFIGURATION
////////////////////////////////////////////////////////////////////////////////

//
// Configure vector extension
//
void riscvConfigureVector(riscvP riscv) {

    if(riscv->configInfo.arch & ISA_V) {

        Uns32 vRegBytes   = riscv->configInfo.VLEN/8;
        Uns32 stripeBytes = riscv->configInfo.SLEN/8;
        Uns32 stripes     = vRegBytes/stripeBytes;
        Uns32 stripe;
        Uns32 byte;
        Uns32 i;

        // iterate over stripes
        for(stripe=0; stripe<stripes; stripe++) {

            // iterate over stripe bytes
            for(byte=0; byte<stripeBytes; byte++) {

                // initialize LMULx2 index table
                for(i=0; i<2; i++) {

                    Uns32 index = byte + (stripeBytes*i) + (stripe*stripeBytes*2);
                    Uns32 value = byte + (vRegBytes*i) + (stripe*stripeBytes);

                    riscv->offsetsLMULx2[index] = value;
                }

                // initialize LMULx4 index table
                for(i=0; i<4; i++) {

                    Uns32 index = byte + (stripeBytes*i) + (stripe*stripeBytes*4);
                    Uns32 value = byte + (vRegBytes*i) + (stripe*stripeBytes);

                    riscv->offsetsLMULx4[index] = value;
                }

                // initialize LMULx8 index table
                for(i=0; i<8; i++) {

                    Uns32 index = byte + (stripeBytes*i) + (stripe*stripeBytes*8);
                    Uns32 value = byte + (vRegBytes*i) + (stripe*stripeBytes);

                    riscv->offsetsLMULx8[index] = value;
                }
            }
        }

        // show derived vector indices if required
        if(RISCV_DEBUG_VECTIDX(riscv)) {

            vmiPrintf(
                "\nVLEN=%u SLEN=%u\n",
                riscv->configInfo.VLEN,
                riscv->configInfo.SLEN
            );

            vmiPrintf("\nLMULx2 TABLE\n");
            for(i=0; i<2; i++) {
                for(byte=0; byte<vRegBytes; byte++) {
                    vmiPrintf("%3u ", riscv->offsetsLMULx2[i*vRegBytes+byte]);
                }
                vmiPrintf("\n");
            }

            vmiPrintf("\nLMULx4 TABLE\n");
            for(i=0; i<4; i++) {
                for(byte=0; byte<vRegBytes; byte++) {
                    vmiPrintf("%3u ", riscv->offsetsLMULx4[i*vRegBytes+byte]);
                }
                vmiPrintf("\n");
            }

            vmiPrintf("\nLMULx8 TABLE\n");
            for(i=0; i<8; i++) {
                for(byte=0; byte<vRegBytes; byte++) {
                    vmiPrintf("%3u ", riscv->offsetsLMULx8[i*vRegBytes+byte]);
                }
                vmiPrintf("\n");
            }

            vmiPrintf("\n");
        }
    }
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR OPERATION DISPATCH
////////////////////////////////////////////////////////////////////////////////

//
// This type describes a base register of a given size
//
typedef struct baseDescS {
    vmiReg reg;         // base register
    vmiReg index;       // index register
    Uns32  elemBits;    // element size in bits
    Bool   striped;     // whether a striped base
} baseDesc, *baseDescP;

//
// Context for generic vector operation
//
typedef struct iterDescS {
    riscvVLMULMt VLMUL;                 // effective VLMUL
    riscvSEWMt   SEW;                   // effective SEW
    Uns32        MLEN;                  // effective MLEN
    riscvRegDesc PdA;                   // predicate abstract target register
    vmiReg       mask;                  // mask register
    vmiReg       rdNarrow;              // narrow destination register
    vmiReg       r[RV_MAX_AREGS];       // argument registers
    baseDesc     base[NUM_BASE_REGS];   // base registers
    Uns32        vBytesMax;             // vector size (including padding)
    vmiLabelP    maskF;                 // target if mask=0
    vmiLabelP    skip;                  // target if body is skipped
} iterDesc;

//
// Convert multiple to shift amount, returning -1 if not a power of two
//
static Int32 mulToShift(Uns32 mul) {

    Uns32 result = 0;

    while(mul && !(mul&1)) {
        mul >>= 1;
        result++;
    }

    return (mul==1) ? result : -1;
}

//
// Convert power-of-two multiple to shift amount
//
static Uns32 mulToShiftP2(Uns32 mul) {

    Uns32 result = mulToShift(mul);

    VMI_ASSERT(result!=-1, "multiple not power of 2");

    return result;
}

//
// Return amount by which an offset register should be shifted to index a base
// register addressing a mask register
//
static Uns32 getMaskBaseShift(iterDescP id) {

    Uns32 shift = mulToShiftP2(id->MLEN);

    VMI_ASSERT(shift<=2, "unexpected MLEN=%u", id->MLEN);

    return 3-shift;
}

//
// Return vmiReg structure holding the rotate amount for field mask alignment
//
static vmiReg fillFieldMaskRotate(
    riscvMorphStateP state,
    iterDescP        id,
    vmiReg           count,
    vmiReg           tRotate
) {
    vmiReg result = count;
    Uns32  shift  = mulToShiftP2(id->MLEN);

    if(shift) {
        vmimtBinopRRC(8, vmi_SHL, tRotate, result, shift, 0);
        result = tRotate;
    }

    return result;
}

//
// Fill predicate mask given rotation
//
static void fillPredMask(iterDescP id, vmiReg rotate) {

    Uns8   c    = ~((1<<id->MLEN)-1);
    vmiReg mask = RISCV_VPRED_MASK;

    vmimtBinopRCR(8, vmi_ROL, mask, c, rotate, 0);
}

//
// Fill active mask given rotation
//
static void fillActiveMask(iterDescP id, vmiReg rotate) {

    Uns8   c    = 1;
    vmiReg mask = RISCV_VACTIVE_MASK;

    vmimtBinopRCR(8, vmi_ROL, mask, c, rotate, 0);
}

//
// Prepare byte-sized predicate and active masks if required
//
static void prepareMasks(
    riscvMorphStateP state,
    iterDescP        id,
    vmiReg           t,
    Bool             needPredMask,
    Bool             needActiveMask
) {
    if((id->MLEN<8) && (needPredMask || needActiveMask)) {

        vmiReg vstart = CSR_REG_MT(vstart);
        vmiReg rotate = fillFieldMaskRotate(state, id, vstart, t);

        // create predicate mask (masks out a predicate field)
        if(needPredMask) {
            fillPredMask(id, rotate);
        }

        // create active mask (LSB within byte set)
        if(needActiveMask) {
            fillActiveMask(id, rotate);
        }
    }
}

//
// Dispatch vector callback function
//
inline static void dispatchVector(
    riscvMorphStateP state,
    riscvMorphVFn    vectorCB,
    iterDescP        id
) {
    if(vectorCB) {
        vectorCB(state, id);
    }
}

//
// Convert vsew field to riscvSEWMt type
//
inline static riscvSEWMt vsewToSEW(Uns32 vsew) {
    return 8<<vsew;
}

//
// Convert vlmul field to riscvVLMULMt type
//
inline static riscvVLMULMt vlmulToVLMUL(Uns32 vlmul) {
    return 1<<vlmul;
}

//
// Get an indexed register specification, removing any previous index
// information
//
static void getIndexedRegisterInt(vmiReg *r, vmiReg *base, Uns32 bytes) {

    // reset any current indexed state
    VMI_REG_IKEY(*r)   = 0;
    VMI_REG_IBYTES(*r) = 0;

    // define indexed register
    vmimtGetIndexedRegister(r, base, bytes);
}

//
// Return offset index table register for the current operation
//
static vmiReg getOffsetIndexTable(
    iterDescP id,
    vmiReg   *offsetBaseP,
    Uns32     eBytes
) {
    Uns32        eScale     = eBytes*8/id->SEW;
    riscvVLMULMt VLMUL      = id->VLMUL*eScale;
    vmiReg       offsetIdx  = VMI_NOREG;
    Uns32        tableBytes = id->vBytesMax*eScale * sizeof(riscvStrideOffset);

    // get table for the given VLMUL
    if(VLMUL==VLMULMT_2) {
        offsetIdx = RISCV_OFFSETS_LMULx2;
    } else if(VLMUL==VLMULMT_4) {
        offsetIdx = RISCV_OFFSETS_LMULx4;
    } else if(VLMUL==VLMULMT_8) {
        offsetIdx = RISCV_OFFSETS_LMULx8;
    } else {
        VMI_ABORT("Unexpected VLMUL %u", VLMUL); // LCOV_EXCL_LINE
    }

    // convert to indexed register
    getIndexedRegisterInt(&offsetIdx, offsetBaseP, tableBytes);

    return offsetIdx;
}

//
// Initialize base register
//
static void initializeBase(
    riscvMorphStateP state,
    iterDescP        id,
    vmiReg          *rP,
    baseDescP        base,
    Uns32            vecBytes
) {
    Uns32  offsetBits = IMPERAS_POINTER_BITS;
    vmiReg offset     = getTmp(0);
    vmiReg index      = base->index;
    Uns32  elemBytes  = base->elemBits/8;

    if(base->striped) {

        // striped base register
        Uns32  lutEBytes  = sizeof(riscvStrideOffset);
        Uns32  lutEBits   = lutEBytes * 8;
        vmiReg offsetBase = base->reg;
        Uns32  scale      = elemBytes*lutEBytes;
        Uns32  eScale     = elemBytes*8/id->SEW;
        Uns32  lutBytes   = VBYTES_MAX * lutEBytes * id->VLMUL * eScale;

        // handle table offset scale > 8
        if(scale>8) {
            Uns32 shift = mulToShiftP2(scale);
            vmimtBinopRRC(offsetBits, vmi_SHL, offset, index, shift, 0);
            index = offset;
            scale = 1;
        }

        // adjust table base using scaled index
        vmiReg offsetIdx = getOffsetIndexTable(id, &offsetBase, elemBytes);
        vmimtAddBaseR(offsetBase, index, scale, lutBytes, False, False);

        // get offset from table
        vmimtMoveExtendRR(offsetBits, offset, lutEBits, offsetIdx, False);

        // initialize base register
        getIndexedRegisterInt(rP, &base->reg, vecBytes);
        vmimtAddBaseR(base->reg, offset, 1, vecBytes, False, False);

    } else if(elemBytes) {

        // initialize base register
        getIndexedRegisterInt(rP, &base->reg, vecBytes);
        vmimtAddBaseR(base->reg, index, elemBytes, vecBytes, False, False);

    } else {

        // sub-byte reference
        Uns32 baseShift = getMaskBaseShift(id);

        // calculate byte offset
        vmimtBinopRRC(offsetBits, vmi_SHR, offset, index, baseShift, 0);

        // initialize base register
        getIndexedRegisterInt(rP, &base->reg, vecBytes);
        vmimtAddBaseR(base->reg, offset, 1, vecBytes, False, False);
    }
}

//
// Convert vector register to indexed register
//
static void getIndexedRegister(
    riscvMorphStateP state,
    iterDescP        id,
    vmiReg          *rP,
    vmiReg           index,
    Uns32            elemBits,
    Uns32            vecBytes,
    Bool             striped
) {
    if(!VMI_ISNOREG(*rP)) {

        Bool      found = False;
        baseDescP base  = 0;
        Uns32     i;

        // search for an existing matching base register
        for(i=0; !found && (i<NUM_BASE_REGS); i++) {

            base = &id->base[i];

            found = (
                !base->elemBits ||
                (
                    (base->striped==striped) &&
                    VMI_REG_EQUAL(base->index, index) &&
                    (base->elemBits==elemBits)
                )
            );
        }

        // expect either to find a match or a free descriptor
        VMI_ASSERT(found, "too many base registers");

        if(base->elemBits) {

            // reuse a previously-initialized base
            getIndexedRegisterInt(rP, &base->reg, vecBytes);

        } else {

            // get index number of new base register
            Uns32 baseIndex = base - id->base;

            // create a new base
            base->reg      = RISCV_CPU_VBASE(baseIndex);
            base->index    = index;
            base->elemBits = elemBits;
            base->striped  = striped;

            // initialize the base
            initializeBase(state, id, rP, base, vecBytes);
        }
    }
}

//
// Zero vstart register
//
static void setVStartZero(riscvMorphStateP state) {

    riscvBlockStateP blockState = state->riscv->blockState;

    if(!blockState->VStartZeroMt) {

        blockState->VStartZeroMt = True;

        vmimtMoveRC(32, CSR_REG_MT(vstart), 0);
    }
}

//
// Get effective vector length multiplier
//
static riscvVLMULMt getVLMULMt(riscvP riscv) {

    riscvBlockStateP blockState = riscv->blockState;
    riscvVLMULMt     VLMUL      = blockState->VLMULMt;

    if(VLMUL==VLMULMT_UNKNOWN) {

        vmimtPolymorphicBlock(RISCV_PM_KEY);

        blockState->VLMULMt = VLMUL = vlmulToVLMUL(RD_CSR_FIELD(riscv, vtype, vlmul));
    }

    return VLMUL;
}

//
// Return SEW for the current vector operation
//
static riscvSEWMt getSEWMt(riscvP riscv) {

    riscvBlockStateP blockState = riscv->blockState;
    riscvSEWMt       SEW        = blockState->SEWMt;

    if(SEW==SEWMT_UNKNOWN) {

        vmimtPolymorphicBlock(RISCV_PM_KEY);

        blockState->SEWMt = SEW = vsewToSEW(RD_CSR_FIELD(riscv, vtype, vsew));
    }

    return SEW;
}

//
// Get effective zero/non-zero/max vector length
//
static riscvVLClassMt getVLClassMt(riscvMorphStateP state) {

    riscvP           riscv      = state->riscv;
    riscvBlockStateP blockState = riscv->blockState;
    riscvVLClassMt   vlClass    = blockState->VLClassMt;

    if(vlClass==VLCLASSMT_UNKNOWN) {

        Uns32        vl    = RD_CSR(riscv, vl);
        riscvSEWMt   SEW   = getSEWMt(riscv);
        riscvVLMULMt VLMUL = getVLMULMt(riscv);
        Uns32        vlMax = riscv->configInfo.VLEN*VLMUL/SEW;

        vmimtPolymorphicBlock(RISCV_PM_KEY);

        if(!vl) {
            vlClass = VLCLASSMT_ZERO;
        } else if(vl>=vlMax) {
            vlClass = VLCLASSMT_MAX;
        } else {
            vlClass = VLCLASSMT_NONZERO;
        }

        blockState->VLClassMt = vlClass;
    }

    return vlClass;
}

//
// This specifies parameter overlap constraints
//
typedef enum overlapTypeE {

    OT_NA = 0x0,    // no special constraints
    OT_S  = 0x1,    // destination must not overlap vector source
    OT_M  = 0x2,    // destination must not overlap mask source

    OT___ = OT_NA,
    OT_S_ = OT_S,
    OT__M = OT_M,
    OT_SM = OT_S|OT_M,

} overlapType;

//
// This structure gives information for each vector operation shape
//
typedef struct shapeInfoS {
    Uns8        argMul   [3];   // width multipliers (result, arg0, argN)
    Bool        isFloat  [3];   // are operands floating point?
    Bool        isMask   [3];   // are operands masks?
    Bool        isScalar [3];   // are operands scalar?
    Bool        unindexed[3];   // are operands unindexed?
    Bool        writesV0M;      // does operation implicitly write mask v0?
    Bool        implicitWiden;  // is widening implicit?
    Bool        isNarrowing;    // does operation narrow result?
    Bool        isSaturating;   // does operation saturate narrowed result?
    Bool        isMaskCIn;      // is apparent mask a carry-in?
    overlapType ot;             // overlap constraints
} shapeInfo;

//
// Information for each vector operation shape
//
static const shapeInfo shapeDetails[RVVW_LAST] = {
    [RVVW_111_II]  = {{1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_EXT_II]  = {{1,1,1}, {0,0,0}, {0,0,0}, {0,1,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_111_PI]  = {{1,1,1}, {0,0,0}, {1,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_111_SI]  = {{1,1,1}, {0,0,0}, {0,0,0}, {1,0,1}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_CIN_II]  = {{1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 1, OT___},
    [RVVW_CIN_PI]  = {{1,1,1}, {0,0,0}, {1,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 1, OT___},
    [RVVW_212_SI]  = {{2,1,2}, {0,0,0}, {0,0,0}, {1,0,1}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_121_II]  = {{1,2,1}, {0,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 1, 0, 0, OT___},
    [RVVW_121_IIS] = {{1,2,1}, {0,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 1, 1, 0, OT___},
    [RVVW_211_IIQ] = {{2,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 1, 0, 0, 0, OT___},
    [RVVW_211_II]  = {{2,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_221_II]  = {{2,2,1}, {0,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_111_FF]  = {{1,1,1}, {1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_111_PF]  = {{1,1,1}, {1,1,1}, {1,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_111_SF]  = {{1,1,1}, {1,1,1}, {0,0,0}, {1,0,1}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_212_SF]  = {{2,1,2}, {1,1,1}, {0,0,0}, {1,0,1}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_121_FFQ] = {{1,2,1}, {1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 1, 0, 0, 0, OT___},
    [RVVW_211_FFQ] = {{2,1,1}, {1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 1, 0, 0, 0, OT___},
    [RVVW_211_FF]  = {{2,1,1}, {1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_221_FF]  = {{2,2,1}, {1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_111_FI]  = {{1,1,1}, {1,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_111_IF]  = {{1,1,1}, {0,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_211_FIQ] = {{2,1,1}, {1,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 1, 0, 0, 0, OT___},
    [RVVW_211_IFQ] = {{2,1,1}, {0,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 1, 0, 0, 0, OT___},
    [RVVW_121_FIQ] = {{1,2,1}, {1,0,0}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 1, 0, 0, 0, OT___},
    [RVVW_121_IFQ] = {{1,2,1}, {0,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, 0, 1, 0, 0, 0, OT___},
    [RVVW_111_PP]  = {{1,1,1}, {0,0,0}, {1,1,1}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT___},
    [RVVW_111_IP]  = {{1,1,1}, {0,0,0}, {0,1,1}, {0,0,0}, {0,0,0}, 0, 0, 0, 0, 0, OT_SM},
    [RVVW_111_UP]  = {{1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, {0,1,0}, 0, 0, 0, 0, 0, OT_SM},
    [RVVW_111_DN]  = {{1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, {0,1,0}, 0, 0, 0, 0, 0, OT__M},
    [RVVW_111_CMP] = {{1,1,1}, {0,0,0}, {0,0,0}, {0,0,0}, {1,0,0}, 0, 0, 0, 0, 0, OT_SM},
};

//
// Return width multiplier for a vector operation
//
static Uns32 getWidthMultiplier(riscvVShape vShape) {

    Uns32 result = 0;
    Uns32 i;

    for(i=0; i<sizeof(shapeDetails[vShape].argMul); i++) {

        Uns32 mul = shapeDetails[vShape].argMul[i];

        if(result<mul) {
            result = mul;
        }
    }

    return result;
}

//
// Clamp argument index to maximum
//
inline static Uns32 clampArgIndex(Uns32 argIndex) {
    return (argIndex>2) ? 2 : argIndex;
}

//
// Is the operation Nth vector operation argument a floating point value?
//
inline static Bool isFloatN(riscvVShape vShape, Uns32 argIndex) {
    return shapeDetails[vShape].isFloat[clampArgIndex(argIndex)];
}

//
// Does this shape produce a scalar result
//
inline static Bool isScalarN(riscvVShape vShape, Uns32 argIndex) {
    return shapeDetails[vShape].isScalar[clampArgIndex(argIndex)];
}

//
// Is the explicit operation result a predicate?
//
inline static Bool isMaskN(riscvVShape vShape, Uns32 argIndex) {
    return shapeDetails[vShape].isMask[clampArgIndex(argIndex)];
}

//
// Does the vector operation implicitly write mask register V0?
//
inline static Bool isUnindexedN(riscvVShape vShape, Uns32 argIndex) {
    return shapeDetails[vShape].unindexed[clampArgIndex(argIndex)];
}

//
// Return width multiplier for operation Nth vector argument
//
inline static Uns32 getWidthMultiplierN(riscvVShape vShape, Uns32 argIndex) {
    return shapeDetails[vShape].argMul[clampArgIndex(argIndex)];
}

//
// Does this shape implement implicit argument widening?
//
inline static Bool isWideningImplicit(riscvVShape vShape) {
    return shapeDetails[vShape].implicitWiden;
}

//
// Does this shape implement result narrowing?
//
inline static Bool isNarrowing(riscvVShape vShape) {
    return shapeDetails[vShape].isNarrowing;
}

//
// Does this shape implement result saturation (requires narrowing)?
//
inline static Bool isSaturating(riscvVShape vShape) {
    return shapeDetails[vShape].isSaturating;
}

//
// Is apparent mask actually a carry-in (VADC etc)
//
inline static Bool isMaskCIn(riscvVShape vShape) {
    return shapeDetails[vShape].isMaskCIn;
}

//
// Return overlap constraints for the operation
//
inline static overlapType getOverlapType(riscvVShape vShape) {
    return shapeDetails[vShape].ot;
}

//
// Return scale factor to apply to SEW for a vector operation
//
inline static Uns32 getSEWMultiplier(riscvVShape vShape) {
    return isWideningImplicit(vShape) ? 1 : getWidthMultiplier(vShape);
}

//
// Is the indexed argument potentially a group member?
//
static Bool argIsGroup(riscvVShape vShape, Uns32 argIndex) {
    return !(isMaskN(vShape, argIndex) || isScalarN(vShape, argIndex));
}

//
// Return effective VLMUL for operation Nth vector argument
//
static Uns32 getVLMULMtN(riscvP riscv, riscvVShape vShape, Uns32 argIndex) {
    return argIsGroup(vShape, argIndex) ? getVLMULMt(riscv) : 1;
}

//
// Return number of vector registers accessed by operation Nth vector argument
//
static riscvVLMULMt getVRegNumN(
    riscvP      riscv,
    riscvVShape vShape,
    Uns32       argIndex
) {
    riscvVLMULMt result = 1;

    if(argIsGroup(vShape, argIndex)) {
        result = getVLMULMt(riscv)*getWidthMultiplierN(vShape, argIndex);
    }

    return result;
}

//
// Return the maximum number of vector registers targeted by any vector
// argument
//
static riscvVLMULMt getVRegNumMax(riscvMorphStateP state, riscvVShape vShape) {

    riscvP       riscv  = state->riscv;
    riscvVLMULMt result = 0;
    Uns32        i;

    for(i=0; i<RV_MAX_AREGS; i++) {

        riscvRegDesc rA = getRVReg(state, i);

        if(isVReg(rA)) {

            riscvVLMULMt argVRegNum = getVRegNumN(riscv, vShape, i);

            if(result<argVRegNum) {
                result = argVRegNum;
            }
        }
    }

    return result;
}

//
// Is the index in the mask?
//
inline static Bool indexInMask(Uns32 index, Uns32 mask) {
    return mask & (1<<index);
}

//
// Return floating point type for the given SEW
//
static vmiFType getSEWFType(Uns32 SEW) {

    vmiFType result = 0;

    if(SEW==16) {
        result = vmi_FT_16_IEEE_754;
    } else if(SEW==32) {
        result = vmi_FT_32_IEEE_754;
    } else if(SEW==64) {
        result = vmi_FT_64_IEEE_754;
    } else {
        VMI_ABORT("Unexpected SEW %u", SEW); // LCOV_EXCL_LINE
    }

    return result;
}

//
// Validate destination does not overlap sources or mask if required
//
static Bool validateNoOverlap(riscvMorphStateP state, iterDescP id) {

    riscvP       riscv     = state->riscv;
    riscvVShape  vShape    = state->attrs->vShape;
    riscvRegDesc mask      = state->info.mask;
    riscvRegDesc rD        = getRVReg(state, 0);
    Uns32        index     = getRIndex(rD);
    riscvVLMULMt dstRegNum = getVRegNumN(riscv, vShape, 0);
    overlapType  ot        = getOverlapType(vShape);
    Bool         ok        = True;
    Uns32        badMask   = 0;
    Uns32        i;
    Uns32        srcNum;

    // construct mask of registers that may not be sources
    for(i=0; i<dstRegNum; i++) {

        Uns32 part = i+index;

        if(part<VREG_NUM) {
            badMask |= (1<<part);
        }
    }

    // validate overlap with mask if required
    if(mask && ((ot&OT_M) || (dstRegNum!=VLMULMT_1))) {

        Uns32 index = getRIndex(mask);

        if(mask && indexInMask(index, badMask)) {
            ok = False;
        }
    }

    // validate overlap with sources if required
    for(srcNum=1; srcNum<RV_MAX_AREGS; srcNum++) {

        riscvRegDesc rA = getRVReg(state, srcNum);

        if(isVReg(rA)) {

            Uns32        index     = getRIndex(rA);
            riscvVLMULMt srcRegNum = getVRegNumN(riscv, vShape, srcNum);

            if((ot&OT_S) || (dstRegNum!=srcRegNum)) {

                for(i=0; i<srcRegNum; i++) {

                    Uns32 part = i+index;

                    if((part<VREG_NUM) && indexInMask(part, badMask)) {
                        ok = False;
                    }
                }
            }
        }
    }

    // error if illegal overlap found
    if(!ok) {
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IOVP", "Illegal register overlap");
    }

    return ok;
}

//
// Validate floating point argument widths are implemented (but not necessarily
// enabled) in the base ISA
//
static Bool validateFPArgWidth(riscvP riscv, Uns32 SEW) {

    Bool ok = False;

    if(SEW==32) {
        ok = riscv->configInfo.arch & ISA_F;
    } else if(SEW==64) {
        ok = riscv->configInfo.arch & ISA_D;
    }

    if(!ok) {
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IFPSEW", "Illegal floating point SEW");
    }

    return ok;
}

//
// Validate vector instruction argument widths
//
static Bool validateVArgWidths(riscvMorphStateP state, iterDescP id) {

    riscvP      riscv  = state->riscv;
    riscvVShape vShape = state->attrs->vShape;
    Uns32       mul    = getWidthMultiplier(vShape);
    riscvSEWMt  SEW    = getSEWMt(riscv);
    Bool        ok     = validateNoOverlap(state, id);
    Uns32       i;

    // validate widening/narrowing constraints
    if(ok && (mul!=1)) {

        // validate supported general argument widths
        riscvSEWMt   SEWxN   = mul * SEW;
        riscvVLMULMt VLMULxN = getVRegNumMax(state, vShape);

        if(SEWxN>riscv->configInfo.ELEN) {
            ILLEGAL_INSTRUCTION_MESSAGE(riscv, "ISEW", "Illegal widened SEW");
            ok = False;
        } else if(VLMULxN>VLMULMT_8) {
            ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IVLMUL", "Illegal widened VLMUL");
            ok = False;
        }
    }

    // validate supported floating point argument widths
    for(i=0; ok && (i<=2); i++) {

        if(isFloatN(vShape, i)) {

            Uns32      mulN  = getWidthMultiplierN(vShape, i);
            riscvSEWMt SEWxN = mulN * SEW;

            ok = validateFPArgWidth(riscv, SEWxN);
        }
    }

    return ok;
}

//
// Indicate whether any vector argument is signed
//
inline static Bool isAnyVArgSigned(riscvMorphStateP state) {
    return state->attrs->argType != RVVX_UU;
}

//
// Indicate whether an indexed vector argument is signed
//
inline static Bool isVArgSigned(riscvMorphStateP state, Uns32 i) {
    return state->attrs->argType & ((i==1) ? RVVX_S1 : RVVX_S2);
}

//
// Widen source and destination operands if required
//
static void widenOperands(riscvMorphStateP state, iterDescP id) {

    riscvVShape vShape = state->attrs->vShape;
    Uns32       tmpIdx = NUM_TEMPS_BASIC;

    if(isNarrowing(vShape)) {

        // process output if this is a narrowing operation
        id->rdNarrow = id->r[0];
        id->r[0] = getTmp(tmpIdx++);

    } else if(isWideningImplicit(vShape)) {

        // arguments implicitly widened

    } else {

        Uns32 mul = getWidthMultiplier(vShape);
        Uns32 i;

        for(i=1; i<RV_MAX_AREGS; i++) {

            Uns32 mulA = getWidthMultiplierN(vShape, i);

            // detect arguments requiring extension
            if(mulA!=mul) {

                riscvSEWMt srcSEW = getSEWMt(state->riscv);
                riscvSEWMt dstSEW = srcSEW * mul;
                vmiReg     tmpA   = getTmp(tmpIdx++);

                if(!isFloatN(vShape, i)) {

                    // integer argument
                    Bool sExtend = isVArgSigned(state, i);

                    // extend to temporary
                    vmimtMoveExtendRR(dstSEW, tmpA, srcSEW, id->r[i], sExtend);

                } else {

                    // floating point argument
                    vmiFType      typeD = getSEWFType(dstSEW);
                    vmiFType      typeS = getSEWFType(srcSEW);
                    vmiFPRC       rc    = vmi_FPR_NEAREST;
                    vmiFPConfigCP ctrl  = getFPControl(state);

                    // convert to temporary
                    vmimtFConvertRR(
                        typeD, tmpA, typeS, id->r[i], rc, RISCV_FP_FLAGS, ctrl
                    );
                }

                // use extended temporary as source or destination
                id->r[i] = tmpA;
            }
        }
    }
}

//
// Return vmiFlagsCP specifying which native flag is used to set the saturation
// flag for unsigned and signed operations
//
static vmiFlagsCP getSatFlags(riscvMorphStateP state) {

    Bool isSigned = isAnyVArgSigned(state);

    static const vmiFlags map[2] = {
        [0] = {f : {[vmi_CF] = RISCV_CPU_TEMP(TMP[0])}},
        [1] = {f : {[vmi_OF] = RISCV_CPU_TEMP(TMP[0])}}
    };

    return &map[isSigned];
}

//
// Update vxsat after saturating operation
//
static void updateVXSat(void) {
    vmimtBinopRR(8, vmi_OR, CSR_REG_MT(vxsat), getTmp(0), 0);
}

//
// Narrow result if required, possibly with saturation
//
static void narrowResult(riscvMorphStateP state, iterDescP id) {

    riscvVShape vShape = state->attrs->vShape;

    if(!isNarrowing(vShape)) {

        // no action

    } else if(!isSaturating(vShape)) {

        // narrowing without saturation
        vmimtMoveRR(id->SEW, id->rdNarrow, id->r[0]);

    } else {

        // narrowing with saturation
        Bool       isSigned = isAnyVArgSigned(state);
        vmiBinop   shiftop  = isSigned ? vmi_SHLSQ : vmi_SHLUQ;
        vmiFlagsCP flags    = getSatFlags(state);
        Uns32      bytes    = id->SEW/8;

        // narrow result with saturation
        vmimtBinopRC(id->SEW*2, shiftop, id->r[0], id->SEW, flags);

        // merge saturation flag with sticky vxsat
        updateVXSat();

        // extract high part of result
        vmimtMoveRR(id->SEW, id->rdNarrow, VMI_REG_DELTA(id->r[0], bytes));
    }
}

//
// Return VMI register for the given abstract vector register
//
static vmiReg getVMIRegV(riscvMorphStateP state, riscvRegDesc r, Uns32 i) {

    riscvP       riscv  = state->riscv;
    riscvVShape  vShape = state->attrs->vShape;
    Uns32        mulE   = getWidthMultiplierN(vShape, i);
    riscvVLMULMt VLMUL  = getVLMULMtN(riscv, vShape, i) * mulE;
    Uns32        index  = getRIndex(r);

    // validate register index is a multiple of the current VLMUL
    if(index & (VLMUL-1)) {
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IVI", "Illegal vector register index");
    }

    return getVMIReg(riscv, r);
}

//
// Get mask bit for the given register in the top-zero mask
//
inline static Uns32 getTopZeroMask(riscvRegDesc rdA) {
    return 1<<getRIndex(rdA);
}

//
// Return a Boolean indicating whether the register requires its top part to be
// zeroed
//
static Bool requireTopZero(riscvP riscv, riscvRegDesc rdA, Uns32 VLMUL) {

    Bool result = False;

    if(rdA) {

        riscvBlockStateP blockState = riscv->blockState;
        Uns32            mask       = getTopZeroMask(rdA);
        riscvTZ          setIndex   = (VLMUL==1) ? VTZ_SINGLE : VTZ_GROUP;
        riscvTZ          clearIndex = (VLMUL!=1) ? VTZ_SINGLE : VTZ_GROUP;
        Uns32            i;

        // process each component of the register group
        for(i=0; i<VLMUL; i++, mask<<=1) {

            // detect if any part requires top zero
            result = result || !(blockState->VZeroTopMt[setIndex] & mask);

            // update VLMUL-specific top part zero state for each component
            blockState->VZeroTopMt[setIndex]   |=  mask;
            blockState->VZeroTopMt[clearIndex] &= ~mask;
        }
    }

    return result;
}

//
// Unlike regular floating point instructions, the width of a scalar floating
// point argument is sometimes not encoded in the instruction itself but instead
// depends on the current SEW, so this needs to be filled when SEW is known
//
static riscvRegDesc setSEWBits(riscvMorphStateP state, riscvRegDesc rA) {

    if(isFReg(rA) && !getRBits(rA)) {
        rA = setRBits(rA, getSEWMt(state->riscv));
    }

    return rA;
}

//
// Fill all registers for a vector operation
//
static void getVectorOpRegisters(riscvMorphStateP state, iterDescP id) {

    riscvP       riscv  = state->riscv;
    riscvRegDesc mask   = state->info.mask;
    riscvVShape  vShape = state->attrs->vShape;
    Uns32        i;

    // initialize mask register
    id->mask = mask ? getVMIReg(riscv, mask) : VMI_NOREG;

    for(i=0; i<RV_MAX_AREGS; i++) {

        riscvRegDesc rA = getRVReg(state, i);
        vmiReg       r  = VMI_NOREG;

        if(!rA) {
            // no action
        } else if(!isVReg(rA)) {
            r = getVMIRegFS(riscv, setSEWBits(state, rA), getTmp(i));
        } else if(isScalarN(vShape, i)) {
            r = getVMIReg(riscv, rA);
        } else if(!isMaskN(vShape, i)) {
            r = getVMIRegV(state, rA, i);
        } else {
            r = getVMIReg(riscv, rA);
            if(!i) {id->PdA = rA;}
        }

        id->r[i] = r;
    }
}

//
// Is the indexed vector register striped?
//
static Bool isIndexedVRegisterStriped(
    riscvMorphStateP state,
    iterDescP        id,
    Uns32            i
) {
    riscvP       riscv  = state->riscv;
    Uns32        VLEN   = riscv->configInfo.VLEN;
    Uns32        SLEN   = riscv->configInfo.SLEN;
    riscvVShape  vShape = state->attrs->vShape;
    Uns32        mulE   = getWidthMultiplierN(vShape, i);
    riscvVLMULMt VLMUL  = id->VLMUL*mulE;

    return (VLMUL>1) && (VLEN>SLEN);
}

//
// Convert vector argument register to indexed register using the given index
//
static void getIndexedVRegisterInt(
    riscvMorphStateP state,
    iterDescP        id,
    Uns32            i,
    vmiReg           index
) {
    riscvP       riscv    = state->riscv;
    Uns32        VLEN     = riscv->configInfo.VLEN;
    Uns32        SLEN     = riscv->configInfo.SLEN;
    riscvVShape  vShape   = state->attrs->vShape;
    Uns32        mulE     = getWidthMultiplierN(vShape, i);
    riscvVLMULMt VLMUL    = getVLMULMtN(riscv, vShape, i) * mulE;
    riscvSEWMt   SEW      = id->SEW*mulE;
    Bool         striped  = (VLMUL>1) && (VLEN>SLEN);
    Uns32        fieldNum = state->info.nf+1;
    Uns32        vecBytes = VLEN/8*VLMUL*fieldNum;

    getIndexedRegister(state, id, &id->r[i], index, SEW, vecBytes, striped);
}

//
// Convert mask argument register to indexed register
//
static void getIndexedMVMIReg(riscvMorphStateP state, iterDescP id, vmiReg *rP) {

    riscvP riscv    = state->riscv;
    Uns32  VLEN     = riscv->configInfo.VLEN;
    Uns32  vecBytes = VLEN/8;
    vmiReg index    = CSR_REG_MT(vstart);

    getIndexedRegister(state, id, rP, index, id->MLEN, vecBytes, False);
}

//
// Convert vector argument register to indexed register
//
static void getIndexedVRegister(riscvMorphStateP state, iterDescP id, Uns32 i) {
    getIndexedVRegisterInt(state, id, i, CSR_REG_MT(vstart));
}

//
// Convert mask argument register to indexed register
//
static void getIndexedMRegister(riscvMorphStateP state, iterDescP id, Uns32 i) {
    getIndexedMVMIReg(state, id, &id->r[i]);
}

//
// Convert vector argument registers to indexed registers
//
static void getIndexedVRegisters(riscvMorphStateP state, iterDescP id) {

    riscvVShape vShape = state->attrs->vShape;
    Uns32       i;

    for(i=0; i<RV_MAX_AREGS; i++) {
        if(!isVReg(getRVReg(state, i))) {
            // no action
        } else if(isScalarN(vShape, i)) {
            // no action
        } else if(isUnindexedN(vShape, i)) {
            // no action
        } else if(isMaskN(vShape, i)) {
            getIndexedMRegister(state, id, i);
        } else {
            getIndexedVRegister(state, id, i);
        }
    }
}

//
// Return the index number of the indexed successor register of the given
// vector register
//
static Uns32 getSegmentRegisterIndex(riscvRegDesc rv, Uns32 i) {
    return (getRIndex(rv)+i)%VREG_NUM;
}

//
// Return the descriptor of the indexed successor register of the given
// vector register
//
static riscvRegDesc getSegmentRegister(riscvRegDesc rv, Uns32 i) {
    return RV_RD_V|getSegmentRegisterIndex(rv, i);
}

//
// Given a vmiReg for the first register accessed by a load/store segment
// operation, return vmiReg for the indexed successor register
//
static vmiReg getSegmentRegisterV0(riscvMorphStateP state, vmiReg base, Uns32 i) {

    Int32        VLEN  = state->riscv->configInfo.VLEN;
    riscvRegDesc rv0   = getRVReg(state, 0);
    Int32        i1    = getSegmentRegisterIndex(rv0, 0);
    Int32        i2    = getSegmentRegisterIndex(rv0, i);
    Int32        delta = (i2-i1)*(VLEN/8);

    return VMI_REG_DELTA(base, delta);
}

//
// Validate non-zero vstart if required
//
static void checkVStartZero(riscvMorphStateP state, iterDescP id) {

    riscvP           riscv      = state->riscv;
    riscvBlockStateP blockState = riscv->blockState;

    if(state->attrs->vstart0 && !blockState->VStartZeroMt) {

        vmiReg    vstart = CSR_REG_MT(vstart);
        vmiLabelP doOp   = vmimtNewLabel();

        // exception if vstart is not zero
        vmimtCompareRCJumpLabel(32, vmi_COND_EQ, vstart, 0, doOp);
        ILLEGAL_INSTRUCTION_MESSAGE(state->riscv, "IVS0", "Illegal non-zero vstart");
        vmimtInsertLabel(doOp);

        // vstart is now known to be zero
        blockState->VStartZeroMt = True;
    }
}

//
// Handle non-zero vstart
//
static vmiLabelP handleNonZeroVStart(riscvMorphStateP state, Bool iterVStart) {

    riscvP           riscv      = state->riscv;
    riscvBlockStateP blockState = riscv->blockState;
    vmiLabelP        skip       = 0;

    if(!blockState->VStartZeroMt) {

        vmiReg vstart = CSR_REG_MT(vstart);

        skip = vmimtNewLabel();

        if(!iterVStart) {

            // skip operation if required, vstart clamp not required
            vmimtCompareRRJumpLabel(32, vmi_COND_NL, vstart, RISCV_VLMAX, skip);

        } else {

            // skip operation if required, vstart clamp required
            vmiLabelP doOp = vmimtNewLabel();

            // go if at least one element should be processed
            vmimtCompareRRJumpLabel(32, vmi_COND_L, vstart, RISCV_VLMAX, doOp);

            // clamp vstart to maximum vl if it is used as an iteration index
            vmimtMoveRR(32, vstart, RISCV_VLMAX);

            // go to zero extension operation
            vmimtUncondJumpLabel(skip);

            // here if at least one element should be processed
            vmimtInsertLabel(doOp);
        }

    } else if(iterVStart) {

        // if vstart is used as an iteration index, ensure it is reset to zero
        // on instruction completion
        blockState->VStartZeroMt = False;
    }

    return skip;
}

//
// Do argument checks at the start of a vector operation
//
static void checkVectorOp(riscvMorphStateP state, iterDescP id) {

    riscvP riscv = state->riscv;
    Uns32  VLEN  = riscv->configInfo.VLEN;

    // fill operation-specific data
    id->VLMUL     = getVLMULMt(riscv);
    id->SEW       = getSEWMt(riscv);
    id->MLEN      = id->SEW/id->VLMUL;
    id->vBytesMax = VLEN * id->VLMUL / 8;

    // call operation-specific argument check if required
    dispatchVector(state, state->attrs->checkCB, id);
}

//
// Do actions at the start of a vector operation
//
static void startVectorOp(riscvMorphStateP state, iterDescP id, Bool iterVStart) {

    // handle non-zero vstart
    id->skip = handleNonZeroVStart(state, iterVStart);

    // call operation-specific initialization if required
    dispatchVector(state, state->attrs->initCB, id);
}

//
// Kill base registers and temporaries
//
static void killBaseRegistersAndTemps(riscvMorphStateP state, iterDescP id) {

    Uns32 i;

    // reset all base registers
    for(i=0; i<NUM_BASE_REGS; i++) {
        static const baseDesc zero = {{0}};
        id->base[i] = zero;
    }

    // kill all base registers
    Uns32 vBaseBits = sizeof(state->riscv->vBase)*8;
    vmimtRegNotReadR(vBaseBits, RISCV_CPU_TEMP(vBase));

    // kill all normal temporaries
    Uns32 tmpBits = sizeof(state->riscv->TMP)*8;
    vmimtRegNotReadR(tmpBits, RISCV_CPU_TEMP(TMP));

    // kill all field mask temporaries
    vmimtRegNotReadR(8, RISCV_VPRED_MASK);
    vmimtRegNotReadR(8, RISCV_VACTIVE_MASK);
}

//
// Jump to target label if operation is not selected by mask
//
static void skipIfMask0(riscvMorphStateP state, iterDescP id) {

    riscvP riscv = state->riscv;

    if(id->MLEN>=8) {

        // mask stride is a byte multiple: byte test and jump
        getIndexedMVMIReg(state, id, &id->mask);

        // go if mask bit not set
        vmimtTestRCJumpLabel(8, vmi_COND_Z, id->mask, 1, id->maskF);

    } else {

        // mask stride is not a byte multiple: bit test and jump
        Uns32  VLEN   = riscv->configInfo.VLEN;
        vmiReg vstart = CSR_REG_MT(vstart);
        vmiReg mbit   = vstart;
        Uns32  shift  = mulToShiftP2(id->MLEN);

        // scale bit index if required
        if(shift) {
            mbit = getTmp(0);
            vmimtBinopRRC(32, vmi_SHL, mbit, vstart, shift, 0);
        }

        // go if mask bit not set
        vmimtTestBitVRJumpLabel(VLEN, 32, False, id->mask, mbit, id->maskF);
    }
}

//
// Start one vector operation loop iteration
//
static void startVectorLoop(riscvMorphStateP state, iterDescP id) {

    riscvVShape vShape = state->attrs->vShape;

    // handle element masking if required (NOTE: for instructions such as VADC,
    // the mask is actually a carry-in so should not be handled here)
    if(!isMaskCIn(vShape) && !VMI_ISNOREG(id->mask)) {

        // create target label if element is masked out
        id->maskF = vmimtNewLabel();

        // skip entire operation if masked out and no action for unmasked case
        if(!state->attrs->opFCB) {
            skipIfMask0(state, id);
        }
    }
}

//
// End one vector loop iteration
//
static void endVectorLoop(riscvMorphStateP state, iterDescP id, vmiLabelP loop) {

    vmiReg vstart = CSR_REG_MT(vstart);

    // here if element is not selected by mask
    if(id->maskF) {
        vmimtInsertLabel(id->maskF);
    }

    // increment vstart and go if not done
    vmimtBinopRC(32, vmi_ADD, vstart, 1, 0);
    vmimtCompareRRJumpLabel(32, vmi_COND_L, vstart, RISCV_VLMAX, loop);
}

//
// Update target register top-zero state when a scalar is written
//
static void updateScalarTopZero(riscvMorphStateP state, iterDescP id) {

    riscvP           riscv      = state->riscv;
    riscvBlockStateP blockState = riscv->blockState;
    riscvRegDesc     VdA        = getRVReg(state, 0);
    Uns32            mask       = getTopZeroMask(VdA);

    // a scalar write always updates the bottom element of a vector register
    // and zeroes the rest, so the single register is known to have top zero
    // whatever the current vector length
    blockState->VZeroTopMt[VTZ_SINGLE] |=  mask;
    blockState->VZeroTopMt[VTZ_GROUP]  &= ~mask;
}

//
// Fill top part of predicate and vector target registers with zero using
// per-element algorithm
//
static void zeroVdPdTopPE(
    riscvMorphStateP state,
    iterDescP        id,
    Bool             zeroPd,
    Bool             zeroVd
) {
    riscvP       riscv   = state->riscv;
    Uns32        VLEN    = riscv->configInfo.VLEN;
    Uns32        elemNum = VLEN/id->MLEN;
    riscvRegDesc PdA     = id->PdA;
    vmiLabelP    loop    = vmimtNewLabel();
    vmiReg       vstart  = CSR_REG_MT(vstart);
    vmiReg       t0      = getTmp(0);

    // here for next iteration
    vmimtInsertLabel(loop);

    if(zeroPd) {

        // get indexed predicate element
        vmiReg Pd = getVMIReg(riscv, PdA);
        getIndexedMVMIReg(state, id, &Pd);

        // zero predicate element (NOTE: MLEN can only be 8 or greater if there
        // are instructions that write both vector *and* mask targets, which is
        // currently not true)
        if(id->MLEN>=8) {
            vmimtMoveRC(id->MLEN, Pd, 0); // LCOV_EXCL_LINE
        } else {
            prepareMasks(state, id, t0, True, False);
            vmimtBinopRR(8, vmi_AND, Pd, RISCV_VPRED_MASK, 0);
        }
    }

    if(zeroVd) {

        // get indexed vector element
        getIndexedVRegister(state, id, 0);

        // zero vector element
        vmimtMoveRC(id->SEW, id->r[0], 0);
    }

    // kill base registers for this iteration
    killBaseRegistersAndTemps(state, id);

    // increment vstart and repeat if not done
    vmimtBinopRC(32, vmi_ADD, vstart, 1, 0);
    vmimtCompareRCJumpLabel(32, vmi_COND_NE, vstart, elemNum, loop);
}

//
// Return mask to select the numbered successor of a base segment register
//
inline static Uns32 getTopZeroVdMask(Uns32 i) {
    return (1<<i);
}

//
// Fill top part of predicate and vector target registers with zero using
// block-transfer algorithm
//
static void zeroVdPdTopBLT(
    riscvMorphStateP state,
    iterDescP        id,
    Bool             zeroPd,
    Uns32            zeroVd
) {
    riscvP       riscv   = state->riscv;
    Uns32        VLEN    = riscv->configInfo.VLEN;
    Uns32        elemNum = VLEN/id->MLEN;
    riscvRegDesc PdA     = id->PdA;
    vmiReg       vstart  = CSR_REG_MT(vstart);
    vmiReg       t0      = getTmp(0);

    if(zeroPd) {

        // get indexed mask register target
        vmiReg Pd = getVMIReg(riscv, PdA);
        getIndexedMVMIReg(state, id, &Pd);

        // calculate number of elements to clear
        vmimtBinopRCR(32, vmi_SUB, t0, elemNum, vstart, 0);

        // zero register top part
        vmimtZeroRV(VLEN, Pd, 32, t0, 0, id->MLEN/8, vmi_CC_NONE);
    }

    if(zeroVd) {

        Uns32 VLENxN = VLEN*id->VLMUL;
        Uns32 i;

        // get indexed vector register target
        getIndexedVRegister(state, id, 0);

        // calculate number of elements to clear
        vmimtBinopRCR(32, vmi_SUB, t0, elemNum, vstart, 0);

        // index over all segment registers affected
        for(i=0; i<=state->info.nf; i++) {

            if(zeroVd && getTopZeroVdMask(i)) {

                // get next segment register requiring top-zero
                vmiReg vd = getSegmentRegisterV0(state, id->r[0], i);

                // zero register top part
                vmimtZeroRV(VLENxN, vd, 32, t0, 0, id->SEW/8, vmi_CC_NONE);
            }
        }
    }
}

//
// Fill top part of predicate and vector target registers with zero if required
//
static vmiLabelP zeroVdPdTop(riscvMorphStateP state, iterDescP id) {

    riscvP       riscv  = state->riscv;
    riscvRegDesc PdA    = id->PdA;
    riscvRegDesc VdA    = getRVReg(state, 0);
    Bool         zeroPd = requireTopZero(riscv, PdA, 1);
    Uns32        zeroVd = 0;
    vmiLabelP    noZero = 0;
    Uns32        i;

    // construct a mask of vector registers affected by this operation that
    // require top-zero update
    if(VdA!=PdA) {
        for(i=0; i<=state->info.nf; i++) {
            if(requireTopZero(riscv, getSegmentRegister(VdA, i), id->VLMUL)) {
                zeroVd |= getTopZeroVdMask(i);
            }
        }
    }

    if(state->attrs->implicitTZ) {

        // for some instructions, zeroing of top part is implicit (VCOMPRESS)

    } else if(zeroPd || zeroVd) {

        // insert code to skip zeroing of top half if first fault has been
        // triggered
        if(state->info.isFF) {
            noZero = vmimtNewLabel();
            vmimtCondJumpLabel(RISCV_FF, False, noZero);
        }

        // determine whether per-element or block-transfer algorithm is needed
        if(
            (zeroPd && (id->MLEN<8)) ||
            (zeroVd && isIndexedVRegisterStriped(state, id, 0))
        ) {
            zeroVdPdTopPE(state, id, zeroPd, zeroVd);
        } else {
            zeroVdPdTopBLT(state, id, zeroPd, zeroVd);
        }
    }

    return noZero;
}

//
// Perform actions at the end of a vector operation
//
static void endVectorOp(
    riscvMorphStateP state,
    iterDescP        id,
    riscvVLClassMt   vlClass
) {
    vmiLabelP noZero = 0;

    // call operation-specific post-operation function if required
    dispatchVector(state, state->attrs->endCB, id);

    // here if body is skipped because initial vstart >= vl (NOTE: vstart has
    // been clamped to vl in this case)
    if(id->skip) {
        vmimtInsertLabel(id->skip);
    }

    // zero register top parts when vl < vlmax if required
    if(vlClass==VLCLASSMT_MAX) {
        // no top zero state change
    } else if(isScalarN(state->attrs->vShape, 0)) {
        updateScalarTopZero(state, id);
    } else {
        noZero = zeroVdPdTop(state, id);
    }

    // clear first-fault active indication if required
    if(state->info.isFF) {

        // here if zeroing of top half is skipped
        if(noZero) {
            vmimtInsertLabel(noZero);
        }

        // set first-fault active indication
        vmimtMoveRC(8, RISCV_FF, False);

        // terminate the block after this instruction because VL may be modified
        // if an exception is trapped
        vmimtEndBlock();
    }
}

//
// Do operation for a single element
//
static void doPerElementOp(riscvMorphStateP state, iterDescP id) {

    riscvMorphVFn opTCB = state->attrs->opTCB;
    riscvMorphVFn opFCB = state->attrs->opFCB;

    if(!opFCB || !id->maskF) {

        // normal operation with action only if selected by mask (or unmasked)
        dispatchVector(state, opTCB, id);

    } else {

        vmiLabelP done = vmimtNewLabel();

        // operation with different actions for 0/1 mask bits
        skipIfMask0(state, id);

        // operation for mask=1
        dispatchVector(state, opTCB, id);
        vmimtUncondJumpLabel(done);

        // operation for mask=0
        vmimtInsertLabel(id->maskF);
        dispatchVector(state, opFCB, id);

        // here at end of operation
        vmimtInsertLabel(done);

        // label has been inserted
        id->maskF = 0;
    }
}

//
// Return a Boolean indicating if vector instruction can be executed because
// vtype.vill=0
//
static Bool emitCheckVILL(riscvMorphStateP state) {

    Bool vill = RD_CSR_FIELD(state->riscv, vtype, vill);

    if(vill) {
        ILLEGAL_INSTRUCTION_MESSAGE(state->riscv, "VILL", "vtype.vill=1");
    }

    return !vill;
}

//
// Emit code to dispatch a vector operation
//
static RISCV_MORPH_FN(emitVectorOp) {

    if(emitCheckVILL(state)) {

        iterDesc       id      = {0};
        riscvVLClassMt vlClass = getVLClassMt(state);

        // fill all registers for a vector operation (NOTE: this can cause
        // Illegal Instruction exceptions for inappropriate register arguments,
        // so it must be done before zero-length vector check)
        getVectorOpRegisters(state, &id);

        // validate vstart is zero if required
        checkVStartZero(state, &id);

        if(validateVArgWidths(state, &id)) {

            // check vector operation arguments
            checkVectorOp(state, &id);

            // no further action unless vector length is non-zero
            if(vlClass!=VLCLASSMT_ZERO) {

                vmiLabelP   loop   = vmimtNewLabel();
                riscvVShape vShape = state->attrs->vShape;
                Uns32       mul    = getSEWMultiplier(vShape);

                // start a new vector operation
                startVectorOp(state, &id, True);

                // loop to here
                vmimtInsertLabel(loop);

                // do actions at start of vector loop
                startVectorLoop(state, &id);

                // update base registers for this iteration
                getIndexedVRegisters(state, &id);

                // widen source operands if required
                widenOperands(state, &id);

                // do operation on one element, scaling the SEW if required
                id.SEW *= mul;
                doPerElementOp(state, &id);
                id.SEW /= mul;

                // narrow destination operands if required
                narrowResult(state, &id);

                // kill base registers and temporaries for this iteration
                killBaseRegistersAndTemps(state, &id);

                // repeat until done
                endVectorLoop(state, &id, loop);

                // perform actions at end of instruction
                endVectorOp(state, &id, vlClass);
            }
        }

        // zero vstart register on instruction completion
        setVStartZero(state);
    }
}

//
// Emit code to dispatch a vector operation operating on one element with a
// single scalar source or destination
//
static RISCV_MORPH_FN(emitScalarOp) {

    if(emitCheckVILL(state)) {

        iterDesc       id      = {0};
        riscvVLClassMt vlClass = getVLClassMt(state);
        Bool           scalarD = !isVReg(getRVReg(state, 0));

        // fill all registers for a vector operation (NOTE: this can cause
        // Illegal Instruction exceptions for inappropriate register arguments,
        // so it must be done before zero-length vector check)
        getVectorOpRegisters(state, &id);

        // validate vstart is zero if required
        checkVStartZero(state, &id);

        if(validateVArgWidths(state, &id)) {

            // check vector operation arguments
            checkVectorOp(state, &id);

            if(scalarD || (vlClass!=VLCLASSMT_ZERO)) {

                // start a new vector operation
                startVectorOp(state, &id, False);

                // do operation on one element
                doPerElementOp(state, &id);

                // end vector operaton
                endVectorOp(state, &id, vlClass);
            }
        }

        // zero vstart register on instruction completion
        setVStartZero(state);
    }
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR CSR UPDATE
////////////////////////////////////////////////////////////////////////////////

//
// Adjust JIT code generator state after write of vstart CSR
//
void riscvWVStart(riscvMorphStateP state, Bool useRS1) {

    riscvBlockStateP blockState = state->riscv->blockState;

    if(!useRS1 && (state->info.csrUpdate==RV_CSR_RW) && !state->info.c) {
        blockState->VStartZeroMt = True;
    } else {
        blockState->VStartZeroMt = False;
    }
}

//
// Is the specified SEW valid?
//
riscvSEWMt riscvValidSEW(riscvP riscv, Uns8 vsew) {

    Uns32 SEW = vsewToSEW(vsew);

    return (SEW<=riscv->configInfo.ELEN) ? SEW : SEWMT_UNKNOWN;
}

//
// Update VL, SEW and VLMUL
//
static Uns32 setVLSEWLMULInt(riscvP riscv, Uns32 vl, Uns32 vsew, Uns32 vlmul) {

    Bool vill = !riscvValidSEW(riscv, vsew);

    // handle illegal vtype setting
    if(vill) {
        vl = vsew = vlmul = 0;
    }

    // update vtype CSR
    riscvSetVType(riscv, vill, vsew, vlmul);

    // update vl CSR
    riscvSetVL(riscv, vl);

    // set matching polymorphic key and clamped vl
    riscvRefreshPMKey(riscv);

    return RD_CSR(riscv, vl);
}

//
// VSetVL to specified size
//
static Uns32 setVLSEWLMUL(riscvP riscv, Uns32 vl, Uns32 vtypeBits) {

    CSR_REG_DECL(vtype) = {u32 : {bits:vtypeBits}};

    Uns32 vsew  = vtype.u32.fields.vsew;
    Uns32 vlmul = vtype.u32.fields.vlmul;

    return setVLSEWLMULInt(riscv, vl, vsew, vlmul);
}

//
// VSetVL to maximum supported size
//
static Uns32 setMaxVLSEWLMUL(riscvP riscv, Uns32 vtypeBits) {

    CSR_REG_DECL(vtype) = {u32 : {bits:vtypeBits}};

    Uns32 vsew  = vtype.u32.fields.vsew;
    Uns32 vlmul = vtype.u32.fields.vlmul;

    // compute effective VLMAX
    Uns32        VLEN  = riscv->configInfo.VLEN;
    riscvSEWMt   SEW   = vsewToSEW(vsew);
    riscvVLMULMt VLMUL = vlmulToVLMUL(vlmul);
    Uns32        VLMAX = (VLMUL*VLEN)/SEW;

    return setVLSEWLMULInt(riscv, VLMAX, vsew, vlmul);
}

//
// Handle the first source argument of VSetVL
//
static vmiCallFn handleVSetVLArg1(Uns32 bits, vmiReg rs1) {

    if(VMI_ISNOREG(rs1)) {
        return (vmiCallFn)setMaxVLSEWLMUL;
    } else {
        vmimtArgReg(bits, rs1);
        return (vmiCallFn)setVLSEWLMUL;
    }
}

//
// Implement VSetVL <rd>, <rs1>, <rs2> operation
//
static RISCV_MORPH_FN(emitVSetVLRRR) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc rs1A  = getRVReg(state, 1);
    riscvRegDesc rs2A  = getRVReg(state, 2);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       rs1   = getVMIReg(riscv, rs1A);
    vmiReg       rs2   = getVMIReg(riscv, rs2A);
    Uns32        bits  = 32;

    // call function (may cause exception for invalid SEW)
    vmimtArgProcessor();
    vmiCallFn cb = handleVSetVLArg1(bits, rs1);
    vmimtArgReg(bits, rs2);
    vmimtCallResultAttrs(cb, bits, rd, VMCA_EXCEPTION|VMCA_NO_INVALIDATE);
    writeRegSize(riscv, rdA, bits);

    // zero vstart register on instruction completion
    setVStartZero(state);

    // terminate the block after this instruction because SEW and VLMUL are
    // now unknown
    vmimtEndBlock();
}

//
// Implement VSetVL <rd>, <rs1>, <vtypei> operation
//
static RISCV_MORPH_FN(emitVSetVLRRC) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    riscvRegDesc rs1A  = getRVReg(state, 1);
    vmiReg       rd    = getVMIReg(riscv, rdA);
    vmiReg       rs1   = getVMIReg(riscv, rs1A);
    Uns32        bits  = 32;
    Uns8         vsew  = state->info.vsew;
    Uns8         vlmul = state->info.vlmul;
    riscvSEWMt   SEW   = riscvValidSEW(riscv, vsew);

    if(!SEW) {

        vmiCallFn cb = (vmiCallFn)setVLSEWLMULInt;

        // update using invalid SEW
        vmimtArgProcessor();
        vmimtArgUns32(0);       // vl (ignored)
        vmimtArgUns32(vsew);    // sew
        vmimtArgUns32(0);       // vlmul (ignored)
        vmimtCallResultAttrs(cb, bits, rd, VMCA_NO_INVALIDATE);
        writeRegSize(riscv, rdA, bits);

        // terminate the block after this instruction
        vmimtEndBlock();

    } else {

        // call update function (SEW is known to be valid)
        vmimtArgProcessor();
        vmiCallFn cb = handleVSetVLArg1(bits, rs1);
        vmimtArgUns32((vsew<<2)+vlmul);
        vmimtCallResultAttrs(cb, bits, rd, VMCA_NO_INVALIDATE);
        writeRegSize(riscv, rdA, bits);

        if(VMI_ISNOREG(rs1)) {

            riscvBlockStateP blockState = riscv->blockState;
            riscvVLMULMt     VLMUL      = vlmulToVLMUL(vlmul);

            // reset knowledge of registers that have top parts zeroed unless
            // previous configuration had the same VLMUL and was also set to
            // maximum size
            if(
                (blockState->VLClassMt != VLCLASSMT_MAX) ||
                (blockState->VLMULMt   != VLMUL)
            ) {
                blockState->VZeroTopMt[VTZ_SINGLE] = 0;
                blockState->VZeroTopMt[VTZ_GROUP]  = 0;
            }

            // update morph-time VLClass, SEW and VLMUL, which are now known,
            // and reset record of vectors known to have top half zeroed
            blockState->VLClassMt = VLCLASSMT_MAX;
            blockState->SEWMt     = SEW;
            blockState->VLMULMt   = VLMUL;

        } else {

            // terminate the block after this instruction because VLClass is now
            // unknown
            vmimtEndBlock();
        }
    }

    // zero vstart register on instruction completion
    setVStartZero(state);
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR MEMORY ACCESS INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Return the memory element size in bits
//
static Uns32 getVMemBits(riscvMorphStateP state) {

    Uns32 memBits = state->info.memBits;

    if(memBits==-1) {
        memBits = getSEWMt(state->riscv);
    }

    return memBits;
}

//
// Is the specified SEW/memBits pair legal?
//
inline static Bool legalVMemBits(riscvSEWMt SEW, Uns32 memBits) {
    return memBits<=SEW;
}

//
// Is the specified SEW/memBits pair legal?
//
inline static Bool legalV0Index(riscvMorphStateP state) {

    riscvRegDesc rv0  = getRVReg(state, 0);
    Uns32        nf   = state->info.nf;
    Uns32        last = getRIndex(rv0)+nf;

    return last<VREG_NUM;
}

//
// Operation-specific argument checks for loads and stores
//
static RISCV_MORPHV_FN(emitVLdStCheckCB) {

    riscvP riscv   = state->riscv;
    Uns32  memBits = getVMemBits(state);

    if(!legalVMemBits(id->SEW, memBits)) {

        // Illegal Instruction for invalid SEW/memBits combination
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IMB", "SEW < memory element bits");

    } else if(!state->info.nf) {

        // not Zvlsseg extension instruction

    } else if(!riscv->configInfo.Zvlsseg) {

        // VLMUL must be 1 for load/store segment instructions
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IVLSEG", "Zvlsseg extension not configured");

    } else if(getVLMULMt(riscv)!=1) {

        // VLMUL must be 1 for load/store segment instructions
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IVLMUL", "Illegal VLMUL>1");

    } else if(!legalV0Index(state)) {

        // register indices must not wrap
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IVWRAP", "Illegal vector index wrap-around");
    }
}

//
// Operation-specific initialization for loads and stores
//
static RISCV_MORPHV_FN(emitVLdStInitCB) {

    // set first-fault active indication if required
    if(state->info.isFF) {
        vmimtMoveRC(8, RISCV_FF, True);
    }
}

//
// Add load/store base to calculated offset
//
static void emitVLdStAddBase(riscvMorphStateP state, iterDescP id, vmiReg ra) {

    riscvP       riscv  = state->riscv;
    riscvRegDesc rs1A   = getRVReg(state, 1);
    vmiReg       rs1    = getVMIReg(riscv, rs1A);
    Uns32        raBits = getRBits(rs1A);

    vmimtBinopRR(raBits, vmi_ADD, ra, rs1, 0);
}

//
// Calculate element offset for unit-stride load/store
//
static vmiReg emitVLdStUOffset(riscvMorphStateP state, iterDescP id) {

    riscvRegDesc rs1A     = getRVReg(state, 1);
    vmiReg       ra       = getTmp(0);
    Uns32        raBits   = getRBits(rs1A);
    Uns32        fieldNum = state->info.nf+1;
    Uns32        memBits  = getVMemBits(state) * fieldNum;
    vmiReg       vstart   = CSR_REG_MT(vstart);

    if(memBits==SEWMT_8) {

        vmimtMoveRR(raBits, ra, vstart);

    } else {

        Uns32 scale = memBits>>3;
        Uns32 shift = mulToShift(scale);

        if(shift==-1) {
            vmimtBinopRRC(raBits, vmi_MUL, ra, vstart, scale, 0);
        } else {
            vmimtBinopRRC(raBits, vmi_SHL, ra, vstart, shift, 0);
        }
    }

    return ra;
}

//
// Calculate element offset for strided load/store
//
static vmiReg emitVLdStSOffset(riscvMorphStateP state, iterDescP id) {

    riscvP       riscv  = state->riscv;
    riscvRegDesc rs1A   = getRVReg(state, 1);
    riscvRegDesc rs2A   = getRVReg(state, 2);
    vmiReg       rs2    = getVMIReg(riscv, rs2A);
    vmiReg       ra     = getTmp(0);
    Uns32        raBits = getRBits(rs1A);
    vmiReg       vstart = CSR_REG_MT(vstart);

    vmimtBinopRRR(raBits, vmi_MUL, ra, vstart, rs2, 0);

    return ra;
}

//
// Calculate element offset for indexed load/store
//
static vmiReg emitVLdStIOffset(riscvMorphStateP state, iterDescP id) {

    riscvRegDesc rs1A   = getRVReg(state, 1);
    vmiReg       ra     = getTmp(0);
    Uns32        raBits = getRBits(rs1A);
    Uns32        iBits  = (id->SEW<raBits) ? id->SEW : raBits;

    vmimtMoveExtendRR(raBits, ra, iBits, id->r[2], True);

    return ra;
}

//
// Per-element callback for generic vector element load
//
static void emitVLdInt(riscvMorphStateP state, iterDescP id, vmiReg ra) {

    Uns32     memBits  = getVMemBits(state);
    Uns32     memBytes = memBits/8;
    vmiLabelP skip     = state->info.isFF ? vmimtNewLabel() : 0;
    Uns32     i;

    // add base
    emitVLdStAddBase(state, id, ra);

    for(i=0; i<=state->info.nf; i++) {

        vmiReg vd    = getSegmentRegisterV0(state, id->r[0], i);
        vmiReg vdTmp = skip ? getTmp(0) : vd;

        // do load (either directly to result location or to temporary)
        vmimtLoadRRO(
            id->SEW,
            memBits,
            memBytes*i,
            vdTmp,
            ra,
            getDataEndian(state->riscv),
            !state->info.unsExt,
            MEM_CONSTRAINT_ALIGNED
        );

        // for a fault-only-first load, only commit the value if no fault
        if(skip) {
            vmimtCondJumpLabel(RISCV_FF, False, skip);
            vmimtMoveRR(id->SEW, vd, vdTmp);
        }
    }

    // here if aborted because of fault-only-first failure
    if(skip) {
        vmimtInsertLabel(skip);
    }
}

//
// Per-element callback for generic vector element store
//
static void emitVStInt(riscvMorphStateP state, iterDescP id, vmiReg ra) {

    Uns32 memBits  = getVMemBits(state);
    Uns32 memBytes = memBits/8;
    Uns32 i;

    // add base
    emitVLdStAddBase(state, id, ra);

    for(i=0; i<=state->info.nf; i++) {

        vmiReg vs = getSegmentRegisterV0(state, id->r[0], i);

        // do store
        vmimtStoreRRO(
            memBits,
            memBytes*i,
            ra,
            vs,
            getDataEndian(state->riscv),
            MEM_CONSTRAINT_ALIGNED
        );
    }
}

//
// Per-element callback for unit-stride loads
//
static RISCV_MORPHV_FN(emitVLdUCB) {
    if(legalVMemBits(id->SEW, getVMemBits(state))) {
        emitVLdInt(state, id, emitVLdStUOffset(state, id));
    }
}

//
// Per-element callback for unit-stride stores
//
static RISCV_MORPHV_FN(emitVStUCB) {
    if(legalVMemBits(id->SEW, getVMemBits(state))) {
        emitVStInt(state, id, emitVLdStUOffset(state, id));
    }
}

//
// Per-element callback for strided loads
//
static RISCV_MORPHV_FN(emitVLdSCB) {
    if(legalVMemBits(id->SEW, getVMemBits(state))) {
        emitVLdInt(state, id, emitVLdStSOffset(state, id));
    }
}

//
// Per-element callback for strided stores
//
static RISCV_MORPHV_FN(emitVStSCB) {
    if(legalVMemBits(id->SEW, getVMemBits(state))) {
        emitVStInt(state, id, emitVLdStSOffset(state, id));
    }
}

//
// Per-element callback for indexed loads
//
static RISCV_MORPHV_FN(emitVLdICB) {
    if(legalVMemBits(id->SEW, getVMemBits(state))) {
        emitVLdInt(state, id, emitVLdStIOffset(state, id));
    }
}

//
// Per-element callback for indexed stores
//
static RISCV_MORPHV_FN(emitVStICB) {
    if(legalVMemBits(id->SEW, getVMemBits(state))) {
        emitVStInt(state, id, emitVLdStIOffset(state, id));
    }
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR ATOMIC MEMORY OPERATIONS
////////////////////////////////////////////////////////////////////////////////

//
// Operation-specific argument checks for vector atomic memory operations
//
static RISCV_MORPHV_FN(emitVAMOCheckCB) {

    riscvP riscv   = state->riscv;
    Uns32  memBits = getVMemBits(state);

    if(!legalVMemBits(id->SEW, memBits)) {

        // Illegal Instruction for invalid SEW/memBits combination
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IMB", "SEW < memory element bits");

    } else if(!riscv->configInfo.Zvamo) {

        // VLMUL must be 1 for load/store segment instructions
        ILLEGAL_INSTRUCTION_MESSAGE(riscv, "IVAMO", "Zvamo extension not configured");
    }
}

//
// Atomic memory operation (vector arguments)
//
static void emitVAMOCommonRRR(riscvMorphStateP state, iterDescP id, amoCB opCB) {

    if(legalVMemBits(id->SEW, getVMemBits(state))) {

        vmiReg ra = emitVLdStIOffset(state, id);

        emitVLdStAddBase(state, id, ra);

        emitAMOCommonInt(state, opCB, id->r[0], id->r[3], ra, id->SEW);
    }
}

//
// Atomic memory operation using defined VMI binop
//
static RISCV_MORPHV_FN(emitVAMOBinopRRR) {
    emitVAMOCommonRRR(state, id, emitAMOBinopRRRCB);
}

//
// Atomic memory operation using swap
//
static RISCV_MORPHV_FN(emitVAMOSwapRRR) {
    emitVAMOCommonRRR(state, id, emitAMOSwapRRRCB);
}


////////////////////////////////////////////////////////////////////////////////
// PREDICATE OPERATIONS
////////////////////////////////////////////////////////////////////////////////

//
// Emit code to initialize access to predicate register field
//
static vmiReg accessMaskField(
    riscvMorphStateP state,
    iterDescP        id,
    riscvRegDesc     mask
) {
    riscvP riscv = state->riscv;
    vmiReg Pd    = getVMIReg(riscv, mask);

    getIndexedMVMIReg(state, id, &Pd);

    return Pd;
}

//
// Emit code to extract the LSB of the current element of the given predicate
// register to a byte-sized result register
//
static void getPaLSB(iterDescP id, vmiReg Pa, vmiReg lsb) {

    if(id->MLEN>=8) {

        // extract least significant bit of byte
        vmimtBinopRRC(8, vmi_AND, lsb, Pa, 1, 0);

    } else {

        // get mask register
        vmiReg activeMask = RISCV_VACTIVE_MASK;

        // test active bit of byte
        vmimtTestRR(8, vmi_COND_NZ, Pa, activeMask, lsb);
    }
}

//
// Emit code to write the current field in a predicate register with the flag
//
static void writePdLSB(iterDescP id, vmiReg Pd, vmiReg lsb, vmiReg t) {

    if(id->MLEN>=8) {

        // extend to mask element size
        vmimtMoveExtendRR(id->MLEN, Pd, 8, lsb, False);

    } else {

        // get mask registers
        vmiReg predMask   = RISCV_VPRED_MASK;
        vmiReg activeMask = RISCV_VACTIVE_MASK;

        // update field within mask byte
        vmimtUnopRR(8, vmi_NEG, t, lsb, 0);
        vmimtBinopRR(8, vmi_AND, t, activeMask, 0);
        vmimtBinopRR(8, vmi_AND, Pd, predMask, 0);
        vmimtBinopRR(8, vmi_OR, Pd, t, 0);
    }
}

//
// Emit code to write the current field in a predicate register with the value
//
static void writePdField(iterDescP id, vmiReg Pd, vmiReg Ps) {

    if(id->MLEN>=8) {

        // extend single bit to mask element size
        vmimtBinopRRC(id->MLEN, vmi_AND, Pd, Ps, 1, 0);

    } else {

        // get mask register
        vmiReg predMask   = RISCV_VPRED_MASK;
        vmiReg activeMask = RISCV_VACTIVE_MASK;

        // update field within mask byte with single-bit result
        vmimtBinopRR(8, vmi_AND, Ps, activeMask, 0);
        vmimtBinopRR(8, vmi_AND, Pd, predMask, 0);
        vmimtBinopRR(8, vmi_OR, Pd, Ps, 0);
    }
}

//
// Per-element callback for mask binary operations
//
static RISCV_MORPHV_FN(emitMBinaryCB) {

    vmiReg t0   = getTmp(0);
    Uns32  bits = (id->MLEN>=8) ? id->MLEN : 8;

    prepareMasks(state, id, t0, True, True);

    vmimtBinopRRR(bits, state->attrs->binop, t0, id->r[1], id->r[2], 0);

    writePdField(id, id->r[0], t0);
}

//
// Seed vector operation GPR result register
//
static void seedXd(riscvMorphStateP state, iterDescP id, Int32 c) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    Uns32        bits  = getRBits(rdA);

    // initialize target register count
    vmimtMoveRC(bits, id->r[0], c);
    writeReg(riscv, rdA);
}

//
// Initialization callback for VMPOPC
//
static RISCV_MORPHV_FN(initVMPopcCB) {
    seedXd(state, id, 0);
}

//
// Per-element callback for VMPOPC
//
static RISCV_MORPHV_FN(emitVMPopcCB) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    Uns32        bits  = getRBits(rdA);
    vmiReg       t0    = getTmp(0);

    // prepare active mask
    prepareMasks(state, id, t0, False, True);

    // extract mask element LSB
    getPaLSB(id, id->r[1], t0);

    // extend to result size
    vmimtMoveExtendRR(bits, t0, 8, t0, False);

    // add to cumulative count
    vmimtBinopRR(bits, vmi_ADD, id->r[0], t0, 0);
    writeReg(riscv, rdA);
}

//
// Initialization callback for VMFIRST
//
static RISCV_MORPHV_FN(initVMFirstCB) {
    seedXd(state, id, -1);
}

//
// Per-element callback for VMFIRST
//
static RISCV_MORPHV_FN(emitVMFirstCB) {

    riscvP       riscv = state->riscv;
    riscvRegDesc rdA   = getRVReg(state, 0);
    Uns32        bits  = getRBits(rdA);
    vmiReg       t0    = getTmp(0);
    vmiLabelP    skip  = vmimtNewLabel();

    // go if result has been found
    vmimtCompareRCJumpLabel(bits, vmi_COND_NE, id->r[0], -1, skip);

    // prepare active mask
    prepareMasks(state, id, t0, False, True);

    // extract mask element LSB
    getPaLSB(id, id->r[1], t0);

    // go if LSB is zero
    vmimtCompareRCJumpLabel(8, vmi_COND_EQ, t0, 0, skip);

    // record current index
    vmimtMoveRR(bits, id->r[0], CSR_REG_MT(vstart));
    writeReg(riscv, rdA);

    // here if result already found
    vmimtInsertLabel(skip);
}

//
// Initialization callback for VMSBF/VMSIF/VMSOF
//
static RISCV_MORPHV_FN(initVMSFCB) {
    vmimtMoveRC(8, RISCV_VTMP, 1);
}

//
// Per-element callback for VMSBF
//
static RISCV_MORPHV_FN(emitVMSBFCB) {

    vmiReg t0     = getTmp(0);
    vmiReg t1     = getTmp(1);
    vmiReg mState = RISCV_VTMP;

    // prepare active mask
    prepareMasks(state, id, t0, True, True);

    // extract mask element LSB
    getPaLSB(id, id->r[1], t0);

    // combine with active state
    vmimtBinopRR(8, vmi_ANDN, mState, t0, 0);

    // update field with new mask state
    writePdLSB(id, id->r[0], mState, t1);
}

//
// Per-element callback for VMSIF
//
static RISCV_MORPHV_FN(emitVMSIFCB) {

    vmiReg t0     = getTmp(0);
    vmiReg t1     = getTmp(1);
    vmiReg mState = RISCV_VTMP;

    // prepare active mask
    prepareMasks(state, id, t0, True, True);

    // extract mask element LSB
    getPaLSB(id, id->r[1], t0);

    // update field with new mask state
    writePdLSB(id, id->r[0], mState, t1);

    // combine with active state
    vmimtBinopRR(8, vmi_ANDN, mState, t0, 0);
}

//
// Per-element callback for VMSOF
//
static RISCV_MORPHV_FN(emitVMSOFCB) {

    vmiReg t0     = getTmp(0);
    vmiReg t1     = getTmp(1);
    vmiReg mState = RISCV_VTMP;

    // prepare active mask
    prepareMasks(state, id, t0, True, True);

    // extract mask element LSB
    getPaLSB(id, id->r[1], t0);

    // combine with active state
    vmimtBinopRR(8, vmi_AND, t0, mState, 0);

    // update field with new mask state
    writePdLSB(id, id->r[0], t0, t1);

    // combine with active state
    vmimtBinopRR(8, vmi_ANDN, mState, t0, 0);
}

//
// Initialization callback for VIOTA/VID
//
static RISCV_MORPHV_FN(initVIOTACB) {
    vmimtMoveRC(id->SEW, RISCV_VTMP, 0);
}

//
// Per-element callback for VIOTA
//
static RISCV_MORPHV_FN(emitVIOTACB) {

    vmiReg t0     = getTmp(0);
    vmiReg mState = RISCV_VTMP;

    // set element with previously-accumulated result
    vmimtMoveRR(id->SEW, id->r[0], mState);

    // prepare active mask
    prepareMasks(state, id, t0, False, True);

    // extract mask element LSB
    getPaLSB(id, id->r[1], t0);

    // extend to element width
    vmimtMoveExtendRR(id->SEW, t0, 8, t0, False);

    // add to accumulated result
    vmimtBinopRR(id->SEW, vmi_ADD, mState, t0, 0);
}

//
// Per-element callback for VID (selected element)
//
static RISCV_MORPHV_FN(emitVIDTCB) {

    vmiReg mState = RISCV_VTMP;

    // set element index
    vmimtMoveRR(id->SEW, id->r[0], mState);

    // increment element count
    vmimtBinopRC(id->SEW, vmi_ADD, mState, 1, 0);
}

//
// Per-element callback for VID (unselected element)
//
static RISCV_MORPHV_FN(emitVIDFCB) {

    vmiReg mState = RISCV_VTMP;

    // increment element count
    vmimtBinopRC(id->SEW, vmi_ADD, mState, 1, 0);
}


////////////////////////////////////////////////////////////////////////////////
// IMPLICIT CARRY OPERATIONS
////////////////////////////////////////////////////////////////////////////////

//
// Context for flag extraction and assignment
//
typedef struct carryCxtS {
    vmiFlags     flags;
    riscvRegDesc carryIn;
} carryCxt, *carryCxtP;

//
// Emit code to initialize implicit vector carry-in context
//
static void getVCarryIn(riscvMorphStateP state, iterDescP id, carryCxtP cxt) {

    vmiReg t0 = getTmp(0);

    // prepare predicate and active masks
    prepareMasks(state, id, t0, True, True);

    // initialize flags in context
    vmiFlags flags = {cin:t0, f:{[vmi_CF]=t0}};
    cxt->flags = flags;

    // start indexed access to carry input register
    vmiReg carry = accessMaskField(state, id, state->info.mask);

    // extract mask element LSB
    getPaLSB(id, carry, flags.cin);
}

//
// Emit code to write vector carry-out
//
static void setVCarryOut(riscvMorphStateP state, iterDescP id, carryCxtP cxt) {

    if(id->PdA) {

        vmiReg flag = cxt->flags.f[vmi_CF];
        vmiReg Pd   = accessMaskField(state, id, id->PdA);

        writePdLSB(id, Pd, flag, flag);
    }
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR COMPARE OPERATIONS
////////////////////////////////////////////////////////////////////////////////

//
// Context for flag extraction and assignment
//
typedef struct cmpCxtS {
    vmiReg flag;
    vmiReg Pd;
} cmpCxt, *cmpCxtP;

//
// Emit code to start compare operation
//
static void startCompare(riscvMorphStateP state, iterDescP id, cmpCxtP cxt) {

    vmiReg t0 = getTmp(0);

    // prepare predicate and active masks
    prepareMasks(state, id, t0, True, True);

    cxt->flag = t0;
    cxt->Pd   = accessMaskField(state, id, id->PdA);
}

//
// Emit code to complete compare operation
//
static void endCompare(iterDescP id, cmpCxtP cxt) {

    vmiReg flag = cxt->flag;

    writePdLSB(id, cxt->Pd, flag, flag);
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR INTEGER INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Per-element callback for merge (if unmasked or mask=1), register arg2
//
static RISCV_MORPHV_FN(emitVRMergeTCB) {

    vmimtMoveRR(id->SEW, id->r[0], id->r[2]);
}

//
// Per-element callback for merge (if unmasked or mask=1), constant arg2
//
static RISCV_MORPHV_FN(emitVIMergeTCB) {

    vmimtMoveRC(id->SEW, id->r[0], state->info.c);
}

//
// Per-element callback for merge (if masked and mask=0)
//
static RISCV_MORPHV_FN(emitVRMergeFCB) {

    vmimtMoveRR(id->SEW, id->r[0], id->r[1]);
}

//
// Per-element callback for integer instructions with two register operands
//
static RISCV_MORPHV_FN(emitVRBinaryIntCB) {

    vmiReg arg2 = id->r[2];

    vmimtBinopRRR(id->SEW, state->attrs->binop, id->r[0], id->r[1], arg2, 0);
}

//
// Per-element callback for integer instructions with register and constant
// operands
//
static RISCV_MORPHV_FN(emitVIBinaryIntCB) {

    Uns64 arg2 = state->info.c;

    vmimtBinopRRC(id->SEW, state->attrs->binop, id->r[0], id->r[1], arg2, 0);
}

//
// Per-element callback for integer instructions with two register operands with
// implicit carry in mask format from v0
//
static RISCV_MORPHV_FN(emitVRAdcIntCB) {

    vmiReg   arg2 = id->r[2];
    vmiReg   Vd   = id->PdA ? VMI_NOREG : id->r[0];
    carryCxt cxt;

    getVCarryIn(state, id, &cxt);

    vmimtBinopRRR(id->SEW, state->attrs->binop, Vd, id->r[1], arg2, &cxt.flags);

    setVCarryOut(state, id, &cxt);
}

//
// Per-element callback for integer instructions with register and constant
// operands with implicit carry in mask format from v0
//
static RISCV_MORPHV_FN(emitVIAdcIntCB) {

    Uns64    arg2 = state->info.c;
    vmiReg   Vd   = id->PdA ? VMI_NOREG : id->r[0];
    carryCxt cxt;

    getVCarryIn(state, id, &cxt);

    vmimtBinopRRC(id->SEW, state->attrs->binop, Vd, id->r[1], arg2, &cxt.flags);

    setVCarryOut(state, id, &cxt);
}

//
// Per-element callback for integer compare instructions with two register
// operands
//
static RISCV_MORPHV_FN(emitVRCmpIntCB) {

    vmiReg arg2 = id->r[2];
    cmpCxt cxt;

    // emit code to start compare operation
    startCompare(state, id, &cxt);

    // do compare, setting temporary flag
    vmimtCompareRR(id->SEW, state->attrs->cond, id->r[1], arg2, cxt.flag);

    // emit code to complete compare operation
    endCompare(id, &cxt);
}

//
// Per-element callback for integer compare instructions with register and
// constant operands
//
static RISCV_MORPHV_FN(emitVICmpIntCB) {

    Uns64  arg2 = state->info.c;
    cmpCxt cxt;

    // emit code to start compare operation
    startCompare(state, id, &cxt);

    // do compare, setting temporary flag
    vmimtCompareRC(id->SEW, state->attrs->cond, id->r[1], arg2, cxt.flag);

    // emit code to complete compare operation
    endCompare(id, &cxt);
}

//
// Per-element callback for shift instructions with register and constant
// operands
//
static RISCV_MORPHV_FN(emitVIShiftIntCB) {

    Uns32 bits  = id->SEW;
    Uns32 shift = state->info.c & (bits-1);

    if(shift) {

        // non-zero shift
        vmimtBinopRRC(bits, state->attrs->binop, id->r[0], id->r[1], shift, 0);

    } else {

        // zero shift
        vmimtMoveRR(bits, id->r[0], id->r[1]);
    }
}

//
// Common per-element callback for integer MULH instructions
//
static void emitVRMulHIntInt(
    riscvMorphStateP state,
    iterDescP        id,
    vmiReg           rdl,
    vmiReg           rdh
) {
    vmiReg arg1 = id->r[1];
    vmiReg arg2 = id->r[2];

    // do double-width multiply, preserving top half
    vmimtMulopRRR(id->SEW, state->attrs->binop, rdh, rdl, arg1, arg2, 0);
}

//
// Common per-element callback for integer MULSUH instructions
//
static void emitVRMulHSUIntInt(
    riscvMorphStateP state,
    iterDescP        id,
    vmiReg           rdl,
    vmiReg           rdh
) {
    vmiReg    arg1 = id->r[1];
    vmiReg    arg2 = id->r[2];
    vmiReg    t0   = getTmp(0);
    vmiReg    t1   = getTmp(1);
    vmiLabelP done = vmimtNewLabel();

    // determine whether first argument is negative
    vmimtTestRR(id->SEW, vmi_COND_S, arg1, arg1, t0);

    // create scale (1 if positive, -1 if negative)
    vmimtCondMoveRCC(id->SEW, t0, True, t0, -1, 1);

    // apply scale to first argument (convert to positive if required)
    vmimtBinopRRR(id->SEW, vmi_IMUL, t1, arg1, t0, 0);

    // do double-width multiply, preserving top half
    vmimtMulopRRR(id->SEW, state->attrs->binop, rdh, rdl, t1, arg2, 0);

    // skip final negation unless argument 1 was negative
    vmimtCompareRCJumpLabel(8, vmi_COND_EQ, t0, 1, done);

    // bitwise-negate result parts
    vmimtUnopR(id->SEW, vmi_NOT, rdl, 0);
    vmimtUnopR(id->SEW, vmi_NOT, rdh, 0);

    // add 1 to complete negation
    vmiFlags fl = {f:{[vmi_CF]=t0}};
    vmiFlags fh = {cin:t0};
    vmimtBinopRC(id->SEW, vmi_ADD, rdl, 1, &fl);
    vmimtBinopRC(id->SEW, vmi_ADC, rdh, 0, &fh);

    // here if final negation is skipped
    vmimtInsertLabel(done);
}

//
// Per-element callback for single-width integer MULH instructions
//
static RISCV_MORPHV_FN(emitVRMulHIntCB) {

    vmiReg rdl = VMI_NOREG;
    vmiReg rdh = id->r[0];

    emitVRMulHIntInt(state, id, rdl, rdh);
}

//
// Per-element callback for single-width integer MULSUH instructions
//
static RISCV_MORPHV_FN(emitVRMulHSUIntCB) {

    vmiReg rdl = getTmp(2);
    vmiReg rdh = id->r[0];

    emitVRMulHSUIntInt(state, id, rdl, rdh);
}

//
// Per-element callback for widening integer MULH instructions
//
static RISCV_MORPHV_FN(emitVRWMulHIntCB) {

    vmiReg rdl = id->r[0];
    vmiReg rdh = VMI_REG_DELTA(rdl, id->SEW/8);

    emitVRMulHIntInt(state, id, rdl, rdh);
}

//
// Per-element callback for widening integer MULSUH instructions
//
static RISCV_MORPHV_FN(emitVRWMulHSUIntCB) {

    vmiReg rdl = id->r[0];
    vmiReg rdh = VMI_REG_DELTA(rdl, id->SEW/8);

    emitVRMulHSUIntInt(state, id, rdl, rdh);
}

//
// Per-element callback for integer multiply-add instructions
//
static void emitVRMAddIntInt(
    riscvMorphStateP state,
    iterDescP        id,
    Uns32            arg1Index,
    Uns32            arg2Index,
    Uns32            arg3Index
) {
    vmiBinop mulop = isAnyVArgSigned(state) ? vmi_IMUL : vmi_MUL;
    vmiReg   arg1  = id->r[arg1Index];
    vmiReg   arg2  = id->r[arg2Index];
    vmiReg   arg3  = id->r[arg3Index];
    vmiReg   t0    = getTmp(0);

    // do multiply
    vmimtBinopRRR(id->SEW, mulop, t0, arg2, arg3, 0);

    // do add/subtract
    vmimtBinopRRR(id->SEW, state->attrs->binop, id->r[0], arg1, t0, 0);
}

//
// Per-element callback for multiply-add instructions overwriting multiplicand
//
static RISCV_MORPHV_FN(emitVRMAddIntCB) {
    emitVRMAddIntInt(state, id, 2, 0, 1);
}

//
// Per-element callback for multiply-add instructions overwriting addend/minuend
//
static RISCV_MORPHV_FN(emitVRMAccIntCB) {
    emitVRMAddIntInt(state, id, 0, 2, 1);
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR FIXED POINT ROUNDING UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// Fixed point rounding modes
//
typedef enum vxrmE {
    VXRM_RNU,   // round-to-nearest-up
    VXRM_RNE,   // round-to-nearest-even
    VXRM_RDN,   // round-down (truncate)
    VXRM_ROD,   // round-to-odd (jam)
} vxrm;

//
// Define function returning fixed-point rounding adjustment for result of the
// given bit size
//
#define FPRM_FUNC(_NAME, _BITS) Uns##_BITS _NAME(           \
    Uns32      fprm,                                        \
    Uns##_BITS result,                                      \
    Uns##_BITS discard                                      \
) {                                                         \
    Uns##_BITS msbMask = 1ULL<<((_BITS)-1);                 \
    Bool       round;                                       \
                                                            \
    switch(fprm) {                                          \
        case VXRM_RNU:                                      \
            round = discard & msbMask;                      \
            break;                                          \
        case VXRM_RNE:                                      \
            if(discard==msbMask) {                          \
                round = result & 1;                         \
            } else {                                        \
                round = discard & msbMask;                  \
            }                                               \
            break;                                          \
        case VXRM_RDN:                                      \
            round = 0;                                      \
            break;                                          \
        case VXRM_ROD:                                      \
            round = discard && !(result & 1);               \
            break;                                          \
        default:                                            \
            VMI_ABORT("Unexpected rounding mode %u", fprm); \
            break;                                          \
    }                                                       \
                                                            \
    return round;                                           \
}

//
// Define rounding adjustment functions
//
static FPRM_FUNC(getRound8,  8)
static FPRM_FUNC(getRound16, 16)
static FPRM_FUNC(getRound32, 32)
static FPRM_FUNC(getRound64, 64)

//
// Return fixed-point rounding adjustment function for result of the given bit
// size
//
static vmiCallFn getRoundCB(Uns32 bits) {

    void *result = 0;

    switch(bits) {
        case 8:
            result = getRound8;
            break;
        case 16:
            result = getRound16;
            break;
        case 32:
            result = getRound32;
            break;
        case 64:
            result = getRound64;
            break;
        default:
            VMI_ABORT("Unexpected bits %u", bits);  // LCOV_EXCL_LINE
    }

    return result;
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR FIXED POINT ARITHMETIC INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Emit code to get the fixed point rounding adjustment to apply in 'discard'
//
static void emitGetFixedPointRoundingAdjust(
    iterDescP id,
    vmiReg    rd,
    vmiReg    discard
) {
    Uns32 bits = id->SEW;

    vmimtArgReg(32, CSR_REG_MT(vxrm));
    vmimtArgReg(bits, rd);
    vmimtArgReg(bits, discard);
    vmimtCallResultAttrs(getRoundCB(bits), bits, discard, VMCA_PURE);
}

//
// Emit code to round result in rd using discarded bits in discard using the
// current fixed point rounding mode
//
static void emitFixedPointRounding(
    riscvMorphStateP state,
    iterDescP        id,
    vmiReg           rd,
    vmiReg           discard
) {
    // get rounding amount to add
    emitGetFixedPointRoundingAdjust(id, rd, discard);

    // do  addition of rounding amount
    vmimtBinopRR(id->SEW, vmi_ADD, rd, discard, 0);
}

//
// Per-element callback for saturating instructions with two register operands
//
static RISCV_MORPHV_FN(emitVRSBinaryCB) {

    vmiReg     arg2  = id->r[2];
    vmiFlagsCP flags = getSatFlags(state);

    // do saturating operation
    vmimtBinopRRR(id->SEW, state->attrs->binop, id->r[0], id->r[1], arg2, flags);

    // merge saturation flag with sticky vxsat
    updateVXSat();
}

//
// Per-element callback for saturating instructions with register and constant
// operands
//
static RISCV_MORPHV_FN(emitVISBinaryCB) {

    Uns64      arg2  = state->info.c;
    vmiFlagsCP flags = getSatFlags(state);

    // do saturating operation
    vmimtBinopRRC(id->SEW, state->attrs->binop, id->r[0], id->r[1], arg2, flags);

    // merge saturation flag with sticky vxsat
    updateVXSat();
}

//
// Per-element callback for averaging instructions with two register operands
//
static RISCV_MORPHV_FN(emitVRABinaryCB) {

    vmiReg arg2 = id->r[2];
    vmiReg t0   = getTmp(0);
    Uns32  bits = id->SEW;

    // extract discard bits
    vmimtBinopRRR(bits, vmi_XOR, t0, id->r[1], arg2, 0);
    vmimtBinopRC(bits, vmi_AND, t0, 1, 0);
    vmimtBinopRC(bits, vmi_ROR, t0, 1, 0);

    // do averaging operation
    vmimtBinopRRR(bits, state->attrs->binop, id->r[0], id->r[1], arg2, 0);

    // do fixed point rounding
    emitFixedPointRounding(state, id, id->r[0], t0);
}

//
// Per-element callback for saturating instructions with register and constant
// operands
//
static RISCV_MORPHV_FN(emitVIABinaryCB) {

    Uns64  arg2 = state->info.c;
    vmiReg t0   = getTmp(0);
    Uns32  bits = id->SEW;

    // extract discard bits
    vmimtBinopRRC(bits, vmi_XOR, t0, id->r[1], arg2, 0);
    vmimtBinopRC(bits, vmi_AND, t0, 1, 0);
    vmimtBinopRC(bits, vmi_ROR, t0, 1, 0);

    // do averaging operation
    vmimtBinopRRC(bits, state->attrs->binop, id->r[0], id->r[1], arg2, 0);

    // do fixed point rounding
    emitFixedPointRounding(state, id, id->r[0], t0);
}

//
// Per-element callback for rounding shift instructions with two register
// operands
//
static RISCV_MORPHV_FN(emitVRRShiftIntCB) {

    Uns32     bits  = id->SEW;
    vmiReg    arg2  = id->r[2];
    vmiReg    shr   = getTmp(0);
    vmiReg    trd   = getTmp(1);
    vmiReg    shl   = getTmp(2);
    vmiReg    zero  = getTmp(2);
    vmiLabelP done  = vmimtNewLabel();
    vmiFlags  flags = {f:{[vmi_ZF]=zero}};

    // assume shift is zero initially
    vmimtMoveRR(bits, trd, id->r[1]);

    // calculate shift and jump if zero
    vmimtBinopRRC(bits, vmi_AND, shr, arg2, bits-1, &flags);
    vmimtCondJumpLabel(zero, True, done);

    // extract discard bits
    vmimtBinopRCR(bits, vmi_SUB, shl, bits, shr, 0);
    vmimtBinopRRR(bits, vmi_SHL, shl, trd, shl, 0);

    // do shift
    vmimtBinopRR(bits, state->attrs->binop, trd, shr, 0);

    // do fixed point rounding
    emitFixedPointRounding(state, id, trd, shl);

    // here if shift is zero
    vmimtInsertLabel(done);

    // commit result
    vmimtMoveRR(bits, id->r[0], trd);
}

//
// Per-element callback for rounding shift instructions with register and
// constant operands
//
static RISCV_MORPHV_FN(emitVIRShiftIntCB) {

    Uns32  bits = id->SEW;
    Uns32  shr  = state->info.c & (bits-1);
    Uns32  shl  = bits - shr;
    vmiReg t0   = getTmp(0);

    if(shr) {

        // extract discard bits
        vmimtBinopRRC(bits, vmi_SHL, t0, id->r[1], shl, 0);

        // do shift
        vmimtBinopRRC(bits, state->attrs->binop, id->r[0], id->r[1], shr, 0);

        // do fixed point rounding
        emitFixedPointRounding(state, id, id->r[0], t0);

    } else {

        // no shift
        vmimtMoveRR(bits, id->r[0], id->r[1]);
    }
}

//
// Per-element callback for averaging instructions with two register operands
//
static RISCV_MORPHV_FN(emitVRSMULCB) {

    vmiReg     arg2  = id->r[2];
    vmiReg     t1    = getTmp(1);
    vmiReg     t2    = getTmp(2);
    vmiFlagsCP flags = getSatFlags(state);
    Uns32      bits  = id->SEW;

    // produce 2*SEW-width result
    vmimtMulopRRR(bits, state->attrs->binop, id->r[0], t1, id->r[1], arg2, 0);

    // shift result left one place with saturation
    vmimtBinopRC(bits, vmi_SHLSQ, id->r[0], 1, flags);

    // merge saturation flag with sticky vxsat
    updateVXSat();

    // rotate LSW to place retained bit at bit 0 and discard bits at N..1
    vmimtBinopRC(bits, vmi_ROL, t1, 1, 0);

    // merge retained bit with (possibly saturated) result
    vmimtBinopRRC(bits, vmi_AND, t2, t1, 1, 0);
    vmimtBinopRR(bits, vmi_OR, id->r[0], t2, 0);

    // mask discard bits at bits N..1
    vmimtBinopRC(bits, vmi_AND, t1, -2, 0);

    // do fixed point rounding
    emitFixedPointRounding(state, id, id->r[0], t1);
}

//
// Per-element callback for saturating integer multiply-add instructions
//
static void emitVRSMAddIntInt(
    riscvMorphStateP state,
    iterDescP        id,
    Uns32            arg1Index,
    Uns32            arg2Index,
    Uns32            arg3Index
) {
    Bool       isSigned = isAnyVArgSigned(state);
    vmiBinop   mulop    = isSigned ? vmi_IMUL : vmi_MUL;
    vmiBinop   shiftop  = isSigned ? vmi_SAR  : vmi_SHR;
    vmiReg     arg1     = id->r[arg1Index];
    vmiReg     arg2     = id->r[arg2Index];
    vmiReg     arg3     = id->r[arg3Index];
    vmiReg     t0       = getTmp(0);
    vmiReg     t1       = getTmp(1);
    vmiFlagsCP flags    = getSatFlags(state);
    Uns32      bits     = id->SEW;
    Uns32      rBits    = bits/4;
    Uns32      rMask    = (1<<rBits)-1;

    // do multiply
    vmimtBinopRRR(bits, mulop, t0, arg2, arg3, 0);

    // get discard bits in t1
    vmimtBinopRRC(bits, vmi_AND, t1, t0, rMask, 0);
    vmimtBinopRC(bits, vmi_ROR, t1, rBits, 0);

    // get shifted result in t0
    vmimtBinopRC(bits, shiftop, t0, rBits, 0);

    // do fixed point rounding
    emitFixedPointRounding(state, id, t0, t1);

    // do add/subtract
    vmimtBinopRRR(bits, state->attrs->binop, id->r[0], arg1, t0, flags);

    // merge saturation flag with sticky vxsat
    updateVXSat();
}

//
// Per-element callback for saturating multiply-add instructions overwriting
// addend/minuend
//
static RISCV_MORPHV_FN(emitVRSMAccIntCB) {
    emitVRSMAddIntInt(state, id, 0, 2, 1);
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR INTEGER REDUCTION INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Initialization callback for integer reduction operations
//
static RISCV_MORPHV_FN(initVRedCB) {

    riscvVShape vShape = state->attrs->vShape;
    Uns32       mulE   = getWidthMultiplierN(vShape, 2);

    vmimtMoveRR(id->SEW*mulE, RISCV_VTMP, id->r[2]);
}

//
// Per-element callback for integer reduction operations
//
static RISCV_MORPHV_FN(emitVRedBinaryIntCB) {

    vmimtBinopRR(id->SEW, state->attrs->binop, RISCV_VTMP, id->r[1], 0);
}

//
// Finalization callback for integer reduction operations
//
static RISCV_MORPHV_FN(endVRedCB) {

    riscvP      riscv  = state->riscv;
    riscvVShape vShape = state->attrs->vShape;
    Uns32       mulE   = getWidthMultiplierN(vShape, 0);

    // zero target register
    vmimtMoveRC(riscv->configInfo.VLEN, id->r[0], 0);

    // set element 0 of target register
    vmimtMoveRR(id->SEW*mulE, id->r[0], RISCV_VTMP);
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR FLOATING POINT INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Per-element callback for floating point instructions with one register
// operand
//
static RISCV_MORPHV_FN(emitVRUnaryFltCB) {

    vmiReg        fd   = id->r[0];
    vmiReg        fs1  = id->r[1];
    vmiFType      type = getSEWFType(id->SEW);
    vmiFUnop      op   = state->attrs->fpUnop;
    vmiFPConfigCP ctrl = getFPControl(state);

    if(emitSetOperationRM(state, RV_RM_CURRENT)) {
        vmimtFUnopRR(type, op, fd, fs1, RISCV_FP_FLAGS, ctrl);
    }
}

//
// Common routine for floating point binary operation
//
static void emitVRBinaryFltInt(
    riscvMorphStateP state,
    iterDescP        id,
    Uns32            arg1Index,
    Uns32            arg2Index
) {
    vmiReg        fd   = id->r[0];
    vmiReg        fs1  = id->r[arg1Index];
    vmiReg        fs2  = id->r[arg2Index];
    vmiFType      type = getSEWFType(id->SEW);
    vmiFBinop     op   = state->attrs->fpBinop;
    vmiFPConfigCP ctrl = getFPControl(state);

    if(emitSetOperationRM(state, RV_RM_CURRENT)) {
        vmimtFBinopRRR(type, op, fd, fs1, fs2, RISCV_FP_FLAGS, ctrl);
    }
}

//
// Per-element callback for floating point instructions with two register
// operands
//
static RISCV_MORPHV_FN(emitVRBinaryFltCB) {
    emitVRBinaryFltInt(state, id, 1, 2);
}

//
// Per-element callback for floating point instructions with two reversed
// register operands
//
static RISCV_MORPHV_FN(emitVRBinaryFltRCB) {
    emitVRBinaryFltInt(state, id, 2, 1);
}

//
// Per-element callback for floating point multiply-add instructions
//
static void emitVRMAddFltInt(
    riscvMorphStateP state,
    iterDescP        id,
    Uns32            arg1Index,
    Uns32            arg2Index,
    Uns32            arg3Index
) {
    vmiReg        fd   = id->r[0];
    vmiReg        fs1  = id->r[arg1Index];
    vmiReg        fs2  = id->r[arg2Index];
    vmiReg        fs3  = id->r[arg3Index];
    vmiFType      type = getSEWFType(id->SEW);
    vmiFTernop    op   = state->attrs->fpTernop;
    vmiFPConfigCP ctrl = getFPControl(state);

    if(emitSetOperationRM(state, RV_RM_CURRENT)) {
        vmimtFTernopRRRR(type, op, fd, fs1, fs2, fs3, RISCV_FP_FLAGS, False, ctrl);
    }
}

//
// Per-element callback for multiply-add instructions overwriting multiplicand
//
static RISCV_MORPHV_FN(emitVRMAddFltCB) {
    emitVRMAddFltInt(state, id, 0, 1, 2);
}

//
// Per-element callback for multiply-add instructions overwriting addend/minuend
//
static RISCV_MORPHV_FN(emitVRMAccFltCB) {
    emitVRMAddFltInt(state, id, 2, 1, 0);
}

//
// Implement fsgnj, fsgnjn or fsgnjx operation
//
static RISCV_MORPHV_FN(emitVRFSgnFltCB) {
    emitFSgnInt(state->attrs, id->r[0], id->r[1], id->r[2], id->SEW);
}

//
// Implement floating point comparison
//
static RISCV_MORPHV_FN(emitVRFCmpFltCB) {

    vmiReg arg2 = id->r[2];
    cmpCxt cxt;

    // emit code to start compare operation
    startCompare(state, id, &cxt);

    // do compare, setting temporary flag
    emitFCompareInt(state, cxt.flag, id->r[1], arg2, getSEWFType(id->SEW));

    // emit code to complete compare operation
    endCompare(id, &cxt);
}

//
// Implement floating point class
//
static RISCV_MORPHV_FN(emitVRFClassFltCB) {

    Uns32 bitsS = id->SEW;
    Uns32 bitsD = (bitsS<=32) ? bitsS : 32;

    emitFClassInt(id->r[0], id->r[1], bitsS, bitsD);
    vmimtMoveExtendRR(bitsS, id->r[0], bitsD, id->r[0], False);
}

//
// Return vmiFType for the indexed argument
//
static vmiFType getVConvertType(
    riscvMorphStateP state,
    iterDescP        id,
    Uns32            argIndex
) {
    riscvVShape vShape = state->attrs->vShape;
    riscvSEWMt  SEWxN  = id->SEW * getWidthMultiplierN(vShape, argIndex);
    vmiFType    result;

    // get basic operand type
    if(isFloatN(vShape, argIndex)) {
        result = VMI_FT_IEEE_754;
    } else if(isAnyVArgSigned(state)) {
        result = VMI_FT_INT;
    } else {
        result = VMI_FT_UNS;
    }

    // include size
    return result | SEWxN;
}

//
// Implement floating point convert
//
static RISCV_MORPHV_FN(emitVRConvertFltCB) {

    vmiReg        fd    = id->r[0];
    vmiReg        fs    = id->r[1];
    vmiFType      typeD = getVConvertType(state, id, 0);
    vmiFType      typeS = getVConvertType(state, id, 1);
    vmiFPConfigCP ctrl  = getFPControl(state);
    vmiFPRC       rc    = vmi_FPR_CURRENT;

    if(emitSetOperationRM(state, RV_RM_CURRENT)) {
        vmimtFConvertRR(typeD, fd, typeS, fs, rc, RISCV_FP_FLAGS, ctrl);
    }
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR FLOATING POINT REDUCTION INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Per-element callback for floating point reduction operations
//
static RISCV_MORPHV_FN(emitVRedBinaryFltCB) {

    vmiReg        fd   = RISCV_VTMP;
    vmiReg        fs1  = RISCV_VTMP;
    vmiReg        fs2  = id->r[1];
    vmiFType      type = getSEWFType(id->SEW);
    vmiFBinop     op   = state->attrs->fpBinop;
    vmiFPConfigCP ctrl = getFPControl(state);

    if(emitSetOperationRM(state, RV_RM_CURRENT)) {
        vmimtFBinopRRR(type, op, fd, fs1, fs2, RISCV_FP_FLAGS, ctrl);
    }
}


////////////////////////////////////////////////////////////////////////////////
// VECTOR PERMUTATION INSTRUCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Return the minimum of SEW and the bits specified
//
inline static Uns32 getMinBits(iterDescP id, Uns32 rBits) {
    return (id->SEW<rBits) ? id->SEW : rBits;
}

//
// Return the size in bits of a generic operand of a vector instruction
//
static Uns32 getRVBits(riscvMorphStateP state, iterDescP id, Uns32 index) {

    riscvRegDesc rsA = getRVReg(state, index);

    return isVReg(rsA) ? id->SEW : getRBits(rsA);
}

//
// Implement move to register Vd0 from source Vs1, indexed using index, and
// insert label target if the move should be skipped
//
static void moveIndexedVd0Vs1(
    riscvMorphStateP state,
    iterDescP        id,
    vmiReg           index,
    vmiLabelP        skip
) {
    // initialize source indexed vector register
    getIndexedVRegisterInt(state, id, 1, index);

    // move one element
    vmimtMoveRR(id->SEW, id->r[0], id->r[1]);

    // kill base registers and temporaries
    killBaseRegistersAndTemps(state, id);

    // here if operation was skipped
    vmimtInsertLabel(skip);
}

//
// Per-element callback for VEXT.X.V
//
static RISCV_MORPHV_FN(emitVEXTXV) {

    riscvP       riscv  = state->riscv;
    vmiReg       rd     = id->r[0];
    vmiReg       rs1    = id->r[2];
    riscvRegDesc rdA    = getRVReg(state, 0);
    Uns32        rdBits = getRBits(rdA);
    Uns32        eBits  = getMinBits(id, rdBits);

    if(VMI_ISNOREG(rs1)) {

        // using x0 as index
        vmimtMoveExtendRR(rdBits, rd, eBits, id->r[1], False);

    } else {

        Uns32      offsetBits = IMPERAS_POINTER_BITS;
        vmiReg     index      = getTmp(0);
        Uns32      VLEN       = riscv->configInfo.VLEN;
        riscvSEWMt SEW        = id->SEW;
        Uns32      eNum       = VLEN/SEW;
        Uns32      indexBits  = (offsetBits<rdBits) ? offsetBits : rdBits;
        vmiLabelP  badIndex   = vmimtNewLabel();

        // get element index
        vmimtMoveRR(rdBits, index, rs1);

        // assume zero result is required
        vmimtMoveRC(rdBits, rd, 0);

        // done if index out-of-range
        vmimtCompareRCJumpLabel(rdBits, vmi_COND_NB, index, eNum, badIndex);

        // get indexed source
        vmimtMoveExtendRR(offsetBits, index, indexBits, index, False);
        getIndexedVRegisterInt(state, id, 1, index);

        // get indexed value
        vmimtMoveExtendRR(rdBits, rd, eBits, id->r[1], False);

        // kill base registers and temporaries
        killBaseRegistersAndTemps(state, id);

        // here if index out-of-range
        vmimtInsertLabel(badIndex);
    }

    writeReg(riscv, rdA);
}

//
// Per-element callback for VMV.S.X
//
static RISCV_MORPHV_FN(emitVMVSX) {

    riscvP       riscv = state->riscv;
    vmiReg       vd    = id->r[0];
    vmiReg       rs1   = id->r[1];
    riscvRegDesc rs1A  = getRVReg(state, 1);
    Uns32        sBits = getMinBits(id, getRBits(rs1A));

    // zero target register
    vmimtMoveRC(riscv->configInfo.VLEN, vd, 0);

    // assign element 0 of result
    vmimtMoveExtendRR(id->SEW, vd, sBits, rs1, False);
}

//
// Per-element callback for VFMV.F.S
//
static RISCV_MORPHV_FN(emitVFMVFS) {

    riscvP       riscv = state->riscv;
    vmiReg       fd    = id->r[0];
    vmiReg       vs1   = id->r[1];
    riscvRegDesc fdA   = getRVReg(state, 0);
    Uns32        eBits = getMinBits(id, getRBits(fdA));

    // extract element 0
    vmimtMoveRR(eBits, fd, vs1);

    // handle NaN boxing if required
    writeRegSize(riscv, fdA, eBits);
}

//
// Per-element callback for VFMV.S.F
//
static RISCV_MORPHV_FN(emitVFMVSF) {

    riscvP       riscv = state->riscv;
    vmiReg       vd    = id->r[0];
    vmiReg       fs1   = id->r[1];
    riscvRegDesc fs1A  = getRVReg(state, 1);
    Uns32        sBits = getMinBits(id, getRBits(fs1A));

    // zero target register
    vmimtMoveRC(riscv->configInfo.VLEN, vd, 0);

    // assign element 0 of result
    vmimtMoveRR(sBits, vd, fs1);

    // handle NaN boxing if required
    if(id->SEW>sBits) {
        vmimtMoveRC(id->SEW-sBits, VMI_REG_DELTA(vd,sBits/8), -1);
    }
}

//
// Per-element callback for VSLIDEUP.VX
//
static RISCV_MORPHV_FN(emitVRSLIDEUPCB) {

    Uns32     offsetBits = IMPERAS_POINTER_BITS;
    vmiLabelP skip       = vmimtNewLabel();
    vmiReg    offset     = id->r[2];
    vmiReg    vstart     = CSR_REG_MT(vstart);
    Uns32     xBits      = getRVBits(state, id, 2);
    Uns32     sBits      = (xBits<offsetBits) ? xBits : offsetBits;
    vmiReg    index      = getTmp(0);

    // skip move if vstart<offset
    vmimtCompareRRJumpLabel(xBits, vmi_COND_B, vstart, offset, skip);

    // calculate source index
    vmimtMoveExtendRR(offsetBits, index, sBits, offset, False);
    vmimtBinopRR(offsetBits, vmi_RSUB, index, vstart, 0);

    // do indexed move (if not skipped)
    moveIndexedVd0Vs1(state, id, index, skip);
}

//
// Per-element callback for VSLIDEUP.VI
//
static RISCV_MORPHV_FN(emitVISLIDEUPCB) {

    Uns32     offsetBits = IMPERAS_POINTER_BITS;
    vmiLabelP skip       = vmimtNewLabel();
    Uns32     offset     = state->info.c;
    vmiReg    vstart     = CSR_REG_MT(vstart);
    vmiReg    index      = getTmp(0);

    // skip move if vstart<offset
    vmimtCompareRCJumpLabel(32, vmi_COND_B, vstart, offset, skip);

    // calculate source index
    vmimtBinopRRC(offsetBits, vmi_SUB, index, vstart, offset, 0);

    // do indexed move (if not skipped)
    moveIndexedVd0Vs1(state, id, index, skip);
}

//
// Per-element callback for VSLIDEDOWN, common routine
//
static void emitVRSLIDEDOWNInt(
    riscvMorphStateP state,
    iterDescP        id,
    vmiReg           index,
    Uns32            xBits
) {
    vmiLabelP skip = vmimtNewLabel();

    // assume zero result is required
    vmimtMoveRC(id->SEW, id->r[0], 0);

    // skip move from vector if index>=RISCV_VLMAX
    vmimtCompareRRJumpLabel(xBits, vmi_COND_NB, index, RISCV_VLMAX, skip);

    // do indexed move (if not skipped)
    moveIndexedVd0Vs1(state, id, index, skip);
}

//
// Per-element callback for VSLIDEDOWN.VX
//
static RISCV_MORPHV_FN(emitVRSLIDEDOWNCB) {

    Uns32  offsetBits = IMPERAS_POINTER_BITS;
    vmiReg offset     = id->r[2];
    vmiReg vstart     = CSR_REG_MT(vstart);
    Uns32  xBits      = getRVBits(state, id, 2);
    Uns32  sBits      = (xBits<offsetBits) ? xBits : offsetBits;
    vmiReg index      = getTmp(0);

    // move offset clamped to VLMAX to temporary
    vmimtCompareRR(xBits, vmi_COND_B, offset, RISCV_VLMAX, index);
    vmimtCondMoveRRR(xBits, index, True, index, offset, RISCV_VLMAX);

    // calculate source index
    vmimtMoveExtendRR(offsetBits, index, sBits, index, False);
    vmimtBinopRR(offsetBits, vmi_ADD, index, vstart, 0);

    // do common part
    emitVRSLIDEDOWNInt(state, id, index, xBits);
}

//
// Per-element callback for VSLIDEDOWN.VI
//
static RISCV_MORPHV_FN(emitVISLIDEDOWNCB) {

    Uns32  offsetBits = IMPERAS_POINTER_BITS;
    Uns32  offset     = state->info.c;
    vmiReg vstart     = CSR_REG_MT(vstart);
    vmiReg index      = getTmp(0);

    // calculate source index
    vmimtBinopRRC(offsetBits, vmi_ADD, index, vstart, offset, 0);

    // do common part
    emitVRSLIDEDOWNInt(state, id, index, 32);
}

//
// Initialization callback for VSLIDE1UP.VX/VSLIDE1DOWN.VX
//
static RISCV_MORPHV_FN(initVRSLIDE1CB) {

    riscvRegDesc rs1A  = getRVReg(state, 2);
    Uns32        sBits = getMinBits(id, getRBits(rs1A));

    // prepare zero-extended input
    vmimtMoveExtendRR(id->SEW, RISCV_VTMP, sBits, id->r[2], False);
}

//
// Per-element callback for VSLIDE1UP.VX
//
static RISCV_MORPHV_FN(emitVRSLIDE1UPCB) {

    Uns32     offsetBits = IMPERAS_POINTER_BITS;
    vmiLabelP skip       = vmimtNewLabel();
    vmiReg    vstart     = CSR_REG_MT(vstart);
    vmiReg    index      = getTmp(0);

    // assume zero-extended rs1 result is required
    vmimtMoveRR(id->SEW, id->r[0], RISCV_VTMP);

    // skip move from vector if vstart==0
    vmimtCompareRCJumpLabel(32, vmi_COND_EQ, vstart, 0, skip);

    // calculate source index
    vmimtBinopRRC(offsetBits, vmi_SUB, index, vstart, 1, 0);

    // do indexed move (if not skipped)
    moveIndexedVd0Vs1(state, id, index, skip);
}

//
// Per-element callback for VSLIDE1DOWN.VX
//
static RISCV_MORPHV_FN(emitVRSLIDE1DOWNCB) {

    Uns32     offsetBits = IMPERAS_POINTER_BITS;
    vmiLabelP skip       = vmimtNewLabel();
    vmiReg    vstart     = CSR_REG_MT(vstart);
    vmiReg    index      = getTmp(0);

    // assume zero-extended rs1 result is required
    vmimtMoveRR(id->SEW, id->r[0], RISCV_VTMP);

    // calculate source index
    vmimtBinopRRC(offsetBits, vmi_ADD, index, vstart, 1, 0);

    // skip move from vector if index>=RISCV_VLMAX
    vmimtCompareRRJumpLabel(32, vmi_COND_NB, index, RISCV_VLMAX, skip);

    // do indexed move (if not skipped)
    moveIndexedVd0Vs1(state, id, index, skip);
}

//
// Per-element callback for VRGATHER.VX/VRGATHER.VV
//
static RISCV_MORPHV_FN(emitVRRGATHERCB) {

    Uns32     offsetBits = IMPERAS_POINTER_BITS;
    vmiLabelP skip       = vmimtNewLabel();
    vmiReg    offset     = id->r[2];
    Uns32     xBits      = getRVBits(state, id, 2);
    Uns32     dBits      = (xBits>offsetBits) ? xBits : offsetBits;
    vmiReg    index      = getTmp(0);

    // assume zero result is required
    vmimtMoveRC(id->SEW, id->r[0], 0);

    // calculate source index
    vmimtMoveExtendRR(dBits, index, xBits, offset, False);

    // skip move from vector if index>=RISCV_VLMAX
    vmimtCompareRRJumpLabel(dBits, vmi_COND_NB, index, RISCV_VLMAX, skip);

    // do indexed move (if not skipped)
    moveIndexedVd0Vs1(state, id, index, skip);
}

//
// Per-element callback for VRGATHER.VI
//
static RISCV_MORPHV_FN(emitVIRGATHERCB) {

    Uns32     offsetBits = IMPERAS_POINTER_BITS;
    vmiLabelP skip       = vmimtNewLabel();
    Uns32     offset     = state->info.c;
    vmiReg    index      = getTmp(0);

    // assume zero result is required
    vmimtMoveRC(id->SEW, id->r[0], 0);

    // skip move from vector if RISCV_VLMAX<=index
    vmimtCompareRCJumpLabel(32, vmi_COND_BE, RISCV_VLMAX, offset, skip);

    // calculate source index
    vmimtMoveRC(offsetBits, index, offset);

    // do indexed move (if not skipped)
    moveIndexedVd0Vs1(state, id, index, skip);
}

//
// Initialization callback for VCOMPRESS.VM
//
static RISCV_MORPHV_FN(initVCompressCB) {

    riscvP       riscv      = state->riscv;
    Uns32        offsetBits = IMPERAS_POINTER_BITS;
    riscvVShape  vShape     = state->attrs->vShape;
    riscvVLMULMt VLMUL      = getVLMULMtN(riscv, vShape, 0);

    // zero target register
    vmimtMoveRC(riscv->configInfo.VLEN*VLMUL, id->r[0], 0);

    // zero target index
    vmimtMoveRC(offsetBits, RISCV_VTMP, 0);
}

//
// Per-element callback for VCOMPRESS.VM
//
static RISCV_MORPHV_FN(emitVCompressCB) {

    Uns32 offsetBits = IMPERAS_POINTER_BITS;

    // initialize target indexed vector register
    getIndexedVRegisterInt(state, id, 0, RISCV_VTMP);

    // increment target index
    vmimtBinopRC(offsetBits, vmi_ADD, RISCV_VTMP, 1, 0);

    // move one element
    vmimtMoveRR(id->SEW, id->r[0], id->r[1]);

    // kill base registers and temporaries
    killBaseRegistersAndTemps(state, id);
}


////////////////////////////////////////////////////////////////////////////////
// DIVIDED ELEMENT EXTENSION
////////////////////////////////////////////////////////////////////////////////

//
// Operation-specific argument checks for divided element extension
//
static RISCV_MORPHV_FN(emitEDIVCheckCB) {

    riscvP riscv = state->riscv;

    if(!riscv->configInfo.Zvediv) {

        // VLMUL must be 1 for load/store segment instructions
        ILLEGAL_INSTRUCTION_MESSAGE(
            riscv, "IVEDIV", "Zvediv extension not configured"
        );

    } else {

        // not yet supported
        ILLEGAL_INSTRUCTION_MESSAGE(
            riscv, "IVEDIV_INIMP", "Zvediv extension not yet supported"
        );
    }
}


////////////////////////////////////////////////////////////////////////////////
// INSTRUCTION TABLE
////////////////////////////////////////////////////////////////////////////////

//
// Dispatch table for instruction translation
//
const static riscvMorphAttr dispatchTable[] = {

    // move pseudo-instructions (register and constant source)
    [RV_IT_MV_R]             = {morph:emitMoveRR},
    [RV_IT_MV_C]             = {morph:emitMoveRC},

    // base R-type instructions
    [RV_IT_ADD_R]            = {morph:emitBinopRRR,  binop:vmi_ADD,    iClass:OCL_IC_INTEGER},
    [RV_IT_AND_R]            = {morph:emitBinopRRR,  binop:vmi_AND,    iClass:OCL_IC_INTEGER},
    [RV_IT_OR_R]             = {morph:emitBinopRRR,  binop:vmi_OR,     iClass:OCL_IC_INTEGER},
    [RV_IT_SLL_R]            = {morph:emitBinopRRR,  binop:vmi_SHL,    iClass:OCL_IC_INTEGER},
    [RV_IT_SLT_R]            = {morph:emitCmpopRRR,  cond :vmi_COND_L, iClass:OCL_IC_INTEGER},
    [RV_IT_SLTU_R]           = {morph:emitCmpopRRR,  cond :vmi_COND_B, iClass:OCL_IC_INTEGER},
    [RV_IT_SRA_R]            = {morph:emitBinopRRR,  binop:vmi_SAR,    iClass:OCL_IC_INTEGER},
    [RV_IT_SRL_R]            = {morph:emitBinopRRR,  binop:vmi_SHR,    iClass:OCL_IC_INTEGER},
    [RV_IT_SUB_R]            = {morph:emitBinopRRR,  binop:vmi_SUB,    iClass:OCL_IC_INTEGER},
    [RV_IT_XOR_R]            = {morph:emitBinopRRR,  binop:vmi_XOR,    iClass:OCL_IC_INTEGER},

    // M-extension R-type instructions
    [RV_IT_DIV_R]            = {morph:emitBinopRRR,  binop:vmi_IDIV,   iClass:OCL_IC_INTEGER},
    [RV_IT_DIVU_R]           = {morph:emitBinopRRR,  binop:vmi_DIV,    iClass:OCL_IC_INTEGER},
    [RV_IT_MUL_R]            = {morph:emitBinopRRR,  binop:vmi_MUL,    iClass:OCL_IC_INTEGER},
    [RV_IT_MULH_R]           = {morph:emitMulopHRRR, binop:vmi_IMUL,   iClass:OCL_IC_INTEGER},
    [RV_IT_MULHSU_R]         = {morph:emitMULHSU                   ,   iClass:OCL_IC_INTEGER},
    [RV_IT_MULHU_R]          = {morph:emitMulopHRRR, binop:vmi_MUL,    iClass:OCL_IC_INTEGER},
    [RV_IT_REM_R]            = {morph:emitBinopRRR,  binop:vmi_IREM,   iClass:OCL_IC_INTEGER},
    [RV_IT_REMU_R]           = {morph:emitBinopRRR,  binop:vmi_REM,    iClass:OCL_IC_INTEGER},

    // base I-type instructions
    [RV_IT_ADDI_I]           = {morph:emitBinopRRC,  binop:vmi_ADD,    iClass:OCL_IC_INTEGER},
    [RV_IT_ANDI_I]           = {morph:emitBinopRRC,  binop:vmi_AND,    iClass:OCL_IC_INTEGER},
    [RV_IT_JALR_I]           = {morph:emitJALR                                              },
    [RV_IT_ORI_I]            = {morph:emitBinopRRC,  binop:vmi_OR,     iClass:OCL_IC_INTEGER},
    [RV_IT_SLTI_I]           = {morph:emitCmpopRRC,  cond :vmi_COND_L, iClass:OCL_IC_INTEGER},
    [RV_IT_SLTIU_I]          = {morph:emitCmpopRRC,  cond :vmi_COND_B, iClass:OCL_IC_INTEGER},
    [RV_IT_SLLI_I]           = {morph:emitBinopRRC,  binop:vmi_SHL,    iClass:OCL_IC_INTEGER},
    [RV_IT_SRAI_I]           = {morph:emitBinopRRC,  binop:vmi_SAR,    iClass:OCL_IC_INTEGER},
    [RV_IT_SRLI_I]           = {morph:emitBinopRRC,  binop:vmi_SHR,    iClass:OCL_IC_INTEGER},
    [RV_IT_XORI_I]           = {morph:emitBinopRRC,  binop:vmi_XOR,    iClass:OCL_IC_INTEGER},

    // base I-type instructions for load and store
    [RV_IT_L_I]              = {morph:emitLoad },
    [RV_IT_S_I]              = {morph:emitStore},

    // base I-type instructions for CSR access (register)
    [RV_IT_CSRR_I]           = {morph:emitCSRR,   iClass:OCL_IC_SYSREG  },

    // base I-type instructions for CSR access (constant)
    [RV_IT_CSRRI_I]          = {morph:emitCSRRI,  iClass:OCL_IC_SYSREG  },

    // miscellaneous system I-type instructions
    [RV_IT_EBREAK_I]         = {morph:emitEBREAK, iClass:OCL_IC_SYSTEM  },
    [RV_IT_ECALL_I]          = {morph:emitECALL,  iClass:OCL_IC_SYSTEM  },
    [RV_IT_FENCEI_I]         = {morph:emitNOP,    iClass:OCL_IC_IBARRIER},
    [RV_IT_MRET_I]           = {morph:emitMRET,   iClass:OCL_IC_SYSTEM  },
    [RV_IT_SRET_I]           = {morph:emitSRET,   iClass:OCL_IC_SYSTEM  },
    [RV_IT_URET_I]           = {morph:emitURET,   iClass:OCL_IC_SYSTEM  },
    [RV_IT_WFI_I]            = {morph:emitWFI,    iClass:OCL_IC_SYSTEM  },

    // system fence I-type instruction
    [RV_IT_FENCE_I]          = {morph:emitNOP,    iClass:OCL_IC_DBARRIER},

    // system fence R-type instruction
    [RV_IT_FENCE_VMA_R]      = {morph:emitSFENCE_VMA, iClass:OCL_IC_SYSTEM|OCL_IC_MMU},

    // base U-type instructions
    [RV_IT_AUIPC_U]          = {morph:emitMoveRPC, binop:vmi_ADD, iClass:OCL_IC_INTEGER},

    // base B-type instructions
    [RV_IT_BEQ_B]            = {morph:emitBranchRR, cond:vmi_COND_EQ},
    [RV_IT_BGE_B]            = {morph:emitBranchRR, cond:vmi_COND_NL},
    [RV_IT_BGEU_B]           = {morph:emitBranchRR, cond:vmi_COND_NB},
    [RV_IT_BLT_B]            = {morph:emitBranchRR, cond:vmi_COND_L },
    [RV_IT_BLTU_B]           = {morph:emitBranchRR, cond:vmi_COND_B },
    [RV_IT_BNE_B]            = {morph:emitBranchRR, cond:vmi_COND_NE},

    // base J-type instructions
    [RV_IT_JAL_J]            = {morph:emitJAL},

    // A-extension R-type instructions
    [RV_IT_AMOADD_R]         = {morph:emitAMOBinopRRR, binop:vmi_ADD },
    [RV_IT_AMOAND_R]         = {morph:emitAMOBinopRRR, binop:vmi_AND },
    [RV_IT_AMOMAX_R]         = {morph:emitAMOBinopRRR, binop:vmi_IMAX},
    [RV_IT_AMOMAXU_R]        = {morph:emitAMOBinopRRR, binop:vmi_MAX },
    [RV_IT_AMOMIN_R]         = {morph:emitAMOBinopRRR, binop:vmi_IMIN},
    [RV_IT_AMOMINU_R]        = {morph:emitAMOBinopRRR, binop:vmi_MIN },
    [RV_IT_AMOOR_R]          = {morph:emitAMOBinopRRR, binop:vmi_OR  },
    [RV_IT_AMOSWAP_R]        = {morph:emitAMOSwapRRR                 },
    [RV_IT_AMOXOR_R]         = {morph:emitAMOBinopRRR, binop:vmi_XOR },
    [RV_IT_LR_R]             = {morph:emitLR, iClass:OCL_IC_EXCLUSIVE},
    [RV_IT_SC_R]             = {morph:emitSC, iClass:OCL_IC_EXCLUSIVE},

    // F-extension and D-extension R-type instructions
    [RV_IT_FMV_R]            = {                      morph:emitFMoveRR                                               },
    [RV_IT_FABS_R]           = {fpConfig:RVFP_NORMAL, morph:emitFUnop,    fpUnop  : vmi_FQABS                         },
    [RV_IT_FADD_R]           = {fpConfig:RVFP_NORMAL, morph:emitFBinop,   fpBinop : vmi_FADD                          },
    [RV_IT_FCLASS_R]         = {fpConfig:RVFP_NORMAL, morph:emitFClass,                                               },
    [RV_IT_FCVT_R]           = {fpConfig:RVFP_NORMAL, morph:emitFConvert                                              },
    [RV_IT_FDIV_R]           = {fpConfig:RVFP_NORMAL, morph:emitFBinop,   fpBinop : vmi_FDIV,   iClass:OCL_IC_DIVIDE  },
    [RV_IT_FEQ_R]            = {fpConfig:RVFP_NORMAL, morph:emitFCompare, fpRel   : RVFCMP_EQ                         },
    [RV_IT_FLE_R]            = {fpConfig:RVFP_NORMAL, morph:emitFCompare, fpRel   : RVFCMP_LE                         },
    [RV_IT_FLT_R]            = {fpConfig:RVFP_NORMAL, morph:emitFCompare, fpRel   : RVFCMP_LT                         },
    [RV_IT_FMAX_R]           = {fpConfig:RVFP_FMAX,   morph:emitFBinop,   fpBinop : vmi_FMAX                          },
    [RV_IT_FMIN_R]           = {fpConfig:RVFP_FMIN,   morph:emitFBinop,   fpBinop : vmi_FMIN                          },
    [RV_IT_FMUL_R]           = {fpConfig:RVFP_NORMAL, morph:emitFBinop,   fpBinop : vmi_FMUL,   iClass:OCL_IC_MULTIPLY},
    [RV_IT_FNEG_R]           = {fpConfig:RVFP_NORMAL, morph:emitFUnop,    fpUnop  : vmi_FQNEG                         },
    [RV_IT_FSGNJ_R]          = {fpConfig:RVFP_NORMAL, morph:emitFSgn,     clearFS1:1, negFS2:0,                       },
    [RV_IT_FSGNJN_R]         = {fpConfig:RVFP_NORMAL, morph:emitFSgn,     clearFS1:1, negFS2:1,                       },
    [RV_IT_FSGNJX_R]         = {fpConfig:RVFP_NORMAL, morph:emitFSgn,     clearFS1:0, negFS2:0,                       },
    [RV_IT_FSQRT_R]          = {fpConfig:RVFP_NORMAL, morph:emitFUnop,    fpUnop  : vmi_FSQRT,  iClass:OCL_IC_SQRT    },
    [RV_IT_FSUB_R]           = {fpConfig:RVFP_NORMAL, morph:emitFBinop,   fpBinop : vmi_FSUB                          },

    // F-extension and D-extension R4-type instructions
    [RV_IT_FMADD_R4]         = {fpConfig:RVFP_NORMAL, morph:emitFTernop,  fpTernop: vmi_FMADD,  iClass:OCL_IC_FMA     },
    [RV_IT_FMSUB_R4]         = {fpConfig:RVFP_NORMAL, morph:emitFTernop,  fpTernop: vmi_FMSUB,  iClass:OCL_IC_FMA     },
    [RV_IT_FNMADD_R4]        = {fpConfig:RVFP_NORMAL, morph:emitFTernop,  fpTernop: vmi_FNMADD, iClass:OCL_IC_FMA     },
    [RV_IT_FNMSUB_R4]        = {fpConfig:RVFP_NORMAL, morph:emitFTernop,  fpTernop: vmi_FNMSUB, iClass:OCL_IC_FMA     },

    // X-extension instructions
    [RV_IT_CUSTOM]           = {morph:emitCustomAbsent},

    // V-extension R-type instructions
    [RV_IT_VSETVL_R]         = {morph:emitVSetVLRRR},

    // V-extension I-type
    [RV_IT_VSETVL_I]         = {morph:emitVSetVLRRC},

    // V-extension load/store instructions
    [RV_IT_VL_I]             = {morph:emitVectorOp, opTCB:emitVLdUCB, checkCB:emitVLdStCheckCB, initCB:emitVLdStInitCB},
    [RV_IT_VLS_I]            = {morph:emitVectorOp, opTCB:emitVLdSCB, checkCB:emitVLdStCheckCB, initCB:emitVLdStInitCB},
    [RV_IT_VLX_I]            = {morph:emitVectorOp, opTCB:emitVLdICB, checkCB:emitVLdStCheckCB, initCB:emitVLdStInitCB},
    [RV_IT_VS_I]             = {morph:emitVectorOp, opTCB:emitVStUCB, checkCB:emitVLdStCheckCB, initCB:emitVLdStInitCB},
    [RV_IT_VSS_I]            = {morph:emitVectorOp, opTCB:emitVStSCB, checkCB:emitVLdStCheckCB, initCB:emitVLdStInitCB},
    [RV_IT_VSX_I]            = {morph:emitVectorOp, opTCB:emitVStICB, checkCB:emitVLdStCheckCB, initCB:emitVLdStInitCB},

    // V-extension AMO operations (Zvamo)
    [RV_IT_VAMOADD_R]        = {morph:emitVectorOp, opTCB:emitVAMOBinopRRR, checkCB:emitVAMOCheckCB, binop:vmi_ADD },
    [RV_IT_VAMOAND_R]        = {morph:emitVectorOp, opTCB:emitVAMOBinopRRR, checkCB:emitVAMOCheckCB, binop:vmi_AND },
    [RV_IT_VAMOMAX_R]        = {morph:emitVectorOp, opTCB:emitVAMOBinopRRR, checkCB:emitVAMOCheckCB, binop:vmi_IMAX},
    [RV_IT_VAMOMAXU_R]       = {morph:emitVectorOp, opTCB:emitVAMOBinopRRR, checkCB:emitVAMOCheckCB, binop:vmi_MAX },
    [RV_IT_VAMOMIN_R]        = {morph:emitVectorOp, opTCB:emitVAMOBinopRRR, checkCB:emitVAMOCheckCB, binop:vmi_IMIN},
    [RV_IT_VAMOMINU_R]       = {morph:emitVectorOp, opTCB:emitVAMOBinopRRR, checkCB:emitVAMOCheckCB, binop:vmi_MIN },
    [RV_IT_VAMOOR_R]         = {morph:emitVectorOp, opTCB:emitVAMOBinopRRR, checkCB:emitVAMOCheckCB, binop:vmi_OR  },
    [RV_IT_VAMOSWAP_R]       = {morph:emitVectorOp, opTCB:emitVAMOSwapRRR,  checkCB:emitVAMOCheckCB                },
    [RV_IT_VAMOXOR_R]        = {morph:emitVectorOp, opTCB:emitVAMOBinopRRR, checkCB:emitVAMOCheckCB, binop:vmi_XOR },

    // V-extension IVV/IVX-type common instructions
    [RV_IT_VMERGE_VR]        = {morph:emitVectorOp, opTCB:emitVRMergeTCB, opFCB:emitVRMergeFCB},
    [RV_IT_VADD_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_ADD },
    [RV_IT_VSUB_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SUB },
    [RV_IT_VRSUB_VR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_RSUB},
    [RV_IT_VMINU_VR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_MIN },
    [RV_IT_VMIN_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_IMIN},
    [RV_IT_VMAXU_VR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_MAX },
    [RV_IT_VMAX_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_IMAX},
    [RV_IT_VAND_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_AND },
    [RV_IT_VOR_VR]           = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_OR  },
    [RV_IT_VXOR_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_XOR },
    [RV_IT_VADC_VR]          = {morph:emitVectorOp, opTCB:emitVRAdcIntCB,    binop:vmi_ADC,      vShape:RVVW_CIN_II},
    [RV_IT_VMADC_VR]         = {morph:emitVectorOp, opTCB:emitVRAdcIntCB,    binop:vmi_ADC,      vShape:RVVW_CIN_PI},
    [RV_IT_VSBC_VR]          = {morph:emitVectorOp, opTCB:emitVRAdcIntCB,    binop:vmi_SBB,      vShape:RVVW_CIN_II},
    [RV_IT_VMSBC_VR]         = {morph:emitVectorOp, opTCB:emitVRAdcIntCB,    binop:vmi_SBB,      vShape:RVVW_CIN_PI},
    [RV_IT_VSLL_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SHL },
    [RV_IT_VSRL_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SHR },
    [RV_IT_VSRA_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SAR },
    [RV_IT_VNSRL_VR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SHR,      vShape:RVVW_121_II},
    [RV_IT_VNSRA_VR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SAR,      vShape:RVVW_121_II},
    [RV_IT_VSEQ_VR]          = {morph:emitVectorOp, opTCB:emitVRCmpIntCB,    cond :vmi_COND_EQ,  vShape:RVVW_111_PI},
    [RV_IT_VSNE_VR]          = {morph:emitVectorOp, opTCB:emitVRCmpIntCB,    cond :vmi_COND_NE,  vShape:RVVW_111_PI},
    [RV_IT_VSLTU_VR]         = {morph:emitVectorOp, opTCB:emitVRCmpIntCB,    cond :vmi_COND_B,   vShape:RVVW_111_PI},
    [RV_IT_VSLT_VR]          = {morph:emitVectorOp, opTCB:emitVRCmpIntCB,    cond :vmi_COND_L,   vShape:RVVW_111_PI},
    [RV_IT_VSLEU_VR]         = {morph:emitVectorOp, opTCB:emitVRCmpIntCB,    cond :vmi_COND_BE,  vShape:RVVW_111_PI},
    [RV_IT_VSLE_VR]          = {morph:emitVectorOp, opTCB:emitVRCmpIntCB,    cond :vmi_COND_LE,  vShape:RVVW_111_PI},
    [RV_IT_VSGTU_VR]         = {morph:emitVectorOp, opTCB:emitVRCmpIntCB,    cond :vmi_COND_NBE, vShape:RVVW_111_PI},
    [RV_IT_VSGT_VR]          = {morph:emitVectorOp, opTCB:emitVRCmpIntCB,    cond :vmi_COND_NLE, vShape:RVVW_111_PI},
    [RV_IT_VRGATHER_VR]      = {morph:emitVectorOp, opTCB:emitVRRGATHERCB,                       vShape:RVVW_111_UP},
    [RV_IT_VSLIDEUP_VR]      = {morph:emitVectorOp, opTCB:emitVRSLIDEUPCB,                       vShape:RVVW_111_UP},
    [RV_IT_VSLIDEDOWN_VR]    = {morph:emitVectorOp, opTCB:emitVRSLIDEDOWNCB,                     vShape:RVVW_111_DN},
    [RV_IT_VSADDU_VR]        = {morph:emitVectorOp, opTCB:emitVRSBinaryCB,   binop:vmi_ADDUQ,                         argType:RVVX_UU},
    [RV_IT_VSADD_VR]         = {morph:emitVectorOp, opTCB:emitVRSBinaryCB,   binop:vmi_ADDSQ,                         argType:RVVX_SS},
    [RV_IT_VSSUBU_VR]        = {morph:emitVectorOp, opTCB:emitVRSBinaryCB,   binop:vmi_SUBUQ,                         argType:RVVX_UU},
    [RV_IT_VSSUB_VR]         = {morph:emitVectorOp, opTCB:emitVRSBinaryCB,   binop:vmi_SUBSQ,                         argType:RVVX_SS},
    [RV_IT_VAADD_VR]         = {morph:emitVectorOp, opTCB:emitVRABinaryCB,   binop:vmi_ADDSH,                         argType:RVVX_SS},
    [RV_IT_VASUB_VR]         = {morph:emitVectorOp, opTCB:emitVRABinaryCB,   binop:vmi_SUBSH,                         argType:RVVX_SS},
    [RV_IT_VSMUL_VR]         = {morph:emitVectorOp, opTCB:emitVRSMULCB,      binop:vmi_IMUL,                          argType:RVVX_SS},
    [RV_IT_VWSMACCU_VR]      = {morph:emitVectorOp, opTCB:emitVRSMAccIntCB,  binop:vmi_ADDUQ,    vShape:RVVW_211_II,  argType:RVVX_UU},
    [RV_IT_VWSMACC_VR]       = {morph:emitVectorOp, opTCB:emitVRSMAccIntCB,  binop:vmi_ADDSQ,    vShape:RVVW_211_II,  argType:RVVX_SS},
    [RV_IT_VWSMACCSU_VR]     = {morph:emitVectorOp, opTCB:emitVRSMAccIntCB,  binop:vmi_ADDSQ,    vShape:RVVW_211_II,  argType:RVVX_SU},
    [RV_IT_VWSMACCUS_VR]     = {morph:emitVectorOp, opTCB:emitVRSMAccIntCB,  binop:vmi_ADDSQ,    vShape:RVVW_211_II,  argType:RVVX_US},
    [RV_IT_VSSRL_VR]         = {morph:emitVectorOp, opTCB:emitVRRShiftIntCB, binop:vmi_SHR },
    [RV_IT_VSSRA_VR]         = {morph:emitVectorOp, opTCB:emitVRRShiftIntCB, binop:vmi_SAR },
    [RV_IT_VNCLIPU_VR]       = {morph:emitVectorOp, opTCB:emitVRRShiftIntCB, binop:vmi_SHR,      vShape:RVVW_121_IIS, argType:RVVX_UU},
    [RV_IT_VNCLIP_VR]        = {morph:emitVectorOp, opTCB:emitVRRShiftIntCB, binop:vmi_SAR,      vShape:RVVW_121_IIS, argType:RVVX_SS},

    // V-extension MVV/MVX-type common instructions
    [RV_IT_VDIVU_VR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_DIV },
    [RV_IT_VDIV_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_IDIV},
    [RV_IT_VREMU_VR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_REM },
    [RV_IT_VREM_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_IREM},
    [RV_IT_VMUL_VR]          = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_IMUL},
    [RV_IT_VMULHU_VR]        = {morph:emitVectorOp, opTCB:emitVRMulHIntCB,   binop:vmi_MUL },
    [RV_IT_VMULHSU_VR]       = {morph:emitVectorOp, opTCB:emitVRMulHSUIntCB, binop:vmi_MUL },
    [RV_IT_VMULH_VR]         = {morph:emitVectorOp, opTCB:emitVRMulHIntCB,   binop:vmi_IMUL},
    [RV_IT_VWMULU_VR]        = {morph:emitVectorOp, opTCB:emitVRWMulHIntCB,  binop:vmi_MUL,  vShape:RVVW_211_IIQ, argType:RVVX_UU},
    [RV_IT_VWMULSU_VR]       = {morph:emitVectorOp, opTCB:emitVRWMulHSUIntCB,binop:vmi_MUL,  vShape:RVVW_211_IIQ, argType:RVVX_SU},
    [RV_IT_VWMUL_VR]         = {morph:emitVectorOp, opTCB:emitVRWMulHIntCB,  binop:vmi_IMUL, vShape:RVVW_211_IIQ, argType:RVVX_SS},
    [RV_IT_VWADDU_VR]        = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_ADD,  vShape:RVVW_211_II,  argType:RVVX_UU},
    [RV_IT_VWADD_VR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_ADD,  vShape:RVVW_211_II,  argType:RVVX_SS},
    [RV_IT_VWSUBU_VR]        = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SUB,  vShape:RVVW_211_II,  argType:RVVX_UU},
    [RV_IT_VWSUB_VR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SUB,  vShape:RVVW_211_II,  argType:RVVX_SS},
    [RV_IT_VWADDU_WR]        = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_ADD,  vShape:RVVW_221_II,  argType:RVVX_UU},
    [RV_IT_VWADD_WR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_ADD,  vShape:RVVW_221_II,  argType:RVVX_SS},
    [RV_IT_VWSUBU_WR]        = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SUB,  vShape:RVVW_221_II,  argType:RVVX_UU},
    [RV_IT_VWSUB_WR]         = {morph:emitVectorOp, opTCB:emitVRBinaryIntCB, binop:vmi_SUB,  vShape:RVVW_221_II,  argType:RVVX_SS},
    [RV_IT_VMADD_VR]         = {morph:emitVectorOp, opTCB:emitVRMAddIntCB,   binop:vmi_ADD,                                      },
    [RV_IT_VNMSUB_VR]        = {morph:emitVectorOp, opTCB:emitVRMAddIntCB,   binop:vmi_SUB,                                      },
    [RV_IT_VMACC_VR]         = {morph:emitVectorOp, opTCB:emitVRMAccIntCB,   binop:vmi_ADD,                                      },
    [RV_IT_VNMSAC_VR]        = {morph:emitVectorOp, opTCB:emitVRMAccIntCB,   binop:vmi_SUB,                                      },
    [RV_IT_VWMACCU_VR]       = {morph:emitVectorOp, opTCB:emitVRMAccIntCB,   binop:vmi_ADD,  vShape:RVVW_211_II,  argType:RVVX_UU},
    [RV_IT_VWMACC_VR]        = {morph:emitVectorOp, opTCB:emitVRMAccIntCB,   binop:vmi_ADD,  vShape:RVVW_211_II,  argType:RVVX_SS},
    [RV_IT_VWMACCSU_VR]      = {morph:emitVectorOp, opTCB:emitVRMAccIntCB,   binop:vmi_ADD,  vShape:RVVW_211_II,  argType:RVVX_SU},
    [RV_IT_VWMACCUS_VR]      = {morph:emitVectorOp, opTCB:emitVRMAccIntCB,   binop:vmi_ADD,  vShape:RVVW_211_II,  argType:RVVX_US},

    // V-extension IVV-type instructions
    [RV_IT_VWREDSUMU_VS]     = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_ADD, vShape:RVVW_212_SI, argType:RVVX_UU, vstart0:1},
    [RV_IT_VWREDSUM_VS]      = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_ADD, vShape:RVVW_212_SI, argType:RVVX_SS, vstart0:1},
    [RV_IT_VDOTU_VV]         = {morph:emitVectorOp, checkCB:emitEDIVCheckCB},
    [RV_IT_VDOT_VV]          = {morph:emitVectorOp, checkCB:emitEDIVCheckCB},

    // V-extension FVV/FVF-type common instructions
    [RV_IT_VFADD_VR]         = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FADD,   vShape:RVVW_111_FF},
    [RV_IT_VFSUB_VR]         = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FSUB,   vShape:RVVW_111_FF},
    [RV_IT_VFRSUB_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltRCB, fpBinop: vmi_FSUB,   vShape:RVVW_111_FF},
    [RV_IT_VFMUL_VR]         = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FMUL,   vShape:RVVW_111_FF},
    [RV_IT_VFDIV_VR]         = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FDIV,   vShape:RVVW_111_FF},
    [RV_IT_VFRDIV_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltRCB, fpBinop: vmi_FDIV,   vShape:RVVW_111_FF},
    [RV_IT_VFWADD_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FADD,   vShape:RVVW_211_FF},
    [RV_IT_VFWSUB_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FSUB,   vShape:RVVW_211_FF},
    [RV_IT_VFWADD_WR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FADD,   vShape:RVVW_221_FF},
    [RV_IT_VFWSUB_WR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FSUB,   vShape:RVVW_221_FF},
    [RV_IT_VFWMUL_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FMUL,   vShape:RVVW_211_FF},
    [RV_IT_VFMADD_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAddFltCB,    fpTernop:vmi_FMADD,  vShape:RVVW_111_FF},
    [RV_IT_VFNMADD_VR]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAddFltCB,    fpTernop:vmi_FNMADD, vShape:RVVW_111_FF},
    [RV_IT_VFMSUB_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAddFltCB,    fpTernop:vmi_FMSUB,  vShape:RVVW_111_FF},
    [RV_IT_VFNMSUB_VR]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAddFltCB,    fpTernop:vmi_FNMSUB, vShape:RVVW_111_FF},
    [RV_IT_VFMACC_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAccFltCB,    fpTernop:vmi_FMADD,  vShape:RVVW_111_FF},
    [RV_IT_VFNMACC_VR]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAccFltCB,    fpTernop:vmi_FNMADD, vShape:RVVW_111_FF},
    [RV_IT_VFMSAC_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAccFltCB,    fpTernop:vmi_FMSUB,  vShape:RVVW_111_FF},
    [RV_IT_VFNMSAC_VR]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAccFltCB,    fpTernop:vmi_FNMSUB, vShape:RVVW_111_FF},
    [RV_IT_VFWMACC_VR]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAccFltCB,    fpTernop:vmi_FMADD,  vShape:RVVW_211_FF},
    [RV_IT_VFWNMACC_VR]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAccFltCB,    fpTernop:vmi_FNMADD, vShape:RVVW_211_FF},
    [RV_IT_VFWMSAC_VR]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAccFltCB,    fpTernop:vmi_FMSUB,  vShape:RVVW_211_FF},
    [RV_IT_VFWNMSAC_VR]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRMAccFltCB,    fpTernop:vmi_FNMSUB, vShape:RVVW_211_FF},
    [RV_IT_VFSQRT_V]         = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRUnaryFltCB,   fpUnop:  vmi_FSQRT,  vShape:RVVW_111_FF},
    [RV_IT_VFMIN_VR]         = {fpConfig:RVFP_FMIN,   morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FMIN,   vShape:RVVW_111_FF},
    [RV_IT_VFMAX_VR]         = {fpConfig:RVFP_FMAX,   morph:emitVectorOp, opTCB:emitVRBinaryFltCB,  fpBinop: vmi_FMAX,   vShape:RVVW_111_FF},
    [RV_IT_VFSGNJ_VR]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFSgnFltCB,    clearFS1:1,negFS2:0, vShape:RVVW_111_FF},
    [RV_IT_VFSGNJN_VR]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFSgnFltCB,    clearFS1:1,negFS2:1, vShape:RVVW_111_FF},
    [RV_IT_VFSGNJX_VR]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFSgnFltCB,    clearFS1:0,negFS2:0, vShape:RVVW_111_FF},
    [RV_IT_VFORD_VR]         = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFCmpFltCB,    fpRel:RVFCMP_ORD,    vShape:RVVW_111_PF},
    [RV_IT_VFEQ_VR]          = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFCmpFltCB,    fpRel:RVFCMP_EQ,     vShape:RVVW_111_PF},
    [RV_IT_VFNE_VR]          = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFCmpFltCB,    fpRel:RVFCMP_NE,     vShape:RVVW_111_PF},
    [RV_IT_VFLE_VR]          = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFCmpFltCB,    fpRel:RVFCMP_LE,     vShape:RVVW_111_PF},
    [RV_IT_VFLT_VR]          = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFCmpFltCB,    fpRel:RVFCMP_LT,     vShape:RVVW_111_PF},
    [RV_IT_VFGE_VR]          = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFCmpFltCB,    fpRel:RVFCMP_GE,     vShape:RVVW_111_PF},
    [RV_IT_VFGT_VR]          = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFCmpFltCB,    fpRel:RVFCMP_GT,     vShape:RVVW_111_PF},

    // V-extension FVV-type instructions
    [RV_IT_VFREDSUM_VS]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRedBinaryFltCB, initCB:initVRedCB, endCB:endVRedCB, fpBinop:vmi_FADD, vShape:RVVW_111_SF, vstart0:1},
    [RV_IT_VFREDOSUM_VS]     = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRedBinaryFltCB, initCB:initVRedCB, endCB:endVRedCB, fpBinop:vmi_FADD, vShape:RVVW_111_SF, vstart0:1},
    [RV_IT_VFREDMIN_VS]      = {fpConfig:RVFP_FMIN,   morph:emitVectorOp, opTCB:emitVRedBinaryFltCB, initCB:initVRedCB, endCB:endVRedCB, fpBinop:vmi_FMIN, vShape:RVVW_111_SF, vstart0:1},
    [RV_IT_VFREDMAX_VS]      = {fpConfig:RVFP_FMAX,   morph:emitVectorOp, opTCB:emitVRedBinaryFltCB, initCB:initVRedCB, endCB:endVRedCB, fpBinop:vmi_FMAX, vShape:RVVW_111_SF, vstart0:1},
    [RV_IT_VFMV_F_S]         = {                      morph:emitScalarOp, opTCB:emitVFMVFS},
    [RV_IT_VFCVT_XUF_V]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_111_IF,  argType:RVVX_UU},
    [RV_IT_VFCVT_XF_V]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_111_IF,  argType:RVVX_SS},
    [RV_IT_VFCVT_FXU_V]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_111_FI,  argType:RVVX_UU},
    [RV_IT_VFCVT_FX_V]       = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_111_FI,  argType:RVVX_SS},
    [RV_IT_VFWCVT_XUF_V]     = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_211_IFQ, argType:RVVX_UU},
    [RV_IT_VFWCVT_XF_V]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_211_IFQ, argType:RVVX_SS},
    [RV_IT_VFWCVT_FXU_V]     = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_211_FIQ, argType:RVVX_UU},
    [RV_IT_VFWCVT_FX_V]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_211_FIQ, argType:RVVX_SS},
    [RV_IT_VFWCVT_FF_V]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_211_FFQ                 },
    [RV_IT_VFNCVT_XUF_V]     = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_121_IFQ, argType:RVVX_UU},
    [RV_IT_VFNCVT_XF_V]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_121_IFQ, argType:RVVX_SS},
    [RV_IT_VFNCVT_FXU_V]     = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_121_FIQ, argType:RVVX_UU},
    [RV_IT_VFNCVT_FX_V]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_121_FIQ, argType:RVVX_SS},
    [RV_IT_VFNCVT_FF_V]      = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRConvertFltCB, vShape:RVVW_121_FFQ                 },
    [RV_IT_VFCLASS_V]        = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRFClassFltCB,  vShape:RVVW_111_FF                  },
    [RV_IT_VFWREDSUM_VS]     = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRedBinaryFltCB, initCB:initVRedCB, endCB:endVRedCB, fpBinop:vmi_FADD, vShape:RVVW_212_SF, vstart0:1},
    [RV_IT_VFWREDOSUM_VS]    = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, opTCB:emitVRedBinaryFltCB, initCB:initVRedCB, endCB:endVRedCB, fpBinop:vmi_FADD, vShape:RVVW_212_SF, vstart0:1},
    [RV_IT_VFDOT_VV]         = {fpConfig:RVFP_NORMAL, morph:emitVectorOp, checkCB:emitEDIVCheckCB,  vShape:RVVW_111_FF                  },

    // V-extension MVV-type instructions
    [RV_IT_VREDSUM_VS]       = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_ADD,  vShape:RVVW_111_SI,  vstart0:1},
    [RV_IT_VREDAND_VS]       = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_AND,  vShape:RVVW_111_SI,  vstart0:1},
    [RV_IT_VREDOR_VS]        = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_OR,   vShape:RVVW_111_SI,  vstart0:1},
    [RV_IT_VREDXOR_VS]       = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_XOR,  vShape:RVVW_111_SI,  vstart0:1},
    [RV_IT_VREDMINU_VS]      = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_MIN,  vShape:RVVW_111_SI,  vstart0:1},
    [RV_IT_VREDMIN_VS]       = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_IMIN, vShape:RVVW_111_SI,  vstart0:1},
    [RV_IT_VREDMAXU_VS]      = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_MAX,  vShape:RVVW_111_SI,  vstart0:1},
    [RV_IT_VREDMAX_VS]       = {morph:emitVectorOp, opTCB:emitVRedBinaryIntCB, initCB:initVRedCB, endCB:endVRedCB, binop:vmi_IMAX, vShape:RVVW_111_SI,  vstart0:1},
    [RV_IT_VEXT_X_V]         = {morph:emitScalarOp, opTCB:emitVEXTXV,                                                              vShape:RVVW_EXT_II,  vstart0:0},
    [RV_IT_VMPOPC_M]         = {morph:emitVectorOp, opTCB:emitVMPopcCB,                    initCB:initVMPopcCB,                    vShape:RVVW_111_PP,  vstart0:1},
    [RV_IT_VMFIRST_M]        = {morph:emitVectorOp, opTCB:emitVMFirstCB,                   initCB:initVMFirstCB,                   vShape:RVVW_111_PP,  vstart0:1},
    [RV_IT_VMSBF_M]          = {morph:emitVectorOp, opTCB:emitVMSBFCB,                     initCB:initVMSFCB,                      vShape:RVVW_111_PP,  vstart0:0},
    [RV_IT_VMSOF_M]          = {morph:emitVectorOp, opTCB:emitVMSOFCB,                     initCB:initVMSFCB,                      vShape:RVVW_111_PP,  vstart0:0},
    [RV_IT_VMSIF_M]          = {morph:emitVectorOp, opTCB:emitVMSIFCB,                     initCB:initVMSFCB,                      vShape:RVVW_111_PP,  vstart0:0},
    [RV_IT_VIOTA_M]          = {morph:emitVectorOp, opTCB:emitVIOTACB,                     initCB:initVIOTACB,                     vShape:RVVW_111_IP,  vstart0:1},
    [RV_IT_VID_V]            = {morph:emitVectorOp, opTCB:emitVIDTCB,    opFCB:emitVIDFCB, initCB:initVIOTACB,                     vShape:RVVW_111_IP,  vstart0:0},
    [RV_IT_VCOMPRESS_VM]     = {morph:emitVectorOp, opTCB:emitVCompressCB,                 initCB:initVCompressCB,                 vShape:RVVW_111_CMP, vstart0:1, implicitTZ:1},
    [RV_IT_VMAND_MM]         = {morph:emitVectorOp, opTCB:emitMBinaryCB, binop:vmi_AND,  vShape:RVVW_111_PP},
    [RV_IT_VMANDNOT_MM]      = {morph:emitVectorOp, opTCB:emitMBinaryCB, binop:vmi_ANDN, vShape:RVVW_111_PP},
    [RV_IT_VMOR_MM]          = {morph:emitVectorOp, opTCB:emitMBinaryCB, binop:vmi_OR,   vShape:RVVW_111_PP},
    [RV_IT_VMXOR_MM]         = {morph:emitVectorOp, opTCB:emitMBinaryCB, binop:vmi_XOR,  vShape:RVVW_111_PP},
    [RV_IT_VMORNOT_MM]       = {morph:emitVectorOp, opTCB:emitMBinaryCB, binop:vmi_ORN,  vShape:RVVW_111_PP},
    [RV_IT_VMNAND_MM]        = {morph:emitVectorOp, opTCB:emitMBinaryCB, binop:vmi_NAND, vShape:RVVW_111_PP},
    [RV_IT_VMNOR_MM]         = {morph:emitVectorOp, opTCB:emitMBinaryCB, binop:vmi_NOR,  vShape:RVVW_111_PP},
    [RV_IT_VMXNOR_MM]        = {morph:emitVectorOp, opTCB:emitMBinaryCB, binop:vmi_XNOR, vShape:RVVW_111_PP},

    // V-extension IVI-type instructions
    [RV_IT_VMERGE_VI]        = {morph:emitVectorOp, opTCB:emitVIMergeTCB, opFCB:emitVRMergeFCB},
    [RV_IT_VADD_VI]          = {morph:emitVectorOp, opTCB:emitVIBinaryIntCB, binop:vmi_ADD},
    [RV_IT_VRSUB_VI]         = {morph:emitVectorOp, opTCB:emitVIBinaryIntCB, binop:vmi_RSUB},
    [RV_IT_VAND_VI]          = {morph:emitVectorOp, opTCB:emitVIBinaryIntCB, binop:vmi_AND},
    [RV_IT_VOR_VI]           = {morph:emitVectorOp, opTCB:emitVIBinaryIntCB, binop:vmi_OR },
    [RV_IT_VXOR_VI]          = {morph:emitVectorOp, opTCB:emitVIBinaryIntCB, binop:vmi_XOR},
    [RV_IT_VRGATHER_VI]      = {morph:emitVectorOp, opTCB:emitVIRGATHERCB,                       vShape:RVVW_111_UP},
    [RV_IT_VSLIDEUP_VI]      = {morph:emitVectorOp, opTCB:emitVISLIDEUPCB,                       vShape:RVVW_111_UP},
    [RV_IT_VSLIDEDOWN_VI]    = {morph:emitVectorOp, opTCB:emitVISLIDEDOWNCB,                     vShape:RVVW_111_DN},
    [RV_IT_VADC_VI]          = {morph:emitVectorOp, opTCB:emitVIAdcIntCB,    binop:vmi_ADC,      vShape:RVVW_CIN_II},
    [RV_IT_VMADC_VI]         = {morph:emitVectorOp, opTCB:emitVIAdcIntCB,    binop:vmi_ADC,      vShape:RVVW_CIN_PI},
    [RV_IT_VSEQ_VI]          = {morph:emitVectorOp, opTCB:emitVICmpIntCB,    cond :vmi_COND_EQ,  vShape:RVVW_111_PI},
    [RV_IT_VSNE_VI]          = {morph:emitVectorOp, opTCB:emitVICmpIntCB,    cond :vmi_COND_NE,  vShape:RVVW_111_PI},
    [RV_IT_VSLEU_VI]         = {morph:emitVectorOp, opTCB:emitVICmpIntCB,    cond :vmi_COND_BE,  vShape:RVVW_111_PI},
    [RV_IT_VSLE_VI]          = {morph:emitVectorOp, opTCB:emitVICmpIntCB,    cond :vmi_COND_LE,  vShape:RVVW_111_PI},
    [RV_IT_VSGTU_VI]         = {morph:emitVectorOp, opTCB:emitVICmpIntCB,    cond :vmi_COND_NBE, vShape:RVVW_111_PI},
    [RV_IT_VSGT_VI]          = {morph:emitVectorOp, opTCB:emitVICmpIntCB,    cond :vmi_COND_NLE, vShape:RVVW_111_PI},
    [RV_IT_VSADDU_VI]        = {morph:emitVectorOp, opTCB:emitVISBinaryCB,   binop:vmi_ADDUQ,    argType:RVVX_UU},
    [RV_IT_VSADD_VI]         = {morph:emitVectorOp, opTCB:emitVISBinaryCB,   binop:vmi_ADDSQ,    argType:RVVX_SS},
    [RV_IT_VAADD_VI]         = {morph:emitVectorOp, opTCB:emitVIABinaryCB,   binop:vmi_ADDSH,    argType:RVVX_SS},
    [RV_IT_VSLL_VI]          = {morph:emitVectorOp, opTCB:emitVIShiftIntCB,  binop:vmi_SHL},
    [RV_IT_VSRL_VI]          = {morph:emitVectorOp, opTCB:emitVIShiftIntCB,  binop:vmi_SHR},
    [RV_IT_VSRA_VI]          = {morph:emitVectorOp, opTCB:emitVIShiftIntCB,  binop:vmi_SAR},
    [RV_IT_VSSRL_VI]         = {morph:emitVectorOp, opTCB:emitVIRShiftIntCB, binop:vmi_SHR},
    [RV_IT_VSSRA_VI]         = {morph:emitVectorOp, opTCB:emitVIRShiftIntCB, binop:vmi_SAR},
    [RV_IT_VNSRL_VI]         = {morph:emitVectorOp, opTCB:emitVIShiftIntCB,  binop:vmi_SHR, vShape:RVVW_121_II},
    [RV_IT_VNSRA_VI]         = {morph:emitVectorOp, opTCB:emitVIShiftIntCB,  binop:vmi_SAR, vShape:RVVW_121_II},
    [RV_IT_VNCLIPU_VI]       = {morph:emitVectorOp, opTCB:emitVIShiftIntCB,  binop:vmi_SHR, vShape:RVVW_121_IIS},
    [RV_IT_VNCLIP_VI]        = {morph:emitVectorOp, opTCB:emitVIShiftIntCB,  binop:vmi_SAR, vShape:RVVW_121_IIS},

    // V-extension FVF-type instructions
    [RV_IT_VFMV_S_F]         = {morph:emitScalarOp, opTCB:emitVFMVSF},

    // V-extension MVX-type instructions
    [RV_IT_VMV_S_X]          = {morph:emitScalarOp, opTCB:emitVMVSX},
    [RV_IT_VSLIDE1UP_VX]     = {morph:emitVectorOp, opTCB:emitVRSLIDE1UPCB,   initCB:initVRSLIDE1CB, vShape:RVVW_111_UP},
    [RV_IT_VSLIDE1DOWN_VX]   = {morph:emitVectorOp, opTCB:emitVRSLIDE1DOWNCB, initCB:initVRSLIDE1CB, vShape:RVVW_111_DN},

    // KEEP LAST
    [RV_IT_LAST]             = {0}
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

    // current vector configuration is not known initially
    thisState->SEWMt                  = SEWMT_UNKNOWN;
    thisState->VLMULMt                = VLMULMT_UNKNOWN;
    thisState->VLClassMt              = VLCLASSMT_UNKNOWN;
    thisState->VZeroTopMt[VTZ_SINGLE] = 0;
    thisState->VZeroTopMt[VTZ_GROUP]  = 0;
    thisState->VStartZeroMt           = False;
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

