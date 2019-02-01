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
#include "vmi/vmiRt.h"

//
// Prefix for messages
//
#define CPU_PREFIX "RISCV"

//
// Macros for emission of messages without source references
//
#define NO_SRCREF_FMT  "CPU '%s': "
#define NO_SRCREF_ARGS(_A) vmirtProcessorName((vmiProcessorP)(_A))

//
// Macros for emission of messages with source references
//
#define SRCREF_FMT  "CPU '%s' 0x"FMT_6408x" %s: "
#define SRCREF_ARGS(_A, _PC) \
    vmirtProcessorName((vmiProcessorP)(_A)),                \
    _PC,                                                    \
    vmirtDisassemble((vmiProcessorP)(_A), _PC, DSA_NORMAL)

