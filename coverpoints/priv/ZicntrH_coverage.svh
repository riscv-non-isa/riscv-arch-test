///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Counter access and htimedelta in HS, VS, U and VU modes.
// Written: Julia Gong jgong@g.hmc.edu November 10, 2025
//
// Copyright (C) 2025 Harvey Mudd College
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_ZICNTRH
covergroup ZicntrH_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"

    // The counter accessed: one that exists and whose mcounteren, hcounteren and scounteren bits are writable
    counter: coverpoint ins.current.insn[31:20] {
        `ifdef UDB_MCOUNTENABLE_EN_0 `ifdef UDB_HCOUNTENABLE_EN_0 `ifdef UDB_SCOUNTENABLE_EN_0
            bins cycle_csr = {CSR_CYCLE};
            `ifdef UDB_MXLEN_32
                bins cycleh_csr = {CSR_CYCLEH};
            `endif
        `endif `endif `endif
        `ifdef UDB_MCOUNTENABLE_EN_1 `ifdef UDB_HCOUNTENABLE_EN_1 `ifdef UDB_SCOUNTENABLE_EN_1
            bins time_csr = {CSR_TIME};
            `ifdef UDB_MXLEN_32
                bins timeh_csr = {CSR_TIMEH};
            `endif
        `endif `endif `endif
        `ifdef UDB_MCOUNTENABLE_EN_2 `ifdef UDB_HCOUNTENABLE_EN_2 `ifdef UDB_SCOUNTENABLE_EN_2
            bins instret_csr = {CSR_INSTRET};
            `ifdef UDB_MXLEN_32
                bins instreth_csr = {CSR_INSTRETH};
            `endif
        `endif `endif `endif
        `ifdef ZIHPM_SUPPORTED
            `ifdef UDB_HPM_COUNTER_EN_3 `ifdef UDB_MCOUNTENABLE_EN_3 `ifdef UDB_HCOUNTENABLE_EN_3 `ifdef UDB_SCOUNTENABLE_EN_3
                bins hpmcounter3_csr = {CSR_HPMCOUNTER3};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter3h_csr = {CSR_HPMCOUNTER3H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_4 `ifdef UDB_MCOUNTENABLE_EN_4 `ifdef UDB_HCOUNTENABLE_EN_4 `ifdef UDB_SCOUNTENABLE_EN_4
                bins hpmcounter4_csr = {CSR_HPMCOUNTER4};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter4h_csr = {CSR_HPMCOUNTER4H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_5 `ifdef UDB_MCOUNTENABLE_EN_5 `ifdef UDB_HCOUNTENABLE_EN_5 `ifdef UDB_SCOUNTENABLE_EN_5
                bins hpmcounter5_csr = {CSR_HPMCOUNTER5};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter5h_csr = {CSR_HPMCOUNTER5H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_6 `ifdef UDB_MCOUNTENABLE_EN_6 `ifdef UDB_HCOUNTENABLE_EN_6 `ifdef UDB_SCOUNTENABLE_EN_6
                bins hpmcounter6_csr = {CSR_HPMCOUNTER6};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter6h_csr = {CSR_HPMCOUNTER6H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_7 `ifdef UDB_MCOUNTENABLE_EN_7 `ifdef UDB_HCOUNTENABLE_EN_7 `ifdef UDB_SCOUNTENABLE_EN_7
                bins hpmcounter7_csr = {CSR_HPMCOUNTER7};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter7h_csr = {CSR_HPMCOUNTER7H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_8 `ifdef UDB_MCOUNTENABLE_EN_8 `ifdef UDB_HCOUNTENABLE_EN_8 `ifdef UDB_SCOUNTENABLE_EN_8
                bins hpmcounter8_csr = {CSR_HPMCOUNTER8};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter8h_csr = {CSR_HPMCOUNTER8H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_9 `ifdef UDB_MCOUNTENABLE_EN_9 `ifdef UDB_HCOUNTENABLE_EN_9 `ifdef UDB_SCOUNTENABLE_EN_9
                bins hpmcounter9_csr = {CSR_HPMCOUNTER9};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter9h_csr = {CSR_HPMCOUNTER9H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_10 `ifdef UDB_MCOUNTENABLE_EN_10 `ifdef UDB_HCOUNTENABLE_EN_10 `ifdef UDB_SCOUNTENABLE_EN_10
                bins hpmcounter10_csr = {CSR_HPMCOUNTER10};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter10h_csr = {CSR_HPMCOUNTER10H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_11 `ifdef UDB_MCOUNTENABLE_EN_11 `ifdef UDB_HCOUNTENABLE_EN_11 `ifdef UDB_SCOUNTENABLE_EN_11
                bins hpmcounter11_csr = {CSR_HPMCOUNTER11};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter11h_csr = {CSR_HPMCOUNTER11H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_12 `ifdef UDB_MCOUNTENABLE_EN_12 `ifdef UDB_HCOUNTENABLE_EN_12 `ifdef UDB_SCOUNTENABLE_EN_12
                bins hpmcounter12_csr = {CSR_HPMCOUNTER12};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter12h_csr = {CSR_HPMCOUNTER12H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_13 `ifdef UDB_MCOUNTENABLE_EN_13 `ifdef UDB_HCOUNTENABLE_EN_13 `ifdef UDB_SCOUNTENABLE_EN_13
                bins hpmcounter13_csr = {CSR_HPMCOUNTER13};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter13h_csr = {CSR_HPMCOUNTER13H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_14 `ifdef UDB_MCOUNTENABLE_EN_14 `ifdef UDB_HCOUNTENABLE_EN_14 `ifdef UDB_SCOUNTENABLE_EN_14
                bins hpmcounter14_csr = {CSR_HPMCOUNTER14};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter14h_csr = {CSR_HPMCOUNTER14H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_15 `ifdef UDB_MCOUNTENABLE_EN_15 `ifdef UDB_HCOUNTENABLE_EN_15 `ifdef UDB_SCOUNTENABLE_EN_15
                bins hpmcounter15_csr = {CSR_HPMCOUNTER15};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter15h_csr = {CSR_HPMCOUNTER15H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_16 `ifdef UDB_MCOUNTENABLE_EN_16 `ifdef UDB_HCOUNTENABLE_EN_16 `ifdef UDB_SCOUNTENABLE_EN_16
                bins hpmcounter16_csr = {CSR_HPMCOUNTER16};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter16h_csr = {CSR_HPMCOUNTER16H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_17 `ifdef UDB_MCOUNTENABLE_EN_17 `ifdef UDB_HCOUNTENABLE_EN_17 `ifdef UDB_SCOUNTENABLE_EN_17
                bins hpmcounter17_csr = {CSR_HPMCOUNTER17};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter17h_csr = {CSR_HPMCOUNTER17H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_18 `ifdef UDB_MCOUNTENABLE_EN_18 `ifdef UDB_HCOUNTENABLE_EN_18 `ifdef UDB_SCOUNTENABLE_EN_18
                bins hpmcounter18_csr = {CSR_HPMCOUNTER18};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter18h_csr = {CSR_HPMCOUNTER18H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_19 `ifdef UDB_MCOUNTENABLE_EN_19 `ifdef UDB_HCOUNTENABLE_EN_19 `ifdef UDB_SCOUNTENABLE_EN_19
                bins hpmcounter19_csr = {CSR_HPMCOUNTER19};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter19h_csr = {CSR_HPMCOUNTER19H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_20 `ifdef UDB_MCOUNTENABLE_EN_20 `ifdef UDB_HCOUNTENABLE_EN_20 `ifdef UDB_SCOUNTENABLE_EN_20
                bins hpmcounter20_csr = {CSR_HPMCOUNTER20};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter20h_csr = {CSR_HPMCOUNTER20H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_21 `ifdef UDB_MCOUNTENABLE_EN_21 `ifdef UDB_HCOUNTENABLE_EN_21 `ifdef UDB_SCOUNTENABLE_EN_21
                bins hpmcounter21_csr = {CSR_HPMCOUNTER21};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter21h_csr = {CSR_HPMCOUNTER21H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_22 `ifdef UDB_MCOUNTENABLE_EN_22 `ifdef UDB_HCOUNTENABLE_EN_22 `ifdef UDB_SCOUNTENABLE_EN_22
                bins hpmcounter22_csr = {CSR_HPMCOUNTER22};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter22h_csr = {CSR_HPMCOUNTER22H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_23 `ifdef UDB_MCOUNTENABLE_EN_23 `ifdef UDB_HCOUNTENABLE_EN_23 `ifdef UDB_SCOUNTENABLE_EN_23
                bins hpmcounter23_csr = {CSR_HPMCOUNTER23};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter23h_csr = {CSR_HPMCOUNTER23H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_24 `ifdef UDB_MCOUNTENABLE_EN_24 `ifdef UDB_HCOUNTENABLE_EN_24 `ifdef UDB_SCOUNTENABLE_EN_24
                bins hpmcounter24_csr = {CSR_HPMCOUNTER24};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter24h_csr = {CSR_HPMCOUNTER24H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_25 `ifdef UDB_MCOUNTENABLE_EN_25 `ifdef UDB_HCOUNTENABLE_EN_25 `ifdef UDB_SCOUNTENABLE_EN_25
                bins hpmcounter25_csr = {CSR_HPMCOUNTER25};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter25h_csr = {CSR_HPMCOUNTER25H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_26 `ifdef UDB_MCOUNTENABLE_EN_26 `ifdef UDB_HCOUNTENABLE_EN_26 `ifdef UDB_SCOUNTENABLE_EN_26
                bins hpmcounter26_csr = {CSR_HPMCOUNTER26};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter26h_csr = {CSR_HPMCOUNTER26H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_27 `ifdef UDB_MCOUNTENABLE_EN_27 `ifdef UDB_HCOUNTENABLE_EN_27 `ifdef UDB_SCOUNTENABLE_EN_27
                bins hpmcounter27_csr = {CSR_HPMCOUNTER27};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter27h_csr = {CSR_HPMCOUNTER27H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_28 `ifdef UDB_MCOUNTENABLE_EN_28 `ifdef UDB_HCOUNTENABLE_EN_28 `ifdef UDB_SCOUNTENABLE_EN_28
                bins hpmcounter28_csr = {CSR_HPMCOUNTER28};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter28h_csr = {CSR_HPMCOUNTER28H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_29 `ifdef UDB_MCOUNTENABLE_EN_29 `ifdef UDB_HCOUNTENABLE_EN_29 `ifdef UDB_SCOUNTENABLE_EN_29
                bins hpmcounter29_csr = {CSR_HPMCOUNTER29};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter29h_csr = {CSR_HPMCOUNTER29H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_30 `ifdef UDB_MCOUNTENABLE_EN_30 `ifdef UDB_HCOUNTENABLE_EN_30 `ifdef UDB_SCOUNTENABLE_EN_30
                bins hpmcounter30_csr = {CSR_HPMCOUNTER30};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter30h_csr = {CSR_HPMCOUNTER30H};
                `endif
            `endif `endif `endif `endif
            `ifdef UDB_HPM_COUNTER_EN_31 `ifdef UDB_MCOUNTENABLE_EN_31 `ifdef UDB_HCOUNTENABLE_EN_31 `ifdef UDB_SCOUNTENABLE_EN_31
                bins hpmcounter31_csr = {CSR_HPMCOUNTER31};
                `ifdef UDB_MXLEN_32
                    bins hpmcounter31h_csr = {CSR_HPMCOUNTER31H};
                `endif
            `endif `endif `endif `endif
        `endif
    }

    // The enable bit of the accessed counter in each counter-enable register
    mcounteren_bit: coverpoint ins.current.csr[CSR_MCOUNTEREN][ins.current.insn[24:20]] {
        bins disabled = {0};
        bins enabled  = {1};
    }
    hcounteren_bit: coverpoint ins.current.csr[CSR_HCOUNTEREN][ins.current.insn[24:20]] {
        bins disabled = {0};
        bins enabled  = {1};
    }
    scounteren_bit: coverpoint ins.current.csr[CSR_SCOUNTEREN][ins.current.insn[24:20]] {
        bins disabled = {0};
        bins enabled  = {1};
    }
    // The same bits held while another counter-enable register is walked
    mcounteren_one: coverpoint ins.current.csr[CSR_MCOUNTEREN][ins.current.insn[24:20]] {
        bins one = {1};
    }
    hcounteren_one: coverpoint ins.current.csr[CSR_HCOUNTEREN][ins.current.insn[24:20]] {
        bins one = {1};
    }
    hcounteren_zero: coverpoint ins.current.csr[CSR_HCOUNTEREN][ins.current.insn[24:20]] {
        bins zero = {0};
    }
    scounteren_one: coverpoint ins.current.csr[CSR_SCOUNTEREN][ins.current.insn[24:20]] {
        bins one = {1};
    }
    scounteren_zero: coverpoint ins.current.csr[CSR_SCOUNTEREN][ins.current.insn[24:20]] {
        bins zero = {0};
    }

    csraccess: coverpoint ins.current.insn {
        wildcard bins csrr = {CSRR};
        wildcard bins csrw = {CSRW};
    }

    // htimedelta = {0, 2^30, 2^32-1, 2^60, -1, -2^30, -2^60} while time and timeh are read
    csrr_time: coverpoint ins.current.insn[31:20] iff (ins.current.insn ==? CSRR) {
        bins read_time = {CSR_TIME};
        `ifdef UDB_MXLEN_32
            bins read_timeh = {CSR_TIMEH};
        `endif
    }
    `ifdef UDB_MXLEN_64
        htimedelta: coverpoint ins.current.csr[CSR_HTIMEDELTA] {
    `else
        htimedelta: coverpoint {ins.current.csr[CSR_HTIMEDELTAH][31:0], ins.current.csr[CSR_HTIMEDELTA][31:0]} {
    `endif
        bins zero       = {64'h0000000000000000};
        bins pos_2p30   = {64'h0000000040000000};
        bins pos_2p32m1 = {64'h00000000FFFFFFFF};
        bins pos_2p60   = {64'h1000000000000000};
        bins neg_1      = {64'hFFFFFFFFFFFFFFFF};
        bins neg_2p30   = {64'hFFFFFFFFC0000000};
        bins neg_2p60   = {64'hF000000000000000};
    }

    // HS-mode
    cp_scounteren_access_hs: cross csraccess, counter, scounteren_bit, mcounteren_one, hcounteren_zero, priv_mode_hs;
    cp_delta_hs: cross csrr_time, htimedelta, priv_mode_hs;

    // VS-mode
    cp_mcounteren_access_vs: cross csraccess, counter, mcounteren_bit, hcounteren_one, scounteren_zero, priv_mode_vs;
    cp_mcounteren_access_vs_h0: cross csraccess, counter, mcounteren_bit, hcounteren_zero, scounteren_zero, priv_mode_vs;
    cp_hcounteren_access_vs: cross csraccess, counter, hcounteren_bit, mcounteren_one, scounteren_zero, priv_mode_vs;
    cp_delta_vs: cross csrr_time, htimedelta, priv_mode_vs;

    // U-mode
    cp_scounteren_access_u: cross csraccess, counter, scounteren_bit, mcounteren_one, hcounteren_zero, priv_mode_u;
    cp_delta_u: cross csrr_time, htimedelta, priv_mode_u;

    // VU-mode
    cp_mcounteren_access_vu: cross csraccess, counter, mcounteren_bit, hcounteren_one, scounteren_one, priv_mode_vu;
    cp_mcounteren_access_vu_hs0: cross csraccess, counter, mcounteren_bit, hcounteren_zero, scounteren_zero, priv_mode_vu;
    cp_hcounteren_access_vu: cross csraccess, counter, hcounteren_bit, mcounteren_one, scounteren_one, priv_mode_vu;
    cp_scounteren_access_vu: cross csraccess, counter, scounteren_bit, mcounteren_one, hcounteren_one, priv_mode_vu;
    cp_delta_vu: cross csrr_time, htimedelta, priv_mode_vu;
endgroup

function void zicntrh_sample(int hart, int issue, ins_t ins);
    ZicntrH_cg.sample(ins);
endfunction
