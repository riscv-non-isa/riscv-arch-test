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

// Standard header files
#include <stdio.h>
#include <string.h>

// VMI header files
#include "vmi/vmiAttrs.h"
#include "vmi/vmiModelInfo.h"
#include "vmi/vmiDoc.h"
#include "vmi/vmiRt.h"

// model header files
#include "riscvDoc.h"
#include "riscvFunctions.h"
#include "riscvParameters.h"
#include "riscvStructure.h"
#include "riscvUtils.h"
#include "riscvVariant.h"


//
// Define target of snprintf with correct size
//
#define SNPRINTF_TGT(_S) _S, sizeof(_S)

//
// Return any chld of the passed processor
//
inline static riscvP getChild(riscvP riscv) {
    return (riscvP)vmirtGetSMPChild((vmiProcessorP)riscv);
}

//
// Fill result with description string of a single Sv mode
//
static void fillSvMode(char *result, Uns32 mask) {

    Uns32 index = 0;

    while((mask=(mask>>1))) {
        index++;
    }

    sprintf(result, "%u", index);
}

//
// Fill result with description string of supported Sv modes
//
static void fillSvModes(char *result, Uns32 Sv_modes) {

    Bool  first = True;
    Uns32 mask;

    while((mask = (Sv_modes & -Sv_modes))) {

        char SvMode[8];

        Sv_modes &= ~mask;

        if(first) {
            strcpy(result, Sv_modes ? "modes " : "mode ");
        } else {
            strcat(result, Sv_modes ? ", " : " and ");
        }

        fillSvMode(SvMode, mask);
        strcat(result, SvMode);

        first = False;
    }
}

//
// Create processor documentation
//
void riscvDoc(riscvP riscv) {

    vmiDocNodeP   Root     = vmidocAddSection(0, "Root");
    riscvP        child    = getChild(riscv);
    riscvConfigCP cfg      = &riscv->configInfo;
    Uns32         numHarts = cfg->numHarts;
    Bool          isSMP    = numHarts && child && !cfg->members;
    char          string[1024];

    // move to first child if an SMP object
    if(isSMP) {
        riscv = child;
        cfg   = &riscv->configInfo;
    }

    ////////////////////////////////////////////////////////////////////////////
    // DESCRIPTION
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP Description = vmidocAddSection(Root, "Description");

        snprintf(
            SNPRINTF_TGT(string),
            "RISC-V %s %u-bit processor model",
            riscv->configInfo.name,
            riscvGetXlenArch(riscv)
        );
        vmidocAddText(Description, string);
    }

    ////////////////////////////////////////////////////////////////////////////
    // LICENSING
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP Licensing = vmidocAddSection(Root, "Licensing");

        vmidocAddText(
            Licensing,
            "This Model is released under the Open Source Apache 2.0"
        );
    }

    ////////////////////////////////////////////////////////////////////////////
    // FEATURES
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP       Features = vmidocAddSection(Root, "Features");
        riscvArchitecture arch     = cfg->arch;

        vmidocAddText(
            Features,
            "The model supports the following architectural features, defined "
            "in the misa CSR:"
        );

        while(arch) {

            riscvArchitecture feature     = arch & -arch;
            const char       *featureDesc = riscvGetFeatureName(feature);

            if(featureDesc) {
                vmidocAddText(Features, featureDesc);
            } else {
                snprintf(SNPRINTF_TGT(string), "unknown feature %c", riscvGetFeatureChar(feature));
                vmidocAddText(Features, string);
            }

            arch = arch & ~feature;
        }

        vmidocAddText(
            Features,
            "If required, supported architectural features may be overridden "
            "using parameter \"misa_Extensions\". Parameter "
            "\"misa_Extensions_mask\" can be used to specify which features "
            "can be dynamically enabled or disabled by writes to the misa "
            "register."
        );

        // document multicore behavior
        if(isSMP) {
            snprintf(
                SNPRINTF_TGT(string),
                "This is a multicore variant with %u cores by default. "
                "The number of cores may be overridden with the "
                "\"numHarts\" parameter.",
                numHarts
            );
            vmidocAddText(Features, string);
        }

        // document mtvec_is_ro behavior
        if(cfg->mtvec_is_ro) {

            // mtvec is read-only
            vmidocAddText(
                Features,
                "On this variant, the Machine trap-vector base-address "
                "register (mtvec) is read-only. It can instead be configured "
                "as writable using parameter \"mtvec_is_ro\"."
            );

        } else {

            // mtvec is read/write
            vmidocAddText(
                Features,
                "On this variant, the Machine trap-vector base-address "
                "register (mtvec) is writable. It can instead be configured "
                "as read-only using parameter \"mtvec_is_ro\"."
            );

            // document mtvec_mask behavior
            snprintf(
                SNPRINTF_TGT(string),
                "Values written to \"mtvec\" are masked using the value "
                "0x"FMT_Ax". A different mask of writable bits may be "
                "specified using parameter \"mtvec_mask\" if required. In "
                "addition, when Vectored interrupt mode is enabled, parameter "
                "\"tvec_align\" may be used to specify additional "
                "hardware-enforced base address alignment. In this variant, "
                "\"tvec_align\" defaults to %u%s.",
                RD_CSR_MASK(riscv, mtvec),
                cfg->tvec_align,
                cfg->tvec_align ? "" : ", implying no alignment constraint"
            );
            vmidocAddText(Features, string);
        }

        // document mtvec
        snprintf(
            SNPRINTF_TGT(string),
            "The initial value of \"mtvec\" is 0x"FMT_Ax". A different value "
            "may be specified using parameter \"mtvec\" if required.",
            RD_CSR(riscv, mtvec)
        );
        vmidocAddText(Features, string);

        // document stvec_mask etc size
        if(cfg->arch&ISA_S) {

            snprintf(
                SNPRINTF_TGT(string),
                "Values written to \"stvec\" are masked using the value "
                "0x"FMT_Ax". A different mask of writable bits may be "
                "specified using parameter \"stvec_mask\" if required. "
                "parameter \"tvec_align\" may be used to specify additional "
                "hardware-enforced base address alignment in the same manner "
                "as for the \"mtvec\" register, described above.",
                RD_CSR_MASK(riscv, stvec)
            );

            vmidocAddText(Features, string);
        }

        // document utvec_mask etc size
        if(cfg->arch&ISA_N) {

            snprintf(
                SNPRINTF_TGT(string),
                "Values written to \"utvec\" are masked using the value "
                "0x"FMT_Ax". A different mask of writable bits may be "
                "specified using parameter \"ucdtvec_mask\" if required. "
                "parameter \"tvec_align\" may be used to specify additional "
                "hardware-enforced base address alignment in the same manner "
                "as for the \"mtvec\" register, described above.",
                RD_CSR_MASK(riscv, stvec)
            );

            vmidocAddText(Features, string);
        }

        // document reset behavior
        snprintf(
            SNPRINTF_TGT(string),
            "On reset, the model will restart at address 0x"FMT_Ax". A "
            "different reset address may be specified using parameter "
            "\"reset_address\" if required.",
            cfg->reset_address
        );
        vmidocAddText(Features, string);

        // document NMI behavior
        snprintf(
            SNPRINTF_TGT(string),
            "On an NMI, the model will restart at address 0x"FMT_Ax". A "
            "different NMI address may be specified using parameter "
            "\"nmi_address\" if required.",
            cfg->nmi_address
        );
        vmidocAddText(Features, string);

        // document WFI behavior
        if(cfg->wfi_is_nop) {
            vmidocAddText(
                Features,
                "WFI is implemented as a NOP. It can instead be configured to "
                "halt the processor until an interrupt occurs using parameter "
                "\"wfi_is_nop\". WFI timeout wait is implemented with a time "
                "limit of 0 (i.e. WFI causes an Illegal Instruction trap in "
                "Supervisor mode when mstatus.TW=1)."
            );
        } else {
            vmidocAddText(
                Features,
                "WFI will halt the processor until an interrupt occurs. It can "
                "instead be configured as a NOP using parameter \"wfi_is_nop\". "
                "WFI timeout wait is implemented with a time limit of 0 (i.e. "
                "WFI causes an Illegal Instruction trap in Supervisor mode "
                "when mstatus.TW=1)."
            );
        }

        // document whether cycle CSR is implemented
        if(cfg->cycle_undefined) {
            vmidocAddText(
                Features,
                "The \"cycle\" CSR is not implemented in this variant and "
                "reads of it will require emulation in Machine mode. Set "
                "parameter \"cycle_undefined\" to False to instead specify "
                "that \"cycle\" is implemented."
            );
        } else {
            vmidocAddText(
                Features,
                "The \"cycle\" CSR is implemented in this variant. Set "
                "parameter \"cycle_undefined\" to True to instead specify that "
                "\"cycle\" is unimplemented and reads of it should trap to "
                "Machine mode."
            );
        }

        // document whether time CSR is implemented
        if(cfg->time_undefined) {
            vmidocAddText(
                Features,
                "The \"time\" CSR is not implemented in this variant and reads "
                "of it will require emulation in Machine mode. Set parameter "
                "\"time_undefined\" to False to instead specify that \"time\" "
                "is implemented."
            );
        } else {
            vmidocAddText(
                Features,
                "The \"time\" CSR is implemented in this variant. Set "
                "parameter \"time_undefined\" to True to instead specify that "
                "\"time\" is unimplemented and reads of it should trap to "
                "Machine mode. Usually, the value of the \"time\" CSR should "
                "be provided by the platform - see notes below about the "
                "artifact \"CSR\" bus for information about how this is done."
            );
        }

        // document whether instret CSR is implemented
        if(cfg->instret_undefined) {
            vmidocAddText(
                Features,
                "The \"instret\" CSR is not implemented in this variant and "
                "reads of it will require emulation in Machine mode. Set "
                "parameter \"instret_undefined\" to False to instead specify "
                "that \"instret\" is implemented."
            );
        } else {
            vmidocAddText(
                Features,
                "The \"instret\" CSR is implemented in this variant. Set "
                "parameter \"instret_undefined\" to True to instead specify "
                "that \"instret\" is unimplemented and reads of it should trap "
                "to Machine mode."
            );
        }

        // document ASID size
        if(cfg->arch&ISA_S) {

            char svModes[256];

            snprintf(
                SNPRINTF_TGT(string),
                "A %u-bit ASID is implemented. Use parameter \"ASID_bits\" to "
                "specify a different implemented ASID size if required.",
                cfg->ASID_bits
            );
            vmidocAddText(Features, string);

            fillSvModes(svModes, cfg->Sv_modes);
            snprintf(
                SNPRINTF_TGT(string),
                "This variant supports address translation %s. Use parameter "
                "\"Sv_modes\" to specify a bit mask of different modes if "
                "required.",
                svModes
            );
            vmidocAddText(Features, string);
        }

        // document unaligned access behavior
        if(cfg->unaligned) {
            vmidocAddText(
                Features,
                "Unaligned memory accesses are supported by this variant. Set "
                "parameter \"unaligned\" to \"F\" to disable such accesses."
            );
        } else {
            vmidocAddText(
                Features,
                "Unaligned memory accesses are not supported by this variant. "
                "Set parameter \"unaligned\" to \"T\" to enable such accesses."
            );
        }

        // document PMP regions
        if(cfg->PMP_registers) {

            Uns64 grainBytes = 4ULL<<cfg->PMP_grain;

            snprintf(
                SNPRINTF_TGT(string),
                "%u PMP entries are implemented by this variant. Use parameter "
                "\"PMP_registers\" to specify a different number of PMP "
                "entries; set the parameter to 0 to disable the PMP unit. "
                "The PMP grain size (G) is %u, meaning that PMP regions as "
                "small as "FMT_Au" bytes are implemented. Use parameter "
                "\"PMP_grain\" to specify a different grain size if required.",
                cfg->PMP_registers,
                cfg->PMP_grain,
                grainBytes
            );

            vmidocAddText(Features, string);

        } else {

            vmidocAddText(
                Features,
                "A PMP unit is not implemented by this variant. Set parameter "
                "\"PMP_registers\" to indicate that the unit should be "
                "implemented with that number of PMP entries."
            );
        }

        // document LR/SC reservation granule
        if(cfg->arch&ISA_A) {
            snprintf(
                SNPRINTF_TGT(string),
                "LR/SC instructions are implemented with a %u-byte reservation "
                "granule. A different granule size may be specified using "
                "parameter \"lr_sc_grain\".",
                cfg->lr_sc_grain
            );
            vmidocAddText(Features, string);
        }

        // floating point configuration
        if(cfg->arch&ISA_DF) {

            // document mstatus_FS
            vmidocAddText(
                Features,
                "By default, the processor starts with floating-point "
                "instructions disabled (mstatus.FS=0). Use parameter "
                "\"mstatus_FS\" to force mstatus.FS to a non-zero value "
                "for floating-point to be enabled from the start."
            );

            // document d_requires_f
            if((cfg->archMask&ISA_DF) != ISA_DF) {
                // no action
            } else if(cfg->d_requires_f) {
                vmidocAddText(
                    Features,
                    "The D extension is enabled in this variant only if the "
                    "F extension is also enabled. Set parameter \"d_requires_f\""
                    "to \"F\" to allow D and F to be independently enabled."
                );
            } else {
                vmidocAddText(
                    Features,
                    "The D extension is enabled in this variant independently "
                    "of the F extension. Set parameter \"d_requires_f\""
                    "to \"T\" to specify that the D extension requires the "
                    "F extension to be enabled."
                );
            }

            // document fs_always_dirty
            if(cfg->fs_always_dirty) {

                vmidocAddText(
                    Features,
                    "This variant implements a simplified floating point "
                    "status view in which mstatus.FS holds values 0 (Off) "
                    "and 3 (Dirty) only; any write of values 1 (Initial) or "
                    "2 (Clean) from privileged code behave as if value 3 was "
                    "written. Set parameter \"fs_always_dirty\" to \"F\" to "
                    "specify that mstatus.FS should instead behave according "
                    "to the Privileged Architecture specification."
                );

            } else {

                vmidocAddText(
                    Features,
                    "This variant implements floating point status in "
                    "mstatus.FS as defined in the Privileged Architecture "
                    "specification. To specify that a simpler mode supporting "
                    "only values 0 (Off) and 3 (Dirty) should be used, Set "
                    "parameter \"fs_always_dirty\" to \"T\". When this simpler "
                    "mode is used, any write of values 1 (Initial) or 2 "
                    "(Clean) from privileged code behave as if value 3 was "
                    "written."
                );
            }
        }
    }

    ////////////////////////////////////////////////////////////////////////////
    // PORTS
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP Ports = vmidocAddSection(Root, "Interrupts");

        vmidocAddText(
            Ports,
            "The \"reset\" port is an active-high reset input. The processor "
            "is halted when \"reset\" goes high and resumes execution from the "
            "reset address specified using the \"reset_address\" parameter "
            "when the signal goes low. The \"mcause\" register is cleared "
            "to zero."
        );

        vmidocAddText(
            Ports,
            "The \"nmi\" port is an active-high NMI input. The processor "
            "is halted when \"nmi\" goes high and resumes execution from the "
            "address specified using the \"nmi_address\" parameter when the "
            "signal goes low. The \"mcause\" register is cleared to zero."
        );

        vmidocAddText(
            Ports,
            "All other interrupt ports are active high."
        );
    }

    ////////////////////////////////////////////////////////////////////////////
    // DEBUG MASK
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP debugMask = vmidocAddSection(Root, "Debug Mask");

        vmidocAddText(
            debugMask,
            "It is possible to enable model debug messages in various "
            "categories. This can be done statically using the "
            "\"override_debugMask\" parameter, or dynamically using the "
            "\"debugflags\" command. Enabled messages are specified using a "
            "bitmask value, as follows:"
        );

        // document memory debug
        snprintf(
            SNPRINTF_TGT(string),
            "Value 0x%03x: enable debugging of PMP and virtual memory state;",
            RISCV_DEBUG_MMU_MASK
        );
        vmidocAddText(debugMask, string);

        // document exception debug
        snprintf(
            SNPRINTF_TGT(string),
            "Value 0x%03x: enable debugging of interrupt state.",
            RISCV_DEBUG_EXCEPT_MASK
        );
        vmidocAddText(debugMask, string);

        vmidocAddText(
            debugMask,
            "All other bits in the debug bitmask are reserved and must not "
            "be set to non-zero values."
        );
    }

    ////////////////////////////////////////////////////////////////////////////
    // INTEGRATION SUPPORT
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP integration = vmidocAddSection(Root, "Integration Support");

        vmidocAddText(
            integration,
            "This model implements a number of non-architectural pseudo-"
            "registers and other features to facilitate integration."
        );

        vmiDocNodeP leafSection = vmidocAddSection(
            integration, "CSR Register External Implementation"
        );

        vmidocAddText(
            leafSection,
            "If parameter \"enable_CSR_bus\" is True, an artifact 16-bit bus "
            "\"CSR\" is enabled. Slave callbacks installed on this bus can "
            "be used to implement modified CSR behavior (use opBusSlaveNew or "
            "icmMapExternalMemory, depending on the client API). A CSR with "
            "index 0xABC is mapped on the bus at address 0xABC0; as a concrete "
            "example, implementing CSR \"time\" (number 0xC01) externally "
            "requires installation of callbacks at address 0xC010 on the CSR "
            "bus."
        );

        if(cfg->arch&ISA_A) {

            vmiDocNodeP leafSection = vmidocAddSection(
                integration, "LR/SC Active Address"
            );

            vmidocAddText(
                leafSection,
                "Artifact register \"LRSCAddress\" shows the active LR/SC "
                "lock address. The register holds all-ones if there is no "
                "LR/SC operation active."
            );
        }
    }

    ////////////////////////////////////////////////////////////////////////////
    // LIMITATIONS
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP Limitations = vmidocAddSection(Root, "Limitations");

        vmidocAddText(
            Limitations,
            "Instruction pipelines are not modeled in any way. All instructions "
            "are assumed to complete immediately. This means that instruction "
            "barrier instructions (e.g. fence.i) are treated as NOPs, with "
            "the exception of any Illegal Instruction behavior, which is "
            "modeled."
        );

        vmidocAddText(
            Limitations,
            "Caches and write buffers are not modeled in any way. All loads, "
            "fetches and stores complete immediately and in order, and are "
            "fully synchronous. Data barrier instructions (e.g. fence)  are "
            "treated as NOPs, with the exception of any Illegal Instruction "
            "behavior, which is modeled."
        );

        vmidocAddText(
            Limitations,
            "Real-world timing effects are not modeled: all instructions are "
            "assumed to complete in a single cycle."
        );

        // floating point configuration
        if(cfg->arch&(ISA_DF)) {
            vmidocAddText(
                Limitations,
                "The processor fully supports the architecturally-specified "
                "floating-point instructions."
            );
        }

        vmidocAddText(
            Limitations,
            "Hardware Performance Monitor and Debug registers are not "
            "implemented and hardwired to zero."
        );

        if(cfg->arch&ISA_S) {
            vmidocAddText(
                Limitations,
                "The TLB is architecturally-accurate but not device accurate. "
                "This means that all TLB maintenance and address translation "
                "operations are fully implemented but the cache is larger than "
                "in the real device."
            );
        }

        // add specific restrictions if required
        if(cfg->restrictionsCB) {
            cfg->restrictionsCB(riscv, Limitations);
        }
    }

    ////////////////////////////////////////////////////////////////////////////
    // VERIFICATION
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP Verification = vmidocAddSection(Root, "Verification");

        vmidocAddText(
            Verification,
            "All instructions have been extensively tested by Imperas, "
            "using tests generated specifically for this model and also "
            "reference tests from https://github.com/riscv/riscv-tests."
        );
    }

    ////////////////////////////////////////////////////////////////////////////
    // REFERENCES
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP  References   = vmidocAddSection(Root, "References");
        const char **specificDocs = cfg->specificDocs;

        vmidocAddText(
            References,
            "The Model details are based upon the following specifications:"
        );

        snprintf(
            SNPRINTF_TGT(string),
            "---- RISC-V Instruction Set Manual, Volume I: "
            "User-Level ISA (%s)",
            riscvGetUserVersionDesc(riscv)
        );
        vmidocAddText(References, string);


        snprintf(
            SNPRINTF_TGT(string),
            "---- RISC-V Instruction Set Manual, Volume II: Privileged "
            "Architecture (%s)",
            riscvGetPrivVersionDesc(riscv)
        );
        vmidocAddText(References, string);

        if(specificDocs) {

            const char *doc;

            while((doc=*specificDocs++)) {
                vmidocAddText(References, doc);
            }
        }
    }

    vmidocProcessor((vmiProcessorP)riscv, Root);
}

