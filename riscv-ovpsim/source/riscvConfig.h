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

// Imperas header files
#include "hostapi/impTypes.h"

// VMI header files
#include "vmi/vmiTyperefs.h"

// model header files
#include "riscvCSR.h"
#include "riscvTypeRefs.h"
#include "riscvVariant.h"

//
// This default value indicates all bits writable in arch except E, S and U
//
#define RV_ARCH_MASK_DEFAULT (~(ISA_XLEN_ANY|ISA_E|ISA_S|ISA_U))

//
// Function type for adding documentation
//
#define RV_DOC_FN(_NAME) void _NAME(riscvP riscv, vmiDocNodeP node)
typedef RV_DOC_FN((*riscvDocFn));

//
// value indicating numHarts is 0 but configurable
//
#define RV_NUMHARTS_0 -1

//
// This is used to specify documentation and configuration for mandatory
// extensions
//
typedef struct riscvExtConfigS {
    Uns32        id;                    // unique extension ID
    const void  *userData;              // extension-specific constant data
} riscvExtConfig;

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
    riscvVectVer      vect_version;     // vector architecture version
    riscvBitManipVer  bitmanip_version; // bitmanip architecture version
    riscvBitManipSet  bitmanip_absent;  // bitmanip absent extensions
    riscvFP16Ver      fp16_version;     // 16-bit floating point version
    riscvFSMode       mstatus_fs_mode;  // mstatus.FS update mode
    riscvDMMode       debug_mode;       // is Debug mode implemented?
    const char      **members;          // cluster member variants

    // configuration not visible in CSR state
    Uns64             reset_address;    // reset vector address
    Uns64             nmi_address;      // NMI address
    Uns64             debug_address;    // debug vector address
    Uns64             dexc_address;     // debug exception address
    Uns64             unimp_int_mask;   // mask of unimplemented interrupts
    Uns64             force_mideleg;    // always-delegated M-mode interrupts
    Uns64             force_sideleg;    // always-delegated S-mode interrupts
    Uns64             no_ideleg;        // non-delegated interrupts
    Uns64             no_edeleg;        // non-delegated exceptions
    Uns64             ecode_mask;       // implemented bits in xcause.ecode
    Uns64             ecode_nmi;        // exception code for NMI
    Uns32             counteren_mask;   // counter-enable implemented mask
    Uns32             noinhibit_mask;	// counter no-inhibit mask
    Uns32             local_int_num;    // number of local interrupts
    Uns32             lr_sc_grain;      // LR/SC region grain size
    Uns32             ASID_bits;        // number of implemented ASID bits
    Uns32             PMP_grain;        // PMP region grain size
    Uns32             PMP_registers;    // number of implemented PMP registers
    Uns32             Sv_modes;         // bit mask of valid Sv modes
    Uns32             numHarts;         // number of hart contexts if MPCore
    Uns32             tvec_align;       // trap vector alignment (vectored mode)
    Uns32             ELEN;             // ELEN (vector extension)
    Uns32             SLEN;             // SLEN (vector extension)
    Uns32             VLEN;             // VLEN (vector extension)
    Uns32             SEW_min;          // minimum SEW (vector extension)
    Bool              Zvlsseg;          // Zvlsseg implemented?
    Bool              Zvamo;            // Zvamo implemented?
    Bool              Zvediv;           // Zvediv implemented?
    Bool              Zvqmac;           // Zvqmac implemented?
    Bool              unitStrideOnly;   // only unit-stride operations supported
    Bool              noFaultOnlyFirst; // fault-only-first instructions absent?
    Bool              updatePTEA;       // hardware update of PTE A bit?
    Bool              updatePTED;       // hardware update of PTE D bit?
    Bool              unaligned;        // whether unaligned accesses supported
    Bool              unalignedAMO;     // whether AMO supports unaligned
    Bool              wfi_is_nop;       // whether WFI is treated as NOP
    Bool              mtvec_is_ro;      // whether mtvec is read-only
    Bool              cycle_undefined;  // whether cycle CSR is undefined
    Bool              time_undefined;   // whether time CSR is undefined
    Bool              instret_undefined;// whether instret CSR is undefined
    Bool              d_requires_f;     // when misa D requires F to be set
    Bool              xret_preserves_lr;// whether xRET preserves current LR
    Bool              require_vstart0;  // require vstart 0 if uninterruptible?
    Bool              enable_CSR_bus;   // enable CSR implementation bus
    Bool              mcounteren_present;// force mcounteren to be present
    Bool              PMP_undefined;    // force all PMP registers undefined
    Bool              external_int_id;  // enable external interrupt ID ports
    Bool              tval_zero;        // whether [smu]tval are always zero
    Bool              tval_ii_code;     // instruction bits in [smu]tval for
                                        // illegal instruction exception?

    // CLIC configuration
    Uns32             CLICLEVELS;       // number of CLIC interrupt levels
    Bool              externalCLIC;     // is CLIC externally implemented?
    Bool              CLICANDBASIC;     // whether implements basic mode also
    Uns8              CLICVERSION;      // CLIC version
    Uns8              CLICINTCTLBITS;   // bits implemented in clicintctl[i]
    Uns8              CLICCFGMBITS;     // bits implemented for cliccfg.nmbits
    Uns8              CLICCFGLBITS;     // bits implemented for cliccfg.nlbits
    Bool              CLICSELHVEC;      // selective hardware vectoring?
    Bool              CLICXNXTI;        // *nxti CSRs implemented?
    Bool              CLICXCSW;         // *scratchcs* CSRs implemented?
    Bool              tvt_undefined;    // whether *tvt CSRs are undefined
    Bool              intthresh_undefined;// whether *intthresh CSRs undefined
    Bool              mclicbase_undefined;// whether mclicbase CSR is undefined

    // CSR register values
    struct {
        CSR_REG_DECL (mvendorid);       // mvendorid value
        CSR_REG_DECL (marchid);         // marchid value
        CSR_REG_DECL (mimpid);          // mimpid value
        CSR_REG_DECL (mhartid);         // mhartid value
        CSR_REG_DECL (mtvec);           // mtvec value
        CSR_REG_DECL (mstatus);         // mstatus reset value
        CSR_REG_DECL (mclicbase);       // mclicbase value
    } csr;

    // CSR register masks
    struct {
        CSR_REG_DECL (mtvec);           // mtvec mask
        CSR_REG_DECL (stvec);           // stvec mask
        CSR_REG_DECL (utvec);           // utvec mask
        CSR_REG_DECL (mtvt);            // mtvec mask
        CSR_REG_DECL (stvt);            // stvec mask
        CSR_REG_DECL (utvt);            // utvec mask
    } csrMask;

    // custom documentation
    const char      **specificDocs;     // custom documentation
    riscvDocFn        restrictionsCB;   // custom restrictions

    // extension configuration information
    riscvExtConfigCPP extensionConfigs; // null-terminated list of extension
                                        // configurations

} riscvConfig;

//
// This returns the supported configuration list
//
riscvConfigCP riscvGetConfigList(riscvP riscv);

