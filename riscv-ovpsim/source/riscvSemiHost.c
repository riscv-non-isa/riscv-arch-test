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
#include "riscvMorph.h"
#include "riscvRegisters.h"
#include "riscvStructure.h"
#include "riscvUtils.h"


//
// Prefix for messages from this module
//
#define CPU_PREFIX "RISCV_SEMI"

//
// Return processor data endianness
//
inline static vmiReg getArgReg(riscvP riscv, Uns32 index) {
    return RISCV_GPR(10+index);
}

//
// Return processor GPR bits
//
inline static Uns32 getRegBits(riscvP riscv) {
    return riscvGetXlenMode(riscv);
}

//
// Morph return from an opaque intercepted function
//
VMI_INT_RETURN_FN(riscvIntReturn) {
    vmimtUncondJumpReg(0, RISCV_LR, VMI_NOREG, vmi_JH_RETURN);
}

//
// This callback should create code to assign Int32 result to the standard
// return result register
//
VMI_INT_RESULT_FN(riscvIntResult) {

    riscvP riscv = (riscvP)processor;
    Uns32  bits  = getRegBits(riscv);
    vmiReg rd    = RISCV_GPR(10);

    vmimtMoveRR(32, rd, VMI_FUNCRESULT);
    vmimtMoveExtendRR(bits, rd, 32, rd, False);
}

//
// This callback should create code to push function arguments prior to an
// Imperas standard intercept
//
VMI_INT_PAR_FN(riscvIntParCB) {

    riscvP riscv    = (riscvP)processor;
    Uns32  bits     = getRegBits(riscv);
    Uns32  paramNum = 0;
    char   ch;

    while((ch=*format++)) {

        // sanity check restricted arguments
        VMI_ASSERT(ch=='a', "unexpected format character '%c'", ch);
        VMI_ASSERT(paramNum<=5, "unexpected parameter %u", paramNum);

        // argument in a register
        vmimtArgRegSimAddress(bits, getArgReg(riscv, paramNum));

        paramNum++;
    }
}

