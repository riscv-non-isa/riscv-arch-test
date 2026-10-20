///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Sdtrig hypervisor tests: triggers in VS-mode and VU-mode, hcontext, and the H-only textra selects.
// Written: David_Harris@hmc.edu 19 October 2026
//
// Copyright (C) 2026 Harvey Mudd College
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_SDTRIGH

// mstateen0 and hstateen0 CONTEXT are in the high-half CSRs on RV32
`ifdef UDB_MXLEN_64
    `define SDTRIGH_MSTATEEN0_HI "mstateen0"
    `define SDTRIGH_HSTATEEN0_HI "hstateen0"
`else
    `define SDTRIGH_MSTATEEN0_HI "mstateen0h"
    `define SDTRIGH_HSTATEEN0_HI "hstateen0h"
`endif

// addi x0, x0, 0x5a: the instruction an icount trigger armed with count = 1 is taken on, which executes when it does
// not fire
`define SDTRIGH_MARKER 32'h05a00013

// tdata1 mode bits: the guest mode's own bit, and every other mode bit
// mcontrol6: vs 24, vu 23, m 6, s 4, u 3.  icount: vs 26, vu 25, m 9, s 7, u 6.  itrigger/etrigger: vs 12, vu 11,
// m 9, s 7, u 6.
`define SDTRIGH_MC6_OTHERS_VS ((1 << 23) | (1 << 6) | (1 << 4) | (1 << 3))
`define SDTRIGH_MC6_OTHERS_VU ((1 << 24) | (1 << 6) | (1 << 4) | (1 << 3))
`define SDTRIGH_ICOUNT_OTHERS_VS ((1 << 25) | (1 << 9) | (1 << 7) | (1 << 6))
`define SDTRIGH_ICOUNT_OTHERS_VU ((1 << 26) | (1 << 9) | (1 << 7) | (1 << 6))
`define SDTRIGH_IETRIGGER_OTHERS_VS ((1 << 11) | (1 << 9) | (1 << 7) | (1 << 6))
`define SDTRIGH_IETRIGGER_OTHERS_VU ((1 << 12) | (1 << 9) | (1 << 7) | (1 << 6))

// 1 when a trap on this record wrote the xcause CSR at addr (a CSR instruction that names it does not count)
function automatic logic sdtrigh_trap_wrote(ins_t ins, logic [11:0] addr);
    return ins.current.csr_wb[addr] &&
           !(ins.current.insn[6:0] == 7'b1110011 && ins.current.insn[14:12] != 3'b000 && ins.current.insn[31:20] == addr);
endfunction

// 1 when a trigger breakpoint (cause 3, not an ebreak) was taken into M, HS or VS on this record
function automatic logic sdtrigh_bp_taken(ins_t ins);
    if (ins.current.insn == EBREAK || (ins.current.insn[1:0] != 2'b11 && ins.current.insn[15:0] == C_EBREAK[15:0]))
        return 1'b0;
    return (sdtrigh_trap_wrote(ins, CSR_VSCAUSE) && ins.current.csr[CSR_VSCAUSE] == 3) ||
           (sdtrigh_trap_wrote(ins, CSR_SCAUSE) && ins.current.csr[CSR_SCAUSE] == 3) ||
           (sdtrigh_trap_wrote(ins, CSR_MCAUSE) && ins.current.csr[CSR_MCAUSE] == 3);
endfunction

// Outcome for the selected trigger, whose tdata1 has mode bit own and the other mode bits others:
//   1: own set, others clear, and a breakpoint was taken    2: own clear, others set, and no breakpoint    0: other
function automatic logic [1:0] sdtrigh_mode_outcome(ins_t ins, int own, logic [XLEN-1:0] others);
    logic [XLEN-1:0] tdata1 = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1");
    logic bp = sdtrigh_bp_taken(ins);
    if (tdata1[own] && (tdata1 & others) == '0 && bp) return 2'd1;
    if (!tdata1[own] && (tdata1 & others) == others && !bp) return 2'd2;
    return 2'd0;
endfunction

// {V, mode} the trap on this record was taken from: an interrupt taken on an mret record is taken in the mode the
// mret returns to
function automatic logic [2:0] sdtrigh_trap_origin(ins_t ins);
    logic mpv;
    `ifdef UDB_MXLEN_64
        mpv = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "mstatus")[39];
    `else
        mpv = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatush", "mstatush")[7];
    `endif
    if (ins.current.insn == MRET) return {mpv, 2'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "mpp"))};
    return {ins.prev.mode_virt, ins.prev.mode};
endfunction

// 1 when a trap with cause was taken into HS-mode on this record
function automatic logic sdtrigh_hs_trap(ins_t ins, logic [XLEN-1:0] cause);
    return sdtrigh_trap_wrote(ins, CSR_SCAUSE) && ins.current.csr[CSR_SCAUSE] == cause;
endfunction

// textra32/textra64 fields: textra64 mhvalue 63:51, mhselect 50:48, svalue 33:2, sselect 1:0;
//                           textra32 mhvalue 31:26, mhselect 25:23, svalue 17:2, sselect 1:0.
function automatic logic [2:0] sdtrigh_mhselect(logic [XLEN-1:0] t3);
    return 3'((t3 >> ((XLEN == 64) ? 48 : 23)) & 'h7);
endfunction
function automatic logic [1:0] sdtrigh_sselect(logic [XLEN-1:0] t3);
    return 2'(t3 & 'h3);
endfunction
// {mhvalue, mhselect[2]}: 14 bits on RV64, 7 on RV32
function automatic logic [13:0] sdtrigh_mhvalue_sel(logic [XLEN-1:0] t3);
    logic [12:0] mhvalue = 13'((XLEN == 64) ? ((t3 >> 51) & 'h1fff) : ((t3 >> 26) & 'h3f));
    return {mhvalue, sdtrigh_mhselect(t3)[2]};
endfunction
// mhselect = 1/5: {mhvalue, mhselect[2]} equals the low 7 (RV32) or 14 (RV64) bits of mcontext
function automatic logic sdtrigh_mctx_match(logic [XLEN-1:0] t3, logic [XLEN-1:0] mcontext);
    return sdtrigh_mhvalue_sel(t3) == 14'(mcontext & ((XLEN == 64) ? 'h3fff : 'h7f));
endfunction
// mhselect = 2/6: {mhvalue, mhselect[2]} equals hgatp.VMID (RV64 57:44, RV32 28:22)
function automatic logic sdtrigh_vmid_match(logic [XLEN-1:0] t3, logic [XLEN-1:0] hgatp);
    return sdtrigh_mhvalue_sel(t3) == 14'((XLEN == 64) ? ((hgatp >> 44) & 'h3fff) : ((hgatp >> 22) & 'h7f));
endfunction
// sselect = 2 in VS/VU-mode: the low ASIDMAX (RV64 16, RV32 9) bits of svalue equal vsatp.ASID
function automatic logic sdtrigh_vsatp_asid_match(logic [XLEN-1:0] t3, logic [XLEN-1:0] vsatp);
    return (XLEN == 64) ? (((t3 >> 2) & 'hffff) == ((vsatp >> 44) & 'hffff))
                        : (((t3 >> 2) & 'h1ff) == ((vsatp >> 22) & 'h1ff));
endfunction
// With an icount trigger selected: the marker, or the record that takes the breakpoint, which the trace puts on the
// counted instruction before the marker
function automatic logic sdtrigh_icount_point(ins_t ins);
    return get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] == 4'd3 &&
           (ins.current.insn == `SDTRIGH_MARKER || sdtrigh_bp_taken(ins));
endfunction
// 1: the context matches and a breakpoint was taken    2: it does not match and no breakpoint    0: other
function automatic logic [1:0] sdtrigh_textra_outcome(ins_t ins, logic match);
    logic bp = sdtrigh_bp_taken(ins);
    if (match && bp) return 2'd1;
    if (!match && !bp) return 2'd2;
    return 2'd0;
endfunction

covergroup SdtrigH_mcontrol6_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    // a sw to the address watched by an mcontrol6 store trigger (select = 0, store = 1)
    sw_watched: coverpoint ins.current.insn iff (
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] == 4'd6 &&
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "store")[0] &&
            !get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "select")[0] &&
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata2", "tdata2") == ins.current.rs1_val + ins.current.imm) {
        type_option.weight = 0;
        wildcard bins sw = {SW};
    }
    outcome_vs: coverpoint sdtrigh_mode_outcome(ins, 24, `SDTRIGH_MC6_OTHERS_VS) {
        type_option.weight = 0;
        bins own_fired      = {2'd1};
        bins others_no_fire = {2'd2};
    }
    outcome_vu: coverpoint sdtrigh_mode_outcome(ins, 23, `SDTRIGH_MC6_OTHERS_VU) {
        type_option.weight = 0;
        bins own_fired      = {2'd1};
        bins others_no_fire = {2'd2};
    }

    // main coverpoints
    cp_mcontrol6_vs: cross priv_mode_vs, triggernum, sw_watched, outcome_vs;  // NTRIG * 2 outcomes
    cp_mcontrol6_vu: cross priv_mode_vu, triggernum, sw_watched, outcome_vu;  // NTRIG * 2 outcomes
endgroup

covergroup SdtrigH_icount_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    // the marker an icount trigger (count = 1) is taken on, with an icount trigger selected
    icount_point: coverpoint sdtrigh_icount_point(ins) {
        type_option.weight = 0;
        bins marker_or_breakpoint = {1'b1};
    }
    outcome_vs: coverpoint sdtrigh_mode_outcome(ins, 26, `SDTRIGH_ICOUNT_OTHERS_VS) {
        type_option.weight = 0;
        bins own_fired      = {2'd1};
        bins others_no_fire = {2'd2};
    }
    outcome_vu: coverpoint sdtrigh_mode_outcome(ins, 25, `SDTRIGH_ICOUNT_OTHERS_VU) {
        type_option.weight = 0;
        bins own_fired      = {2'd1};
        bins others_no_fire = {2'd2};
    }

    // main coverpoints
    cp_icount_vs: cross priv_mode_vs, triggernum, icount_point, outcome_vs;  // NTRIG * 2 outcomes
    cp_icount_vu: cross priv_mode_vu, triggernum, icount_point, outcome_vu;  // NTRIG * 2 outcomes
endgroup

covergroup SdtrigH_itrigger_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    trap_from_vs: coverpoint sdtrigh_trap_origin(ins) {
        type_option.weight = 0;
        bins VS_mode = {3'b101};
    }
    trap_from_vu: coverpoint sdtrigh_trap_origin(ins) {
        type_option.weight = 0;
        bins VU_mode = {3'b100};
    }
    // an itrigger selecting SSI is selected, and an SSI was taken into HS-mode on this record
    itrigger_ssi: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (
            sdtrigh_hs_trap(ins, {1'b1, (XLEN-1)'(1)}) &&
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata2", "tdata2")[1]) {
        type_option.weight = 0;
        bins itrigger = {4'd4};
    }
    outcome_vs: coverpoint sdtrigh_mode_outcome(ins, 12, `SDTRIGH_IETRIGGER_OTHERS_VS) {
        type_option.weight = 0;
        bins own_fired         = {2'd1};
        bins others_suppressed = {2'd2};
    }
    outcome_vu: coverpoint sdtrigh_mode_outcome(ins, 11, `SDTRIGH_IETRIGGER_OTHERS_VU) {
        type_option.weight = 0;
        bins own_fired         = {2'd1};
        bins others_suppressed = {2'd2};
    }

    // main coverpoints
    cp_itrigger_vs: cross trap_from_vs, triggernum, itrigger_ssi, outcome_vs;  // NTRIG * 2 outcomes
    cp_itrigger_vu: cross trap_from_vu, triggernum, itrigger_ssi, outcome_vu;  // NTRIG * 2 outcomes
endgroup

covergroup SdtrigH_etrigger_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    trap_from_vs: coverpoint sdtrigh_trap_origin(ins) {
        type_option.weight = 0;
        bins VS_mode = {3'b101};
    }
    trap_from_vu: coverpoint sdtrigh_trap_origin(ins) {
        type_option.weight = 0;
        bins VU_mode = {3'b100};
    }
    // an etrigger selecting virtual instruction is selected, and a virtual-instruction exception was taken into
    // HS-mode on this record
    etrigger_virtual: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (
            sdtrigh_hs_trap(ins, 22) && get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata2", "tdata2")[22]) {
        type_option.weight = 0;
        bins etrigger = {4'd5};
    }
    outcome_vs: coverpoint sdtrigh_mode_outcome(ins, 12, `SDTRIGH_IETRIGGER_OTHERS_VS) {
        type_option.weight = 0;
        bins own_fired         = {2'd1};
        bins others_suppressed = {2'd2};
    }
    outcome_vu: coverpoint sdtrigh_mode_outcome(ins, 11, `SDTRIGH_IETRIGGER_OTHERS_VU) {
        type_option.weight = 0;
        bins own_fired         = {2'd1};
        bins others_suppressed = {2'd2};
    }

    // main coverpoints
    cp_etrigger_vs: cross trap_from_vs, triggernum, etrigger_virtual, outcome_vs;  // NTRIG * 2 outcomes
    cp_etrigger_vu: cross trap_from_vu, triggernum, etrigger_virtual, outcome_vu;  // NTRIG * 2 outcomes
endgroup

covergroup SdtrigH_textra_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    guest_mode: coverpoint {ins.prev.mode_virt, ins.prev.mode} {
        type_option.weight = 0;
        bins VS_mode = {3'b101};
        bins VU_mode = {3'b100};
    }
    icount_point: coverpoint sdtrigh_icount_point(ins) {
        type_option.weight = 0;
        bins marker_or_breakpoint = {1'b1};
    }
    mhselect_mctx: coverpoint sdtrigh_mhselect(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata3", "tdata3")) {
        type_option.weight = 0;
        bins mcontext_select_0 = {3'd1};
        bins mcontext_select_1 = {3'd5};
    }
    mctx_outcome: coverpoint sdtrigh_textra_outcome(ins, sdtrigh_mctx_match(
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata3", "tdata3"),
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mcontext", "mcontext"))) {
        type_option.weight = 0;
        bins match_fired      = {2'd1};
        bins mismatch_no_fire = {2'd2};
    }
    mhselect_vmid: coverpoint sdtrigh_mhselect(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata3", "tdata3")) {
        type_option.weight = 0;
        bins vmid_select_0 = {3'd2};
        bins vmid_select_1 = {3'd6};
    }
    vmid_outcome: coverpoint sdtrigh_textra_outcome(ins, sdtrigh_vmid_match(
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata3", "tdata3"),
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "hgatp", "hgatp"))) {
        type_option.weight = 0;
        bins match_fired      = {2'd1};
        bins mismatch_no_fire = {2'd2};
    }
    sselect_asid: coverpoint sdtrigh_sselect(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata3", "tdata3")) {
        type_option.weight = 0;
        bins asid = {2'd2};
    }
    asid_outcome: coverpoint sdtrigh_textra_outcome(ins, sdtrigh_vsatp_asid_match(
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata3", "tdata3"),
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vsatp", "vsatp"))) {
        type_option.weight = 0;
        bins match_fired      = {2'd1};
        bins mismatch_no_fire = {2'd2};
    }

    // main coverpoints
    `ifdef UDB_MCONTEXT_AVAILABLE
        cp_textra_mctx_sel:   cross guest_mode, triggernum, icount_point, mhselect_mctx, mctx_outcome;  // 2 modes * NTRIG * 2 selects * 2
    `endif
    cp_textra_vmid_sel:   cross guest_mode, triggernum, icount_point, mhselect_vmid, vmid_outcome;      // 2 modes * NTRIG * 2 selects * 2
    cp_textra_vsatp_asid: cross guest_mode, triggernum, icount_point, sselect_asid, asid_outcome;       // 2 modes * NTRIG * 2
endgroup

covergroup SdtrigH_context_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"

    csrr: coverpoint ins.current.insn {
        type_option.weight = 0;
        wildcard bins csrr = {CSRR};
    }
    csr_read_write: coverpoint ins.current.insn {
        type_option.weight = 0;
        wildcard bins csrr = {CSRR};
        wildcard bins csrw = {CSRW};
    }
    csr_hcontext: coverpoint ins.current.insn[31:20] {
        type_option.weight = 0;
        bins hcontext = {CSR_HCONTEXT};
    }
    context_csr: coverpoint ins.current.insn[31:20] {
        type_option.weight = 0;
        bins scontext = {CSR_SCONTEXT};
        bins hcontext = {CSR_HCONTEXT};
    }
    access_mode: coverpoint {ins.prev.mode_virt, ins.prev.mode} {
        type_option.weight = 0;
        bins HS_mode = {3'b001};
        bins VS_mode = {3'b101};
        bins VU_mode = {3'b100};
    }
    // (mstateen0.CONTEXT, hstateen0.CONTEXT); hstateen0.CONTEXT is read-only zero while mstateen0.CONTEXT is 0
    context_stateen: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, `SDTRIGH_MSTATEEN0_HI, "context")[0],
                                 get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, `SDTRIGH_HSTATEEN0_HI, "context")[0]} {
        type_option.weight = 0;
        bins m0_h0 = {2'b00};
        bins m1_h0 = {2'b10};
        bins m1_h1 = {2'b11};
    }

    // main coverpoints
    `ifdef UDB_HCONTEXT_AVAILABLE
        cp_hcontext_hs: cross priv_mode_hs, csr_read_write, csr_hcontext;  // 2
        cp_hcontext_m:  cross priv_mode_m, csr_read_write, csr_hcontext;   // 2
    `endif
    cp_context_access: cross access_mode, csrr, context_csr;  // 3 modes * 2 CSRs
    `ifdef SMSTATEEN_SUPPORTED
        cp_hs_context_stateen: cross priv_mode_hs, csrr, context_csr, context_stateen;  // 2 CSRs * 3 states
        cp_vs_context_stateen: cross priv_mode_vs, csrr, context_csr, context_stateen;  // 2 CSRs * 3 states
        cp_vu_context_stateen: cross priv_mode_vu, csrr, context_csr, context_stateen;  // 2 CSRs * 3 states
    `endif
endgroup

function void sdtrigh_sample(int hart, int issue, ins_t ins);
    SdtrigH_mcontrol6_cg.sample(ins);
    SdtrigH_icount_cg.sample(ins);
    SdtrigH_itrigger_cg.sample(ins);
    SdtrigH_etrigger_cg.sample(ins);
    SdtrigH_textra_cg.sample(ins);
    SdtrigH_context_cg.sample(ins);
endfunction
