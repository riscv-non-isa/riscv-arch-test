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

// basic number types
#include "hostapi/impTypes.h"

//
// Type used for addresses in the model
//
typedef Uns64 riscvAddr;

//
// This is used to categorize rounding mode semantics
//
typedef enum riscvRMDescE {

    RV_RM_NA,       // no rounding mode (or unknown mode)
    RV_RM_CURRENT,  // round using current rounding mode
    RV_RM_RTE,      // round to nearest, ties to even
    RV_RM_RTZ,      // round towards zero
    RV_RM_RDN,      // round towards -infinity
    RV_RM_RUP,      // round towards +infinity
    RV_RM_RMM,      // round to nearest, ties away
    RV_RM_BAD5,     // illegal rounding mode 5
    RV_RM_BAD6,     // illegal rounding mode 6

} riscvRMDesc;

