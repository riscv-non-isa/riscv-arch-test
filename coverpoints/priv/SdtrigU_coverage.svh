///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////
`define COVER_SDTRIGU

// mcause/scause = 3 written by a trap on this record (not by a CSR instruction naming xcause, and not an ebreak)
function automatic logic sdtrigu_bp_taken(ins_t ins);
    logic [11:0] cause = ins.current.csr_wb[CSR_SCAUSE] ? CSR_SCAUSE : CSR_MCAUSE;
    return ins.current.csr_wb[cause] && ins.current.csr[cause] == 3 &&
           !(ins.current.insn[6:0] == 7'b1110011 && ins.current.insn[14:12] != 3'b000 && ins.current.insn[31:20] == cause) &&
           ins.current.insn != EBREAK && !(ins.current.insn[1:0] != 2'b11 && ins.current.insn[15:0] == C_EBREAK[15:0]);
endfunction

covergroup SdtrigU_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    // Triggers are armed in M through T-SBI; this covers the type of the trigger selected when a breakpoint is
    // taken from U-mode. itrigger/etrigger are left out: in these tests (medeleg[3] = 1) they are suppressed on
    // harts that use the interrupt enables and fire into M on harts that use tcontrol, so neither outcome is a bin.
    bp_type: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (sdtrigu_bp_taken(ins)) {
        bins icount    = {4'd3};
        bins mcontrol6 = {4'd6};
    }

    // main coverpoints
    cp_breakpoint_u: cross priv_mode_u, triggernum, bp_type;  // NTRIG * 2 types; handled in S (medeleg[3] = 1) or M (tcontrol)
endgroup

function void sdtrigu_sample(int hart, int issue, ins_t ins);
    SdtrigU_cg.sample(ins);
endfunction
