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

`define COVER_SSTCSM

covergroup SstcSm_cg with function sample(ins_t ins);
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
            `define SSTCSM_STCE_PAIR {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "menvcfg", "stce")[0], \
                                    get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "henvcfg", "stce")[0]}
        `else
            `define SSTCSM_STCE_PAIR {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "menvcfgh", "stce")[0], \
                                    get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "henvcfgh", "henvcfgh")[31]}
        `endif
        `define SSTCSM_TM_PAIR {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mcounteren", "tm")[0], \
                              get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "hcounteren", "tm")[0]}
        stce_pair: coverpoint `SSTCSM_STCE_PAIR {
            bins m0_h0 = {2'b00};
            bins m1_h0 = {2'b10};
            bins m1_h1 = {2'b11};
        }
        stce_pair_ones: coverpoint `SSTCSM_STCE_PAIR {
            bins m1_h1 = {2'b11};
        }
        stce_pair_m1_h0: coverpoint `SSTCSM_STCE_PAIR {
            bins m1_h0 = {2'b10};
        }
        tm_pair: coverpoint `SSTCSM_TM_PAIR {
            bins m0_h0 = {2'b00};
            bins m0_h1 = {2'b01};
            bins m1_h0 = {2'b10};
            bins m1_h1 = {2'b11};
        }
        tm_pair_ones: coverpoint `SSTCSM_TM_PAIR {
            bins m1_h1 = {2'b11};
        }
        tm_pair_m1_h0: coverpoint `SSTCSM_TM_PAIR {
            bins m1_h0 = {2'b10};
        }
        tm_pair_zeros: coverpoint `SSTCSM_TM_PAIR {
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
    cp_machine_tm:   cross priv_mode_m, csrr, stimecmp, mcounteren_tm, menvcfg_stce_one;
    cp_machine_stce: cross priv_mode_m, csrr, stimecmp, menvcfg_stce, mcounteren_tm_one;

    // also read stimecmph for RV32
    `ifdef UDB_MXLEN_32
        stimecmph: coverpoint ins.current.insn[31:20] {
            bins read_stimecmph = {CSR_STIMECMPH};
        }
        cp_machine_tm_h:   cross priv_mode_m, csrr, stimecmph, mcounteren_tm, menvcfg_stce_one;
        cp_machine_stce_h: cross priv_mode_m, csrr, stimecmph, menvcfg_stce, mcounteren_tm_one;
    `endif
    // With H: hip.VSTIP is hvip.VSTIP | (menvcfg.STCE & henvcfg.STCE & time + htimedelta >= vstimecmp).
    // M-mode reaches vstimecmp whatever the enables hold.
    `ifdef H_SUPPORTED
        hip: coverpoint ins.current.insn[31:20] {
            bins hip = {CSR_HIP};
        }
        hvip_vstip: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "hvip", "vstip")[0] {
            // autofill 0/1
        }
        `ifdef UDB_MXLEN_64
            `define SSTCSM_VSTIMECMP get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstimecmp", "vstimecmp")
            `define SSTCSM_HTIMEDELTA get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "htimedelta", "htimedelta")
        `else
            `define SSTCSM_VSTIMECMP {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstimecmph", "vstimecmph"), \
                                      get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstimecmp", "vstimecmp")}
            `define SSTCSM_HTIMEDELTA {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "htimedeltah", "htimedeltah"), \
                                       get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "htimedelta", "htimedelta")}
        `endif
        vstimecmp_val: coverpoint `SSTCSM_VSTIMECMP {
            bins zero = {64'h0};
            bins max  = {64'hFFFFFFFFFFFFFFFF};
        }
        vstimecmp_delta: coverpoint `SSTCSM_VSTIMECMP {
            bins zero    = {64'h0};
            bins p2_29   = {64'h0000000020000000};
            bins p2_31   = {64'h0000000080000000};
            bins p2_61   = {64'h2000000000000000};
            bins neg2_29 = {64'hFFFFFFFFE0000000};
            bins neg2_31 = {64'hFFFFFFFF80000000};
            bins neg2_61 = {64'hE000000000000000};
        }
        htimedelta_val: coverpoint `SSTCSM_HTIMEDELTA {
            bins zero    = {64'h0};
            bins p2_30   = {64'h0000000040000000};
            bins p2_32m1 = {64'h00000000FFFFFFFF};
            bins p2_60   = {64'h1000000000000000};
            bins neg1    = {64'hFFFFFFFFFFFFFFFF};
            bins neg2_30 = {64'hFFFFFFFFC0000000};
            bins neg2_60 = {64'hF000000000000000};
        }
        htimedelta_zero: coverpoint `SSTCSM_HTIMEDELTA {
            bins zero = {64'h0};
        }

        cp_vstip:                       cross priv_mode_m, csrr, hip, stce_pair, hvip_vstip, vstimecmp_val, htimedelta_zero;
        // VSTIP is set while (time + htimedelta) mod 2^64 >= vstimecmp, unsigned
        cp_htimedelta:                  cross priv_mode_m, csrr, hip, stce_pair_ones, htimedelta_val, vstimecmp_delta;
        cp_machine_vstimecmp:           cross priv_mode_m, csrr, vstimecmp_csrs, stce_pair, tm_pair;
        cp_machine_vstimecmp_write:     cross priv_mode_m, csraccesses, vstimecmp_csrs, stce_pair_m1_h0, tm_pair_zeros;
        // vstimecmp armed from M-mode at once or soon with hie.VSTIE = 1 raises VSTI in HS-mode or, delegated
        // by hideleg, STI in VS-mode
        cp_vstimecmp_int:               cross priv_mode_m, csrrw, vstimecmp_low, vstimecmp_arm, hideleg_vstip, hie_vstie_one, stce_pair_ones;
    `endif
endgroup

`ifdef H_SUPPORTED
    `undef SSTCSM_STCE_PAIR
    `undef SSTCSM_TM_PAIR
    `undef SSTCSM_VSTIMECMP
    `undef SSTCSM_HTIMEDELTA
`endif

function void sstcsm_sample(int hart, int issue, ins_t ins);
    SstcSm_cg.sample(ins);
endfunction
