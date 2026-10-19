///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Corey Hickson chickson@hmc.edu 25 March 2025
//          David_Harris@hmc.edu 11 June 2025
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_EXCEPTIONSSVZAAMO
covergroup ExceptionsSvZaamo_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"

    // building blocks for the main coverpoints

    d_virt_adr_misaligned: coverpoint ins.current.virt_adr_d[1:0] {
        bins aligned    = {2'b00};
        bins misaligned = {2'b10};
    }
    d_page_table_entry_invalid: coverpoint ins.current.pte_d[0] {
        // auto fill valid bit 0/1
    }
    amoops: coverpoint ins.current.insn {
        wildcard bins amoadd_w = {AMOADD_W};
    }
    // main coverpoints
    // Access fault coverpoints
    `ifdef RVMODEL_ACCESS_FAULT_ADDRESS
        // Each access goes through a leaf PTE at the root level (an Sv39 gigapage or Sv32 megapage), so the address
        // that PTE maps it to is the PTE's superpage number and the low virtual-address bits, even when the PTE is
        // invalid and no physical access happens.  The faulting region is at least 128 bytes.
        `ifdef UDB_MXLEN_64
            d_phys_address_nonexistent: coverpoint (({8'b0, ins.current.pte_d[53:28], ins.current.virt_adr_d[29:0]} - 64'(`RVMODEL_ACCESS_FAULT_ADDRESS)) < 64'd128) {
                // auto fill 1/0 for the PTE mapping the access into the faulting region
            }
        `else
            d_phys_address_nonexistent: coverpoint (({30'b0, ins.current.pte_d[31:20], ins.current.virt_adr_d[21:0]} - 64'(`RVMODEL_ACCESS_FAULT_ADDRESS)) < 64'd128) {
                // auto fill 1/0 for the PTE mapping the access into the faulting region
            }
        `endif
        cp_misaligned_priority_s:        cross priv_mode_s, amoops, d_virt_adr_misaligned, d_page_table_entry_invalid, d_phys_address_nonexistent {
            `ifdef UDB_MISALIGNED_LDST_EXCEPTION_PRIORITY_HIGH
                `ifndef UDB_MISALIGNED_AMO
                    // The misaligned exception is raised before translation, so there is no PTE or physical address
                    ignore_bins misaligned_before_translation = binsof(d_virt_adr_misaligned.misaligned);
                `endif
            `endif
        }
        cp_misaligned_priority_u:        cross priv_mode_u, amoops, d_virt_adr_misaligned, d_page_table_entry_invalid, d_phys_address_nonexistent {
            `ifdef UDB_MISALIGNED_LDST_EXCEPTION_PRIORITY_HIGH
                `ifndef UDB_MISALIGNED_AMO
                    // The misaligned exception is raised before translation, so there is no PTE or physical address
                    ignore_bins misaligned_before_translation = binsof(d_virt_adr_misaligned.misaligned);
                `endif
            `endif
        }
    `endif

endgroup

function void exceptionssvzaamo_sample(int hart, int issue, ins_t ins);
    ExceptionsSvZaamo_cg.sample(ins);
endfunction
