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


`define COVER_SSTCS


covergroup SstcS_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"


    // building blocks for the main coverpoints

    stimecmp_zero: coverpoint ins.current.csr[CSR_STIMECMP] {
        bins zero = {0};
    }
    // sstatus_sie uses ins.current because SIE is set before the sample and is not
    // cleared by hardware until the interrupt is actually taken (which happens after the sample).
    sstatus_sie: coverpoint ins.current.csr[CSR_SSTATUS][1];
    sie_stie: coverpoint ins.current.csr[CSR_SIE][5];
    mcounteren_tm: coverpoint ins.current.csr[CSR_MCOUNTEREN][1];
    `ifdef S_SUPPORTED
        scounteren_tm: coverpoint ins.current.csr[CSR_SCOUNTEREN][1];
    `endif
    `ifdef UDB_MXLEN_64
        menvcfg_stce: coverpoint ins.current.csr[CSR_MENVCFG][63];
    `else
        menvcfg_stce: coverpoint ins.current.csr[CSR_MENVCFGH][31];
    `endif
    csrr: coverpoint ins.current.insn[6:0] {
        bins csrr = {7'b1110011};
    }
    read_stimecmp: coverpoint ins.current.insn[31:20] {
        bins read_stimecmp = {CSR_STIMECMP};
    }
    sip_stip_one: coverpoint ins.current.csr[CSR_SIP][5]{
        bins one = {1};
    }

    // main coverpoints
    // mideleg.STI stays at its boot value of 1 and mcounteren.TM=1; the delegation cross is in SstcSm
    cp_supervisor_sti: cross priv_mode_s, menvcfg_stce, sstatus_sie, sie_stie, stimecmp_zero;
    cp_supervisor_tm:   cross priv_mode_s, csrr, read_stimecmp, mcounteren_tm;
    cp_supervisor_stce: cross priv_mode_s, csrr, read_stimecmp, menvcfg_stce;

    cp_user_sti:        cross priv_mode_u, menvcfg_stce, sstatus_sie, sie_stie, sip_stip_one {
        // With Sstc disabled (STCE=0), stimecmp cannot raise STIP; legacy mip.STIP writes
        // are not exercised here, so sip.STIP=1 is unreachable when STCE=0.
        ignore_bins stce_disabled = binsof(menvcfg_stce) intersect {0} && binsof(sip_stip_one) intersect {1};
    }
    `ifdef S_SUPPORTED
        cp_user_tm:     cross priv_mode_u, csrr, read_stimecmp, mcounteren_tm, scounteren_tm;
    `else
        cp_user_tm:     cross priv_mode_u, csrr, read_stimecmp, mcounteren_tm;
    `endif
    cp_user_stce:       cross priv_mode_u, csrr, read_stimecmp, menvcfg_stce;

    // also read STIMECMPH for RV32
    `ifdef UDB_MXLEN_32
        read_stimecmph: coverpoint ins.current.insn[31:20] {
            bins read_stimecmp = {CSR_STIMECMPH};
        }
        cp_supervisor_tm_h:   cross priv_mode_s, csrr, read_stimecmph, mcounteren_tm;
        cp_supervisor_stce_h: cross priv_mode_s, csrr, read_stimecmph, menvcfg_stce;

        `ifdef S_SUPPORTED
            cp_user_tm_h:     cross priv_mode_u, csrr, read_stimecmph, mcounteren_tm, scounteren_tm;
        `else
            cp_user_tm_h:     cross priv_mode_u, csrr, read_stimecmph, mcounteren_tm;
        `endif
        cp_user_stce_h:       cross priv_mode_u, csrr, read_stimecmph, menvcfg_stce;

    `endif

endgroup


function void sstcs_sample(int hart, int issue, ins_t ins);
    SstcS_cg.sample(ins);
endfunction
