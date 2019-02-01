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
// Emulated 32-bit FADD
//
VMI_FP_32_RESULT_FN(riscvFADD32);

//
// Emulated 64-bit FADD
//
VMI_FP_64_RESULT_FN(riscvFADD64);

//
// Emulated 32-bit FSUB
//
VMI_FP_32_RESULT_FN(riscvFSUB32);

//
// Emulated 64-bit FSUB
//
VMI_FP_64_RESULT_FN(riscvFSUB64);

//
// Emulated 32-bit FMUL
//
VMI_FP_32_RESULT_FN(riscvFMUL32);

//
// Emulated 64-bit FMUL
//
VMI_FP_64_RESULT_FN(riscvFMUL64);

//
// Emulated 32-bit FDIV
//
VMI_FP_32_RESULT_FN(riscvFDIV32);

//
// Emulated 64-bit FDIV
//
VMI_FP_64_RESULT_FN(riscvFDIV64);

//
// Emulated 32-bit FSQRT
//
VMI_FP_32_RESULT_FN(riscvFSQRT32);

//
// Emulated 64-bit FSQRT
//
VMI_FP_64_RESULT_FN(riscvFSQRT64);

//
// Emulated 32-bit FMADD
//
VMI_FP_32_RESULT_FN(riscvFMADD32);

//
// Emulated 64-bit FMADD
//
VMI_FP_64_RESULT_FN(riscvFMADD64);

//
// Emulated 32-bit FMSUB
//
VMI_FP_32_RESULT_FN(riscvFMSUB32);

//
// Emulated 64-bit FMSUB
//
VMI_FP_64_RESULT_FN(riscvFMSUB64);

//
// Emulated 32-bit FNMADD
//
VMI_FP_32_RESULT_FN(riscvFNMADD32);

//
// Emulated 64-bit FNMADD
//
VMI_FP_64_RESULT_FN(riscvFNMADD64);

//
// Emulated 32-bit FNMSUB
//
VMI_FP_32_RESULT_FN(riscvFNMSUB32);

//
// Emulated 64-bit FNMSUB
//
VMI_FP_64_RESULT_FN(riscvFNMSUB64);

//
// Emulated conversion from F64 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32F64);

//
// Emulated conversion from I32 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32I32);

//
// Emulated conversion from I64 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32I64);

//
// Emulated conversion from U32 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32U32);

//
// Emulated conversion from U64 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32U64);

//
// Emulated conversion from I64 to F64
//
VMI_FP_64_RESULT_FN(riscvFCVTF64I64);

//
// Emulated conversion from U64 to F64
//
VMI_FP_64_RESULT_FN(riscvFCVTF64U64);

//
// Emulated conversion from F32 to I32
//
VMI_FP_32_RESULT_FN(riscvFCVTI32F32);

//
// Emulated conversion from F32 to I64
//
VMI_FP_64_RESULT_FN(riscvFCVTI64F32);

//
// Emulated conversion from F32 to U32
//
VMI_FP_32_RESULT_FN(riscvFCVTU32F32);

//
// Emulated conversion from F32 to U64
//
VMI_FP_64_RESULT_FN(riscvFCVTU64F32);

//
// Emulated conversion from F64 to I32
//
VMI_FP_32_RESULT_FN(riscvFCVTI32F64);

//
// Emulated conversion from F64 to I64
//
VMI_FP_64_RESULT_FN(riscvFCVTI64F64);

//
// Emulated conversion from F64 to U32
//
VMI_FP_32_RESULT_FN(riscvFCVTU32F64);

//
// Emulated conversion from F64 to U64
//
VMI_FP_64_RESULT_FN(riscvFCVTU64F64);
