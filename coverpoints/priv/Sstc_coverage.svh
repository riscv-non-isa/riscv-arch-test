///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Corey Hickson chickson@hmc.edu, Sadhvi Narayanan sanarayanan@hmc.edu April 2026
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_SSTC

covergroup Sstc_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"

    // building blocks for the main coverpoints
    mcounteren_tm: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mcounteren", "tm") {
        bins zero = {0};
        bins one  = {1};
    }
    mcounteren_tm_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mcounteren", "tm") {
        bins one = {1};
    }
    scounteren_tm: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "scounteren", "tm") {
        bins zero = {0};
        bins one  = {1};
    }
    scounteren_tm_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "scounteren", "tm") {
        bins one = {1};
    }
    `ifdef UDB_MXLEN_64
        menvcfg_stce: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "menvcfg", "stce") {
            bins zero = {0};
            bins one  = {1};
        }
        menvcfg_stce_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "menvcfg", "stce") {
            bins one = {1};
        }
    `else
        menvcfg_stce: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "menvcfgh", "stce") {
            bins zero = {0};
            bins one  = {1};
        }
        menvcfg_stce_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "menvcfgh", "stce") {
            bins one = {1};
        }
    `endif
    csrr: coverpoint ins.current.insn {
        wildcard bins csrr = {CSRR};
    }
    stimecmp: coverpoint ins.current.insn[31:20] {
        bins read_stimecmp = {CSR_STIMECMP};
    }

    // With H: menvcfg.STCE, henvcfg.STCE, mcounteren.TM and hcounteren.TM before the instruction, and the
    // timer compare CSR it names. henvcfg.STCE is read-only zero while menvcfg.STCE = 0, so the STCE pair has
    // three reachable values.
    `ifdef H_SUPPORTED
        `ifdef UDB_MXLEN_64
            `define SSTC_STCE_PAIR {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "menvcfg", "stce")[0], \
                                    get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "henvcfg", "stce")[0]}
        `else
            `define SSTC_STCE_PAIR {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "menvcfgh", "stce")[0], \
                                    get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "henvcfgh", "henvcfgh")[31]}
        `endif
        `define SSTC_TM_PAIR {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mcounteren", "tm")[0], \
                              get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "hcounteren", "tm")[0]}
        stce_pair: coverpoint `SSTC_STCE_PAIR {
            bins m0_h0 = {2'b00};
            bins m1_h0 = {2'b10};
            bins m1_h1 = {2'b11};
        }
        stce_pair_ones: coverpoint `SSTC_STCE_PAIR {
            bins m1_h1 = {2'b11};
        }
        stce_pair_m1_h0: coverpoint `SSTC_STCE_PAIR {
            bins m1_h0 = {2'b10};
        }
        tm_pair: coverpoint `SSTC_TM_PAIR {
            bins m0_h0 = {2'b00};
            bins m0_h1 = {2'b01};
            bins m1_h0 = {2'b10};
            bins m1_h1 = {2'b11};
        }
        tm_pair_ones: coverpoint `SSTC_TM_PAIR {
            bins m1_h1 = {2'b11};
        }
        tm_pair_m1_h0: coverpoint `SSTC_TM_PAIR {
            bins m1_h0 = {2'b10};
        }
        tm_pair_zeros: coverpoint `SSTC_TM_PAIR {
            bins m0_h0 = {2'b00};
        }
        stimecmp_csrs: coverpoint ins.current.insn[31:20] {
            bins stimecmp = {CSR_STIMECMP};
            `ifdef UDB_MXLEN_32
                bins stimecmph = {CSR_STIMECMPH};
            `endif
        }
        vstimecmp_csrs: coverpoint ins.current.insn[31:20] {
            bins vstimecmp = {CSR_VSTIMECMP};
            `ifdef UDB_MXLEN_32
                bins vstimecmph = {CSR_VSTIMECMPH};
            `endif
        }
        // Accesses of csr_access_test: csrrw all 1s, csrrw 0s, csrrs all 1s, csrrc all 1s, csrr
        csraccesses: coverpoint ins.current.insn {
            wildcard bins csrrc_all = {CSRRC} iff (ins.current.rs1_val == '1);
            wildcard bins csrrw0    = {CSRRW} iff (ins.current.rs1_val ==  0);
            wildcard bins csrrw1    = {CSRRW} iff (ins.current.rs1_val == '1);
            wildcard bins csrrs_all = {CSRRS} iff (ins.current.rs1_val == '1);
            wildcard bins csrr      = {CSRR}  iff (ins.current.rs1_val ==  0);
        }
        // A csrw of vstimecmp arming it at once (0) or soon (time + htimedelta + delay); all 1s disarms it
        csrrw: coverpoint ins.current.insn {
            wildcard bins csrrw = {CSRRW};
        }
        vstimecmp_low: coverpoint ins.current.insn[31:20] {
            bins vstimecmp = {CSR_VSTIMECMP};
        }
        vstimecmp_arm: coverpoint (ins.current.rs1_val == 0 ? 0 : ins.current.rs1_val == '1 ? 2 : 1) {
            bins now  = {0};
            bins soon = {1};
        }
        hideleg_vstip: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "hideleg", "hideleg")[6] {
            // autofill 0/1
        }
        hie_vstie_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "hie", "vstie")[0] {
            bins one = {1};
        }
    `endif

    // main coverpoints: each crosses one of mcounteren.TM and menvcfg.STCE with the other held at 1
    cp_supervisor_tm:   cross priv_mode_s, csrr, stimecmp, mcounteren_tm, menvcfg_stce_one;
    cp_supervisor_stce: cross priv_mode_s, csrr, stimecmp, menvcfg_stce, mcounteren_tm_one;
    cp_user_tm:         cross priv_mode_u, csrr, stimecmp, mcounteren_tm, scounteren_tm, menvcfg_stce_one;
    cp_user_stce:       cross priv_mode_u, csrr, stimecmp, menvcfg_stce, mcounteren_tm_one, scounteren_tm_one;

    // also read stimecmph for RV32
    `ifdef UDB_MXLEN_32
        stimecmph: coverpoint ins.current.insn[31:20] {
            bins read_stimecmph = {CSR_STIMECMPH};
        }
        cp_supervisor_tm_h:   cross priv_mode_s, csrr, stimecmph, mcounteren_tm, menvcfg_stce_one;
        cp_supervisor_stce_h: cross priv_mode_s, csrr, stimecmph, menvcfg_stce, mcounteren_tm_one;
        cp_user_tm_h:         cross priv_mode_u, csrr, stimecmph, mcounteren_tm, scounteren_tm, menvcfg_stce_one;
        cp_user_stce_h:       cross priv_mode_u, csrr, stimecmph, menvcfg_stce, mcounteren_tm_one, scounteren_tm_one;
    `endif
    // With H. HS-mode reaches vstimecmp only with menvcfg.STCE = mcounteren.TM = 1; henvcfg.STCE and
    // hcounteren.TM do not matter there. In VS-mode, stimecmp is vstimecmp: illegal instruction when
    // menvcfg.STCE = 0 or mcounteren.TM = 0, else virtual instruction when henvcfg.STCE = 0 or
    // hcounteren.TM = 0. vstimecmp by its own name is never accessible below HS: virtual instruction in
    // VS-mode and VU-mode when HS-mode could access it, else illegal instruction; always illegal in U-mode.
    `ifdef H_SUPPORTED
        cp_supervisor_vstimecmp:        cross priv_mode_s, csrr, vstimecmp_csrs, stce_pair, tm_pair;
        cp_supervisor_vstimecmp_write:  cross priv_mode_s, csraccesses, vstimecmp_csrs, stce_pair_m1_h0, tm_pair_m1_h0;
        cp_vs_stimecmp:                 cross priv_mode_vs, csrr, stimecmp_csrs, stce_pair, tm_pair;
        cp_vs_vstimecmp:                cross priv_mode_vs, csrr, vstimecmp_csrs, stce_pair, tm_pair;
        cp_vs_stimecmp_write:           cross priv_mode_vs, csraccesses, stimecmp_csrs, stce_pair_ones, tm_pair_ones;
        cp_vu_stimecmp:                 cross priv_mode_vu, csrr, stimecmp_csrs, stce_pair, tm_pair;
        cp_vu_vstimecmp:                cross priv_mode_vu, csrr, vstimecmp_csrs, stce_pair, tm_pair;
        cp_user_vstimecmp:              cross priv_mode_u, csrr, vstimecmp_csrs, stce_pair, tm_pair;
        // vstimecmp armed in HS-mode at once or soon with hie.VSTIE = 1 raises VSTI in HS-mode or, delegated
        // by hideleg, STI in VS-mode
        cp_vstimecmp_int:               cross priv_mode_s, csrrw, vstimecmp_low, vstimecmp_arm, hideleg_vstip, hie_vstie_one, stce_pair_ones;
    `endif
endgroup

`ifdef H_SUPPORTED
    `undef SSTC_STCE_PAIR
    `undef SSTC_TM_PAIR
`endif

function void sstc_sample(int hart, int issue, ins_t ins);
    Sstc_cg.sample(ins);
endfunction
