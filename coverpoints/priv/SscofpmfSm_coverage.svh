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

    // M-mode access sweep also touches mhpmeventNh (RV32 only) -- kept local to Sm so the
    // S cross (hpm_csr_target in RISCV_coverage_sscofpmf.svh) isn't stuck with 29 bins its
    // own generator never exercises there.
    hpm_csr_target_m: coverpoint ins.current.insn[31:20] {
            bins scountovf   = {CSR_SCOUNTOVF};
            `ifdef UDB_MXLEN_32
                bins mhpmevent[] = {CSR_MHPMEVENT3H,  CSR_MHPMEVENT4H,  CSR_MHPMEVENT5H,
                                CSR_MHPMEVENT6H,  CSR_MHPMEVENT7H,  CSR_MHPMEVENT8H,
                                CSR_MHPMEVENT9H,  CSR_MHPMEVENT10H, CSR_MHPMEVENT11H,
                                CSR_MHPMEVENT12H, CSR_MHPMEVENT13H, CSR_MHPMEVENT14H,
                                CSR_MHPMEVENT15H, CSR_MHPMEVENT16H, CSR_MHPMEVENT17H,
                                CSR_MHPMEVENT18H, CSR_MHPMEVENT19H, CSR_MHPMEVENT20H,
                                CSR_MHPMEVENT21H, CSR_MHPMEVENT22H, CSR_MHPMEVENT23H,
                                CSR_MHPMEVENT24H, CSR_MHPMEVENT25H, CSR_MHPMEVENT26H,
                                CSR_MHPMEVENT27H, CSR_MHPMEVENT28H, CSR_MHPMEVENT29H,
                                CSR_MHPMEVENT30H, CSR_MHPMEVENT31H};
             `endif
    }

    cp_minh_inhibits_mmode:    cross priv_mode_m, mhpmevent_xinh_combos, mhpmevent_of_zero;
    cp_of_set_on_overflow:     cross priv_mode_m, lcofi_ip_one, mie_clear, mhpmevent_inhibits_pattern_state, mhpmevent_of_one;
    `ifdef UDB_MXLEN_64
        cp_overflow_hw_only:   cross priv_mode_m, mip_clear, mie_clear, mhpmcounter_extreme_state, mhpmevent_all_zero;
    `else
        cp_overflow_hw_only:   cross priv_mode_m, mip_clear, mie_clear, mhpmcounter_extreme_state, mhpmevent_all_zero, mhpmevent_base_zero;
    `endif
    cp_lcofip_hw_only:         cross priv_mode_m, mhpmevent_of, lcofi_ip;
    cp_scountovf_mcounteren:   cross priv_mode_m, of_write_pattern, mcounteren_stimulus_pattern_state;
    cp_scountovf_shadow:       cross priv_mode_m, mcounteren_all_ones_state, of_stimulus_pattern;
    cp_sscofpmf_access:        cross priv_mode_m, csr_access_pattern, hpm_csr_target_m;
    cp_lcofi_m:                cross priv_mode_m, lcofi_ip, lcofi_ie, lcofi_mideleg, mstatus_mie_set, mstatus_sie_set;
    cp_lcofip_priority_m:      cross priv_mode_m, mhpmevent_inhibits_zero_state, mstatus_mie_set, mie_state, lcofi_ip_one, mip_other_pending;
endgroup

function void sscofpmfsm_sample(int hart, int issue, ins_t ins);
    SscofpmfSm_cg.sample(ins);
endfunction
