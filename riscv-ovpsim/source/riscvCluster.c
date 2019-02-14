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
// Get the first child of a processor
//
inline static riscvP getChild(riscvP riscv) {
    return (riscvP)vmirtGetSMPChild((vmiProcessorP)riscv);
}

//
// Return any parent of the passed processor
//
inline static riscvP getParent(riscvP riscv) {
    return (riscvP)vmirtGetSMPParent((vmiProcessorP)riscv);
}

//
// Get the next sibling of a processor
//
inline static riscvP getSibling(riscvP riscv) {
    return (riscvP)vmirtGetSMPNextSibling((vmiProcessorP)riscv);
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
const char *riscvGetClusterVariant(riscvP cluster, riscvP member) {

    Uns32 i = 0;
    riscvP  try;

    // get index of next variant string
    for(try=getChild(cluster); try!=member; try=getSibling(try)) {
        i++;
    }

    // return indexed variant
    return cluster->configInfo.members[i];
}

