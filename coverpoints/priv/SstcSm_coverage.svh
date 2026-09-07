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

    stimecmp_zero: coverpoint ins.current.csr[CSR_STIMECMP] {
        bins zero = {0};
    }
    // mstatus_mie uses ins.prev because the sample instruction is the stimecmp write that
    // triggers the interrupt; hardware clears MIE in ins.current when it takes the trap.
    // Sampling prev captures MIE as it was programmed before the interrupt fires.

    mstatus_mie_one: coverpoint ins.prev.csr[CSR_MSTATUS][3] {
        bins one = {1};
    }
    mideleg_sti: coverpoint ins.current.csr[CSR_MIDELEG][5];
    mie_stie: coverpoint ins.current.csr[CSR_MIE][5];
    mcounteren_tm: coverpoint ins.current.csr[CSR_MCOUNTEREN][1];
    `ifdef UDB_MXLEN_64
        menvcfg_stce: coverpoint ins.current.csr[CSR_MENVCFG][63];
        menvcfg_stce_one: coverpoint ins.current.csr[CSR_MENVCFG][63] {
            bins one = {1};
        }
    `else
        menvcfg_stce: coverpoint ins.current.csr[CSR_MENVCFGH][31];
        menvcfg_stce_one: coverpoint ins.current.csr[CSR_MENVCFGH][31] {
            bins one = {1};
        }
    `endif
    csrr: coverpoint ins.current.insn[6:0] {
        bins csrr = {7'b1110011};
    }
    read_stimecmp: coverpoint ins.current.insn[31:20] {
        bins read_stimecmp = {CSR_STIMECMP};
    }

    // main coverpoints
    cp_machine_sti:     cross priv_mode_m, menvcfg_stce_one, mstatus_mie_one, mideleg_sti, mie_stie, stimecmp_zero;
    cp_machine_tm:      cross priv_mode_m, csrr, read_stimecmp, mcounteren_tm;
    cp_machine_stce:    cross priv_mode_m, csrr, read_stimecmp, menvcfg_stce;

    // also read STIMECMPH for RV32
    `ifdef UDB_MXLEN_32
        read_stimecmph: coverpoint ins.current.insn[31:20] {
            bins read_stimecmp = {CSR_STIMECMPH};
        }

        cp_machine_tm_h:      cross priv_mode_m, csrr, read_stimecmph, mcounteren_tm;
        cp_machine_stce_h:    cross priv_mode_m, csrr, read_stimecmph, menvcfg_stce;
    `endif

endgroup


function void sstcsm_sample(int hart, int issue, ins_t ins);
    SstcSm_cg.sample(ins);
endfunction
