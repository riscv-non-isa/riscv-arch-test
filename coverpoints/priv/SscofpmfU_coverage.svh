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

`define COVER_SSCOFPMFU

covergroup SscofpmfU_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "RISCV_coverage_sscofpmf.svh"

    sstatus_sie_clear: coverpoint ins.current.csr[CSR_SSTATUS][1] {
            bins zero = {0};
    }

    `ifdef S_SUPPORTED

        sstatus_sie_set: coverpoint ins.current.csr[CSR_SSTATUS][1] {
                bins one = {1};
        }
        sie_lcofi: coverpoint ins.current.csr[CSR_SIE][13] {}
        sip_lcofi: coverpoint ins.current.csr[CSR_SIP][13] {}
        sip_lcofi_one: coverpoint ins.current.csr[CSR_SIP][13] {
                bins one = {1};
        }

        // The interrupt fires on the mret that enters U, so the trap record is the
        // mret, retired in M -- priv_mode_u (ins.prev.mode) is false for it. Sample
        // ins.current.mode instead, as cp_user_sei_handled_s does via priv_mode_s_after
        // in InterruptsS_coverage.svh, to catch that instruction.
        priv_mode_u_after: coverpoint {ins.current.mode_virt, ins.current.mode} {
                type_option.weight = 0;
                bins U_mode = {3'b000};
        }
    `endif

    cp_uinh_inhibits_umode:    cross priv_mode_u, mhpmevent_xinh_combos, mhpmevent_of_zero;
    `ifdef S_SUPPORTED

        cp_of_set_on_overflow: cross priv_mode_u, sip_lcofi_one, mie_clear, mhpmevent_of_one, mhpmevent_inhibits_pattern_state;
    `else
        cp_of_set_on_overflow: cross priv_mode_u, lcofi_ip_one, mie_clear, mhpmevent_of_one, mhpmevent_inhibits_pattern_state;
    `endif
    `ifdef UDB_MXLEN_64
        cp_overflow_hw_only:   cross priv_mode_u, mip_clear, mie_clear, mhpmcounter_extreme_state, mhpmevent_all_zero;
    `else
        cp_overflow_hw_only:   cross priv_mode_u, mip_clear, mie_clear, mhpmcounter_extreme_state, mhpmevent_all_zero, mhpmevent_base_zero;
    `endif
    `ifdef S_SUPPORTED

        cp_lcofip_hw_only:     cross priv_mode_u, mhpmevent_of, sip_lcofi;
    `else
        cp_lcofip_hw_only:     cross priv_mode_u, mhpmevent_of, lcofi_ip;
    `endif
    `ifdef S_SUPPORTED
        cp_lcofi_sip_u: cross priv_mode_u_after, sstatus_sie_set, sie_lcofi, sip_lcofi;
    `else
        cp_lcofi_sip_u: cross priv_mode_u, mstatus_sie_set, lcofi_ie, lcofi_ip;
    `endif

endgroup

function void sscofpmfu_sample(int hart, int issue, ins_t ins);
    SscofpmfU_cg.sample(ins);
endfunction
