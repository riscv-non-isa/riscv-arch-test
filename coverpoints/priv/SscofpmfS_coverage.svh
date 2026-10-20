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
    `include "general/RISCV_coverage_sscofpmf.svh"

    sip_lcofi: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "sip", "lcofip")[0] {}
    sip_lcofi_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "sip", "lcofip")[0] {
            bins one = {1};
    }
    sip_lcofi_zero: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "sip", "lcofip")[0] {
            bins zero = {0};
    }
    // S-mode clears LCOFIP through sip, so check sip rather than mip here.
    sip_clear: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "sip", "sip") == 0) {
            bins yes = {1};
    }

    sie_lcofi: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "sie", "lcofie")[0] {}
    sstatus_sie_set: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "sstatus", "sie")[0] {
            bins one = {1};
    }

    prev_mstatus_sie_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "sie")[0] {
            bins one = {1};
    }
    sie_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "sie", "sie")[15:0]) {
            bins all_zeros = {16'b0};
            // sie is WARL; unimplemented bits stay 0 after a write of all-1s, so "all
            // ones" means all ones in the bits this coverpoint actually cares about
            // (LCOFIE + the 3 standard S-mode enables), not a literal all-1s register.
            wildcard bins all_ones = {16'b??1???1???1???1?};
    }
    lcofi_ip_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "lcofip")[0] {
            bins one  = {1};
    }
    mip_other_pending_s: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "seip")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "stip")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "ssip")[0]} {
            bins none = {3'b000};
            `ifdef UDB_SEI_INTR_IMPL
            bins seip = {3'b100};
            `endif
            `ifdef UDB_STI_INTR_IMPL
            bins stip = {3'b010};
            `endif
            `ifdef UDB_SSI_INTR_IMPL
            bins ssip = {3'b001};
            `endif
    }
    mideleg_s_ints: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mideleg", "lcofip")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mideleg", "seip")[0],
                                get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mideleg", "stip")[0],  get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mideleg", "ssip")[0]} {
            bins delegated = {4'b1111};
    }

    // csrr scountovf (csrrs rd, scountovf, x0)
    scountovf_read: coverpoint ins.current.insn {
        wildcard bins read = {CSRR} iff (ins.current.insn[31:20] == CSR_SCOUNTOVF);
    }

    csr_access_pattern: coverpoint ins.current.insn {
        wildcard bins csrrw0    = {CSRRW} iff (ins.current.rs1_val ==  0);
        wildcard bins csrrw1    = {CSRRW} iff (ins.current.rs1_val == '1);
        wildcard bins csrrs1    = {CSRRS} iff (ins.current.rs1_val == '1);
        wildcard bins csrrc1    = {CSRRC} iff (ins.current.rs1_val == '1);
        wildcard bins read_only = {CSRRS} iff (ins.current.rs1_val ==  0);
    }

    // M-mode counting stays inhibited so the T-SBI trap handler never counts
    `ifdef UDB_MXLEN_64
        mhpmevent_s_counts_pattern_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, `SSCOFPMF_MHPMEVENT, `SSCOFPMF_MHPMEVENT)[62:58]) {
                bins minh_only = {5'b10000};
                bins minh_uinh = {5'b10100};
        }
        mhpmevent_minh_only_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, `SSCOFPMF_MHPMEVENT, `SSCOFPMF_MHPMEVENT)[62:58] == 5'b10000) {
                bins yes = {1};
        }
    `else
        mhpmevent_s_counts_pattern_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, `SSCOFPMF_MHPMEVENTH, `SSCOFPMF_MHPMEVENTH)[30:26]) {
                bins minh_only = {5'b10000};
                bins minh_uinh = {5'b10100};
        }
        mhpmevent_minh_only_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, `SSCOFPMF_MHPMEVENTH, `SSCOFPMF_MHPMEVENTH)[30:26] == 5'b10000) {
                bins yes = {1};
        }
    `endif

    mcounteren_all_ones_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mcounteren", "enable")[28:0] == 29'(`MCOUNTEREN_WRITABLE >> 3)) {
            bins yes = {1};
    }

    mcounteren_stimulus_pattern_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mcounteren", "enable")[28:0]) {
        bins all_zeros = {29'h0};
        bins all_ones  = {29'(`MCOUNTEREN_WRITABLE >> 3)};
        `ifdef UDB_MCOUNTENABLE_EN_3
            bins walking_3 = {29'h1};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_4
            bins walking_4 = {29'h2};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_5
            bins walking_5 = {29'h4};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_6
            bins walking_6 = {29'h8};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_7
            bins walking_7 = {29'h10};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_8
            bins walking_8 = {29'h20};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_9
            bins walking_9 = {29'h40};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_10
            bins walking_10 = {29'h80};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_11
            bins walking_11 = {29'h100};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_12
            bins walking_12 = {29'h200};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_13
            bins walking_13 = {29'h400};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_14
            bins walking_14 = {29'h800};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_15
            bins walking_15 = {29'h1000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_16
            bins walking_16 = {29'h2000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_17
            bins walking_17 = {29'h4000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_18
            bins walking_18 = {29'h8000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_19
            bins walking_19 = {29'h10000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_20
            bins walking_20 = {29'h20000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_21
            bins walking_21 = {29'h40000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_22
            bins walking_22 = {29'h80000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_23
            bins walking_23 = {29'h100000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_24
            bins walking_24 = {29'h200000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_25
            bins walking_25 = {29'h400000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_26
            bins walking_26 = {29'h800000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_27
            bins walking_27 = {29'h1000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_28
            bins walking_28 = {29'h2000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_29
            bins walking_29 = {29'h4000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_30
            bins walking_30 = {29'h8000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_31
            bins walking_31 = {29'h10000000};
        `endif
    }

    of_stimulus_pattern: coverpoint (`OF_VEC) {
        bins all_zeros = {29'h0};
        bins all_ones  = {29'(`HPM_COUNTER_IMPL >> 3)};
        `ifdef UDB_HPM_COUNTER_EN_3
            bins walking_3 = {29'h1};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_4
            bins walking_4 = {29'h2};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_5
            bins walking_5 = {29'h4};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_6
            bins walking_6 = {29'h8};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_7
            bins walking_7 = {29'h10};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_8
            bins walking_8 = {29'h20};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_9
            bins walking_9 = {29'h40};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_10
            bins walking_10 = {29'h80};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_11
            bins walking_11 = {29'h100};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_12
            bins walking_12 = {29'h200};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_13
            bins walking_13 = {29'h400};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_14
            bins walking_14 = {29'h800};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_15
            bins walking_15 = {29'h1000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_16
            bins walking_16 = {29'h2000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_17
            bins walking_17 = {29'h4000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_18
            bins walking_18 = {29'h8000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_19
            bins walking_19 = {29'h10000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_20
            bins walking_20 = {29'h20000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_21
            bins walking_21 = {29'h40000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_22
            bins walking_22 = {29'h80000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_23
            bins walking_23 = {29'h100000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_24
            bins walking_24 = {29'h200000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_25
            bins walking_25 = {29'h400000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_26
            bins walking_26 = {29'h800000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_27
            bins walking_27 = {29'h1000000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_28
            bins walking_28 = {29'h2000000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_29
            bins walking_29 = {29'h4000000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_30
            bins walking_30 = {29'h8000000};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_31
            bins walking_31 = {29'h10000000};
        `endif
    }

    of_write_pattern: coverpoint (`OF_VEC) {
            bins all_ones     = {29'(`HPM_COUNTER_IMPL >> 3)};
            bins checker_even = {29'b1_0101_0101_0101_0101_0101_0101_0101 & 29'(`HPM_COUNTER_IMPL >> 3)}; // even-indexed OF bits set
            bins checker_odd  = {29'b0_1010_1010_1010_1010_1010_1010_1010 & 29'(`HPM_COUNTER_IMPL >> 3)}; // odd-indexed OF bits set
    }

    hpm_csr_target: coverpoint ins.current.insn[31:20] {
            bins scountovf   = {CSR_SCOUNTOVF};
    }

    lcofi_mideleg_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mideleg", "lcofip")[0] {
            bins one  = {1};
    }

    cp_sinh_inhibits_smode:    cross priv_mode_s, mhpmevent_xinh_combos, mhpmevent_of_zero;
    cp_of_set_on_overflow:     cross priv_mode_s, sip_lcofi_one, mie_clear, mhpmevent_of_one, mhpmevent_s_counts_pattern_state;
    // An overflow with OF already 1 leaves OF set and does not request LCOFI. The counter can wrap in any mode.
    cp_of_already_set:         cross mhpmevent_of_was_one, mhpmevent_of_one, mhpmcounter_wraps, sip_lcofi_zero;
    cp_overflow_hw_only:       cross priv_mode_s, sip_clear, mie_clear, mhpmcounter_extreme_state, mhpmevent_all_zero;
    cp_lcofip_hw_only:         cross priv_mode_s, mhpmevent_of, sip_lcofi_zero;
    cp_scountovf_shadow:       cross priv_mode_s, scountovf_read, mcounteren_all_ones_state, of_stimulus_pattern;
    cp_scountovf_mcounteren:   cross priv_mode_s, scountovf_read, of_write_pattern, mcounteren_stimulus_pattern_state;
    cp_sscofpmf_access:        cross priv_mode_s, csr_access_pattern, hpm_csr_target;
    cp_lcofi_sip_s:            cross priv_mode_s, sstatus_sie_set, sie_lcofi, sip_lcofi, lcofi_mideleg_one;
    cp_lcofip_priority_s:      cross priv_mode_s, mhpmevent_minh_only_state, prev_mstatus_sie_one, sie_state, lcofi_ip_one, mip_other_pending_s, mideleg_s_ints;
endgroup

function void sscofpmfs_sample(int hart, int issue, ins_t ins);
    SscofpmfS_cg.sample(ins);
endfunction
