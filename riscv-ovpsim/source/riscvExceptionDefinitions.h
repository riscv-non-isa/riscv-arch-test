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

// Imperas header files
#include "hostapi/typeMacros.h"

// VMI header files
#include "vmi/vmiDbg.h"

// model header files
#include "riscvVariant.h"

//
// This describes exceptions implemented on the processor and any required
// feature for them to be present
//
typedef struct riscvExceptionDescS {
    vmiExceptionInfo  vmiInfo;      // VMI exception descriptor (MUST BE FIRST)
    riscvArchitecture arch;         // required architecture
} riscvExceptionDesc;

//
// Define type pointer
//
DEFINE_CS(riscvExceptionDesc);

