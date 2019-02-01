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
#include "hostapi/impTypes.h"

// VMI header files
#include "vmi/vmiTyperefs.h"

// model header files
#include "riscvCSR.h"
#include "riscvTypeRefs.h"
#include "riscvVariant.h"

//
// Function type for adding documentation
//
#define RV_DOC_FN(_NAME) void _NAME(riscvP riscv, vmiDocNodeP node)
typedef RV_DOC_FN((*riscvDocFn));

//
// This is used to define a processor configuration option
//
typedef struct riscvConfigS {

    const char       *name;             // variant name

    // fundamental variant configuration
    riscvArchitecture arch;             // variant architecture
    riscvArchitecture archMask;         // read/write bits in architecture
    riscvUserVer      user_version;     // user-level ISA version
    riscvPrivVer      priv_version;     // privileged architecture version
    const char      **members;          // cluster member variants

    // configuration not visible in CSR state
    Uns64             reset_address;    // reset vector address
    Uns64             nmi_address;      // NMI address
    Uns32             local_int_num;    // number of local interrupts
    Uns32             lr_sc_grain;      // LR/SC region grain size
    Uns32             ASID_bits;        // number of implemented ASID bits
    Uns32             PMP_grain;        // PMP region grain size
    Uns32             PMP_registers;    // number of implemented PMP registers
    Uns32             Sv_modes;         // bit mask of valid Sv modes
    Uns32             numHarts;         // number of hart contexts if MPCore
    Uns32             tvec_align;       // trap vector alignment (vectored mode)
    Bool              updatePTEA;       // hardware update of PTE A bit?
    Bool              updatePTED;       // hardware update of PTE D bit?
    Bool              unaligned;        // whether unaligned accesses supported
    Bool              wfi_is_nop;       // whether WFI is treated as NOP
    Bool              mtvec_is_ro;      // whether mtvec is read-only
    Bool              cycle_undefined;  // whether cycle CSR is undefined
    Bool              time_undefined;   // whether time CSR is undefined
    Bool              instret_undefined;// whether instret CSR is undefined
    Bool              d_requires_f;     // when misa D requires F to be set
    Bool              fs_always_dirty;  // if mstatus.FS!=0, force it to 3
    Bool              enable_CSR_bus;   // enable CSR implementation bus
    Bool              tval_ii_code;     // instruction bits in [sm]tval for
                                        // illegal instruction exception?
    // CSR register values
    struct {
        CSR_REG_DECL (mvendorid);       // mvendorid value
        CSR_REG_DECL (marchid);         // marchid value
        CSR_REG_DECL (mimpid);          // mimpid value
        CSR_REG_DECL (mhartid);         // mhartid value
        CSR_REG_DECL (mtvec);           // mtvec value
        CSR_REG_DECL (mstatus);         // mstatus reset value
    } csr;

    // CSR register masks
    struct {
        CSR_REG_DECL (mtvec);           // mtvec mask
        CSR_REG_DECL (stvec);           // stvec mask
        CSR_REG_DECL (utvec);           // utvec mask
        CSR_REG_DECL (cause);           // cause mask
    } csrMask;

    // extension values
    const char      **specificDocs;     // extension-specific documentation
    riscvDocFn        restrictionsCB;   // extension-specific restrictions
    const void       *extensionConfig;  // extension-specific configuration

} riscvConfig;

//
// This returns the supported configuration list
//
riscvConfigCP riscvGetConfigList(riscvP riscv);
