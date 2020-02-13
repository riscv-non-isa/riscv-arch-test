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

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiMessage.h"
#include "vmi/vmiMt.h"

// model header files
#include "riscvFunctions.h"
#include "riscvRegisters.h"
#include "riscvStructure.h"

// prefix string (for error messages)
#define CPU_PREFIX "RISCV_SEMI"

//
// Morph return from an opaque intercepted function
//
VMI_INT_RETURN_FN(riscvIntReturn) {
    vmimtUncondJumpReg(0, RISCV_LR, VMI_NOREG, vmi_JH_RETURN);
}

//
// This callback should create code to assign function result to the standard
// return result register
//
VMI_INT_RESULT_FN(riscvIntResult) {
    vmimtMoveRR(32, RISCV_GPR(10), VMI_FUNCRESULT);
}

//
// This callback should create code to push 32-bit function parameter 'paramNum'
//
static Uns32 push4ByteArg(vmiProcessorP processor, Uns32 paramNum) {

    if(paramNum<=5) {

        // argument in a register
        vmimtArgReg(32, RISCV_GPR(10+paramNum));

    } else {

        riscvP riscv = (riscvP)processor;
        memEndian endian = riscv->dendian;

        // argument on the stack - fetch into a temporary
        vmimtLoadRRO(
            32,                         // destBits
            32,                         // memBits
            (paramNum-6)*4,             // offset
            RISCV_CPU_TEMP(TMP[0]),     // destination (rd)
            RISCV_GPR(RV_REG_X_SP),     // stack address (sp)
            endian,                     // endian
            False,                      // signExtend
            False                       // checkAlign
        );

        // push temporary argument
        vmimtArgReg(32, RISCV_CPU_TEMP(TMP[0]));
    }

    return paramNum+1;
}

//
// This callback should create code to push 64-bit function parameter 'paramNum'
//
static Uns32 push8ByteArg(vmiProcessorP processor, Uns32 paramNum) {

    // align parameter number to an even word
    if((paramNum)&1) {
        paramNum += 1;
    }

    if(paramNum<=5) {

        // argument in a register
        vmimtArgReg(32, RISCV_GPR(10+paramNum));    // LSW
        vmimtArgReg(32, RISCV_GPR(11+paramNum));    // MSW

    } else {

        riscvP riscv = (riscvP)processor;
        memEndian endian = riscv->dendian;

        // argument on the stack - fetch into a temporary
        vmimtLoadRRO(
            64,                         // destBits
            64,                         // memBits
            (paramNum-6)*4,             // offset
            RISCV_CPU_TEMP(TMP[0]),     // destination (rd)
            RISCV_GPR(RV_REG_X_SP),     // stack address (sp)
            endian,                     // endian
            False,                      // signExtend
            False                       // checkAlign
        );

        // push temporary argument
        vmimtArgReg(64, RISCV_CPU_TEMP(TMP[0]));
    }

    return paramNum+2;
}

//
// This callback should create code to push address function parameter 'paramNum'
//
static Uns32 pushAddressArg(vmiProcessorP processor, Uns32 paramNum) {

    if(paramNum<=5) {

        // argument in a register
        vmimtArgRegSimAddress(32, RISCV_GPR(10+paramNum));

    } else {

        riscvP riscv = (riscvP)processor;
        memEndian endian = riscv->dendian;

        // argument on the stack - fetch into a temporary
        vmimtLoadRRO(
            32,                         // destBits
            32,                         // memBits
            (paramNum-6)*4,             // offset
            RISCV_CPU_TEMP(TMP[0]),     // destination (rd)
            RISCV_GPR(RV_REG_X_SP),     // stack address (sp)
            endian,                     // endian
            False,                      // signExtend
            False                       // checkAlign
        );

        // push temporary argument
        vmimtArgRegSimAddress(32, RISCV_CPU_TEMP(TMP[0]));
    }

    return paramNum+1;
}

//
// This callback should create code to push function arguments prior to an
// Imperas standard intercept
//
VMI_INT_PAR_FN(riscvIntParCB) {

    Uns32 paramNum = 0;
    char  ch;

    while((ch=*format++)) {

        switch(ch) {

            case '4':
                paramNum = push4ByteArg(processor, paramNum);
                break;

            case '8':
                paramNum = push8ByteArg(processor, paramNum);
                break;

            case 'a':
                paramNum = pushAddressArg(processor, paramNum);
                break;

            default:
                VMI_ABORT("Unrecognised format character '%c'", ch);
        }
    }
}
