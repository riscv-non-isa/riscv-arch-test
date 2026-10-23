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
`define SDTRIG_ICOUNT_MODE_BIT 6  // icount tdata1.u: the tests count in U-mode
`include "general/RISCV_coverage_sdtrig_functions.svh"

// illegal-instruction trap (mcause/scause = 2) taken on this record; the instruction raising it does not name xcause
function automatic logic sdtrigu_illegal_taken(ins_t ins);
    logic [11:0] cause = ins.current.csr_wb[CSR_SCAUSE] ? CSR_SCAUSE : CSR_MCAUSE;
    return ins.current.csr_wb[cause] && ins.current.csr[cause] == 2;
endfunction

// cp_mcontrol6_priv_bits_u: outcome of the sw that an mcontrol6 store trigger watches.
//   1: the trigger's u bit is set and the breakpoint was taken (into S, or into M on harts that use tcontrol)
//   2: u is clear, m or s is set, and no breakpoint was taken    0: anything else
function automatic logic [1:0] sdtrigu_priv_bits_outcome(ins_t ins);
    logic [XLEN-1:0] tdata1 = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1");
    if (tdata1[3] && sdtrig_bp_taken(ins)) return 2'd1;
    if (!tdata1[3] && (tdata1[6] || tdata1[4]) && !sdtrig_bp_taken(ins)) return 2'd2;
    return 2'd0;
endfunction

covergroup SdtrigU_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    // Triggers are armed in M through T-SBI; this covers the type of the trigger selected when a breakpoint is
    // taken from U-mode. itrigger/etrigger are left out: in these tests (medeleg[3] = 1) they are suppressed on
    // harts that use the interrupt enables and fire into M on harts that use tcontrol, so neither outcome is a bin.
    bp_type: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (sdtrig_bp_taken(ins)) {
        bins icount    = {4'd3};
        bins mcontrol6 = {4'd6};
    }
    // cp_breakpoint_delegate_u: medeleg[3] and the mode the breakpoint taken from U-mode was handled in
    bp_routing: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "medeleg", "medeleg")[3], ins.current.csr_wb[CSR_SCAUSE]} iff (sdtrig_bp_taken(ins)) {
        bins not_delegated_to_m = {2'b00};
        bins delegated_to_s     = {2'b11};
    }

    // main coverpoints
    cp_breakpoint_u: cross priv_mode_u, triggernum, bp_type;  // NTRIG * 2 types; handled in S (medeleg[3] = 1) or M (tcontrol)
    `ifdef S_SUPPORTED
        cp_breakpoint_delegate_u: cross priv_mode_u, triggernum, bp_type, bp_routing;  // NTRIG * 2 types * 2 (medeleg[3] = 0 into M, 1 into S)
    `endif
endgroup

covergroup SdtrigU_access_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    // a direct U-mode csrr or csrw of an M-level trigger CSR, which raises an illegal-instruction exception
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
    illegal_insn_trap: coverpoint sdtrigu_illegal_taken(ins) {
        type_option.weight = 0;
        bins illegal = {1'b1};
    }

    // main coverpoints
    cp_csr_access_trap_u: cross priv_mode_u, csr_read_write, csr_trigger_mlevel, illegal_insn_trap;  // 2 accesses * implemented M-level trigger CSRs (5-7)
endgroup

covergroup SdtrigU_icount_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_icount_coverpoints.svh"

    // main coverpoints: the readbacks (csrr tdata1) run in M-mode through T-SBI; the fires are taken from U-mode
    `ifdef UDB_ICOUNT_HARDWIRED_1
        cp_icount_hardwired: cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_hardwired, hardwired_result;  // NTRIG
    `else
        cp_icount_instr:      cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_gt1, icount_count_result;  // NTRIG * 2 u
        cp_icount_instr_fire: cross exec_mode_u, triggernum, icount_fired, fired_gt1_mode;                                         // NTRIG
        cp_icount_eq0:        cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_zero_mode, icount_eq0_result; // NTRIG * 2 pending
        cp_icount_eq0_fire:   cross exec_mode_u, triggernum, icount_fired, fired_zero_pending;                                     // NTRIG
    `endif
    cp_icount_trap:           cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_one, icount_count_result;   // NTRIG * 2 u
    cp_icount_trap_fire:      cross exec_mode_u, triggernum, icount_fired, fired_one_mode;                                          // NTRIG
endgroup

covergroup SdtrigU_a_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_a_coverpoints.svh"

    // main coverpoints
    cp_lrsc_addr: cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_select_adr, a_tdata2_adr, a_xsl, lrsc_op, a_outcome;        // NTRIG * 2 tdata2 * 3 xsl * 2 (RV64 4) ops
    cp_lrsc_data: cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_select_data, a_tdata2_data, a_xsl, lrsc_op_xlen, a_outcome; // NTRIG * 2 tdata2 * 3 xsl * 2 ops
    cp_amo:       cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_select_adr, a_tdata2_adr, a_xsl, amo_op, a_outcome;         // NTRIG * 2 tdata2 * 3 xsl * 9 (RV64 18) ops
endgroup

covergroup SdtrigU_cache_operations_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_cache_coverpoints.svh"

    // main coverpoints
    `ifdef ZICBOM_SUPPORTED
        cp_cache_zicbom: cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, cbo_tdata2, cbo_select, tdata1_size, cbo_xsl, cbom_op, cbo_outcome;                  // NTRIG * 4 tdata2 * 2 select * sizes * 3 xsl * 3 ops
    `endif
    `ifdef ZICBOZ_SUPPORTED
        cp_cache_zicboz: cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, cbo_tdata2, cbo_select, tdata1_size, cbo_xsl, cboz_op, cbo_outcome;                  // NTRIG * 4 tdata2 * 2 select * sizes * 3 xsl
    `endif
    `ifdef ZICBOP_SUPPORTED
        cp_cache_zicbop: cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, prefetch_tdata2, cbo_select, tdata1_size_any, prefetch_xsl, prefetch_op, cbo_outcome; // NTRIG * 2 tdata2 * 2 select * 3 ops
    `endif
endgroup

`ifdef ZVL32B_SUPPORTED
covergroup SdtrigU_combined_accesses_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_vector_coverpoints.svh"

    // main coverpoints
    cp_vector_load_store: cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_select_adr, vec_tdata2_base_zero, tdata1_size, vec_vl_one, vec_unmasked, vec_access, vec_xsl, vec_outcome;  // NTRIG * 2 tdata2 * sizes * 6 (Zve64x 8) accesses
    cp_vector_accesses:   cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_select_adr, vec_tdata2, tdata1_size_any, vec_vl, vec_unmasked, vec_access, vec_xsl, vec_outcome;    // NTRIG * 3 tdata2 * 2 vl * 6 (8) accesses
    cp_vector_mask:       cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_select_adr, vec_tdata2_plus_8, tdata1_size_any, vec_vl_reaches_8, vec_masked, vec_element_8, vec_access, vec_xsl, vec_outcome; // NTRIG * 2 mask states * 6 (8) accesses
endgroup
`endif

covergroup SdtrigU_itrigger_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_trap_coverpoints.svh"

    // main coverpoints: S-level interrupts taken from U-mode and delegated to S
    `ifdef S_SUPPORTED
        cp_itrigger_u:       cross trap_from_u, triggernum, itrigger_interrupt, itrigger_code_s, trap_delegated, trap_selected, trap_handled_s;   // NTRIG * S interrupts * 2 u
        cp_itrigger_u_other: cross trap_from_u, triggernum, itrigger_interrupt, trap_delegated, trap_not_selected, trap_result_s_other;    // NTRIG * 2 u
    `endif
endgroup

covergroup SdtrigU_etrigger_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_trap_coverpoints.svh"

    // {handler, fired, cause} of an exception raised in U-mode. The causes the suite delegates (medeleg) are
    // handled in S, where whether the trigger fires depends on the hart's re-entrancy option; ecall from U is delegated to S.
    // An illegal instruction is handled in S, or in M on a DUT that emulates the time CSR and forwards it.
    etrigger_route_u: coverpoint {sdtrig_trap_handler(ins), sdtrig_trap_fired(ins), sdtrig_trap_cause(ins)[7:0]} {
        type_option.weight = 0;
        wildcard bins iacc = {11'b01_?_00000001};
        wildcard bins ill  = {11'b01_?_00000010, 11'b11_0_00000010};
        wildcard bins lacc = {11'b01_?_00000101};
        wildcard bins sacc = {11'b01_?_00000111};
        wildcard bins ecu = {11'b01_?_00001000};
        `ifdef UDB_MXLEN_64
            `ifdef SV39_SUPPORTED
                wildcard bins ipf = {11'b01_?_00001100};
                wildcard bins lpf = {11'b01_?_00001101};
                wildcard bins spf = {11'b01_?_00001111};
            `endif
        `else
            `ifdef SV32_SUPPORTED
                wildcard bins ipf = {11'b01_?_00001100};
                wildcard bins lpf = {11'b01_?_00001101};
                wildcard bins spf = {11'b01_?_00001111};
            `endif
        `endif
    }

    // main coverpoints
    `ifdef S_SUPPORTED
        cp_etrigger_u:       cross trap_from_u, triggernum, etrigger_exception, trap_selected, etrigger_route_u, trap_priv;  // NTRIG * U exceptions * 2 u
        cp_etrigger_u_other: cross trap_from_u, triggernum, etrigger_exception, trap_not_selected, trap_result_other;     // NTRIG * 2 u
    `endif
endgroup

covergroup SdtrigU_mcontrol6_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_mcontrol6_coverpoints.svh"

    // a sw to the address watched by an mcontrol6 store trigger (select = 0, store = 1)
    priv_bits_sw: coverpoint ins.current.insn iff (
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] == 4'd6 &&
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "store")[0] &&
            !get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "select")[0] &&
            get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata2", "tdata2") == ins.current.rs1_val + ins.current.imm) {
        type_option.weight = 0;
        wildcard bins sw = {SW};
    }
    priv_bits_outcome: coverpoint sdtrigu_priv_bits_outcome(ins) {
        type_option.weight = 0;
        bins own_fired      = {2'd1};
        bins others_no_fire = {2'd2};
    }

    // main coverpoints
    cp_mcontrol6_priv_bits_u:    cross priv_mode_u, triggernum, priv_bits_sw, priv_bits_outcome;  // NTRIG * 2 outcomes
    cp_mcontrol6_execute_adr:     cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl, exec_adr_target;                                                             // NTRIG * 8 xsl * 2 tdata2
    cp_mcontrol6_load_store_adr:  cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl, tdata2_ls_adr, store_offset, lw_sw;                                    // NTRIG * 8 xsl * 3 tdata2 * 2 offsets * 2 instrs
    cp_mcontrol6_execute_data:    cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_data, tdata1_xsl, exec_data_target;                                                     // NTRIG * 8 xsl * 2 tdata2
    cp_mcontrol6_load_store_data: cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_data, tdata1_xsl, load_store_xlen;                                                            // NTRIG * 8 xsl * 2 instrs
    cp_mcontrol6_execute_size:    cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_select_data, tdata1_xsl_load_store_execute, tdata1_size, tdata2_exec_size, exec_size_target;              // NTRIG * 7 sizes * 2 tdata2 * 2 instrs
    cp_mcontrol6_load_store_size: cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_select_adr, tdata1_xsl_load_store, tdata1_size_ls, tdata2_adr, load_store_instr;               // NTRIG * 5 sizes * 2 tdata2 * instrs
    cp_mcontrol6_match:           cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_cmp, store_data_cmp, store_xlen;                   // NTRIG * 4 match * 5 values
    `ifdef UDB_SDTRIG_MCONTROL6_MATCH_AVAILABLE
        cp_mcontrol6_match_napot: cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_napot, tdata2_napot, store_data_napot, store_xlen; // NTRIG * 2 match * (min(maskmax6, XLEN-1) - 1) tdata2 * 3 values
        cp_mcontrol6_match_mask:  cross exec_mode_u, triggernum, tdata1_type_mcontrol6, tdata1_u_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_mask, store_data_mask, store_xlen;                 // NTRIG * 4 match * 11 values
    `endif
    cp_mcontrol6_chain_adr:       cross exec_mode_u, triggernum_chain, tdata1_type_mcontrol6, tdata1_u_on, tdata1_select_data, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_xsl_store, store_data_chain, store_offset, store_xlen;                    // (NTRIG-1) * 2 data * 2 adr
endgroup

covergroup SdtrigU_textra_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_textra_coverpoints.svh"

    // main coverpoints: sampled on the instruction in U-mode that the armed trigger acts on
    `ifdef UDB_MCONTEXT_AVAILABLE
        cp_textra_mcontext:       cross exec_mode_u, triggernum, textra_action, mhselect_mcontext, sselect_ignore, mcontext_match;           // NTRIG * 2 types * 2
    `endif
    `ifdef UDB_SCONTEXT_AVAILABLE
        cp_textra_scontext:       cross exec_mode_u, triggernum, textra_action, sselect_scontext, sbytemask, scontext_match;                 // NTRIG * 2 types * 5 (RV32 3) masks * 2
        cp_textra_scontext_all:   cross exec_mode_u, triggernum, textra_action, sselect_scontext, sbytemask_all, scontext_match_only;        // NTRIG * 2 types
    `endif
    `ifdef UDB_MCONTEXT_AVAILABLE
    `ifdef UDB_SCONTEXT_AVAILABLE
        cp_textra_double_context: cross exec_mode_u, triggernum, textra_action, mhselect, sselect, mcontext_match, scontext_match;           // NTRIG * 2 types * 16
    `endif
    `endif
endgroup

function void sdtrigu_sample(int hart, int issue, ins_t ins);
    // Each covergroup is sampled only on the records its crosses can hit (CSR accesses, traps, and the
    // instructions that triggers act on), which keeps coverage of the long U-mode runs fast.
    logic [6:0] op;
    logic       csr, trap, ldst;
    op   = ins.current.insn[6:0];
    csr  = op == 7'b1110011 && ins.current.insn[14:12] != 3'b000;
    trap = ins.current.csr_wb[CSR_MCAUSE] || ins.current.csr_wb[CSR_SCAUSE];
    ldst = op == 7'b0000011 || op == 7'b0100011 || op == 7'b0000111 || op == 7'b0100111 || ins.current.insn[1:0] != 2'b11;
    if (trap) SdtrigU_cg.sample(ins);
    if (csr) SdtrigU_access_cg.sample(ins);
    if (csr || trap) SdtrigU_icount_cg.sample(ins);
    if (op == 7'b0101111) SdtrigU_a_cg.sample(ins);
    if (op == 7'b0001111 || op == 7'b0010011) SdtrigU_cache_operations_cg.sample(ins);
    `ifdef ZVL32B_SUPPORTED
        if (op == 7'b0000111 || op == 7'b0100111) SdtrigU_combined_accesses_cg.sample(ins);
    `endif
    if (trap) SdtrigU_itrigger_cg.sample(ins);
    if (trap) SdtrigU_etrigger_cg.sample(ins);
    if (trap || ldst || op == 7'b0110011 || op == 7'b0010011) SdtrigU_mcontrol6_cg.sample(ins);
    if (csr || ldst || op == 7'b0010011) SdtrigU_textra_cg.sample(ins);
endfunction
