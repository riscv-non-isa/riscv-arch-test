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

#pragma once

// VMI header files
#include "vmi/vmiTypes.h"


//
// This is used to categorize registers
//
typedef enum riscvRegDescE {

    RV_RD_NA         = 0x0,
                                            // REGISTER INDEX
    RV_RD_INDEX_MASK = 0x01f,               // mask to select register index

                                            // REGISTER SIZE (in bits)
    RV_RD_8          = RV_RD_INDEX_MASK+1,  // 8-bit
    RV_RD_16         = RV_RD_8 *2,          // 16-bit
    RV_RD_32         = RV_RD_16*2,          // 32-bit
    RV_RD_64         = RV_RD_32*2,          // 64-bit
    RV_RD_BITS_MASK  = (RV_RD_8|RV_RD_16|RV_RD_32|RV_RD_64),

                                            // REGISTER TYPE
    RV_RD_X          = RV_RD_64*2,          // integer (X) register
    RV_RD_F          = RV_RD_X*2,           // floating point register
    RV_RD_TYPE_MASK  = (RV_RD_X|RV_RD_F|RV_RD_BITS_MASK),

                                            // DISASSEMBLY CONTROL
    RV_RD_Q          = RV_RD_F*2,           // quiet (don't show type)
    RV_RD_WL         = RV_RD_Q*2,           // explicit w/l type name
    RV_RD_FX         = RV_RD_WL*2,          // explicit x type name
    RV_RD_U          = RV_RD_FX*2,          // explicit u type name

} riscvRegDesc;

//
// Is the register an X register?
//
inline static Bool isXReg(riscvRegDesc r) {
    return (r&RV_RD_X) && True;
}

//
// Is the register an F register?
//
inline static Bool isFReg(riscvRegDesc r) {
    return (r&RV_RD_F) && True;
}

//
// Is the register type-quiet?  (type not shown in disassembly)
//
inline static Bool isQReg(riscvRegDesc r) {
    return (r&RV_RD_Q) && True;
}

//
// Should register name be reported as W or L?
//
inline static Bool isWLReg(riscvRegDesc r) {
    return (r&RV_RD_WL) && True;
}

//
// Should register name be reported as X?
//
inline static Bool isFXReg(riscvRegDesc r) {
    return (r&RV_RD_FX) && True;
}

//
// Should register name be reported as X, W or L?
//
inline static Bool isXWLReg(riscvRegDesc r) {
    return isFXReg(r) || isWLReg(r);
}

//
// Is the register unsigned?
//
inline static Bool isUReg(riscvRegDesc r) {
    return (r&RV_RD_U) && True;
}

//
// Return register index
//
inline static Uns32 getRIndex(riscvRegDesc r) {
    return (r&RV_RD_INDEX_MASK);
}

//
// Return register size in bits
//
inline static Uns32 getRBits(riscvRegDesc r) {
    return (r&RV_RD_BITS_MASK)>>2;
}

//
// Return register type
//
inline static riscvRegDesc getRType(riscvRegDesc r) {
    return (r&RV_RD_TYPE_MASK);
}

