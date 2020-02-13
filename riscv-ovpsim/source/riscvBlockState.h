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

// model header files
#include "riscvTypes.h"
#include "riscvTypeRefs.h"

//
// This indicates the known active vector standard element width (SEW)
//
typedef enum riscvSEWMtE {
    SEWMT_UNKNOWN =    0,
    SEWMT_8       =    8,
    SEWMT_16      =   16,
    SEWMT_32      =   32,
    SEWMT_64      =   64,
    SEWMT_128     =  128,
    SEWMT_256     =  256,
    SEWMT_512     =  512,
    SEWMT_1024    = 1024
} riscvSEWMt;

//
// This indicates the known active vector length multiplier (VLMUL)
//
typedef enum riscvVLMULMtE {
    VLMULMT_UNKNOWN = 0,
    VLMULMT_1       = 1,
    VLMULMT_2       = 2,
    VLMULMT_4       = 4,
    VLMULMT_8       = 8,
} riscvVLMULMt;

//
// This indicates the known active vector length zero/non-zero state
//
typedef enum riscvVLClassE {
    VLCLASSMT_UNKNOWN = 0,
    VLCLASSMT_ZERO    = 1,
    VLCLASSMT_NONZERO = 2,
    VLCLASSMT_MAX     = 3,
} riscvVLClassMt;

//
// This indicates the VLMUL for which a vector register is known to have top
// zero (either a single register, or a component of a group)
//
typedef enum riscvTZE {
    VTZ_SINGLE,
    VTZ_GROUP,
} riscvTZ;

//
// This subdivides the polymorphic key into parts used by the vector extension
// and transaction mode
//
typedef enum riscvPMKE {
    PMK_VECTOR      = 0x00ff,
    PMK_TRANSACTION = 0x8000,
} riscvPMK;

//
// This structure holds state for a code block as it is morphed
//
typedef struct riscvBlockStateS {

    riscvBlockStateP prevState;     // previous block state
    Uns32            fpNaNBoxMask[2];// mask of known NaN-boxed registers
    Bool             FSDirty;       // is status.FS known to be dirty?
    Bool             VSDirty;       // is status.VS known to be dirty?
    riscvSEWMt       SEWMt;         // known active vector SEW
    riscvVLMULMt     VLMULMt;       // known active vector VLMUL
    riscvVLClassMt   VLClassMt;     // known active vector VL zero/non-zero/max
    Uns32            VZeroTopMt[2]; // known vector registers with zero top
    Bool             VStartZeroMt;  // vstart known to be zero?

} riscvBlockState;

