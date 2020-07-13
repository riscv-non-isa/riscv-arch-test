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

// VMI header files
#include "hostapi/typeMacros.h"

DEFINE_S (riscv);
DEFINE_S (riscvBlockState);
DEFINE_S (riscvBusPort);
DEFINE_U (riscvCLICIntState);
DEFINE_S (riscvCLICOutState);
DEFINE_S (riscvCSRRemap);
DEFINE_S (riscvConfig);
DEFINE_CS(riscvConfig);
DEFINE_S (riscvCSRAttrs);
DEFINE_CS(riscvCSRAttrs);
DEFINE_S (riscvExceptionDesc);
DEFINE_CS(riscvExceptionDesc);
DEFINE_S (riscvExtCB);
DEFINE_CS(riscvExtConfig);
DEFINE_CS(riscvExtInstrAttrs);
DEFINE_S (riscvExtInstrInfo);
DEFINE_CS(riscvExtMorphAttr);
DEFINE_S (riscvExtMorphState);
DEFINE_S (riscvInstrInfo);
DEFINE_S (riscvNetPort);
DEFINE_CS(riscvMorphAttr);
DEFINE_S (riscvMorphState);
DEFINE_S (riscvParamValues);
DEFINE_S (riscvPendEnab);
DEFINE_S (riscvTLB);

