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

// basic types
#include "hostapi/impTypes.h"

// VMI header files
#include "vmi/vmiTypes.h"

// model header files
#include "riscvTypeRefs.h"

//
// This enumerates B-extension operations with special behavior
//
typedef enum riscvBExtOpE {

    RVBOP_NONE,         // no a B-extension operation

    // operation subsets (if not callbacks)
    RVBOP_Zba,          // address calculation
    RVBOP_Zbb,          // base set
    RVBOP_Zbc,          // carryless operations
    RVBOP_Zbe,          // bit deposit/extract
    RVBOP_Zbf,          // bit field place
    RVBOP_Zbm,          // bit matrix operations
    RVBOP_Zbp,          // permutation instructions
    RVBOP_Zbr,          // CSR32 operations
    RVBOP_Zbs,          // single bit instructions
    RVBOP_Zbt,          // ternary instructions
    RVBOP_Zbbp,         // base or permutation

    // operations implemented as callbacks or version-specific
    RVBOP_GORC,         // gorc/gorci
    RVBOP_ORCB,         // gorci subset in Zbb set
    RVBOP_ORC16,        // gorci subset in Zbb or Zbbp set
    RVBOP_GREV,         // grev/grevi
    RVBOP_REV8,         // grevi subset in Zbb set
    RVBOP_REV,          // grevi subset in Zbb set
    RVBOP_CRC32,        // crc32/crc32c
    RVBOP_SHFL,         // shfl/shfli
    RVBOP_UNSHFL,       // unshfl/unshfli
    RVBOP_BMATFLIP,     // bmatflip
    RVBOP_BMATOR,       // bmator
    RVBOP_BMATXOR,      // bmatxor
    RVBOP_BEXT,         // bext
    RVBOP_BDEP,         // bdep
    RVBOP_FSL,          // fsl
    RVBOP_FSR,          // fsr/fsri
    RVBOP_BFP,          // bfp
    RVBOP_SLO_SRO,      // slo/sloi/sro/sroi in Zbb or Zbp set

    RVBOP_LAST,         // KEEP LAST: for sizing

} riscvBExtOp;

//
// Return implementation callback for B-extension operation and bits
//
vmiCallFn riscvGetBOpCB(riscvP riscv, riscvBExtOp op, Uns32 bits);

//
// Validate that the instruction subset is supported and enabled and take an
// Illegal Instruction exception if not
//
Bool riscvValidateBExtSubset(riscvP riscv, riscvBExtOp op);

