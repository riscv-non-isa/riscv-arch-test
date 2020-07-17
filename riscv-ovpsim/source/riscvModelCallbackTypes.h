/*
 * Copyright (c) 2005-2020 Imperas Software Ltd., www.imperas.com
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

#pragma once

// VMI header files
#include "hostapi/impTypes.h"

// model header files
#include "riscvCSRTypes.h"
#include "riscvRegisterTypes.h"
#include "riscvTypes.h"
#include "riscvTypeRefs.h"
#include "riscvVariant.h"


////////////////////////////////////////////////////////////////////////////////
// INSTRUCTION DECODE SUPPORT TYPES
////////////////////////////////////////////////////////////////////////////////

//
// Structure filled with information about a decoded instruction
//
typedef struct riscvExtInstrInfoS {
    riscvAddr         thisPC;       // instruction address
    Uns32             instruction;  // instruction word
    Uns8              bytes;        // instruction bytes
    const char       *opcode;       // opcode name
    const char       *format;       // disassembly format string
    riscvArchitecture arch;         // architecture requirements
    riscvRegDesc      r[4];         // argument registers
    riscvRegDesc      mask;         // mask register (vector instructions)
    riscvRMDesc       rm;           // rounding mode
    Uns64             c;            // constant value
    void             *userData;     // client-specific data
} riscvExtInstrInfo;

//
// Standard instruction patterns
//
typedef enum riscvExtInstrPatternE {

                            // GPR INSTRUCTIONS
    RVIP_RD_RS1_RS2,        // op   xd, xs1, xs2
    RVIP_RD_RS1_SI,         // op   xd, xs1, imm
    RVIP_RD_RS1_SHIFT,      // op   xd, xs1, shift
    RVIP_RD_RS1_RS2_RS3,    // op   xd, xs1, xs2, xs3
    RVIP_RD_RS1_RS3_SHIFT,  // op   xd, xs1, xs2, shift

                            // FPR INSTRUCTIONS
    RVIP_FD_FS1_FS2,        // op   fd, fs1, fs2
    RVIP_FD_FS1_FS2_RM,     // op   fd, fs1, fs2, rm
    RVIP_FD_FS1_FS2_FS3_RM, // op   fd, fs1, fs2, fs3, rm
    RVIP_RD_FS1_FS2,        // op   xd, fs1, fs2

                            // VECTOR INSTRUCTIONS
    RVIP_VD_VS1_VS2_M,      // op   vd, vs1, vs2, vm
    RVIP_VD_VS1_SI_M,       // op   vd, vs1, simm, vm
    RVIP_VD_VS1_UI_M,       // op   vd, vs1, uimm, vm
    RVIP_VD_VS1_RS2_M,      // op   vd, vs1, rs2, vm
    RVIP_VD_VS1_FS2_M,      // op   vd, vs1, fs2, vm
    RVIP_RD_VS1_RS2,        // op   xd, vs1, vs2
    RVIP_RD_VS1_M,          // op   xd, vs1, vm
    RVIP_VD_RS2,            // op   vd, xs2
    RVIP_FD_VS1,            // op   fd, vs1
    RVIP_VD_FS2,            // op   vd, fs2

    RVIP_LAST               // KEEP LAST: for sizing

} riscvExtInstrPattern;

//
// Structure defining characteristics of each instruction
//
typedef struct riscvExtInstrAttrsS {
    const char          *opcode;    // opcode name
    riscvArchitecture    arch;      // architectural requirements
    riscvExtInstrPattern pattern;   // instruction pattern
    const char          *format;    // disassembly format string
    const char          *decode;    // decode string
} riscvExtInstrAttrs;

//
// Use this macro to fill decode table entries
//
#define EXT_INSTRUCTION(_ID, _NAME, _ARCH, _PATTERN, _FORMAT, _DECODE) [_ID] = { \
    opcode  : _NAME,    \
    arch    : _ARCH,    \
    pattern : _PATTERN, \
    format  : _FORMAT,  \
    decode  : _DECODE   \
}


////////////////////////////////////////////////////////////////////////////////
// INSTRUCTION TRANSLATION SUPPORT TYPES
////////////////////////////////////////////////////////////////////////////////

//
// Generic JIT code emission callback
//
#define EXT_MORPH_FN(_NAME) void _NAME(riscvExtMorphStateP state)
typedef EXT_MORPH_FN((*extMorphFn));

//
// Attributes controlling JIT code translation
//
typedef struct riscvExtMorphAttrS {
    extMorphFn            morph;    // function to translate one instruction
    octiaInstructionClass iClass;   // supplemental instruction class
    Uns32                 variant;  // required variant
    void                 *userData; // client-specific data
} riscvExtMorphAttr;

//
// Context for JIT code translation (decoded instruction information and
// translation attributes)
//
typedef struct riscvExtMorphStateS {
    riscvExtInstrInfo   info;       // decoded instruction information
    riscvExtMorphAttrCP attrs;      // instruction attributes
    riscvP              riscv;      // current processor
    vmiosObjectP        object;     // current extension object
} riscvExtMorphState;


////////////////////////////////////////////////////////////////////////////////
// REGISTER ACCESS MACROS
////////////////////////////////////////////////////////////////////////////////

//
// Morph-time macros to calculate offsets to fields in an extension object
//
#define EXT_OFFSET(_R)  VMI_CPU_OFFSET(vmiosObjectP, _R)
#define EXT_REG(_R)     VMI_CPU_REG(vmiosObjectP, _R)


////////////////////////////////////////////////////////////////////////////////
// CSR DEFINITIONS
////////////////////////////////////////////////////////////////////////////////

//
// Construct CSR enumeration member name from register name
//
#define XCSR_ID(_R) XCSR_ID_##_R

//
// This type defines CSR attributes together with FIFO-specific configuration
// information
//
typedef struct extCSRAttrsS {
    Uns32         extension;    // extension requirements
    riscvCSRAttrs baseAttrs;    // base attributes
} extCSRAttrs;

DEFINE_CS(extCSRAttrs);

//
// Defined but unimplemented CSR
//
#define XCSR_ATTR_NIP( \
    _ID, _NUM, _ARCH, _EXT, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC \
) [XCSR_ID(_ID)] = { \
    .extension = _EXT,                              \
    .baseAttrs = {                                  \
        name          : #_ID,                       \
        desc          : _DESC" (not implemented)",  \
        csrNum        : _NUM,                       \
        arch          : _ARCH,                      \
        wEndBlock     : _ENDB,                      \
        wEndRM        : _ENDRM,                     \
        noTraceChange : _NOTR,                      \
        TVMT          : _TVMT,                      \
    }                                               \
}

//
// Implemented using vmiReg and optional callbacks, no mask
//
#define XCSR_ATTR_T__( \
    _ID, _NUM, _ARCH, _EXT, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) [XCSR_ID(_ID)] = { \
    .extension = _EXT,                              \
    .baseAttrs = {                                  \
        name          : #_ID,                       \
        desc          : _DESC,                      \
        csrNum        : _NUM,                       \
        arch          : _ARCH,                      \
        wEndBlock     : _ENDB,                      \
        wEndRM        : _ENDRM,                     \
        noTraceChange : _NOTR,                      \
        TVMT          : _TVMT,                      \
        readCB        : _RCB,                       \
        readWriteCB   : _RWCB,                      \
        writeCB       : _WCB,                       \
        reg32         : XCSR_REG32_MT(_ID),         \
        writeMaskC32  : -1,                         \
        reg64         : XCSR_REG64_MT(_ID),         \
        writeMaskC32  : -1                          \
    }                                               \
}

//
// Implemented using vmiReg and optional callbacks, constant write mask
//
#define XCSR_ATTR_TC_( \
    _ID, _NUM, _ARCH, _EXT, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) [XCSR_ID(_ID)] = { \
    .extension = _EXT,                              \
    .baseAttrs = {                                  \
        name          : #_ID,                       \
        desc          : _DESC,                      \
        csrNum        : _NUM,                       \
        arch          : _ARCH,                      \
        wEndBlock     : _ENDB,                      \
        wEndRM        : _ENDRM,                     \
        noTraceChange : _NOTR,                      \
        TVMT          : _TVMT,                      \
        readCB        : _RCB,                       \
        readWriteCB   : _RWCB,                      \
        writeCB       : _WCB,                       \
        reg32         : XCSR_REG32_MT(_ID),         \
        writeMaskC32  : WM32_##_ID,                 \
        reg64         : XCSR_REG64_MT(_ID),         \
        writeMaskC64  : WM64_##_ID                  \
    }                                               \
}

//
// Implemented using vmiReg and optional callbacks, variable write mask
//
#define XCSR_ATTR_TV_( \
    _ID, _NUM, _ARCH, _EXT, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) [XCSR_ID(_ID)] = { \
    .extension = _EXT,                              \
    .baseAttrs = {                                  \
        name          : #_ID,                       \
        desc          : _DESC,                      \
        csrNum        : _NUM,                       \
        arch          : _ARCH,                      \
        wEndBlock     : _ENDB,                      \
        wEndRM        : _ENDRM,                     \
        noTraceChange : _NOTR,                      \
        TVMT          : _TVMT,                      \
        readCB        : _RCB,                       \
        readWriteCB   : _RWCB,                      \
        writeCB       : _WCB,                       \
        reg32         : XCSR_REG32_MT(_ID),         \
        writeMaskV32  : XCSR_MASK32_MT(_ID),        \
        reg64         : XCSR_REG64_MT(_ID),         \
        writeMaskV64  : XCSR_MASK64_MT(_ID)         \
    }                                               \
}

//
// Implemented using optional callbacks, no mask
//
#define XCSR_ATTR_P__( \
    _ID, _NUM, _ARCH, _EXT, _ENDB,_ENDRM,_NOTR,_TVMT, _DESC, _RCB, _RWCB, _WCB \
) [XCSR_ID(_ID)] = { \
    .extension = _EXT,                              \
    .baseAttrs = {                                  \
        name          : #_ID,                       \
        desc          : _DESC,                      \
        csrNum        : _NUM,                       \
        arch          : _ARCH,                      \
        wEndBlock     : _ENDB,                      \
        wEndRM        : _ENDRM,                     \
        noTraceChange : _NOTR,                      \
        TVMT          : _TVMT,                      \
        readCB        : _RCB,                       \
        readWriteCB   : _RWCB,                      \
        writeCB       : _WCB,                       \
        writeMaskC32  : -1,                         \
        writeMaskC64  : -1                          \
    }                                               \
}


////////////////////////////////////////////////////////////////////////////////
// CSR ACCESS MACROS
////////////////////////////////////////////////////////////////////////////////

// get CSR value using current XLEN
#define RD_XCSR(_OBJ, _RNAME) \
    (RISCV_XLEN_IS_32((_OBJ)->riscv) ?                  \
        (_OBJ)->csr._RNAME.u32.bits :                   \
        (_OBJ)->csr._RNAME.u64.bits)                    \

// set CSR value using current XLEN
#define WR_XCSR(_OBJ, _RNAME, _VALUE) \
    if(RISCV_XLEN_IS_32((_OBJ)->riscv)) {               \
        (_OBJ)->csr._RNAME.u32.bits = _VALUE;           \
    } else {                                            \
        (_OBJ)->csr._RNAME.u64.bits = _VALUE;           \
    }

// get CSR field using current XLEN
#define RD_XCSR_FIELD(_OBJ, _RNAME, _FIELD) \
    (RISCV_XLEN_IS_32((_OBJ)->riscv) ?                  \
        (_OBJ)->csr._RNAME.u32.fields._FIELD :          \
        (_OBJ)->csr._RNAME.u64.fields._FIELD)           \

// set CSR field using current XLEN
#define WR_XCSR_FIELD(_OBJ, _RNAME, _FIELD, _VALUE) \
    if(RISCV_XLEN_IS_32((_OBJ)->riscv)) {               \
        (_OBJ)->csr._RNAME.u32.fields._FIELD = _VALUE;  \
    } else {                                            \
        (_OBJ)->csr._RNAME.u64.fields._FIELD = _VALUE;  \
    }

// set CSR field when XLEN is 64
#define WR_XCSR64_FIELD(_OBJ, _RNAME, _FIELD, _VALUE) \
    if(RISCV_XLEN_IS_64((_OBJ)->riscv)) {               \
        (_OBJ)->csr._RNAME.u64.fields._FIELD = _VALUE;  \
    }


////////////////////////////////////////////////////////////////////////////////
// MORPH-TIME CSR ACCESS MACROS
////////////////////////////////////////////////////////////////////////////////

//
// Morph-time macros to access a CSR register by id
//
#define XCSR_REG_MT(_ID)    EXT_REG(csr._ID)
#define XCSR_REG32_MT(_ID)  EXT_REG(csr._ID.u32)
#define XCSR_REG64_MT(_ID)  EXT_REG(csr._ID.u64)

//
// Morph-time macros to access a CSR register mask by id
//
#define XCSR_MASK32_MT(_ID) EXT_REG(csrMask._ID.u32)
#define XCSR_MASK64_MT(_ID) EXT_REG(csrMask._ID.u64)


