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

`define COVER_SSCOFPMFSM
covergroup SscofpmfSm_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "RISCV_coverage_sscofpmf.svh"
    `ifdef UDB_MXLEN_64
        mhpmevent_minh: coverpoint ins.current.csr[CSR_MHPMEVENT3][62] {
            bins zero = {0};  // not inhibited -> should count in M-mode
            bins one  = {1};  // inhibited     -> should NOT count in M-mode
    }
        mhpmevent_xinh_combos: coverpoint ins.current.csr[CSR_MHPMEVENT3][62:58] {
            bins combo[] = {[0:31]};  // all MINH/SINH/UINH/VSINH/VUINH combinations
    }
    `else
        mhpmevent_minh: coverpoint ins.current.csr[CSR_MHPMEVENT3 + 12'h400][30] {
            bins zero = {0};
            bins one  = {1};
    }
        mhpmevent_xinh_combos: coverpoint ins.current.csr[CSR_MHPMEVENT3 + 12'h400][30:26] {
            bins combo[] = {[0:31]};
    }
    `endif

    mip_other_pending: coverpoint {ins.current.csr[CSR_MIP][11], ins.current.csr[CSR_MIP][7], ins.current.csr[CSR_MIP][3]} {
            bins none = {3'b000};
            bins meip = {3'b100};
            bins mtip = {3'b010};
            bins msip = {3'b001};
    }
    priv_mode_m_after: coverpoint {ins.current.mode_virt, ins.current.mode} {
        type_option.weight = 0;
        bins M_mode = {3'b011};
    }
    mie_state_prev: coverpoint (ins.prev.csr[CSR_MIE]) {
            bins all_zeros = {'0};
            bins all_ones  = {'1};
    }

    cp_minh_inhibits_mmode:    cross priv_mode_m, mhpmevent_minh, mhpmevent_xinh_combos, hpmcounter_nonzero, mhpmevent_of_zero;
    cp_of_set_on_overflow:     cross priv_mode_m, mip_clear, mie_clear, mhpmevent_of, mhpmevent_inhibits_pattern;
    `ifdef UDB_MXLEN_64
        cp_overflow_hw_only:   cross priv_mode_m, mip_clear, mie_clear, mhpmcounter_write_extremes, mhpmevent_all_zero;
    `else
        cp_overflow_hw_only:   cross priv_mode_m, mip_clear, mie_clear, mhpmcounter_write_extremes, mhpmevent_all_zero, mhpmevent_base_zero;
    `endif
    cp_lcofip_hw_only:         cross priv_mode_m, mhpmevent_of;
    cp_scountovf_mcounteren:   cross priv_mode_m, of_write_pattern, mcounteren_stimulus_pattern, scountovf_of_match;
    cp_scountovf_shadow:       cross priv_mode_m, mcounteren_write_all_ones, of_stimulus_pattern, scountovf_of_match;
    cp_sscofpmf_access:        cross priv_mode_m, csr_access_pattern, hpm_csr_target ;
    cp_lcofi_m:                cross priv_mode_m, lcofi_ip, lcofi_ie, lcofi_mideleg, mstatus_mie_set, mstatus_sie_set;
    cp_lcofip_priority_m:      cross priv_mode_m_after, mhpmevent_inhibits_all_zeros, mstatus_mie_clear, mie_state_prev, lcofi_ip_one, mip_other_pending, trap_taken;
endgroup

function void sscofpmfsm_sample(int hart, int issue, ins_t ins);
    SscofpmfSm_cg.sample(ins);
endfunction
