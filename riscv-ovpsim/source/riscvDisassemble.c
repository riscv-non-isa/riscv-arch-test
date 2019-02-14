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

// standard includes
#include <ctype.h>
#include <stdio.h>
#include <string.h>

// VMI header files
#include "vmi/vmiMessage.h"

// model header files
#include "riscvCSR.h"
#include "riscvDecode.h"
#include "riscvDecodeTypes.h"
#include "riscvDisassembleFormats.h"
#include "riscvFunctions.h"
#include "riscvUtils.h"


//
// Prefix for messages from this module
//
#define CPU_PREFIX "RISCV_DISASS"


////////////////////////////////////////////////////////////////////////////////
// UTILITY FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Append the character to to the result
//
static void putChar(char **result, char ch) {

    // get the tail pointer
    char *tail = *result;

    // do the append
    *tail++ = ch;

    // add null terminator
    *tail = 0;

    // update the tail pointer
    *result = tail;
}

//
// Append the string to to the result
//
static void putString(char **result, const char *string) {

    // get the tail pointer
    char *tail = *result;
    char  ch;

    // do the append
    while((ch=*string++)) {
        *tail++ = ch;
    }

    // add null terminator
    *tail = 0;

    // update the tail pointer
    *result = tail;
}

//
// Emit key for uncooked value if required
//
static void putUncookedKey(char **result, const char *key, Bool uncooked) {
    if(uncooked) {
        putString(result, key);
        putChar(result, ':');
    }
}

//
// Return number of members of an array
//
#define NUM_MEMBERS(_A) (sizeof(_A)/sizeof((_A)[0]))

//
// This defines the minimum string width to use for the opcode
//
#define OP_WIDTH 7

//
// Emit instruction format if required
//
static void putInstruction(riscvInstrInfoP info, char **result) {

    const char *fmt;

    // select format string
    if(info->bytes==2) {
        fmt = "%04x     ";
    } else {
        fmt = "%08x ";
    }

    // emit basic opcode string
    *result += sprintf(*result, fmt, info->instruction);
}

//
// Append comma separator, unless previous character is space or comma (allows
// for omitted optional arguments)
//
static void putComma(char **result, Bool uncooked) {

    if(!uncooked) {

        char *tail = *result;

        switch(tail[-1]) {
            case ',':
            case ' ':
                break;
            default:
                putChar(result, ',');
                break;
        }
    }
}

//
// Emit signed argument
//
static void putD(char **result, Uns32 value) {
    *result += sprintf(*result, "%d", value);
}

//
// Emit hexadeximal argument
//
static void putX(char **result, Uns32 value) {
    *result += sprintf(*result, "0x%x", value);
}

//
// Emit target address argument
//
static void putTarget(char **result, Uns64 value) {
    *result += sprintf(*result, FMT_Ax, value);
}

//
// Emit register argument
//
static void putReg(char **result, riscvRegDesc r, Bool opt, Bool uncooked) {

    Uns32 index = getRIndex(r);

    if(opt && !uncooked && !index && isXReg(r)) {
        // omit zero register
    } else if(isXReg(r)) {
        putString(result, riscvGetXRegName(index));
    } else if(isFReg(r)) {
        putString(result, riscvGetFRegName(index));
    } else {
        VMI_ABORT("Bad register specifier 0x%x", r); // LCOV_EXCL_LINE
    }
}

//
// Emit CSR argument
//
static void putCSR(char **result, riscvP riscv, Uns32 csr) {

    const char *name = riscvGetCSRName(riscv, csr);

    if(name) {
        putString(result, name);
    } else {
        *result += sprintf(*result, "0x%03x", csr);
    }
}

//
// Emit fence argument
//
static void putFence(
    char         **result,
    riscvFenceDesc fence,
    riscvFenceDesc other,
    Bool           uncooked
) {
    if(!fence) {
        putString(result, "unknown");
    } else if(uncooked || (fence!=RV_FENCE_IOWR) || (other!=RV_FENCE_IOWR)) {
        if(fence & RV_FENCE_I) putChar(result, 'i');
        if(fence & RV_FENCE_O) putChar(result, 'o');
        if(fence & RV_FENCE_R) putChar(result, 'r');
        if(fence & RV_FENCE_W) putChar(result, 'w');
    }
}

//
// Emit rounding mode argument
//
static void putRM(char ** result, riscvRMDesc rm, Bool uncooked) {

    if(uncooked && (rm==RV_RM_CURRENT)) {

        putString(result, "rmc");

    } else {

        static const char *map[] = {
            [RV_RM_NA]      = "",
            [RV_RM_CURRENT] = "",
            [RV_RM_RTE]     = "rte",
            [RV_RM_RTZ]     = "rtz",
            [RV_RM_RDN]     = "rdn",
            [RV_RM_RUP]     = "rup",
            [RV_RM_RMM]     = "rmm",
            [RV_RM_BAD5]    = "rm5",
            [RV_RM_BAD6]    = "rm6",
        };

        putString(result, map[rm]);
    }
}

//
// Emit opcode modifier based on argument type
//
static riscvRegDesc putType(
    char          **result,
    riscvInstrInfoP info,
    riscvRegDesc    this,
    riscvRegDesc    prev
) {
    if(this && !isQReg(this) && (getRType(this)!=getRType(prev))) {

        Uns32 bits = getRBits(this);

        if(info->explicitType) {

            // emit dot before type
            putChar(result, '.');

            // show explicit operand types
            if(isFXReg(this)) {
                putChar(result, 'x');
            } else if(isWLReg(this)) {
                putChar(result, (bits==32) ? 'w' : 'l');
            } else if(isXReg(this)) {
                putChar(result, (bits==32) ? 'w' : 'd');
            } else if(isFReg(this)) {
                putChar(result, (bits==32) ? 's' : 'd');
            } else {
                VMI_ABORT("Bad register specifier 0x%x", this); // LCOV_EXCL_LINE
            }

            // show explicit unsigned if required
            if(isUReg(this)) {
                putChar(result, 'u');
            }

        } else if(info->explicitW) {

            // indicate "w" type (with no dot)
            putChar(result, 'w');
        }

        prev = this;
    }

    return prev;
}

//
// Add opcode string to result
//
static void putOpcode(char **result, riscvP riscv, riscvInstrInfoP info) {

    riscvRegDesc type = RV_RD_NA;
    Uns32        i;

    // emit basic opcode
    putString(result, info->opcode);

    // emit modifiers based on argument register types
    for(i=0; i<RV_MAX_AREGS; i++) {
        type = putType(result, info, info->r[i], type);
    }

    // emit size modifier if required
    switch(info->memBits) {
        case 8:  putChar(result, 'b'); break;
        case 16: putChar(result, 'h'); break;
        case 32: putChar(result, 'w'); break;
        case 64: putChar(result, 'd'); break;
    }

    // emit unsigned modifier if required
    if(info->unsExt) {
        putChar(result, 'u');
    }

    // emit CSR as part of opcode if required
    if(info->csrInOp) {
        putCSR(result, riscv, info->csr);
    }

    // emit acquire/release modifier
    static const char *aqrlDescs[] = {"", ".rl", ".aq", ".aqrl"};
    VMI_ASSERT(info->aqrl<NUM_MEMBERS(aqrlDescs), "bad aqrl (%u)", info->aqrl);
    putString(result, aqrlDescs[info->aqrl]);
}

//
// Generate instruction disassembly using the format string
//
static void disassembleFormat(
    riscvP          riscv,
    riscvInstrInfoP info,
    char          **result,
    const char     *format,
    Bool            uncooked
) {
    // generate instruction pattern
    if(!uncooked) {
        putInstruction(info, result);
    }

    // get offset at opcode start
    const char *opcodeStart = *result;

    // add opcode string to result
    putOpcode(result, riscv, info);

    if(*format) {

        // calculate length of opcode text
        const char *opcodeEnd = *result;
        Uns32       len       = opcodeEnd-opcodeStart;
        char        ch;

        // emit formatted space if cooked output
        if(!uncooked)  {

            // pad to minimum width
            for(; len<OP_WIDTH; len++) {
                putChar(result, ' ');
            }

            // emit space before arguments
            putChar(result, ' ');
        }

        // this defines whether the next argument is optional
        Bool nextOpt = False;

        // generate arguments in appropriate format
        while((ch=*format++)) {

            // is this argument optional?
            Bool opt = nextOpt;

            // assume subsequent argument is mandatory
            nextOpt = False;

            switch(ch) {
                case EMIT_R1:
                    putUncookedKey(result, " R1", uncooked);
                    putReg(result, info->r[0], opt, uncooked);
                    break;
                case EMIT_R2:
                    putUncookedKey(result, " R2", uncooked);
                    putReg(result, info->r[1], opt, uncooked);
                    break;
                case EMIT_R3:
                    putUncookedKey(result, " R3", uncooked);
                    putReg(result, info->r[2], opt, uncooked);
                    break;
                case EMIT_R4:
                    putUncookedKey(result, " R4", uncooked);
                    putReg(result, info->r[3], opt, uncooked);
                    break;
                case EMIT_CS:
                    putUncookedKey(result, " C", uncooked);
                    putD(result, info->c);
                    break;
                case EMIT_CX:
                    putUncookedKey(result, " C", uncooked);
                    putX(result, info->c);
                    break;
                case EMIT_UI:
                    putUncookedKey(result, " C", uncooked);
                    putX(result, ((Uns32)info->c)>>12);
                    break;
                case EMIT_TGT:
                    putUncookedKey(result, " T", uncooked);
                    putTarget(result, info->c);
                    break;
                case EMIT_CSR:
                    putUncookedKey(result, " CSR", uncooked);
                    putCSR(result, riscv, info->csr);
                    break;
                case EMIT_PRED:
                    putUncookedKey(result, " PRED", uncooked);
                    putFence(result, info->pred, info->succ, uncooked);
                    break;
                case EMIT_SUCC:
                    putUncookedKey(result, " SUCC", uncooked);
                    putFence(result, info->succ, info->pred, uncooked);
                    break;
                case '*':
                    nextOpt = True;
                    break;
                case ',':
                    putComma(result, uncooked);
                    break;
                default:
                    if(!uncooked) {putChar(result, ch);}
                    break;
            }
        }

        // emit comma before optional rounding mode
        putComma(result, uncooked);
    }

    // emit optional rounding mode
    if(info->rm) {
        putUncookedKey(result, " RM", uncooked);
        putRM(result, info->rm, uncooked);
    }

    // strip trailing whitespace and commas
    char *tail = (*result)-1;
    while((*tail == ' ') || (*tail == ',')) {
        *tail-- = 0;
    }
}

//
// This defines the size of the disassembly buffer
//
#define DISASS_BUFFER_SIZE 256

//
// riscv disassembler, decoded instruction interface
//
static const char *disassembleInfo(
    riscvP          riscv,
    riscvInstrInfoP info,
    vmiDisassAttrs  attrs
) {
    // static buffer to hold disassembly result
    static char result[DISASS_BUFFER_SIZE];
    const char *format = info->format;
    char       *tail   = result;

    // sanity check format is specified
    VMI_ASSERT(format, "null instruction format");

    // disassemble using the format for the type
    disassembleFormat(riscv, info, &tail, format, attrs==DSA_UNCOOKED);

    // validate disassembly buffer has not overflowed
    VMI_ASSERT(
        tail <= &result[DISASS_BUFFER_SIZE-1],
        "buffer overflow for instruction '%s'\n",
        result
    );

    // return the result
    return result;
}

//
// riscv disassembler, VMI interface
//
VMI_DISASSEMBLE_FN(riscvDisassemble) {

    riscvP         riscv = (riscvP)processor;
    riscvInstrInfo info;

    // decode instruction
    riscvDecode(riscv, thisPC, &info);

    // return disassembled instruction
    return disassembleInfo(riscv, &info, attrs);
}

