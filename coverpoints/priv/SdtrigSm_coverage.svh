///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Angela Zheng, angela20061015@gmail.com, 10 September 2026
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////
`define COVER_SDTRIGSM
`define SDTRIG_ICOUNT_MODE_BIT 9  // icount tdata1.m: the tests count in M-mode
`include "general/RISCV_coverage_sdtrig_functions.svh"

// A context CSR that this hart does not implement (cp_csr_unimplemented)
`ifndef UDB_MCONTEXT_AVAILABLE
    `define SDTRIG_CSR_UNIMPLEMENTED
`endif
`ifndef UDB_HCONTEXT_AVAILABLE
    `define SDTRIG_CSR_UNIMPLEMENTED
`endif

covergroup SdtrigSm_trig_module_reg_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_reg_coverpoints.svh"

    `ifdef SDTRIG_CSR_UNIMPLEMENTED
        csr_unimplemented: coverpoint ins.current.insn[31:20] {
            type_option.weight = 0;
            `ifndef UDB_MCONTEXT_AVAILABLE
                bins mcontext = {CSR_MCONTEXT};
            `endif
            `ifndef UDB_HCONTEXT_AVAILABLE
                bins hcontext = {CSR_HCONTEXT};
            `endif
        }
        csr_read_write: coverpoint ins.current.insn {
            type_option.weight = 0;
            wildcard bins csrr = {CSRR};
            wildcard bins csrw = {CSRW};
        }
        // illegal-instruction trap into M taken on this record
        illegal_insn_trap: coverpoint ins.current.csr[CSR_MCAUSE] iff (ins.current.csr_wb[CSR_MCAUSE]) {
            type_option.weight = 0;
            bins illegal = {2};
        }
    `endif

    // main coverpoints
    cp_tdata_write:           cross priv_mode_m, triggernum, type_disabled, csr_tdata, csr_access;          // NTRIG * 3 CSRs * 2 values
    cp_csr_access_global:     cross priv_mode_m, csr_global_reg, csr_access;                                // implemented global CSRs * 2 values
    cp_csr_access_local:      cross priv_mode_m, triggernum, csr_local_reg, csr_access;                     // NTRIG * 4 CSRs * 2 values
    cp_tselect_trigs:         cross priv_mode_m, triggernum, csrr, csr_tinfo, tinfo_exists, tinfo_version;  // NTRIG
    cp_tdata1_mode_hardwired: cross priv_mode_m, triggernum, csrw, csr_tdata1, tdata1_type_six, priv_bits;  // NTRIG
    cp_tinfo_read_only:       cross priv_mode_m, triggernum, csr_tinfo, csr_access;                         // NTRIG
    cp_tdata1_dmode:          cross priv_mode_m, triggernum, csrw, csr_tdata1, tdata1_type_dmode, dmode_written, dmode_after;  // NTRIG * 2 types
    `ifdef SDTRIG_CSR_UNIMPLEMENTED
        cp_csr_unimplemented: cross priv_mode_m, csr_unimplemented, csr_read_write, illegal_insn_trap;     // unimplemented context CSRs * 2 accesses
    `endif
endgroup

`ifdef UDB_TCONTROL_AVAILABLE
covergroup SdtrigSm_tcontrol_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    mte: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tcontrol", "mte")[0] {
        bins disabled = {1'b0};
        bins enabled  = {1'b1};
    }
    mpte: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tcontrol", "mpte")[0] {
        bins disabled = {1'b0};
        bins enabled  = {1'b1};
    }
    illegal_insn: coverpoint ins.current.insn iff (ins.current.trap) {
        bins zero = {32'h0};
    }
    mret: coverpoint ins.current.insn {
        bins mret = {MRET};
    }

    // main coverpoints
    cp_tcontrol_enable:     cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_execute_on, tdata1_select_adr, tdata1_action_breakpoint, tdata1_chain_disabled, tdata2_pc, mte;  // NTRIG * 2 mte
    cp_tcontrol_mtrap:      cross priv_mode_m, mte, mpte, illegal_insn;                                                       // 2 mte * 2 mpte
    cp_tcontrol_mret:       cross priv_mode_m, mte, mpte, mret;                                                               // 2 mte * 2 mpte
endgroup
`endif

covergroup SdtrigSm_access_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_access_coverpoints.svh"

    // main coverpoints
    cp_csr_access_common: cross priv_mode_m, triggernum, tdata1_type, csr_common_reg, csr_access_common;  // NTRIG * 5 types * implemented CSRs (4-8) * 5 accesses
endgroup

covergroup SdtrigSm_icount_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_icount_coverpoints.svh"

    // main coverpoints
    `ifdef UDB_ICOUNT_HARDWIRED_1
        cp_icount_hardwired: cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_hardwired, hardwired_result;  // NTRIG
    `else
        cp_icount_instr:      cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_gt1, icount_count_result;  // NTRIG * 2 m
        cp_icount_instr_fire: cross priv_mode_m, triggernum, icount_fired, fired_gt1_mode;                                          // NTRIG
        cp_icount_eq0:        cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_zero_mode, icount_eq0_result; // NTRIG * 2 pending
        cp_icount_eq0_fire:   cross priv_mode_m, triggernum, icount_fired, fired_zero_pending, csrw_tdata1;                      // NTRIG
    `endif
    cp_icount_trap:           cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_one, icount_count_result;   // NTRIG * 2 m
    cp_icount_trap_fire:      cross priv_mode_m, triggernum, icount_fired, fired_one_mode, mret;                                     // NTRIG
endgroup

covergroup SdtrigSm_a_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_a_coverpoints.svh"

    // main coverpoints
    cp_lrsc_addr: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, a_tdata2_adr, a_xsl, lrsc_op, a_outcome;        // NTRIG * 2 tdata2 * 3 xsl * 2 (RV64 4) ops
    cp_lrsc_data: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_data, a_tdata2_data, a_xsl, lrsc_op_xlen, a_outcome; // NTRIG * 2 tdata2 * 3 xsl * 2 ops
    cp_amo:       cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, a_tdata2_adr, a_xsl, amo_op, a_outcome;         // NTRIG * 2 tdata2 * 3 xsl * 9 (RV64 18) ops
endgroup

covergroup SdtrigSm_cache_operations_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_cache_coverpoints.svh"

    // main coverpoints
    `ifdef ZICBOM_SUPPORTED
        cp_cache_zicbom: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, cbo_tdata2, cbo_select, tdata1_size, cbo_xsl, cbom_op, cbo_outcome;                  // NTRIG * 4 tdata2 * 2 select * sizes * 3 xsl * 3 ops
    `endif
    `ifdef ZICBOZ_SUPPORTED
        cp_cache_zicboz: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, cbo_tdata2, cbo_select, tdata1_size, cbo_xsl, cboz_op, cbo_outcome;                  // NTRIG * 4 tdata2 * 2 select * sizes * 3 xsl
    `endif
    `ifdef ZICBOP_SUPPORTED
        cp_cache_zicbop: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, prefetch_tdata2, cbo_select, tdata1_size_any, prefetch_xsl, prefetch_op, cbo_outcome; // NTRIG * 2 tdata2 * 2 select * 3 ops
    `endif
endgroup

`ifdef ZVL32B_SUPPORTED
covergroup SdtrigSm_combined_accesses_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_vector_coverpoints.svh"

    // main coverpoints
    cp_vector_load_store: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, vec_tdata2_base_zero, tdata1_size, vec_vl_one, vec_unmasked, vec_access, vec_xsl, vec_outcome;  // NTRIG * 2 tdata2 * sizes * 6 (Zve64x 8) accesses
    cp_vector_accesses:   cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, vec_tdata2, tdata1_size_any, vec_vl, vec_unmasked, vec_access, vec_xsl, vec_outcome;    // NTRIG * 3 tdata2 * 2 vl * 6 (8) accesses
    cp_vector_mask:       cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, vec_tdata2_plus_8, tdata1_size_any, vec_vl_reaches_8, vec_masked, vec_element_8, vec_access, vec_xsl, vec_outcome; // NTRIG * 2 mask states * 6 (8) accesses
endgroup
`endif

covergroup SdtrigSm_itrigger_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_trap_coverpoints.svh"

    // interrupts taken in M from M
    itrigger_code_m: coverpoint sdtrig_trap_cause(ins)[7:0] {
        type_option.weight = 0;
        `ifdef UDB_MSI_INTR_IMPL
            bins msi = {8'd3};
        `endif
        `ifdef UDB_MTI_INTR_IMPL
            bins mti = {8'd7};
        `endif
        `ifdef UDB_MEI_INTR_IMPL
            bins mei = {8'd11};
        `endif
        `ifdef S_SUPPORTED
            `ifdef UDB_SSI_INTR_IMPL
                bins ssi = {8'd1};
            `endif
            `ifdef UDB_STI_INTR_IMPL
                bins sti = {8'd5};
            `endif
            `ifdef UDB_SEI_INTR_IMPL
                bins sei = {8'd9};
            `endif
            `ifdef SSCOFPMF_SUPPORTED
                bins lcofi = {8'd13};
            `endif
        `endif
    }

    // main coverpoints
    cp_itrigger_m:           cross trap_from_m, triggernum, itrigger_interrupt, itrigger_code_m, trap_not_delegated, trap_selected, trap_result_m;           // NTRIG * interrupts * 2 m
    cp_itrigger_m_other:     cross trap_from_m, triggernum, itrigger_interrupt, trap_not_delegated, trap_not_selected, trap_result_m;                         // NTRIG * 2 m
    `ifdef S_SUPPORTED
        cp_itrigger_s:       cross trap_from_s, triggernum, itrigger_interrupt, itrigger_code_s, trap_delegated, trap_selected, trap_result_s;               // NTRIG * S interrupts * 2 s
        cp_itrigger_s_other: cross trap_from_s, triggernum, itrigger_interrupt, trap_delegated, trap_not_selected, trap_result_s_other;                       // NTRIG * 2 s
        `ifdef U_SUPPORTED
            cp_itrigger_u:       cross trap_from_u, triggernum, itrigger_interrupt, itrigger_code_s, trap_delegated, trap_selected, trap_result_s;           // NTRIG * S interrupts * 2 u
            cp_itrigger_u_other: cross trap_from_u, triggernum, itrigger_interrupt, trap_delegated, trap_not_selected, trap_result_s_other;                   // NTRIG * 2 u
        `endif
    `endif
endgroup

covergroup SdtrigSm_etrigger_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_trap_coverpoints.svh"

    // exceptions raised in M. Page faults come from loads and stores with MPRV = 1, MPP = U.
    etrigger_code_m: coverpoint sdtrig_trap_cause(ins)[7:0] {
        type_option.weight = 0;
        bins iacc = {8'd1};
        bins ill  = {8'd2};
        bins lacc = {8'd5};
        bins sacc = {8'd7};
        bins ecm  = {8'd11};
        `ifdef UDB_MXLEN_64
            `ifdef SV39_SUPPORTED
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `else
            `ifdef SV32_SUPPORTED
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `endif
    }
    // exceptions raised in S, handled in M
    etrigger_code_s: coverpoint sdtrig_trap_cause(ins)[7:0] {
        type_option.weight = 0;
        bins iacc = {8'd1};
        bins ill  = {8'd2};
        bins lacc = {8'd5};
        bins sacc = {8'd7};
        bins ecs  = {8'd9};
        `ifdef UDB_MXLEN_64
            `ifdef SV39_SUPPORTED
                bins ipf = {8'd12};
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `else
            `ifdef SV32_SUPPORTED
                bins ipf = {8'd12};
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `endif
    }
    // exceptions raised in U, handled in M
    etrigger_code_u: coverpoint sdtrig_trap_cause(ins)[7:0] {
        type_option.weight = 0;
        bins iacc = {8'd1};
        bins ill  = {8'd2};
        bins lacc = {8'd5};
        bins sacc = {8'd7};
        bins ecu  = {8'd8};
        `ifdef UDB_MXLEN_64
            `ifdef SV39_SUPPORTED
                bins ipf = {8'd12};
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `else
            `ifdef SV32_SUPPORTED
                bins ipf = {8'd12};
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `endif
    }
    // exceptions raised in S and delegated to S. ecall from S is not: the T-SBI return to M is itself one.
    // A delegated illegal instruction is not either: a DUT that emulates the time CSR forwards it in software.
    etrigger_code_s_deleg: coverpoint sdtrig_trap_cause(ins)[7:0] {
        type_option.weight = 0;
        bins iacc = {8'd1};
        bins lacc = {8'd5};
        bins sacc = {8'd7};
        `ifdef UDB_MXLEN_64
            `ifdef SV39_SUPPORTED
                bins ipf = {8'd12};
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `else
            `ifdef SV32_SUPPORTED
                bins ipf = {8'd12};
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `endif
    }
    // exceptions raised in U and delegated to S
    etrigger_code_u_deleg: coverpoint sdtrig_trap_cause(ins)[7:0] {
        type_option.weight = 0;
        bins iacc = {8'd1};
        bins lacc = {8'd5};
        bins sacc = {8'd7};
        bins ecu  = {8'd8};
        `ifdef UDB_MXLEN_64
            `ifdef SV39_SUPPORTED
                bins ipf = {8'd12};
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `else
            `ifdef SV32_SUPPORTED
                bins ipf = {8'd12};
                bins lpf = {8'd13};
                bins spf = {8'd15};
            `endif
        `endif
    }

    // main coverpoints
    cp_etrigger_m:               cross trap_from_m, triggernum, etrigger_exception, etrigger_code_m, trap_selected, trap_result_m;                             // NTRIG * M exceptions * 2 m
    cp_etrigger_m_other:         cross trap_from_m, triggernum, etrigger_exception, trap_not_selected, trap_result_m;                                           // NTRIG * 2 m
    `ifdef S_SUPPORTED
        cp_etrigger_s:           cross trap_from_s, triggernum, etrigger_exception, etrigger_code_s, trap_not_delegated, trap_selected, trap_result_m;         // NTRIG * S exceptions * 2 s
        cp_etrigger_s_deleg:     cross trap_from_s, triggernum, etrigger_exception, etrigger_code_s_deleg, trap_delegated, trap_selected, trap_result_s;       // NTRIG * delegated S exceptions * 2 s
        cp_etrigger_s_other:     cross trap_from_s, triggernum, etrigger_exception, trap_not_delegated, trap_not_selected, trap_result_m;                       // NTRIG * 2 s
        `ifdef U_SUPPORTED
            cp_etrigger_u:       cross trap_from_u, triggernum, etrigger_exception, etrigger_code_u, trap_not_delegated, trap_selected, trap_result_m;     // NTRIG * U exceptions * 2 u
            cp_etrigger_u_deleg: cross trap_from_u, triggernum, etrigger_exception, etrigger_code_u_deleg, trap_delegated, trap_selected, trap_result_s;   // NTRIG * delegated U exceptions * 2 u
            cp_etrigger_u_other: cross trap_from_u, triggernum, etrigger_exception, trap_not_delegated, trap_not_selected, trap_result_m;                   // NTRIG * 2 u
        `endif
    `endif
endgroup

covergroup SdtrigSm_mcontrol6_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_mcontrol6_coverpoints.svh"

    // main coverpoints
    cp_mcontrol6_priv_mode: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl_store, tdata2_adr, sw { // NTRIG * 2 m modes
        ignore_bins no_match = binsof(tdata2_adr.zero);
    }
    cp_mcontrol6_execute_adr:     cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl, exec_adr_target;                                                             // NTRIG * 8 xsl * 2 tdata2
    cp_mcontrol6_load_store_adr:  cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl, tdata2_ls_adr, store_offset, lw_sw;                                    // NTRIG * 8 xsl * 3 tdata2 * 2 offsets * 2 instrs
    cp_mcontrol6_execute_data:    cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_data, tdata1_xsl, exec_data_target;                                                     // NTRIG * 8 xsl * 2 tdata2
    cp_mcontrol6_load_store_data: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_data, tdata1_xsl, load_store_xlen;                                                            // NTRIG * 8 xsl * 2 instrs
    cp_mcontrol6_execute_size:    cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_select_data, tdata1_xsl_load_store_execute, tdata1_size, tdata2_exec_size, exec_size_target;              // NTRIG * 7 sizes * 2 tdata2 * 2 instrs
    cp_mcontrol6_load_store_size: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_select_adr, tdata1_xsl_load_store, tdata1_size_ls, tdata2_adr, load_store_instr;               // NTRIG * 5 sizes * 2 tdata2 * instrs
    cp_mcontrol6_match:           cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_cmp, store_data_cmp, store_xlen;                   // NTRIG * 4 match * 5 values
    `ifdef UDB_SDTRIG_MCONTROL6_MATCH_AVAILABLE
        cp_mcontrol6_match_napot: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_napot, tdata2_napot, store_data_napot, store_xlen; // NTRIG * 2 match * (min(maskmax6, XLEN-1) - 1) tdata2 * 3 values
        cp_mcontrol6_match_mask:  cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_mask, store_data_mask, store_xlen;                 // NTRIG * 4 match * 11 values
    `endif
    cp_mcontrol6_chain_adr:       cross priv_mode_m, triggernum_chain, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_data, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_xsl_store, store_data_chain, store_offset, store_xlen;                    // (NTRIG-1) * 2 data * 2 adr
endgroup

covergroup SdtrigSm_textra_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_textra_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_trap_coverpoints.svh"

    // itrigger/etrigger textra: the trap the trigger watches, handled in S, fired into M iff the context matches
    textra_trap_mcontext: coverpoint sdtrig_textra_trap_outcome(ins) {
        type_option.weight = 0;
        bins mismatch_suppressed = {3'b01_0};
        bins match_fired         = {3'b01_1};
    }
    textra_trap_scontext: coverpoint sdtrig_textra_trap_outcome(ins) {
        type_option.weight = 0;
        bins mismatch_suppressed = {3'b10_0};
        bins match_fired         = {3'b10_1};
    }

    // main coverpoints
    `ifdef UDB_MCONTEXT_AVAILABLE
        cp_textra_mcontext:       cross priv_mode_m, triggernum, csrw, csr_tdata1, arm_type, mhselect_mcontext, sselect_ignore, mcontext_match;                       // NTRIG * 2 types * 2
    `endif
    `ifdef UDB_SCONTEXT_AVAILABLE
        cp_textra_scontext:       cross priv_mode_m, triggernum, csrw, csr_tdata1, arm_type, sselect_scontext, sbytemask, scontext_match;                          // NTRIG * 2 types * 5 (RV32 3) masks * 2
        cp_textra_scontext_all:   cross priv_mode_m, triggernum, csrw, csr_tdata1, arm_type, sselect_scontext, sbytemask_all, scontext_match_only;                 // NTRIG * 2 types
    `endif
    `ifdef UDB_MCONTEXT_AVAILABLE
    `ifdef UDB_SCONTEXT_AVAILABLE
        cp_textra_double_context: cross priv_mode_m, triggernum, csrw, csr_tdata1, arm_type, mhselect, sselect, mcontext_match, scontext_match;              // NTRIG * 2 types * 16
    `endif
    `endif
    `ifdef S_SUPPORTED
        cp_textra_asid:           cross priv_mode_m, triggernum, csrw, csr_tdata1, arm_type, mhselect_ignore, sselect_asid, asid_match;                      // NTRIG * 2 types * 2
        cp_textra_asid_sbytemask: cross priv_mode_m, triggernum, csrw, csr_tdata1, arm_type, mhselect_ignore, sselect_asid, sbytemask_all, asid_match;       // NTRIG * 2 types * 2
        `ifdef UDB_MCONTEXT_AVAILABLE
            cp_textra_itrigger_mcontext: cross trap_from_s, triggernum, itrigger_interrupt, trap_delegated, trap_selected, textra_trap_mcontext;     // NTRIG * 2
            cp_textra_etrigger_mcontext: cross trap_from_s, triggernum, etrigger_exception, trap_delegated, trap_selected, textra_trap_mcontext;     // NTRIG * 2
        `endif
        `ifdef UDB_SCONTEXT_AVAILABLE
            cp_textra_itrigger_scontext: cross trap_from_s, triggernum, itrigger_interrupt, trap_delegated, trap_selected, textra_trap_scontext;     // NTRIG * 2
            cp_textra_etrigger_scontext: cross trap_from_s, triggernum, etrigger_exception, trap_delegated, trap_selected, textra_trap_scontext;     // NTRIG * 2
        `endif
    `endif
    `ifndef H_SUPPORTED
        cp_textra_mhselect_no_h:  cross priv_mode_m, triggernum, csrw, csr_tdata3, armed_type, mhselect_written, mhselect_legal;                             // NTRIG * 2 types * 6
    `endif
endgroup

covergroup SdtrigSm_address_matches_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_xlate_coverpoints.svh"

    // main coverpoints
    cp_tdata2_translate:          cross priv_mode_m, triggernum, csrr, csr_tdata2, tdata1_type_mcontrol6, tdata1_select_adr, tdata2_xlate_value;                       // NTRIG * (2 * VA modes + 1)
    `ifdef S_SUPPORTED
        cp_tdata2_translate_exec: cross priv_mode_s, triggernum, tdata1_type_mcontrol6, tdata1_select_adr, tdata1_execute_on, satp_xlate_mode, tdata2_xlate_exec; // NTRIG * VA modes * 2
    `endif
endgroup

function void sdtrigsm_sample(int hart, int issue, ins_t ins);
    SdtrigSm_trig_module_reg_cg.sample(ins);
    SdtrigSm_access_cg.sample(ins);
    SdtrigSm_icount_cg.sample(ins);
    SdtrigSm_a_cg.sample(ins);
    SdtrigSm_cache_operations_cg.sample(ins);
    `ifdef ZVL32B_SUPPORTED
        SdtrigSm_combined_accesses_cg.sample(ins);
    `endif
    SdtrigSm_itrigger_cg.sample(ins);
    SdtrigSm_etrigger_cg.sample(ins);
    SdtrigSm_mcontrol6_cg.sample(ins);
    SdtrigSm_textra_cg.sample(ins);
    SdtrigSm_address_matches_cg.sample(ins);
    `ifdef UDB_TCONTROL_AVAILABLE
        SdtrigSm_tcontrol_cg.sample(ins);
    `endif
endfunction
