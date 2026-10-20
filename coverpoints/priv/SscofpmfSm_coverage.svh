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

// mie.MEIE/MTIE/MSIE are read-only 0 when the interrupt is not implemented, so match them as don't-care.
// A wildcard bin value cannot contain `ifdef, hence these per-bit values.
`ifdef UDB_MEI_INTR_IMPL
    `define SSCOFPMF_MEIE 1'b1
`else
    `define SSCOFPMF_MEIE 1'b?
`endif
`ifdef UDB_MTI_INTR_IMPL
    `define SSCOFPMF_MTIE 1'b1
`else
    `define SSCOFPMF_MTIE 1'b?
`endif
`ifdef UDB_MSI_INTR_IMPL
    `define SSCOFPMF_MSIE 1'b1
`else
    `define SSCOFPMF_MSIE 1'b?
`endif

covergroup SscofpmfSm_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sscofpmf.svh"

    // M-mode access sweep also touches mhpmeventNh (RV32 only) -- kept local to Sm so the
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

    `ifdef UDB_MXLEN_64
        mhpmevent_inhibits_zero_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, `SSCOFPMF_MHPMEVENT, `SSCOFPMF_MHPMEVENT)[62:58] == 5'b00000) {
                bins yes = {1};
        }
    `else
        mhpmevent_inhibits_zero_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, `SSCOFPMF_MHPMEVENTH, `SSCOFPMF_MHPMEVENTH)[30:26] == 5'b00000) {
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

    lcofi_ip_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "lcofip")[0] {
            bins one  = {1};
    }
    lcofi_ip_zero: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "lcofip")[0] {
                bins zero  = {0};
    }
    lcofi_ip: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "lcofip")[0] {}
    lcofi_ie: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mie", "lcofie")[0] {}
    lcofi_mideleg: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mideleg", "lcofip")[0] {}

    mstatus_mie_set: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "mie")[0] {
            bins one = {1};
    }

    mie_state: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mie", "mie")[15:0]) {
            bins all_zeros = {16'b0};
            // mie = all 1s reads back LCOFIE and the enables of the implemented M-level interrupts
            wildcard bins all_ones = {{2'b??, 1'b1, 1'b?, `SSCOFPMF_MEIE, 3'b???, `SSCOFPMF_MTIE, 3'b???, `SSCOFPMF_MSIE, 3'b???}};
    }
    mip_other_pending: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "meip")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "mtip")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mip", "msip")[0]} {
            bins none = {3'b000};
            `ifdef UDB_MEI_INTR_IMPL
            bins meip = {3'b100};
            `endif
            `ifdef UDB_MTI_INTR_IMPL
            bins mtip = {3'b010};
            `endif
            `ifdef UDB_MSI_INTR_IMPL
            bins msip = {3'b001};
            `endif
    }

    cp_minh_inhibits_mmode:    cross priv_mode_m, mhpmevent_xinh_combos, mhpmevent_of_zero;
    // The suite never leaves M-mode, so a pattern that inhibits M-mode counting cannot overflow.
    cp_of_set_on_overflow:     cross priv_mode_m, lcofi_ip_one, mie_clear, mhpmevent_inhibits_pattern_state, mhpmevent_of_one {
        ignore_bins self_inhibited = binsof(mhpmevent_inhibits_pattern_state.minh_only) ||
                                     binsof(mhpmevent_inhibits_pattern_state.msu_set);
    }
    // An overflow with OF already 1 leaves OF set and does not request LCOFI. The counter can wrap in any mode.
    cp_of_already_set:         cross mhpmevent_of_was_one, mhpmevent_of_one, mhpmcounter_wraps, lcofi_ip_zero;
    cp_overflow_hw_only:       cross priv_mode_m, mip_clear, mie_clear, mhpmcounter_extreme_state, mhpmevent_all_zero;
    cp_lcofip_hw_only:         cross priv_mode_m, mhpmevent_of, lcofi_ip_zero;
    cp_scountovf_mcounteren:   cross priv_mode_m, scountovf_read, of_write_pattern, mcounteren_stimulus_pattern_state;
    cp_scountovf_shadow:       cross priv_mode_m, scountovf_read, mcounteren_all_ones_state, of_stimulus_pattern;
    cp_sscofpmf_access:        cross priv_mode_m, csr_access_pattern, hpm_csr_target_m;
    cp_lcofi_m:                cross priv_mode_m, lcofi_ip, lcofi_ie, lcofi_mideleg, mstatus_mie_set;
    cp_lcofip_priority_m:      cross priv_mode_m, mhpmevent_inhibits_zero_state, mstatus_mie_set, mie_state, lcofi_ip_one, mip_other_pending;
endgroup

function void sscofpmfsm_sample(int hart, int issue, ins_t ins);
    SscofpmfSm_cg.sample(ins);
endfunction
