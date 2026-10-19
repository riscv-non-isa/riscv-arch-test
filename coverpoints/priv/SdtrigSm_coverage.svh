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
`ifndef UDB_SDTRIG_MASKMAX6
    `define UDB_SDTRIG_MASKMAX6 63
`endif

covergroup SdtrigSm_trig_module_reg_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    type_disabled: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "type")[3:0] {
        bins disabled = {4'd15};
    }
    tdata1_type_six: coverpoint ins.current.rs1_val[XLEN-1:XLEN-4] {
        bins mcontrol6 = {4'd6};
    }
    priv_bits: coverpoint ins.current.rs1_val[26:0] {
        bins priv = {27'b001_1000_0000_0000_0000_0101_1000};
    }
    csr_tselect:  coverpoint ins.current.insn[31:20] {
        bins tselect = {CSR_TSELECT};
    }
    csr_tdata: coverpoint ins.current.insn[31:20] {
        bins tdata1 = {CSR_TDATA1};
        bins tdata2 = {CSR_TDATA2};
        bins tdata3 = {CSR_TDATA3};
    }
    csr_tinfo: coverpoint ins.current.insn[31:20] {
        bins tinfo = {CSR_TINFO};
    }
    csr_global_reg: coverpoint ins.current.insn[31:20] {
        bins tselect  = {CSR_TSELECT};
        `ifdef UDB_TCONTROL_AVAILABLE
            bins tcontrol = {CSR_TCONTROL};
        `endif
        `ifdef UDB_MCONTEXT_AVAILABLE
            bins mcontext = {CSR_MCONTEXT};
        `endif
        `ifdef UDB_SCONTEXT_AVAILABLE
            bins scontext = {CSR_SCONTEXT};
        `endif
        `ifdef UDB_HCONTEXT_AVAILABLE
            bins hcontext = {CSR_HCONTEXT};
        `endif
    }
    csr_local_reg: coverpoint ins.current.insn[31:20] {
        bins tdata1 = {CSR_TDATA1};
        bins tdata2 = {CSR_TDATA2};
        bins tdata3 = {CSR_TDATA3};
        bins tinfo  = {CSR_TINFO};
    }
    csr_access: coverpoint ins.current.insn {
        wildcard bins csrrw0 = {CSRRW} iff (ins.current.rs1_val == '0);
        wildcard bins csrrw1 = {CSRRW} iff (ins.current.rs1_val == '1);
    }

    // main coverpoints
    cp_tdata_write:           cross priv_mode_m, triggernum, type_disabled, csr_tdata, csr_access;          // NTRIG * 3 CSRs * 2 values
    cp_csr_access_global:     cross priv_mode_m, csr_global_reg, csr_access;                                // implemented global CSRs * 2 values
    cp_csr_access_local:      cross priv_mode_m, triggernum, csr_local_reg, csr_access;                     // NTRIG * 4 CSRs * 2 values
    cp_tselect_trigs:         cross priv_mode_m, triggernum, csrr, csr_tselect;                             // NTRIG
    cp_tdata1_mode_hardwired: cross priv_mode_m, triggernum, csrw, csr_tdata1, tdata1_type_six, priv_bits;  // NTRIG
    cp_tinfo_read_only:       cross priv_mode_m, triggernum, csr_tinfo, csr_access;                         // NTRIG
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

    // supported standard trigger types; 1 and 2 are legacy, 7 is tmexttrigger, 8-11 are reserved, 12-14 are custom.
    // 0 means no trigger at this tselect, which no implemented trigger (triggernum) can read back.
    tdata1_type: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] {
        bins icount    = {4'd3};
        bins itrigger  = {4'd4};
        bins etrigger  = {4'd5};
        bins mcontrol6 = {4'd6};
        bins disabled  = {4'd15};
    }
    csr_common_reg: coverpoint ins.current.insn[31:20] {
        bins tdata1 = {CSR_TDATA1};
        bins tdata2 = {CSR_TDATA2};
        bins tdata3 = {CSR_TDATA3};
        bins tinfo  = {CSR_TINFO};
        `ifdef UDB_TCONTROL_AVAILABLE
            bins tcontrol = {CSR_TCONTROL};
        `endif
        `ifdef UDB_MCONTEXT_AVAILABLE
            bins mcontext = {CSR_MCONTEXT};
        `endif
        `ifdef UDB_SCONTEXT_AVAILABLE
            bins scontext = {CSR_SCONTEXT};
        `endif
        `ifdef UDB_HCONTEXT_AVAILABLE
            bins hcontext = {CSR_HCONTEXT};
        `endif
    }
    csr_access_common: coverpoint ins.current.insn {
        wildcard bins csrr   = {CSRR};
        wildcard bins csrrw1 = {CSRW} iff (ins.current.rs1_val == '1);
        wildcard bins csrrw0 = {CSRW} iff (ins.current.rs1_val == '0);
        wildcard bins csrrs1 = {CSRS} iff (ins.current.rs1_val == '1);
        wildcard bins csrrc1 = {CSRC} iff (ins.current.rs1_val == '1);
    }

    // main coverpoints
    cp_csr_access_common: cross priv_mode_m, triggernum, tdata1_type, csr_common_reg, csr_access_common;  // NTRIG * 5 types * implemented CSRs (4-8) * 5 accesses
endgroup

`ifdef S_SUPPORTED
covergroup SdtrigSm_native_triggers_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    tdata1_s_on: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "s")[0] {
        bins on = {1'b1};
    }
    medeleg_breakpoint: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "medeleg", "medeleg")[3] {
        bins not_delegated = {1'b0};
        bins delegated     = {1'b1};
    }

    // main coverpoints
    cp_breakpoint_delegate: cross priv_mode_s, tdata1_type_mcontrol6, tdata1_s_on, tdata1_execute_on, tdata1_action_breakpoint, tdata2_pc, medeleg_breakpoint;  // 2 medeleg
endgroup
`endif

// Traps seen by itrigger/etrigger. The trace puts an interrupt or exception, and a trigger that fires on it
// (mcause = 3 with the breakpoint taken into M), on the record of the instruction the trap follows or replaces.
// A CSR instruction that names xcause also logs it, so only other records count as trap entries.
function automatic logic sdtrig_trap_wrote(ins_t ins, logic [11:0] addr);
    return ins.current.csr_wb[addr] &&
           !(ins.current.insn[6:0] == 7'b1110011 && ins.current.insn[14:12] != 3'b000 && ins.current.insn[31:20] == addr);
endfunction
// 1 when a trigger breakpoint was taken into M on this record
function automatic logic sdtrig_trap_fired(ins_t ins);
    return sdtrig_trap_wrote(ins, CSR_MCAUSE) && ins.current.csr[CSR_MCAUSE] == 3 &&
           ins.current.insn != EBREAK && !(ins.current.insn[1:0] != 2'b11 && ins.current.insn[15:0] == C_EBREAK[15:0]);
endfunction
// Mode that handled the interrupt or exception taken on this record: 3 = M, 1 = S, 2 = none
function automatic logic [1:0] sdtrig_trap_handler(ins_t ins);
    if (sdtrig_trap_wrote(ins, CSR_SCAUSE)) return 2'd1;
    if (sdtrig_trap_wrote(ins, CSR_MCAUSE) && !sdtrig_trap_fired(ins)) return 2'd3;
    return 2'd2;
endfunction
function automatic logic [XLEN-1:0] sdtrig_trap_cause(ins_t ins);
    return (sdtrig_trap_handler(ins) == 2'd1) ? ins.current.csr[CSR_SCAUSE] : ins.current.csr[CSR_MCAUSE];
endfunction
// 1 when an interrupt (0 when an exception) was taken on this record
function automatic logic sdtrig_trap_interrupt(ins_t ins);
    return sdtrig_trap_handler(ins) != 2'd2 && sdtrig_trap_cause(ins)[XLEN-1];
endfunction
function automatic logic sdtrig_trap_exception(ins_t ins);
    return sdtrig_trap_handler(ins) != 2'd2 && !sdtrig_trap_cause(ins)[XLEN-1];
endfunction
// Mode the trap was taken from: an interrupt taken on an xRET record is taken in the mode the xRET returns to
function automatic logic [1:0] sdtrig_trap_origin(ins_t ins);
    if (ins.current.insn == MRET) return get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "mpp")[1:0];
    if (ins.current.insn == SRET) return {1'b0, get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "spp")[0]};
    return ins.prev.mode;
endfunction
// {handler, tdata1 priv bit for the origin mode (itrigger/etrigger m 9, s 7, u 6), fired}
function automatic logic [3:0] sdtrig_trap_result(ins_t ins);
    logic [XLEN-1:0] tdata1 = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1");
    logic priv_bit;
    case (sdtrig_trap_origin(ins))
        2'd3:    priv_bit = tdata1[9];
        2'd1:    priv_bit = tdata1[7];
        default: priv_bit = tdata1[6];
    endcase
    return {sdtrig_trap_handler(ins), priv_bit, sdtrig_trap_fired(ins)};
endfunction
// 1 when tdata2 selects the cause taken on this record
function automatic logic sdtrig_trap_selected(ins_t ins);
    logic [XLEN-1:0] tdata2 = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata2", "tdata2");
    return tdata2[sdtrig_trap_cause(ins)[$clog2(XLEN)-1:0]];
endfunction
// 1 when xdeleg (mideleg for an interrupt, medeleg for an exception) delegates the cause taken on this record
function automatic logic sdtrig_trap_delegated(ins_t ins);
    logic [XLEN-1:0] deleg = sdtrig_trap_cause(ins)[XLEN-1] ? get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mideleg", "mideleg") :
                                                              get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "medeleg", "medeleg");
    return deleg[sdtrig_trap_cause(ins)[$clog2(XLEN)-1:0]];
endfunction

covergroup SdtrigSm_itrigger_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_trap_coverpoints.svh"

    // the selected trigger is an itrigger and an interrupt was taken on this record
    itrigger_interrupt: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (sdtrig_trap_interrupt(ins)) {
        type_option.weight = 0;
        bins itrigger = {4'd4};
    }
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
    // S-level interrupts delegated to S
    itrigger_code_s: coverpoint sdtrig_trap_cause(ins)[7:0] {
        type_option.weight = 0;
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

    // the selected trigger is an etrigger and an exception was taken on this record
    etrigger_exception: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (sdtrig_trap_exception(ins)) {
        type_option.weight = 0;
        bins etrigger = {4'd5};
    }
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

    triggernum_chain: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tselect", "tselect") {
        bins chained_pair[] = {[1:`UDB_SDTRIG_NUM_TRIGGERS-1]};
    }
    tdata1_m: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "m")[0] {
        bins disabled = {1'b0};
        bins enabled  = {1'b1};
    }
    tdata1_xsl_store: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
        bins store = {3'b010};
    }
    tdata1_xsl_load_store: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
        bins load_store = {3'b011};
    }
    tdata1_xsl_load_store_execute: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
        bins execute = {3'b111};
    }
    tdata1_match_cmp: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "match")[3:0] {
        bins equal = {4'd0};
        `ifdef UDB_SDTRIG_MCONTROL6_MATCH_AVAILABLE
            bins ge        = {4'd2};
            bins lt        = {4'd3};
            bins not_equal = {4'd8};
        `endif
    }
    tdata2_exec_adr: coverpoint (ins.current.csr[CSR_TDATA2] == ins.current.pc_rdata) {
        bins pc   = {1'b1};
        bins zero = {1'b0} iff (ins.current.csr[CSR_TDATA2] == '0);
    }
    tdata2_ls_adr: coverpoint (ins.current.csr[CSR_TDATA2] == ins.current.rs1_val     ? 2'd0 :
                               ins.current.csr[CSR_TDATA2] == ins.current.rs1_val + 8 ? 2'd1 :
                               ins.current.csr[CSR_TDATA2] == '0                      ? 2'd2 : 2'd3) {
        bins scratch        = {2'd0};
        bins scratch_plus_8 = {2'd1};
        bins zero           = {2'd2};
    }
    tdata1_size_ls: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "size")[2:0] {
        bins any = {3'd0};
        `ifdef UDB_SDTRIG_MCONTROL6_SIZE_AVAILABLE
            bins b8  = {3'd1};
            bins b16 = {3'd2};
            bins b32 = {3'd3};
            bins b64 = {3'd5};
        `endif
    }
    tdata2_exec_data: coverpoint ins.current.csr[CSR_TDATA2] {
        bins addi_hint = {32'h00008013};
        bins nofire    = {2}; // no instruction in the test has this encoding
    }
    tdata2_exec_size: coverpoint ins.current.csr[CSR_TDATA2] {
        bins addi_hint = {32'h00008013};
        bins c_nop     = {32'h0001};
    }
    store_data_cmp: coverpoint (ins.current.rs2_val == '0       ? 3'd0 :
                                ins.current.rs2_val == '1       ? 3'd4 :
                                ins.current.rs2_val == ins.current.csr[CSR_TDATA2] - 1 ? 3'd1 :
                                ins.current.rs2_val == ins.current.csr[CSR_TDATA2]     ? 3'd2 :
                                ins.current.rs2_val == ins.current.csr[CSR_TDATA2] + 1 ? 3'd3 : 3'd5) {
        bins zero  = {3'd0};
        bins below = {3'd1};
        bins equal = {3'd2};
        bins above = {3'd3};
        bins ones  = {3'd4};
    }
    `ifdef UDB_SDTRIG_MCONTROL6_MATCH_AVAILABLE
        tdata1_match_napot: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "match")[3:0] {
            bins napot     = {4'd1};
            bins not_napot = {4'd9};
        }
        tdata1_match_mask: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "match")[3:0] {
            bins mask_low      = {4'd4};
            bins mask_high     = {4'd5};
            bins not_mask_low  = {4'd12};
            bins not_mask_high = {4'd13};
        }
        tdata2_napot: coverpoint $clog2(~ins.current.csr[CSR_TDATA2] & (ins.current.csr[CSR_TDATA2] + 1)) iff (ins.current.csr[CSR_TDATA2] != '1) {
            bins zero_bit[] = {[1:((`UDB_SDTRIG_MASKMAX6 < XLEN-1) ? `UDB_SDTRIG_MASKMAX6 : XLEN-1) - 1]};
        }
        store_data_napot: coverpoint ins.current.rs2_val {
            bins zero           = {'0};
            wildcard bins other = {'x} iff (ins.current.rs2_val != '0 && ins.current.rs2_val != '1);
            bins ones           = {'1};
        }
        // mask low (match 4) ANDs the low half of the data with tdata2[XLEN-1:XLEN/2] and compares it with tdata2[XLEN/2-1:0];
        // mask high (match 5) does the same with the high half of the data. For example tdata2 = 0xF0F0_A0B0 and
        // low-half data 0x0000A0B0 (value), 0x0000A1B2 (differs only outside the mask), 0x0000F0F0 (differs inside the mask),
        // and 0x0001A0B0 (value with a nonzero, ignored high half); the high-half bins mirror these.
        `define SDTRIG_DATA_LO     ins.current.rs2_val[XLEN/2-1:0]
        `define SDTRIG_DATA_HI     ins.current.rs2_val[XLEN-1:XLEN/2]
        `define SDTRIG_MASK_VALUE  ins.current.csr[CSR_TDATA2][XLEN/2-1:0]
        `define SDTRIG_MASK_MASK   ins.current.csr[CSR_TDATA2][XLEN-1:XLEN/2]
        store_data_mask: coverpoint ins.current.rs2_val {
            bins zero                        = {'0};
            wildcard bins equal              = {'x} iff (ins.current.rs2_val == ins.current.csr[CSR_TDATA2]);
            wildcard bins low_value          = {'x} iff (`SDTRIG_DATA_HI == '0 && `SDTRIG_DATA_LO == `SDTRIG_MASK_VALUE);
            wildcard bins low_unmasked_diff  = {'x} iff (`SDTRIG_DATA_HI == '0 && `SDTRIG_DATA_LO != `SDTRIG_MASK_VALUE && (`SDTRIG_DATA_LO & `SDTRIG_MASK_MASK) == `SDTRIG_MASK_VALUE);
            wildcard bins low_masked_diff    = {'x} iff (`SDTRIG_DATA_HI == '0 && (`SDTRIG_DATA_LO & `SDTRIG_MASK_MASK) != `SDTRIG_MASK_VALUE);
            wildcard bins low_value_high_nz  = {'x} iff (`SDTRIG_DATA_LO == `SDTRIG_MASK_VALUE && `SDTRIG_DATA_HI != '0);
            wildcard bins high_value         = {'x} iff (`SDTRIG_DATA_LO == '0 && `SDTRIG_DATA_HI == `SDTRIG_MASK_VALUE);
            wildcard bins high_unmasked_diff = {'x} iff (`SDTRIG_DATA_LO == '0 && `SDTRIG_DATA_HI != `SDTRIG_MASK_VALUE && (`SDTRIG_DATA_HI & `SDTRIG_MASK_MASK) == `SDTRIG_MASK_VALUE);
            wildcard bins high_masked_diff   = {'x} iff (`SDTRIG_DATA_LO == '0 && (`SDTRIG_DATA_HI & `SDTRIG_MASK_MASK) != `SDTRIG_MASK_VALUE);
            wildcard bins high_value_low_nz  = {'x} iff (`SDTRIG_DATA_HI == `SDTRIG_MASK_VALUE && `SDTRIG_DATA_LO != '0);
            bins ones                        = {'1};
        }
        `undef SDTRIG_DATA_LO
        `undef SDTRIG_DATA_HI
        `undef SDTRIG_MASK_VALUE
        `undef SDTRIG_MASK_MASK
    `endif
    store_data_chain: coverpoint (ins.current.rs2_val == ins.current.csr[CSR_TDATA2]) {
        bins data = {1'b1};
        bins zero = {1'b0} iff (ins.current.rs2_val == '0);
    }
    store_offset: coverpoint ins.current.imm {
        bins scratch        = {0};
        bins scratch_plus_8 = {8};
    }
    addi_hint: coverpoint ins.current.insn {
        bins addi_hint = {32'h00008013};
    }
    exec_adr_target: coverpoint ins.current.insn {
        bins add_x0 = {32'h00208033};  // add x0, x1, x2
    }
    exec_size_instr: coverpoint ins.current.insn {
        bins addi_hint = {32'h00008013};
        `ifdef ZCA_SUPPORTED
            wildcard bins c_nop = {C_NOP};
        `endif
    }
    sw: coverpoint ins.current.insn {
        wildcard bins sw = {SW};
    }
    lw_sw: coverpoint ins.current.insn {
        wildcard bins sw = {SW};
        wildcard bins lw = {LW};
    }
    store_xlen: coverpoint ins.current.insn {
        `ifdef UDB_MXLEN_64
            wildcard bins sd = {SD};
        `else
            wildcard bins sw = {SW};
        `endif
    }
    load_store_instr: coverpoint ins.current.insn {
        wildcard bins lb  = {LB};
        wildcard bins lbu = {LBU};
        wildcard bins lh  = {LH};
        wildcard bins lhu = {LHU};
        wildcard bins lw  = {LW};
        wildcard bins sb  = {SB};
        wildcard bins sh  = {SH};
        wildcard bins sw  = {SW};
        `ifdef UDB_MXLEN_64
            wildcard bins lwu = {LWU};
            wildcard bins ld  = {LD};
            wildcard bins sd  = {SD};
        `endif
        `ifdef F_SUPPORTED
            wildcard bins flw = {FLW};
            wildcard bins fsw = {FSW};
        `endif
        `ifdef D_SUPPORTED
            wildcard bins fld = {FLD};
            wildcard bins fsd = {FSD};
        `endif
        `ifdef ZFH_SUPPORTED
            wildcard bins flh = {FLH};
            wildcard bins fsh = {FSH};
        `endif
        `ifdef Q_SUPPORTED
            wildcard bins flq = {FLQ};
            wildcard bins fsq = {FSQ};
        `endif
        `ifdef ZCA_SUPPORTED
            wildcard bins c_lw   = {C_LW};
            wildcard bins c_sw   = {C_SW};
            wildcard bins c_lwsp = {C_LWSP};
            wildcard bins c_swsp = {C_SWSP};
            `ifdef UDB_MXLEN_64
                wildcard bins c_ld   = {C_LD};
                wildcard bins c_sd   = {C_SD};
                wildcard bins c_ldsp = {C_LDSP};
                wildcard bins c_sdsp = {C_SDSP};
            `endif
        `endif
        `ifdef ZCB_SUPPORTED
            wildcard bins c_lbu = {C_LBU};
            wildcard bins c_lh  = {C_LH};
            wildcard bins c_lhu = {C_LHU};
            wildcard bins c_sb  = {C_SB};
            wildcard bins c_sh  = {C_SH};
        `endif
        `ifdef ZCF_SUPPORTED
            `ifdef UDB_MXLEN_32
                wildcard bins c_flw   = {C_FLW};
                wildcard bins c_fsw   = {C_FSW};
                wildcard bins c_flwsp = {C_FLWSP};
                wildcard bins c_fswsp = {C_FSWSP};
            `endif
        `endif
        `ifdef ZCD_SUPPORTED
            wildcard bins c_fld   = {C_FLD};
            wildcard bins c_fsd   = {C_FSD};
            wildcard bins c_fldsp = {C_FLDSP};
            wildcard bins c_fsdsp = {C_FSDSP};
        `endif
    }

    // main coverpoints
    cp_mcontrol6_priv_mode: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl_store, tdata2_adr, sw { // NTRIG * 2 m modes
        ignore_bins no_match = binsof(tdata2_adr.zero);
    }
    cp_mcontrol6_execute_adr:     cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl, tdata2_exec_adr, exec_adr_target;                                            // NTRIG * 8 xsl * 2 tdata2
    cp_mcontrol6_load_store_adr:  cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl, tdata2_ls_adr, store_offset, lw_sw;                                    // NTRIG * 8 xsl * 3 tdata2 * 2 offsets * 2 instrs
    cp_mcontrol6_execute_data:    cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_data, tdata1_xsl, tdata2_exec_data, addi_hint;                                          // NTRIG * 8 xsl * 2 tdata2
    cp_mcontrol6_load_store_data: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_data, tdata1_xsl, lw_sw;                                                                // NTRIG * 8 xsl * 2 instrs
    cp_mcontrol6_execute_size:    cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_select_data, tdata1_xsl_load_store_execute, tdata1_size, tdata2_exec_size, exec_size_instr;               // NTRIG * 7 sizes * 2 tdata2 * 2 instrs
    cp_mcontrol6_load_store_size: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_select_adr, tdata1_xsl_load_store, tdata1_size_ls, tdata2_adr, load_store_instr;               // NTRIG * 5 sizes * 2 tdata2 * instrs
    cp_mcontrol6_match:           cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_cmp, store_data_cmp, store_xlen;                   // NTRIG * 4 match * 5 values
    `ifdef UDB_SDTRIG_MCONTROL6_MATCH_AVAILABLE
        cp_mcontrol6_match_napot: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_napot, tdata2_napot, store_data_napot, store_xlen; // NTRIG * 2 match * (min(maskmax6, XLEN-1) - 1) tdata2 * 3 values
        cp_mcontrol6_match_mask:  cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_mask, store_data_mask, store_xlen;                 // NTRIG * 4 match * 11 values
    `endif
    cp_mcontrol6_chain_adr:       cross priv_mode_m, triggernum_chain, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_data, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_xsl_store, store_data_chain, store_offset, sw;                       // (NTRIG-1) * 2 data * 2 adr
endgroup

function void sdtrigsm_sample(int hart, int issue, ins_t ins);
    SdtrigSm_trig_module_reg_cg.sample(ins);
    SdtrigSm_access_cg.sample(ins);
    `ifdef S_SUPPORTED
        SdtrigSm_native_triggers_cg.sample(ins);
    `endif
    SdtrigSm_itrigger_cg.sample(ins);
    SdtrigSm_etrigger_cg.sample(ins);
    SdtrigSm_mcontrol6_cg.sample(ins);
    `ifdef UDB_TCONTROL_AVAILABLE
        SdtrigSm_tcontrol_cg.sample(ins);
    `endif
endfunction
