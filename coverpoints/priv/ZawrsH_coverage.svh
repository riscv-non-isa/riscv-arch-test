///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// SPDX-License-Identifier: Apache-2.0
///////////////////////////////////////////////////////////////////////////////////////////

`define COVER_ZAWRSH
covergroup ZawrsH_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"

    wrs_nto: coverpoint ins.current.insn {
        bins wrs_nto = {WRS_NTO};
    }

    wrs_sto: coverpoint ins.current.insn {
        bins wrs_sto = {WRS_STO};
    }

    wrs_ops: coverpoint ins.current.insn {
        bins wrs_nto = {WRS_NTO};
        bins wrs_sto = {WRS_STO};
    }

    sc_w: coverpoint ins.prev.insn {
        wildcard bins sc_w = {SC_W};
    }

    lr_w: coverpoint ins.prev.insn {
        wildcard bins lr_w = {LR_W};
    }

    mstatus_tw: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "tw")[0] {
        bins zero = {0};
        bins one = {1};
    }

    mstatus_tw_zero: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "tw")[0] {
        bins zero = {0};
    }

    mstatus_tw_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "tw")[0] {
        bins one = {1};
    }

    hstatus_vtw: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "hstatus", "vtw")[0] {
        bins zero = {0};
        bins one = {1};
    }

    hstatus_vtw_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "hstatus", "vtw")[0] {
        bins one = {1};
    }

    hedeleg_illegal: coverpoint get_csr_val(
        ins.hart, ins.issue, `SAMPLE_BEFORE, "hedeleg", "deleg"
    )[2] {
        bins hs = {0};
        bins vs = {1};
    }

    hedeleg_illegal_zero: coverpoint get_csr_val(
        ins.hart, ins.issue, `SAMPLE_BEFORE, "hedeleg", "deleg"
    )[2] {
        bins zero = {0};
    }

    vsstatus_sie_zero: coverpoint get_csr_val(
        ins.hart, ins.issue, `SAMPLE_BEFORE, "vsstatus", "sie"
    )[0] {
        bins zero = {0};
    }

    vsie_ssie_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vsie", "ssie")[0] {
        bins one = {1};
    }

    vsip_ssip_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vsip", "ssip")[0] {
        bins one = {1};
    }

    hideleg_vssip_one: coverpoint get_csr_val(
        ins.hart, ins.issue, `SAMPLE_BEFORE, "hideleg", "vssip"
    )[0] {
        bins one = {1};
    }

    cp_wrs_no_res_h: cross priv_mode_vs_vu, mstatus_tw, hstatus_vtw, wrs_ops, sc_w;

    cp_wrs_sto_timeout_h: cross priv_mode_vs_vu, mstatus_tw, hstatus_vtw, wrs_sto, lr_w;

    cp_wrs_nto_vtw_h: cross
        priv_mode_vs_vu,
        mstatus_tw_zero,
        hstatus_vtw_one,
        hedeleg_illegal_zero,
        wrs_nto,
        lr_w;

    cp_wrs_nto_tw_h: cross
        priv_mode_vs_vu,
        mstatus_tw_one,
        hstatus_vtw,
        hedeleg_illegal,
        wrs_nto,
        lr_w;

    cp_wrs_interrupt_h: cross
        priv_mode_vs,
        mstatus_tw,
        hstatus_vtw,
        vsstatus_sie_zero,
        vsie_ssie_one,
        vsip_ssip_one,
        hideleg_vssip_one,
        wrs_ops,
        lr_w;

endgroup

function void zawrsh_sample(int hart, int issue, ins_t ins);
    ZawrsH_cg.sample(ins);
endfunction
