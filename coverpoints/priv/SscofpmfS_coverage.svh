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

`define COVER_SSCOFPMFS
covergroup SscofpmfS_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "RISCV_coverage_sscofpmf.svh"

    sip_other_pending: coverpoint {ins.current.csr[CSR_SIP][9], ins.current.csr[CSR_SIP][5], ins.current.csr[CSR_SIP][1]} {
            bins none = {3'b000};
            bins seip = {3'b100};
            bins stip = {3'b010};
            bins ssip = {3'b001};
    }
    sip_lcofi: coverpoint ins.current.csr[CSR_SIP][13] {}
    sip_lcofi_one: coverpoint ins.current.csr[CSR_SIP][13] {
            bins one = {1};
    }
    sie_lcofi: coverpoint ins.current.csr[CSR_SIE][13] {}
    sstatus_sie_set: coverpoint ins.current.csr[CSR_SSTATUS][1] {
            bins one = {1};
    }
    sie_state: coverpoint (ins.current.csr[CSR_SIE][15:0]) {
            bins all_zeros = {16'b0};
            // sie is WARL; unimplemented bits stay 0 after a write of all-1s, so "all
            // ones" means all ones in the bits this coverpoint actually cares about
            // (LCOFIE + the 3 standard S-mode enables), not a literal all-1s register.
            wildcard bins all_ones = {16'b??1???1???1???1?};
    }

    cp_sinh_inhibits_smode:    cross priv_mode_s, mhpmevent_xinh_combos, mhpmevent_of_zero;
    cp_of_set_on_overflow:     cross priv_mode_s, sip_lcofi_one, mie_clear, mhpmevent_of_one, mhpmevent_inhibits_pattern_state;
    `ifdef UDB_MXLEN_64
        cp_overflow_hw_only:   cross priv_mode_s, mip_clear, mie_clear, mhpmcounter_extreme_state, mhpmevent_all_zero;
    `else
        cp_overflow_hw_only:   cross priv_mode_s, mip_clear, mie_clear, mhpmcounter_extreme_state, mhpmevent_all_zero, mhpmevent_base_zero;
    `endif
    cp_lcofip_hw_only:         cross priv_mode_s, mhpmevent_of, sip_lcofi;
    cp_scountovf_shadow:       cross priv_mode_s, mcounteren_all_ones_state, of_stimulus_pattern;
    cp_scountovf_mcounteren:   cross priv_mode_s, of_write_pattern, mcounteren_stimulus_pattern_state;
    cp_sscofpmf_access:        cross priv_mode_s, csr_access_pattern, hpm_csr_target;
    cp_lcofi_sip_s:            cross priv_mode_s, sstatus_sie_set, sie_lcofi, sip_lcofi, lcofi_mideleg_one;
    cp_lcofip_priority_s:      cross priv_mode_s, mhpmevent_inhibits_zero_state, sstatus_sie_set, sie_state, sip_lcofi_one, sip_other_pending;
endgroup

function void sscofpmfs_sample(int hart, int issue, ins_t ins);
    SscofpmfS_cg.sample(ins);
endfunction
