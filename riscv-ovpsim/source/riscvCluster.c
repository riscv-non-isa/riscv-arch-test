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

// standard header files
#include <string.h>

// Imperas header files
#include "hostapi/impAlloc.h"

// VMI header files
#include "vmi/vmiCxt.h"
#include "vmi/vmiRt.h"
#include "vmi/vmiMessage.h"

// model header files
#include "riscvStructure.h"
#include "riscvCluster.h"

//
// Prefix for messages from this module
//
#define CPU_PREFIX "RISCV_CLUSTER"


////////////////////////////////////////////////////////////////////////////////
// SMP UTILITIES
////////////////////////////////////////////////////////////////////////////////

//
// Return any parent of the passed processor
//
inline static riscvP getParent(riscvP riscv) {
    return (riscvP)vmirtGetSMPParent((vmiProcessorP)riscv);
}

//
// Get the SMP index of the passed processor
//
inline static Uns32 getSMPIndex(riscvP riscv) {
    return vmirtGetSMPIndex((vmiProcessorP)riscv);
}


////////////////////////////////////////////////////////////////////////////////
// PUBLIC FUNCTIONS
////////////////////////////////////////////////////////////////////////////////

//
// Is the processor a cluster-level object?
//
Bool riscvIsCluster(riscvP riscv) {
    return riscv->configInfo.members;
}

//
// Is the processor a cluster-member-level object?
//
Bool riscvIsClusterMember(riscvP riscv) {
    riscvP parent = getParent(riscv);
    return parent && riscvIsCluster(parent);
}

//
// Return the processor variant to use for the given member of an AMP cluster
//
const char *riscvGetClusterVariant(riscvP member) {
    riscvP cluster = getParent(member);
    return cluster->configInfo.members[getSMPIndex(member)];
}

