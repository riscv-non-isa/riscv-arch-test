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
// Add documentation using the optional documentation callback
//
inline static void addOptDoc(riscvP riscv, vmiDocNodeP node, riscvDocFn docCB) {
    if(docCB) {
        docCB(riscv, node);
    }
}

//
// Add documentation using an optional null-terminated string list
//
static void addOptDocList(vmiDocNodeP node, const char **specificDocs) {

    if(specificDocs) {

        const char *doc;

        while((doc=*specificDocs++)) {
            vmidocAddText(node, doc);
        }
    }
}

//
// Create processor documentation
//
void riscvDoc(riscvP rootProcessor) {

    vmiDocNodeP      Root     = vmidocAddSection(0, "Root");
    riscvP           riscv    = rootProcessor;
    riscvP           child    = getChild(rootProcessor);
    riscvConfigCP    cfg      = &riscv->configInfo;
    Uns32            numHarts = cfg->numHarts;
    Bool             isSMP    = numHarts && child && !cfg->members;
    Uns32            extIndex;
    riscvExtConfigCP extCfg;
    char             string[1024];

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
    // EXTENSIONS
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP       Extensions = vmidocAddSection(Root, "Extensions");
        riscvArchitecture arch       = cfg->arch;

        vmidocAddText(
            Extensions,
            "The model has the following architectural extensions enabled, "
            "and the following bits in the misa CSR Extensions field will "
            "be set upon reset:"
        );

        while(arch) {

            riscvArchitecture feature     = arch & -arch;
            const char       *featureDesc = riscvGetFeatureName(feature);
            Uns32             featureBit  = RISCV_FEATURE_INDEX(riscvGetFeatureChar(feature));

            if(featureBit <= ('Z' - 'A')) {
                snprintf(
                    SNPRINTF_TGT(string),
                    "misa bit %u: %s",
                    featureBit,
                    featureDesc ? featureDesc : "unknown feature"
                );
                vmidocAddText(Extensions, string);
            }

            arch = arch & ~feature;
        }

        vmidocAddText(
            Extensions,
            "To specify features that can be dynamically enabled or disabled "
            "by writes to the misa register in addition to those listed above, "
            "use parameter \"add_Extensions_mask\". This is a string parameter "
            "containing the feature letters to add; for example, value \"DV\" "
            "indicates that double-precision floating point and the Vector "
            "Extension can be enabled or disabled by writes to the misa "
            "register."
        );

        vmidocAddText(
            Extensions,
            "Legacy parameter \"misa_Extensions_mask\" can also be used. This "
            "Uns32-valued parameter specifies all writable bits in the misa "
            "Extensions field, replacing any value defined in the base variant."
        );

        vmidocAddText(
            Extensions,
            "Note that any features that are indicated as present in the misa "
            "mask but absent in the misa will be ignored. See the next section."
        );

        ////////////////////////////////////////////////////////////////////////////
        // AVAILABLE EXTENSIONS
        ////////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP       AvailExt = vmidocAddSection(Extensions, "Available (But Not Enabled) Extensions");
            riscvArchitecture arch     = cfg->arch;
            Uns32             featureBit;

            vmidocAddText(
                AvailExt,
                "The following extensions are supported by the model, but not "
                "enabled by default in this variant:"
            );

            for(featureBit = 0; featureBit <= ('Z' - 'A'); featureBit++) {

                riscvArchitecture feature = 1 << featureBit;

                // report the extensions that are supported but not enabled
                if((feature & arch) == 0) {
                    const char *featureDesc = riscvGetFeatureName(feature);
                    if(featureDesc) {
                        snprintf(
                            SNPRINTF_TGT(string),
                            "misa bit %d: %s (NOT ENABLED)",
                            featureBit,
                            featureDesc
                        );
                        vmidocAddText(AvailExt, string);
                    }
                }
            }

            vmidocAddText(
                AvailExt,
                "To add features from this list to the base variant, use "
                "parameter \"add_Extensions\". This is a string parameter "
                "containing the feature letters to add; for example, value "
                "\"DV\" indicates that double-precision floating point and the "
                "Vector Extension should be enabled, if they are absent."
            );

            vmidocAddText(
                Extensions,
                "Legacy parameter \"misa_Extensions\" can also be used. This "
                "Uns32-valued parameter specifies the reset value for the misa "
                "CSR Extensions field, replacing any value defined in the base "
                "variant."
            );
        }
    }

    ////////////////////////////////////////////////////////////////////////////
    // FEATURES
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP Features = vmidocAddSection(Root, "General Features");

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

        // document unaligned access behavior for AMO instructions
        if(!(cfg->arch&ISA_A)) {
            // no action
        } else if(cfg->unalignedAMO) {
            vmidocAddText(
                Features,
                "Unaligned memory accesses are supported for AMO instructions "
                "by this variant. Set parameter \"unalignedAMO\" to \"F\" to "
                "disable such accesses."
            );
        } else {
            vmidocAddText(
                Features,
                "Unaligned memory accesses are not supported for AMO "
                "instructions by this variant. Set parameter \"unalignedAMO\" "
                "to \"T\" to enable such accesses."
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

    }

    ////////////////////////////////////////////////////////////////////////////
    // FLOATING POINT
    ////////////////////////////////////////////////////////////////////////////

    // floating point configuration
    if(cfg->arch&ISA_DF) {

        vmiDocNodeP Features = vmidocAddSection(Root, "Floating Point Features");

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

        // document 16-bit floating point support
        if(cfg->fp16_version) {
            snprintf(
                SNPRINTF_TGT(string),
                "16-bit floating point is implemented (%s format).",
                riscvGetFP16VersionDesc(riscv)
            );
            vmidocAddText(Features, string);
        }

        // document mstatus_FS
        vmidocAddText(
            Features,
            "By default, the processor starts with floating-point "
            "instructions disabled (mstatus.FS=0). Use parameter "
            "\"mstatus_FS\" to force mstatus.FS to a non-zero value "
            "for floating-point to be enabled from the start."
        );

        // document mstatus_fs_mode options
        vmidocAddText(
            Features,
            "The specification is imprecise regarding the conditions "
            "under which mstatus.FS is set to Dirty state (3). Parameter "
            "\"mstatus_fs_mode\" can be used to specify the required "
            "behavior in this model, as described below."
        );
        vmidocAddText(
            Features,
            "If \"mstatus_fs_mode\" is set to \"always_dirty\" then the "
            "model implements a simplified floating point status view in "
            "which mstatus.FS holds values 0 (Off) and 3 (Dirty) only; "
            "any write of values 1 (Initial) or 2 (Clean) from privileged "
            "code behave as if value 3 was written."
        );
        vmidocAddText(
            Features,
            "If \"mstatus_fs_mode\" is set to \"write_1\" then mstatus.FS "
            "will be set to 3 (Dirty) by any explicit write to the fflags, "
            "frm or fcsr control registers, or by any executed instruction "
            "that writes an FPR, or by any executed floating point "
            "compare or conversion to integer/unsigned that signals "
            "a floating point exception. Floating point compare or "
            "conversion to integer/unsigned instructions that do not "
            "signal an exception will not set mstatus.FS."
        );
        vmidocAddText(
            Features,
            "If \"mstatus_fs_mode\" is set to \"write_any\" then mstatus.FS "
            "will be set to 3 (Dirty) by any explicit write to the fflags, "
            "frm or fcsr control registers, or by any executed instruction "
            "that writes an FPR, or by any executed floating point "
            "compare or conversion even if those instructions do not "
            "signal a floating point exception."
        );

        // document mstatus_fs_mode default
        snprintf(
            SNPRINTF_TGT(string),
            "In this variant, \"mstatus_fs_mode\" is set to \"%s\".",
            riscvGetFSModeName(riscv)
        );
        vmidocAddText(Features, string);
    }

    ////////////////////////////////////////////////////////////////////////////
    // VECTOR EXTENSION
    ////////////////////////////////////////////////////////////////////////////

    if(cfg->archMask&ISA_V) {

        vmiDocNodeP Vector = vmidocAddSection(Root, "Vector Extension");

        vmidocAddText(
            Vector,
            "This variant implements the RISC-V base vector extension with "
            "version specified in the References section of this document. "
            "Note that parameter \"vector_version\" can be used to select "
            "the required version, including the unstable \"master\" version "
            "corresponding to the active specification. See section \"Vector "
            "Extension Versions\" for detailed information about differences "
            "between each supported version."
        );

        vmiDocNodeP Parameters = vmidocAddSection(
            Vector, "Vector Extension Parameters"
        );

        // document ELEN
        snprintf(
            SNPRINTF_TGT(string),
            "Parameter ELEN is used to specify the maximum size of a single "
            "vector element in bits (32 or 64). By default, ELEN is set to %u "
            "in this variant.",
            riscv->configInfo.ELEN
        );
        vmidocAddText(Parameters, string);

        // document VLEN
        snprintf(
            SNPRINTF_TGT(string),
            "Parameter VLEN is used to specify the number of bits in a vector "
            "register (a power of two in the range 32 to 2048). By default, "
            "VLEN is set to %u in this variant.",
            riscv->configInfo.VLEN
        );
        vmidocAddText(Parameters, string);

        // document SLEN
        snprintf(
            SNPRINTF_TGT(string),
            "Parameter SLEN is used to specify the striping distance (a power "
            "of two in the range 32 to 2048). By default, SLEN is set to %u "
            "in this variant.",
            riscv->configInfo.SLEN
        );
        vmidocAddText(Parameters, string);

        // document Zvlsseg
        snprintf(
            SNPRINTF_TGT(string),
            "Parameter Zvlsseg is used to specify whether the Zvlsseg "
            "extension is implemented. By default, Zvlsseg is set to %u in "
            "this variant.",
            riscv->configInfo.Zvlsseg
        );
        vmidocAddText(Parameters, string);

        // document Zvamo
        snprintf(
            SNPRINTF_TGT(string),
            "Parameter Zvamo is used to specify whether the Zvamo "
            "extension is implemented. By default, Zvamo is set to %u in "
            "this variant.",
            riscv->configInfo.Zvamo
        );
        vmidocAddText(Parameters, string);

        // document Zvediv
        snprintf(
            SNPRINTF_TGT(string),
            "Parameter Zvediv will be used to specify whether the Zvediv "
            "extension is implemented. This is not currently supported."
        );
        vmidocAddText(Parameters, string);

        // document Zvqmac
        snprintf(
            SNPRINTF_TGT(string),
            "Parameter Zvqmac is used to specify whether the Zvqmac "
            "extension is implemented (from version 0.8-draft-20191117 only). "
            "By default, Zvqmac is set to %u in this variant.",
            riscv->configInfo.Zvqmac
        );
        vmidocAddText(Parameters, string);

        // document require_vstart0
        snprintf(
            SNPRINTF_TGT(string),
            "Parameter require_vstart0 is used to specify whether non-"
            "interruptible vector instructions require vstart=0. By default, "
            "require_vstart0 is set to %u in this variant.",
            riscv->configInfo.require_vstart0
        );
        vmidocAddText(Parameters, string);

        vmiDocNodeP Features = vmidocAddSection(
            Vector, "Vector Extension Features"
        );

        vmidocAddText(
            Features,
            "The model implements the base vector extension with a maximum "
            "ELEN of 64. Striping, masking and polymorphism are all fully "
            "supported. Zvlsseg and Zvamo extensions are fully supported. "
            "The Zvediv extension specification is subject to change and "
            "therefore not yet supported."
        );

        vmidocAddText(
            Features,
            "Single precision and double precision floating point types are "
            "supported if those types are also supported in the base "
            "architecture (i.e. the corresponding D and F features must be "
            "present and enabled). Presently, the interaction of vector "
            "floating point with the Privileged Architecture is not well "
            "defined; this model assumes that vector floating point operations "
            "may only be executed if the base floating point unit is also "
            "enabled (i.e. mstatus.FS must be non-zero). Attempting to "
            "execute vector floating point instructions when mstatus.FS is 0 "
            "will cause an Illegal Instruction exception."
        );

        vmidocAddText(
            Features,
            "The model assumes that all vector memory operations must be "
            "aligned to the memory element size. Unaligned accesses will "
            "cause a Load/Store Address Alignment exception."
        );

        ////////////////////////////////////////////////////////////////////////
        // VECTOR EXTENSION VERSIONS
        ////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP Versions = vmidocAddSection(
                Vector, "Vector Extension Versions"
            );

            vmidocAddText(
                Versions,
                "The Vector Extension specification has been under active "
                "development. To enable simulation of hardware that may be based "
                "on an older version of the specification, the model implements "
                "behavior for a number of previous versions of the specification. "
                "The differing features of these are listed below, in "
                "chronological order."
            );
        }

        ////////////////////////////////////////////////////////////////////////
        // VECTOR EXTENSION VERSION 0.7.1-draft-20190605
        ////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP Version = vmidocAddSection(
                Vector, "Version 0.7.1-draft-20190605"
            );

            vmidocAddText(
                Version,
                "Stable 0.7.1 version of June 10 2019."
            );
        }

        ////////////////////////////////////////////////////////////////////////
        // VECTOR EXTENSION VERSION 0.7.1-draft-20190605+
        ////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP Version = vmidocAddSection(
                Vector, "Version 0.7.1-draft-20190605+"
            );

            vmidocAddText(
                Version,
                "Version 0.7.1, with some 0.8 and custom features. Not "
                "intended for general use."
            );
        }

        ////////////////////////////////////////////////////////////////////////
        // VECTOR EXTENSION VERSION 0.8-draft-20190906
        ////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP Version = vmidocAddSection(
                Vector, "Version 0.8-draft-20190906"
            );

            vmidocAddText(
                Version,
                "Stable 0.8 draft of September 6 2019, with these changes "
                "compared to version 0.7.1-draft-20190605:"
            );
            vmidocAddText(
                Version,
                "- tail vector and scalar elements preserved, not zeroed;"
            );
            vmidocAddText(
                Version,
                "- vext.s.v, vmford.vv and vmford.vf instructions removed;"
            );
            vmidocAddText(
                Version,
                "- encodings for vfmv.f.s, vfmv.s.f, vmv.s.x, vpopc.m, "
                "vfirst.m, vmsbf.m, vmsif.m, vmsof.m, viota.m and vid.v "
                "instructions changed;"
            );
            vmidocAddText(
                Version,
                "- overlap constraints for slideup and slidedown instructions "
                "relaxed to allow overlap of destination and mask when SEW=1;"
            );
            vmidocAddText(
                Version,
                "- 64-bit vector AMO operations replaced with SEW-width vector "
                "AMO operations;"
            );
            vmidocAddText(
                Version,
                "- vsetvl and vsetvli instructions when rs1 = x0 preserve the "
                "current vl instead of selecting the maximum possible vl;"
            );
            vmidocAddText(
                Version,
                "- instruction vfncvt.rod.f.f.w added (to allow narrowing "
                "floating point conversions with jamming semantics);"
            );
            vmidocAddText(
                Version,
                "- instructions that transfer values between vector registers "
                "and general purpose registers (vmv.s.x and vmv.x.s) "
                "sign-extend the source if required (previously, it was "
                "zero-extended)."
            );
        }

        ////////////////////////////////////////////////////////////////////////
        // VECTOR EXTENSION VERSION 0.8-draft-20191004
        ////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP Version = vmidocAddSection(
                Vector, "Version 0.8-draft-20191004"
            );

            vmidocAddText(
                Version,
                "Stable 0.8 draft of October 4 2019, with these changes "
                "compared to version 0.8-draft-20190906:"
            );
            vmidocAddText(
                Version,
                "- vwmaccsu and vwmaccus instruction encodings exchanged;"
            );
            vmidocAddText(
                Version,
                "- vwsmaccsu and vwsmaccus instruction encodings exchanged."
            );
        }

        ////////////////////////////////////////////////////////////////////////
        // VECTOR EXTENSION VERSION 0.8-draft-20191117
        ////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP Version = vmidocAddSection(
                Vector, "Version 0.8-draft-20191117"
            );

            vmidocAddText(
                Version,
                "Stable 0.8 draft of November 17 2019, with these changes "
                "compared to version 0.8-draft-20191004:"
            );
            vmidocAddText(
                Version,
                "- indexed load/store instructions zero-extend offsets "
                "(previously, they were sign-extended);"
            );
            vmidocAddText(
                Version,
                "- vslide1up/vslide1down instructions sign-extend XLEN values "
                "to SEW length (previously, they were zero-extended);"
            );
            vmidocAddText(
                Version,
                "- vadc/vsbc instruction encodings require vm=0 (previously, "
                "they required vm=1);"
            );
            vmidocAddText(
                Version,
                "- vmadc/vmsbc instruction encodings allow both vm=0, "
                "implying carry input is used, and vm=1, implying carry input "
                "is zero (previously, only vm=1 was permitted, implying carry "
                "input is used);"
            );
            vmidocAddText(
                Version,
                "- vaaddu.vv, vaaddu.vx, vasubu.vv and vasubu.vx instructions "
                "added;"
            );
            vmidocAddText(
                Version,
                "- vaadd.vv and vaadd.vx, instruction encodings changed;"
            );
            vmidocAddText(
                Version,
                "- vaadd.vi instruction removed;"
            );
            vmidocAddText(
                Version,
                "- all widening saturating scaled multiply-add instructions "
                "removed;"
            );
            vmidocAddText(
                Version,
                "- vqmaccu.vv, vqmaccu.vx, vqmacc.vv, vqmacc.vx, vqmacc.vx, "
                "vqmaccsu.vx and vqmaccus.vx instructions added;"
            );
            vmidocAddText(
                Version,
                "- CSR vlenb added (vector register length in bytes);"
            );
            vmidocAddText(
                Version,
                "- load/store whole register instructions added;"
            );
            vmidocAddText(
                Version,
                "- whole register move instructions added."
            );
        }

        ////////////////////////////////////////////////////////////////////////
        // VECTOR EXTENSION VERSION 0.8-draft-20191118
        ////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP Version = vmidocAddSection(
                Vector, "Version 0.8-draft-20191118"
            );

            vmidocAddText(
                Version,
                "Stable 0.8 draft of November 18 2019, with these changes "
                "compared to version 0.8-draft-20191117:"
            );
            vmidocAddText(
                Version,
                "- vsetvl/vsetvli with rd!=zero and rs1=zero sets vl to the "
                "maximum vector length."
            );
        }

        ////////////////////////////////////////////////////////////////////////
        // VECTOR EXTENSION VERSION 0.8
        ////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP Version = vmidocAddSection(
                Vector, "Version 0.8"
            );

            vmidocAddText(
                Version,
                "Stable 0.8 official release (commit 9a65519), with these "
                "changes compared to version 0.8-draft-20191118:"
            );
            vmidocAddText(
                Version,
                "- vector context status in mstatus register is now "
                "implemented;"
            );
            vmidocAddText(
                Version,
                "- whole register load and store operations have been "
                "restricted to a single register only;"
            );
            vmidocAddText(
                Version,
                "- whole register move operations have been restricted to "
                "aligned groups of 1, 2, 4 or 8 registers only."
            );
        }

        ////////////////////////////////////////////////////////////////////////
        // VECTOR EXTENSION VERSION master
        ////////////////////////////////////////////////////////////////////////

        {
            vmiDocNodeP Version = vmidocAddSection(
                Vector, "Version master"
            );

            vmidocAddText(
                Version,
                "Unstable master version as of 8 February 2020 (commit "
                RVVV_MASTER_TAG"), with these changes compared to version 0.8:"
            );
            vmidocAddText(
                Version,
                "- mstatus.VS and sstatus.VS fields have moved to bits 10:9;"
            );
            vmidocAddText(
                Version,
                "- new CSR vcsr has been added and fields VXSAT and VXRM "
                "fields relocated there from CSR fcsr."
            );
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

        // add custom restrictions if required
        addOptDoc(riscv, Limitations, cfg->restrictionsCB);

        // add extension-specific restrictions if required
        for(
            extIndex = 0;
            (extCfg = riscvGetIndexedExtConfig(cfg, extIndex));
            extIndex++
        ) {
            addOptDoc(riscv, Limitations, extCfg->restrictionsCB);
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
        vmidocAddText(Verification,
            "Also reference tests have been used from various sources including:"
        );
        vmidocAddText(Verification,
            "https://github.com/riscv/riscv-tests"
        );
        vmidocAddText(Verification,
            "https://github.com/ucb-bar/riscv-torture"
        );
        vmidocAddText(Verification,
            "The Imperas OVPsim RISC-V models are used in the RISC-V Foundations "
            "Compliance Framework as a functional Golden Reference:"
        );
        vmidocAddText(Verification,
            "https://github.com/riscv/riscv-compliance"
        );
        vmidocAddText(Verification,
            "where the simulated model is used to provide the reference signatures "
            "for compliance testing. "
            "The Imperas OVPsim RISC-V models are used as reference in both open "
            "source and commercial instruction stream test generators for hardware "
            "design verification, for example:"
        );
        vmidocAddText(Verification,
            "http://valtrix.in/sting/ from Valtrix"
        );
        vmidocAddText(Verification,
            "https://github.com/google/riscv-dv from Google"
        );
        vmidocAddText(Verification,
            "The Imperas OVPsim RISC-V models are also used by commercial and open "
            "source RISC-V Core RTL developers as a reference to ensure correct "
            "functionality of their IP."
        );
    }

    ////////////////////////////////////////////////////////////////////////////
    // REFERENCES
    ////////////////////////////////////////////////////////////////////////////

    {
        vmiDocNodeP References = vmidocAddSection(Root, "References");

        vmidocAddText(
            References,
            "The Model details are based upon the following specifications:"
        );

        snprintf(
            SNPRINTF_TGT(string),
            "RISC-V Instruction Set Manual, Volume I: "
            "User-Level ISA (%s)",
            riscvGetUserVersionDesc(riscv)
        );
        vmidocAddText(References, string);

        snprintf(
            SNPRINTF_TGT(string),
            "RISC-V Instruction Set Manual, Volume II: Privileged "
            "Architecture (%s)",
            riscvGetPrivVersionDesc(riscv)
        );
        vmidocAddText(References, string);

        if(cfg->archMask&ISA_V) {
            snprintf(
                SNPRINTF_TGT(string),
                "RISC-V \"V\" Vector Extension (%s)",
                riscvGetVectorVersionDesc(riscv)
            );
            vmidocAddText(References, string);
        }

        // add custom references if required
        addOptDocList(References, cfg->specificDocs);

        // add extension-specific references if required
        for(
            extIndex = 0;
            (extCfg = riscvGetIndexedExtConfig(cfg, extIndex));
            extIndex++
        ) {
            addOptDocList(References, extCfg->specificDocs);
        }
    }

    vmidocProcessor((vmiProcessorP)rootProcessor, Root);
}

