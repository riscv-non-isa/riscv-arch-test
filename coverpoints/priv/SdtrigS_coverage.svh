///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////
`define COVER_SDTRIGS

// mcause/scause = 3 written by a trap on this record (not by a CSR instruction naming xcause, and not an ebreak)
function automatic logic sdtrigs_bp_taken(ins_t ins);
    logic [11:0] cause = ins.current.csr_wb[CSR_SCAUSE] ? CSR_SCAUSE : CSR_MCAUSE;
    return ins.current.csr_wb[cause] && ins.current.csr[cause] == 3 &&
           !(ins.current.insn[6:0] == 7'b1110011 && ins.current.insn[14:12] != 3'b000 && ins.current.insn[31:20] == cause) &&
           ins.current.insn != EBREAK && !(ins.current.insn[1:0] != 2'b11 && ins.current.insn[15:0] == C_EBREAK[15:0]);
endfunction

// illegal-instruction trap (mcause/scause = 2) taken on this record; the instruction raising it does not name xcause
function automatic logic sdtrigs_illegal_taken(ins_t ins);
    logic [11:0] cause = ins.current.csr_wb[CSR_SCAUSE] ? CSR_SCAUSE : CSR_MCAUSE;
    return ins.current.csr_wb[cause] && ins.current.csr[cause] == 2;
endfunction

// cp_mcontrol6_priv_bits_s: outcome of the sw that an mcontrol6 store trigger watches.
//   1: the trigger's s bit is set and the breakpoint was taken (into S, or into M on harts that use tcontrol)
//   2: s is clear, m or u is set, and no breakpoint was taken    0: anything else
function automatic logic [1:0] sdtrigs_priv_bits_outcome(ins_t ins);
    logic [XLEN-1:0] tdata1 = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1");
    if (tdata1[4] && sdtrigs_bp_taken(ins)) return 2'd1;
    if (!tdata1[4] && (tdata1[6] || tdata1[3]) && !sdtrigs_bp_taken(ins)) return 2'd2;
    return 2'd0;
endfunction

covergroup SdtrigS_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    // Triggers are armed in M through T-SBI; this covers the type of the trigger selected when a breakpoint is
    // taken from S-mode. itrigger/etrigger are left out: in these tests (medeleg[3] = 1) they are suppressed on
    // harts that use the interrupt enables and fire into M on harts that use tcontrol, so neither outcome is a bin.
    bp_type: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (sdtrigs_bp_taken(ins)) {
        bins icount    = {4'd3};
        bins mcontrol6 = {4'd6};
    }

    // a sw to the address watched by an mcontrol6 store trigger (select = 0, store = 1)
    priv_bits_sw: coverpoint ins.current.insn iff (
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] == 4'd6 &&
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "store")[0] &&
            !get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "select")[0] &&
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata2", "tdata2") == ins.current.rs1_val + ins.current.imm) {
        type_option.weight = 0;
        wildcard bins sw = {SW};
    }
    priv_bits_outcome: coverpoint sdtrigs_priv_bits_outcome(ins) {
        type_option.weight = 0;
        bins own_fired      = {2'd1};
        bins others_no_fire = {2'd2};
    }

    // a direct S-mode csrr or csrw of an M-level trigger CSR, which raises an illegal-instruction exception
    // (into S when medeleg[2] = 1, else into M). scontext and hcontext are S/H-level CSRs.
    csr_trigger_mlevel: coverpoint ins.current.insn[31:20] {
        type_option.weight = 0;
        bins tselect = {CSR_TSELECT};
        bins tdata1  = {CSR_TDATA1};
        bins tdata2  = {CSR_TDATA2};
        bins tdata3  = {CSR_TDATA3};
        bins tinfo   = {CSR_TINFO};
        `ifdef UDB_TCONTROL_AVAILABLE
            bins tcontrol = {CSR_TCONTROL};
        `endif
        `ifdef UDB_MCONTEXT_AVAILABLE
            bins mcontext = {CSR_MCONTEXT};
        `endif
    }
    csr_read_write: coverpoint ins.current.insn {
        type_option.weight = 0;
        wildcard bins csrr = {CSRR};
        wildcard bins csrw = {CSRW};
    }
    illegal_insn_trap: coverpoint sdtrigs_illegal_taken(ins) {
        type_option.weight = 0;
        bins illegal = {1'b1};
    }

    // main coverpoints
    cp_csr_access_trap_s: cross priv_mode_s, csr_read_write, csr_trigger_mlevel, illegal_insn_trap;  // 2 accesses * implemented M-level trigger CSRs (5-7)
    cp_breakpoint_s: cross priv_mode_s, triggernum, bp_type;  // NTRIG * 2 types; handled in S (medeleg[3] = 1) or M (tcontrol)
    cp_mcontrol6_priv_bits_s: cross priv_mode_s, triggernum, priv_bits_sw, priv_bits_outcome;  // NTRIG * 2 outcomes
endgroup

function void sdtrigs_sample(int hart, int issue, ins_t ins);
    SdtrigS_cg.sample(ins);
endfunction
