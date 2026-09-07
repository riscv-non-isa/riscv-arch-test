///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written by Ayesha Anwar ayesha.anwaar2005@gmail.com
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_SSCOFPMFU

covergroup SscofpmfU_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "RISCV_coverage_sscofpmf.svh"
    sstatus_sie_clear: coverpoint ins.current.csr[CSR_SSTATUS][1] {
            bins zero = {0};
    }
    `ifdef UDB_MXLEN_64
        mhpmevent_uinh: coverpoint ins.current.csr[CSR_MHPMEVENT3][60] {
                bins zero = {0};  // not inhibited -> should count in U-mode
                bins one  = {1};  // inhibited     -> should NOT count in U-mode
        }
    `else
        mhpmevent_uinh: coverpoint ins.current.csr[CSR_MHPMEVENT3 + 12'h400][28] {
                bins zero = {0};
                bins one  = {1};
        }
    `endif

    cp_uinh_inhibits_umode:    cross priv_mode_u, mhpmevent_uinh, hpmcounter_nonzero, mhpmevent_of_zero ;
    cp_of_set_on_overflow:     cross priv_mode_u, mip_clear, mie_clear, mhpmevent_of, mhpmevent_inhibits_pattern;
    `ifdef UDB_MXLEN_64
        cp_overflow_hw_only:   cross priv_mode_u, mip_clear, mie_clear, mhpmcounter_write_extremes, mhpmevent_all_zero;
    `else
        cp_overflow_hw_only:   cross priv_mode_u, mip_clear, mie_clear, mhpmcounter_write_extremes, mhpmevent_all_zero, mhpmevent_base_zero;
    `endif
    cp_lcofip_hw_only:         cross priv_mode_u, mhpmevent_of;
    `ifdef S_SUPPORTED
        cp_lcofi_sip_u: cross priv_mode_u, sstatus_sie_set, sie_lcofi_prev, sip_lcofi;
    `else
        cp_lcofi_sip_u: cross priv_mode_u, mstatus_sie_set, lcofi_ie, lcofi_ip;
    `endif

endgroup

function void sscofpmfu_sample(int hart, int issue, ins_t ins);
    SscofpmfU_cg.sample(ins);
endfunction
