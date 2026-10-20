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

    type_disabled: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "type")[3:0] {
        bins disabled = {4'd15};
    }
    tdata1_type_six: coverpoint ins.current.rs1_val[XLEN-1:XLEN-4] {
        bins mcontrol6 = {4'd6};
    }
    priv_bits: coverpoint ins.current.rs1_val[26:0] {
        bins priv = {27'b001_1000_0000_0000_0000_0101_1000};
    }
    // cp_tdata1_dmode: an M-mode write of dmode = 1 with a supported type leaves dmode = 0
    tdata1_type_dmode: coverpoint ins.current.rs1_val[XLEN-1:XLEN-4] {
        bins icount    = {4'd3};
        bins mcontrol6 = {4'd6};
    }
    dmode_written: coverpoint ins.current.rs1_val[XLEN-5] {
        bins set = {1'b1};
    }
    dmode_after: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "dmode")[0] {
        bins clear = {1'b0};
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
    cp_tselect_trigs:         cross priv_mode_m, triggernum, csrr, csr_tselect;                             // NTRIG
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

// 1 when a trigger breakpoint was taken into M on this record: the trace logs the trap's mcause = 3 on the
// record of the instruction it follows or replaces. A CSR instruction that names mcause, and ebreak, are not one.
function automatic logic sdtrig_bp_taken(ins_t ins);
    return ins.current.csr_wb[CSR_MCAUSE] && ins.current.csr[CSR_MCAUSE] == 3 &&
           !(ins.current.insn[6:0] == 7'b1110011 && ins.current.insn[14:12] != 3'b000 && ins.current.insn[31:20] == CSR_MCAUSE) &&
           ins.current.insn != EBREAK && !(ins.current.insn[1:0] != 2'b11 && ins.current.insn[15:0] == C_EBREAK[15:0]);
endfunction

// icount fields: count 23:10, m 9, pending 8, s 7, u 6, vs 26, vu 25
function automatic logic [13:0] sdtrig_icount_count(logic [XLEN-1:0] tdata1);
    return tdata1[23:10];
endfunction
// Outcome of a readback (csrr tdata1) of an icount trigger. tdata1 before the read is the value written to arm it,
// because the trace does not log the count or pending changing; after the read it is the current value.
//   1: m clear, count unchanged    2: m set, counted to 0 (hard-wired 1: m cleared) and fired (pending clear)
//   3: count 0, pending stays clear 4: count 0, pending was set and firing cleared it    0: anything else
function automatic logic [2:0] sdtrig_icount_outcome(ins_t ins);
    logic [XLEN-1:0] armed = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1");
    logic [XLEN-1:0] now   = get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1");
    if (sdtrig_icount_count(armed) == 0) begin
        if (!armed[8] && sdtrig_icount_count(now) == 0 && !now[8]) return 3'd3;
        if (armed[8] && sdtrig_icount_count(now) == 0 && !now[8])  return 3'd4;
    end else begin
        if (!armed[9] && sdtrig_icount_count(now) == sdtrig_icount_count(armed)) return 3'd1;
        `ifdef UDB_ICOUNT_HARDWIRED_1
            if (armed[9] && sdtrig_icount_count(now) == 1 && !now[9] && !now[8]) return 3'd2;  // firing clears m instead
        `else
            if (armed[9] && sdtrig_icount_count(now) == 0 && !now[8])            return 3'd2;
        `endif
    end
    return 3'd0;
endfunction

covergroup SdtrigSm_icount_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    // csrr tdata1 of an armed icount trigger
    icount_readback: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "type")[3:0] == 4'd3) {
        type_option.weight = 0;
        bins icount = {4'd3};
    }
    // the breakpoint taken on this record while an icount trigger is armed
    icount_fired: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "type")[3:0] iff (sdtrig_bp_taken(ins)) {
        type_option.weight = 0;
        bins icount = {4'd3};
    }
    // armed count and pending, as written to tdata1 (before a readback, current on a fire record)
    armed_gt1: coverpoint {sdtrig_icount_count(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")) > 1,
                           get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")[8]} {
        type_option.weight = 0;
        bins count_gt1 = {2'b10};
    }
    armed_one: coverpoint {sdtrig_icount_count(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")),
                           get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")[8]} {
        type_option.weight = 0;
        bins count_one = {15'b00000000000001_0};
    }
    armed_zero_m: coverpoint {sdtrig_icount_count(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")),
                              get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")[9]} {
        type_option.weight = 0;
        bins count_zero_m_set = {15'b00000000000000_1};
    }
    fired_gt1_m: coverpoint {sdtrig_icount_count(get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1")) > 1,
                             get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1")[9]} {
        type_option.weight = 0;
        bins count_gt1_m_set = {2'b11};
    }
    fired_one_m: coverpoint {sdtrig_icount_count(get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1")),
                             get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1")[9]} {
        type_option.weight = 0;
        bins count_one_m_set = {15'b00000000000001_1};
    }
    fired_zero_pending: coverpoint {sdtrig_icount_count(get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1")),
                                    get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1")[8]} {
        type_option.weight = 0;
        bins count_zero_pending_set = {15'b00000000000000_1};
    }
    // count = 1 matched the trap; pending fires after the handler returns
    mret: coverpoint ins.current.insn {
        type_option.weight = 0;
        bins mret = {MRET};
    }
    // tdata1 write that arms the pending trigger: it fires before the next instruction
    csrw_tdata1: coverpoint ins.current.insn {
        type_option.weight = 0;
        wildcard bins csrw_tdata1 = {CSRW} iff (ins.current.insn[31:20] == CSR_TDATA1);
    }
    icount_count_result: coverpoint sdtrig_icount_outcome(ins) {
        type_option.weight = 0;
        bins m_clear_not_counted = {3'd1};
        bins m_set_fired         = {3'd2};
    }
    icount_eq0_result: coverpoint sdtrig_icount_outcome(ins) {
        type_option.weight = 0;
        bins pending_clear_no_fire = {3'd3};
        bins pending_set_fired     = {3'd4};
    }
    `ifdef UDB_ICOUNT_HARDWIRED_1
        // count hard-wired to 1, armed with m/s/u/vs/vu all set: firing clears all five and pending
        armed_hardwired: coverpoint {sdtrig_icount_count(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")),
                                     get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")[26:25],
                                     get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")[9],
                                     get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1")[7:6]} {
            type_option.weight = 0;
            bins count_one_all_modes = {19'b00000000000001_11_1_11};
        }
        hardwired_result: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1")[26:25],
                                      get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1")[9:6]} {
            type_option.weight = 0;
            bins modes_and_pending_cleared = {6'b00_0000};
        }
    `endif

    // main coverpoints
    `ifdef UDB_ICOUNT_HARDWIRED_1
        cp_icount_hardwired: cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_hardwired, hardwired_result;  // NTRIG
    `else
        cp_icount_instr:      cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_gt1, icount_count_result;  // NTRIG * 2 m
        cp_icount_instr_fire: cross priv_mode_m, triggernum, icount_fired, fired_gt1_m;                                          // NTRIG
        cp_icount_eq0:        cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_zero_m, icount_eq0_result; // NTRIG * 2 pending
        cp_icount_eq0_fire:   cross priv_mode_m, triggernum, icount_fired, fired_zero_pending, csrw_tdata1;                      // NTRIG
    `endif
    cp_icount_trap:           cross priv_mode_m, triggernum, csrr, csr_tdata1, icount_readback, armed_one, icount_count_result;   // NTRIG * 2 m
    cp_icount_trap_fire:      cross priv_mode_m, triggernum, icount_fired, fired_one_m, mret;                                     // NTRIG
endgroup

// 1 when an mcontrol6 trigger with action = 0 fired on this lr/sc/AMO exactly when it should.
// lr and the AMO read are loads, sc and the AMO write are stores. An address match compares rs1 (the access address).
// A data match compares the sc store data (rs2), or for lr the loaded data: the test stores the nonzero tdata2 at the
// address first, so lr matches exactly when tdata2 is nonzero.
function automatic logic sdtrig_a_as_expected(ins_t ins);
    logic [XLEN-1:0] tdata1 = get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1");
    logic [XLEN-1:0] tdata2 = get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2");
    logic is_lr  = ins.current.insn ==? LR_W  || ins.current.insn ==? LR_D;
    logic is_sc  = ins.current.insn ==? SC_W  || ins.current.insn ==? SC_D;
    logic is_amo = ins.current.insn[6:0] == 7'b0101111 && !is_lr && !is_sc;
    logic match;
    if (!tdata1[21])   match = tdata2 == ins.current.rs1_val;
    else if (is_sc)    match = tdata2 == ins.current.rs2_val;
    else               match = is_lr && tdata2 != '0;
    return sdtrig_bp_taken(ins) == (match && (((is_lr || is_amo) && tdata1[0]) || ((is_sc || is_amo) && tdata1[1])));
endfunction

covergroup SdtrigSm_a_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    a_xsl: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
        type_option.weight = 0;
        bins execute = {3'b100};
        bins store   = {3'b010};
        bins load    = {3'b001};
    }
    a_tdata2_adr: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") {
        type_option.weight = 0;
        wildcard bins scratch = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") == ins.current.rs1_val);
        bins zero             = {'0};
    }
    a_tdata2_data: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") {
        type_option.weight = 0;
        wildcard bins value = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") != '0);
        bins zero           = {'0};
    }
    lrsc_op: coverpoint ins.current.insn {
        type_option.weight = 0;
        wildcard bins lr_w = {LR_W};
        wildcard bins sc_w = {SC_W};
        `ifdef UDB_MXLEN_64
            wildcard bins lr_d = {LR_D};
            wildcard bins sc_d = {SC_D};
        `endif
    }
    // data matches with size = 0 are defined only for XLEN-wide accesses
    lrsc_op_xlen: coverpoint ins.current.insn {
        type_option.weight = 0;
        `ifdef UDB_MXLEN_64
            wildcard bins lr_d = {LR_D};
            wildcard bins sc_d = {SC_D};
        `else
            wildcard bins lr_w = {LR_W};
            wildcard bins sc_w = {SC_W};
        `endif
    }
    amo_op: coverpoint ins.current.insn {
        type_option.weight = 0;
        wildcard bins amoswap_w = {AMOSWAP_W};
        wildcard bins amoadd_w  = {AMOADD_W};
        wildcard bins amoand_w  = {AMOAND_W};
        wildcard bins amoor_w   = {AMOOR_W};
        wildcard bins amoxor_w  = {AMOXOR_W};
        wildcard bins amomax_w  = {AMOMAX_W};
        wildcard bins amomaxu_w = {AMOMAXU_W};
        wildcard bins amomin_w  = {AMOMIN_W};
        wildcard bins amominu_w = {AMOMINU_W};
        `ifdef UDB_MXLEN_64
            wildcard bins amoswap_d = {AMOSWAP_D};
            wildcard bins amoadd_d  = {AMOADD_D};
            wildcard bins amoand_d  = {AMOAND_D};
            wildcard bins amoor_d   = {AMOOR_D};
            wildcard bins amoxor_d  = {AMOXOR_D};
            wildcard bins amomax_d  = {AMOMAX_D};
            wildcard bins amomaxu_d = {AMOMAXU_D};
            wildcard bins amomin_d  = {AMOMIN_D};
            wildcard bins amominu_d = {AMOMINU_D};
        `endif
    }
    // fired (into M, mcause = 3) iff the trigger matches the access as a load or store
    a_outcome: coverpoint sdtrig_a_as_expected(ins) {
        type_option.weight = 0;
        bins as_expected = {1'b1};
    }

    // main coverpoints
    cp_lrsc_addr: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, a_tdata2_adr, a_xsl, lrsc_op, a_outcome;        // NTRIG * 2 tdata2 * 3 xsl * 2 (RV64 4) ops
    cp_lrsc_data: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_data, a_tdata2_data, a_xsl, lrsc_op_xlen, a_outcome; // NTRIG * 2 tdata2 * 3 xsl * 2 ops
    cp_amo:       cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, a_tdata2_adr, a_xsl, amo_op, a_outcome;         // NTRIG * 2 tdata2 * 3 xsl * 9 (RV64 18) ops
endgroup

// 1 when an mcontrol6 trigger with action = 0 fired on this cache operation exactly when it should: cbo.* match as
// stores on the address in rs1 with select = 0 and size = 0; with select = 1 (no data) or another size they do not,
// and prefetches never match. rs1 is the block base, so every allowed compare address agrees (Sdtrig_cache_compare_opts).
function automatic logic sdtrig_cbo_as_expected(ins_t ins);
    logic [XLEN-1:0] tdata1 = get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1");
    logic [XLEN-1:0] tdata2 = get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2");
    logic is_cbo = ins.current.insn ==? CBO_CLEAN || ins.current.insn ==? CBO_FLUSH ||
                   ins.current.insn ==? CBO_INVAL || ins.current.insn ==? CBO_ZERO;
    return sdtrig_bp_taken(ins) == (is_cbo && !tdata1[21] && tdata1[18:16] == 3'd0 && tdata1[1] && tdata2 == ins.current.rs1_val);
endfunction

covergroup SdtrigSm_cache_operations_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    cbo_xsl: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
        type_option.weight = 0;
        bins execute = {3'b100};
        bins store   = {3'b010};
        bins load    = {3'b001};
    }
    prefetch_xsl: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
        type_option.weight = 0;
        bins load_store = {3'b011};
    }
    cbo_select: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "select")[0] {
        type_option.weight = 0;
        bins address = {1'b0};
        bins data    = {1'b1};
    }
    // tdata2 relative to the cache block address in rs1
    cbo_tdata2: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") {
        type_option.weight = 0;
        wildcard bins block      = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") == ins.current.rs1_val);
        wildcard bins below      = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") == ins.current.rs1_val - 1);
        wildcard bins next_block = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") == ins.current.rs1_val + XLEN'(`UDB_CACHE_BLOCK_SIZE));
        bins zero                = {'0};
    }
    prefetch_tdata2: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") {
        type_option.weight = 0;
        wildcard bins address = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") == ins.current.rs1_val);
        bins zero             = {'0};
    }
    // fired (into M, mcause = 3) iff the operation matches as a store
    cbo_outcome: coverpoint sdtrig_cbo_as_expected(ins) {
        type_option.weight = 0;
        bins as_expected = {1'b1};
    }
    `ifdef ZICBOM_SUPPORTED
        cbom_op: coverpoint ins.current.insn {
            type_option.weight = 0;
            wildcard bins cbo_clean = {CBO_CLEAN};
            wildcard bins cbo_flush = {CBO_FLUSH};
            wildcard bins cbo_inval = {CBO_INVAL};
        }
    `endif
    `ifdef ZICBOZ_SUPPORTED
        cboz_op: coverpoint ins.current.insn {
            type_option.weight = 0;
            wildcard bins cbo_zero = {CBO_ZERO};
        }
    `endif
    `ifdef ZICBOP_SUPPORTED
        prefetch_op: coverpoint ins.current.insn {
            type_option.weight = 0;
            wildcard bins prefetch_i = {PREFETCH_I};
            wildcard bins prefetch_r = {PREFETCH_R};
            wildcard bins prefetch_w = {PREFETCH_W};
        }
    `endif

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
// Element width in bytes of a unit-stride vector load/store (width field 000/101/110/111 = 8/16/32/64 bits)
function automatic int sdtrig_vec_eew_bytes(logic [31:0] insn);
    case (insn[14:12])
        3'b000:  return 1;
        3'b101:  return 2;
        3'b110:  return 4;
        default: return 8;
    endcase
endfunction
// 1 when an mcontrol6 trigger with action = 0 fired on this unit-stride vector load/store exactly when it should:
// each active element below vl is matched as its own access of SEW bytes (Sdtrig_mult_mem_access), so an address
// match fires when tdata2 is the address of an accessed element, size is 0 or SEW, and the x/s/l bit fits the access.
function automatic logic sdtrig_vec_as_expected(ins_t ins);
    logic [XLEN-1:0] tdata1 = get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1");
    logic [XLEN-1:0] tdata2 = get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2");
    int vl = int'(get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vl", "vl"));
    int eew = sdtrig_vec_eew_bytes(ins.current.insn);
    logic masked = !ins.current.insn[25];
    logic store = ins.current.insn[6:0] == 7'b0100111;
    logic size_ok, hit;
    case (tdata1[18:16])
        3'd0:    size_ok = 1'b1;
        3'd1:    size_ok = eew == 1;
        3'd2:    size_ok = eew == 2;
        3'd3:    size_ok = eew == 4;
        3'd5:    size_ok = eew == 8;
        default: size_ok = 1'b0;
    endcase
    hit = 1'b0;
    for (int i = 0; i < vl && i < `UDB_VLEN; i++)
        if ((!masked || ins.current.v_wdata[0][i]) && tdata2 == ins.current.rs1_val + XLEN'(i * eew)) hit = 1'b1;
    return sdtrig_bp_taken(ins) == (!tdata1[21] && size_ok && hit && (store ? tdata1[1] : tdata1[0]));
endfunction

covergroup SdtrigSm_combined_accesses_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    vec_access: coverpoint ins.current.insn {
        type_option.weight = 0;
        wildcard bins vle8  = {VLE8_V};
        wildcard bins vle16 = {VLE16_V};
        wildcard bins vle32 = {VLE32_V};
        wildcard bins vse8  = {VSE8_V};
        wildcard bins vse16 = {VSE16_V};
        wildcard bins vse32 = {VSE32_V};
        `ifdef ZVE64X_SUPPORTED
            wildcard bins vle64 = {VLE64_V};
            wildcard bins vse64 = {VSE64_V};
        `endif
    }
    // the trigger watches the direction of the access: load (x/s/l = 001) for vle, store (010) for vse
    vec_xsl: coverpoint {ins.current.insn[6:0] == 7'b0100111, get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0],
                         get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
        type_option.weight = 0;
        bins access_direction = {4'b0_001, 4'b1_010};
    }
    vec_unmasked: coverpoint ins.current.insn[25] {
        type_option.weight = 0;
        bins unmasked = {1'b1};
    }
    vec_masked: coverpoint ins.current.insn[25] {
        type_option.weight = 0;
        bins masked = {1'b0};
    }
    // vl = 1 accesses only the element at the base; vsetivli with AVL 9 gives a vl that reaches base + 8 (vl = VLMAX < 9
    // for SEW 64 at VLEN 128)
    vec_vl: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vl", "vl") == 1 ? 2'd1 :
                        get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vl", "vl") * sdtrig_vec_eew_bytes(ins.current.insn) > 8 ? 2'd2 : 2'd0) {
        type_option.weight = 0;
        bins one       = {2'd1};
        bins reaches_8 = {2'd2};
    }
    vec_vl_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vl", "vl") {
        type_option.weight = 0;
        bins one = {1};
    }
    vec_vl_reaches_8: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vl", "vl") * sdtrig_vec_eew_bytes(ins.current.insn) > 8 {
        type_option.weight = 0;
        bins reaches_8 = {1'b1};
    }
    // tdata2 relative to the base address in rs1
    vec_tdata2: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") {
        type_option.weight = 0;
        wildcard bins base        = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") == ins.current.rs1_val);
        wildcard bins base_plus_8 = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") == ins.current.rs1_val + 8);
        bins zero                 = {'0};
    }
    vec_tdata2_base_zero: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") {
        type_option.weight = 0;
        wildcard bins base = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") == ins.current.rs1_val);
        bins zero          = {'0};
    }
    vec_tdata2_plus_8: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") {
        type_option.weight = 0;
        wildcard bins base_plus_8 = {'x} iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata2", "tdata2") == ins.current.rs1_val + 8);
    }
    // v0 mask bit of the element at base + 8
    vec_element_8: coverpoint ins.current.v_wdata[0][8 / sdtrig_vec_eew_bytes(ins.current.insn)] {
        type_option.weight = 0;
        bins masked_off = {1'b0};
        bins active     = {1'b1};
    }
    // fired (into M, mcause = 3) iff an active element below vl matches
    vec_outcome: coverpoint sdtrig_vec_as_expected(ins) {
        type_option.weight = 0;
        bins as_expected = {1'b1};
    }

    // main coverpoints
    cp_vector_load_store: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, vec_tdata2_base_zero, tdata1_size, vec_vl_one, vec_unmasked, vec_access, vec_xsl, vec_outcome;  // NTRIG * 2 tdata2 * sizes * 6 (Zve64x 8) accesses
    cp_vector_accesses:   cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, vec_tdata2, tdata1_size_any, vec_vl, vec_unmasked, vec_access, vec_xsl, vec_outcome;    // NTRIG * 3 tdata2 * 2 vl * 6 (8) accesses
    cp_vector_mask:       cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_adr, vec_tdata2_plus_8, tdata1_size_any, vec_vl_reaches_8, vec_masked, vec_element_8, vec_access, vec_xsl, vec_outcome; // NTRIG * 2 mask states * 6 (8) accesses
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

// An execute trigger that fires takes the breakpoint instead of executing the instruction it matches, which never
// retires. The trace logs that breakpoint (mcause = 3, mepc = the matched instruction's PC) on the record before it,
// so an execute fire is sampled there: 1 when a trigger breakpoint was taken on the instruction after this record.
function automatic logic sdtrig_exec_fired(ins_t ins);
    return sdtrig_trap_fired(ins) &&
           ins.current.csr[CSR_MEPC] == ins.current.pc_rdata + ((ins.current.insn[1:0] == 2'b11) ? 4 : 2);
endfunction
// cp_mcontrol6_execute_size target: 1 = addi x0, x1, 0 (the 32-bit hint), 2 = c.nop. A fire on a select = data trigger
// with match = equal identifies the target by tdata2; otherwise the target is the instruction that retired.
function automatic logic [1:0] sdtrig_exec_size_target(ins_t ins);
    if (sdtrig_exec_fired(ins))
        return (ins.current.csr[CSR_TDATA2] == 32'h00008013) ? 2'd1 : (ins.current.csr[CSR_TDATA2] == 'h0001) ? 2'd2 : 2'd0;
    if (ins.current.insn == 32'h00008013) return 2'd1;
    if (ins.current.insn[1:0] != 2'b11 && ins.current.insn[15:0] == 16'h0001) return 2'd2;
    return 2'd0;
endfunction

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
    // add x0, x1, x2 at tdata2 (pc) or with tdata2 = 0 (zero): seen retiring, or as the breakpoint that replaced it
    exec_adr_target: coverpoint (sdtrig_exec_fired(ins) && ins.current.csr[CSR_MEPC] == ins.current.csr[CSR_TDATA2]) ? 2'd1 :
                                (ins.current.insn != 32'h00208033)                    ? 2'd0 :
                                (ins.current.pc_rdata == ins.current.csr[CSR_TDATA2]) ? 2'd1 :
                                (ins.current.csr[CSR_TDATA2] == '0)                   ? 2'd2 : 2'd0 {
        bins pc   = {2'd1};
        bins zero = {2'd2};
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
    // addi x0, x1, 0 seen retiring, or as the breakpoint that replaced it
    exec_data_target: coverpoint ins.current.csr[CSR_TDATA2] iff (sdtrig_exec_fired(ins) || ins.current.insn == 32'h00008013) {
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
    exec_size_target: coverpoint sdtrig_exec_size_target(ins) {
        bins addi_hint = {2'd1};
        `ifdef ZCA_SUPPORTED
            bins c_nop = {2'd2};
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
    cp_mcontrol6_execute_adr:     cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl, exec_adr_target;                                                             // NTRIG * 8 xsl * 2 tdata2
    cp_mcontrol6_load_store_adr:  cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_adr, tdata1_xsl, tdata2_ls_adr, store_offset, lw_sw;                                    // NTRIG * 8 xsl * 3 tdata2 * 2 offsets * 2 instrs
    cp_mcontrol6_execute_data:    cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_data, tdata1_xsl, exec_data_target;                                                     // NTRIG * 8 xsl * 2 tdata2
    cp_mcontrol6_load_store_data: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_select_data, tdata1_xsl, lw_sw;                                                                // NTRIG * 8 xsl * 2 instrs
    cp_mcontrol6_execute_size:    cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_select_data, tdata1_xsl_load_store_execute, tdata1_size, tdata2_exec_size, exec_size_target;              // NTRIG * 7 sizes * 2 tdata2 * 2 instrs
    cp_mcontrol6_load_store_size: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_match_equal, tdata1_select_adr, tdata1_xsl_load_store, tdata1_size_ls, tdata2_adr, load_store_instr;               // NTRIG * 5 sizes * 2 tdata2 * instrs
    cp_mcontrol6_match:           cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_cmp, store_data_cmp, store_xlen;                   // NTRIG * 4 match * 5 values
    `ifdef UDB_SDTRIG_MCONTROL6_MATCH_AVAILABLE
        cp_mcontrol6_match_napot: cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_napot, tdata2_napot, store_data_napot, store_xlen; // NTRIG * 2 match * (min(maskmax6, XLEN-1) - 1) tdata2 * 3 values
        cp_mcontrol6_match_mask:  cross priv_mode_m, triggernum, tdata1_type_mcontrol6, tdata1_m_on, tdata1_chain_disabled, tdata1_size_any, tdata1_select_data, tdata1_xsl_store, tdata1_match_mask, store_data_mask, store_xlen;                 // NTRIG * 4 match * 11 values
    `endif
    cp_mcontrol6_chain_adr:       cross priv_mode_m, triggernum_chain, tdata1_type_mcontrol6, tdata1_m_on, tdata1_select_data, tdata1_chain_disabled, tdata1_match_equal, tdata1_size_any, tdata1_xsl_store, store_data_chain, store_offset, sw;                       // (NTRIG-1) * 2 data * 2 adr
endgroup

// textra32/textra64 (tdata3) context matching, sampled when tdata1 arms an icount or mcontrol6 trigger, and on the
// S-handled traps that an itrigger or etrigger watches.
// Field positions: textra64 mhvalue 63:51, mhselect 50:48, sbytemask 39:36, svalue 33:2, sselect 1:0;
//                  textra32 mhvalue 31:26, mhselect 25:23, sbytemask 19:18, svalue 17:2, sselect 1:0.
function automatic logic [2:0] sdtrig_textra_mhselect(logic [XLEN-1:0] t3);
    return 3'((t3 >> ((XLEN == 64) ? 48 : 23)) & 'h7);
endfunction
function automatic logic [12:0] sdtrig_textra_mhvalue(logic [XLEN-1:0] t3);
    return 13'((XLEN == 64) ? ((t3 >> 51) & 'h1fff) : ((t3 >> 26) & 'h3f));
endfunction
function automatic logic [1:0] sdtrig_textra_sselect(logic [XLEN-1:0] t3);
    return 2'(t3 & 'h3);
endfunction
function automatic logic [3:0] sdtrig_textra_sbytemask(logic [XLEN-1:0] t3);
    return 4'((XLEN == 64) ? ((t3 >> 36) & 'hf) : ((t3 >> 18) & 'h3));
endfunction
// 1 when mhvalue equals the low 13 (RV64) or 6 (RV32) bits of mcontext
function automatic logic sdtrig_textra_mcontext_match(logic [XLEN-1:0] t3, logic [XLEN-1:0] mcontext);
    return sdtrig_textra_mhvalue(t3) == 13'(mcontext & ((XLEN == 64) ? 'h1fff : 'h3f));
endfunction
// 1 when svalue equals scontext in every byte that sbytemask does not ignore
function automatic logic sdtrig_textra_scontext_match(logic [XLEN-1:0] t3, logic [XLEN-1:0] scontext);
    logic [31:0] svalue   = 32'((XLEN == 64) ? (t3 >> 2) : ((t3 >> 2) & 'hffff));
    logic [31:0] ctx      = 32'((XLEN == 64) ? scontext : (scontext & 'hffff));
    logic [3:0]  bytemask = sdtrig_textra_sbytemask(t3);
    for (int i = 0; i < 4; i++)
        if (bytemask[i]) begin
            svalue[8*i +: 8]  = '0;
            ctx[8*i +: 8]    = '0;
        end
    return svalue == ctx;
endfunction

// 1 when the low ASIDMAX (RV64 16, RV32 9) bits of svalue equal satp.ASID
function automatic logic sdtrig_textra_asid_match(logic [XLEN-1:0] t3, logic [XLEN-1:0] satp);
    return (XLEN == 64) ? (((t3 >> 2) & 'hffff) == ((satp >> 44) & 'hffff))
                        : (((t3 >> 2) & 'h1ff) == ((satp >> 22) & 'h1ff));
endfunction

// cp_textra_itrigger/etrigger: a trap handled in S with the origin mode's tdata1 bit set (sdtrig_trap_result 01_1_x),
// where the itrigger/etrigger fired exactly when its textra condition holds. {1, match}: mhselect = 4, sselect = 0;
// {2, match}: sselect = 1 (scontext), mhselect = 0, sbytemask = 0; 0: anything else, or the wrong outcome.
function automatic logic [2:0] sdtrig_textra_trap_outcome(ins_t ins);
    logic [XLEN-1:0] t3     = ins.current.csr[CSR_TDATA3];
    logic [3:0]      result = sdtrig_trap_result(ins);
    logic [1:0]      sel;
    logic            match;
    if (result[3:1] != 3'b01_1) return 3'd0;
    if (sdtrig_textra_mhselect(t3) == 3'd4 && sdtrig_textra_sselect(t3) == 2'd0) begin
        sel   = 2'd1;
        match = sdtrig_textra_mcontext_match(t3, ins.current.csr[CSR_MCONTEXT]);
    end else if (sdtrig_textra_mhselect(t3) == 3'd0 && sdtrig_textra_sselect(t3) == 2'd1 && sdtrig_textra_sbytemask(t3) == 4'd0) begin
        sel   = 2'd2;
        match = sdtrig_textra_scontext_match(t3, ins.current.csr[CSR_SCONTEXT]);
    end else return 3'd0;
    return (result[0] == match) ? {sel, match} : 3'd0;
endfunction

covergroup SdtrigSm_textra_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_trap_coverpoints.svh"

    arm_type: coverpoint ins.current.rs1_val[XLEN-1:XLEN-4] {
        bins icount    = {4'd3};
        bins mcontrol6 = {4'd6};
    }
    mhselect: coverpoint sdtrig_textra_mhselect(ins.current.csr[CSR_TDATA3]) {
        bins ignore   = {3'd0};
        bins mcontext = {3'd4};
    }
    mhselect_mcontext: coverpoint sdtrig_textra_mhselect(ins.current.csr[CSR_TDATA3]) {
        bins mcontext = {3'd4};
    }
    sselect: coverpoint sdtrig_textra_sselect(ins.current.csr[CSR_TDATA3]) {
        bins ignore   = {2'd0};
        bins scontext = {2'd1};
    }
    mhselect_ignore: coverpoint sdtrig_textra_mhselect(ins.current.csr[CSR_TDATA3]) {
        bins ignore = {3'd0};
    }
    sselect_ignore: coverpoint sdtrig_textra_sselect(ins.current.csr[CSR_TDATA3]) {
        bins ignore = {2'd0};
    }
    sselect_scontext: coverpoint sdtrig_textra_sselect(ins.current.csr[CSR_TDATA3]) {
        bins scontext = {2'd1};
    }
    // bytes ignored by sbytemask; with every byte ignored the compare always matches (sbytemask_all)
    sbytemask: coverpoint sdtrig_textra_sbytemask(ins.current.csr[CSR_TDATA3]) {
        bins none  = {4'b0000};
        bins byte0 = {4'b0001};
        bins byte1 = {4'b0010};
    `ifdef UDB_MXLEN_64
        bins byte2 = {4'b0100};
        bins byte3 = {4'b1000};
    `endif
    }
    sbytemask_all: coverpoint sdtrig_textra_sbytemask(ins.current.csr[CSR_TDATA3]) {
    `ifdef UDB_MXLEN_64
        bins all = {4'b1111};
    `else
        bins all = {4'b0011};
    `endif
    }
    mcontext_match: coverpoint sdtrig_textra_mcontext_match(ins.current.csr[CSR_TDATA3], ins.current.csr[CSR_MCONTEXT]) {
        bins mismatch = {1'b0};
        bins match    = {1'b1};
    }
    scontext_match: coverpoint sdtrig_textra_scontext_match(ins.current.csr[CSR_TDATA3], ins.current.csr[CSR_SCONTEXT]) {
        bins mismatch = {1'b0};
        bins match    = {1'b1};
    }

    sselect_asid: coverpoint sdtrig_textra_sselect(ins.current.csr[CSR_TDATA3]) {
        bins asid = {2'd2};
    }
    asid_match: coverpoint sdtrig_textra_asid_match(ins.current.csr[CSR_TDATA3], ins.current.csr[CSR_SATP]) {
        bins mismatch = {1'b0};
        bins match    = {1'b1};
    }

    // cp_textra_mhselect_no_h: a tdata3 write of an mhselect value that needs H, on a trigger armed as icount or mcontrol6
    csr_tdata3: coverpoint ins.current.insn[31:20] {
        bins tdata3 = {CSR_TDATA3};
    }
    armed_type: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "type")[3:0] {
        bins icount    = {4'd3};
        bins mcontrol6 = {4'd6};
    }
    mhselect_written: coverpoint sdtrig_textra_mhselect(ins.current.rs1_val) {
        bins h_only[] = {3'd1, 3'd2, 3'd3, 3'd5, 3'd6, 3'd7};
    }
    mhselect_legal: coverpoint sdtrig_textra_mhselect(ins.current.csr[CSR_TDATA3]) {
        bins legal = {3'd0, 3'd4};
    }

    scontext_match_only: coverpoint sdtrig_textra_scontext_match(ins.current.csr[CSR_TDATA3], ins.current.csr[CSR_SCONTEXT]) {
        bins match = {1'b1};
    }

    // itrigger/etrigger textra: the trap the trigger watches, handled in S, fired into M iff the context matches
    itrigger_interrupt: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (sdtrig_trap_interrupt(ins)) {
        type_option.weight = 0;
        bins itrigger = {4'd4};
    }
    etrigger_exception: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (sdtrig_trap_exception(ins)) {
        type_option.weight = 0;
        bins etrigger = {4'd5};
    }
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

// cp_tdata2_translate: a tdata2 value read back in M while satp.MODE selects the mode it is valid in.
// 1/2: Sv39 largest VA with the sign bit clear / smallest with it set, 3/4: Sv48, 5/6: Sv57, 7/8: Sv32,
// 9: Bare and the largest PA (zero-extended), 0: anything else.
function automatic logic [3:0] sdtrig_tdata2_xlate_value(ins_t ins);
    logic [XLEN-1:0] v = ins.current.rd_val;
`ifdef UDB_MXLEN_64
    logic [3:0] mode = ins.current.csr[CSR_SATP][63:60];
    if (mode == 4'd8  && v == 64'h0000_003F_FFFF_FFFF) return 4'd1;
    if (mode == 4'd8  && v == 64'hFFFF_FFC0_0000_0000) return 4'd2;
    if (mode == 4'd9  && v == 64'h0000_7FFF_FFFF_FFFF) return 4'd3;
    if (mode == 4'd9  && v == 64'hFFFF_8000_0000_0000) return 4'd4;
    if (mode == 4'd10 && v == 64'h00FF_FFFF_FFFF_FFFF) return 4'd5;
    if (mode == 4'd10 && v == 64'hFF00_0000_0000_0000) return 4'd6;
    if (mode == 4'd0  && v == (64'd1 << `UDB_PHYS_ADDR_WIDTH) - 64'd1) return 4'd9;
`else
    logic bare = !ins.current.csr[CSR_SATP][31];
    if (!bare && v == 32'h7FFF_FFFF) return 4'd7;
    if (!bare && v == 32'h8000_0000) return 4'd8;
    if (bare && v == ((`UDB_PHYS_ADDR_WIDTH >= 32) ? 32'hFFFF_FFFF : 32'((64'd1 << `UDB_PHYS_ADDR_WIDTH) - 64'd1))) return 4'd9;
`endif
    return 4'd0;
endfunction
// satp.MODE: RV64 satp[63:60]; RV32 1 = Sv32
function automatic logic [3:0] sdtrig_satp_mode(ins_t ins);
`ifdef UDB_MXLEN_64
    return ins.current.csr[CSR_SATP][63:60];
`else
    return {3'b0, ins.current.csr[CSR_SATP][31]};
`endif
endfunction
// cp_tdata2_translate_exec, for code run through the alias superpage in the last root slot (VA bits above the
// superpage offset all 1): 1 = an execute trigger fired with tdata2 = the matched instruction's VA there;
// 2 = an instruction ran there with tdata2 = its PA (same superpage offset, identity mapped) and nothing fired.
function automatic logic [1:0] sdtrig_tdata2_xlate_exec(ins_t ins);
    logic [XLEN-1:0] tdata2 = ins.current.csr[CSR_TDATA2];
    logic [XLEN-1:0] offset_mask;
    case (sdtrig_satp_mode(ins))
`ifdef UDB_MXLEN_64
        4'd8:    offset_mask = (XLEN'(1) << 30) - 1;
        4'd9:    offset_mask = (XLEN'(1) << 39) - 1;
        4'd10:   offset_mask = (XLEN'(1) << 48) - 1;
`else
        4'd1:    offset_mask = (XLEN'(1) << 22) - 1;
`endif
        default: return 2'd0;
    endcase
    // the fire is logged on the jump into the alias, so mepc is not the next sequential PC (sdtrig_exec_fired)
    if (sdtrig_trap_fired(ins))
        return (ins.current.csr[CSR_MEPC] == tdata2 && (tdata2 | offset_mask) == '1) ? 2'd1 : 2'd0;
    if ((ins.current.pc_rdata | offset_mask) == '1 && tdata2 != ins.current.pc_rdata &&
        ((tdata2 ^ ins.current.pc_rdata) & offset_mask) == '0)
        return 2'd2;
    return 2'd0;
endfunction

covergroup SdtrigSm_address_matches_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"
    `include "general/RISCV_coverage_sdtrig_coverpoints.svh"

    csr_tdata2: coverpoint ins.current.insn[31:20] {
        type_option.weight = 0;
        bins tdata2 = {CSR_TDATA2};
    }
    tdata2_xlate_value: coverpoint sdtrig_tdata2_xlate_value(ins) {
        type_option.weight = 0;
        bins bare_max_pa = {4'd9};
    `ifdef UDB_MXLEN_64
        `ifdef SV39_SUPPORTED
            bins sv39_msb_0 = {4'd1};
            bins sv39_msb_1 = {4'd2};
        `endif
        `ifdef SV48_SUPPORTED
            bins sv48_msb_0 = {4'd3};
            bins sv48_msb_1 = {4'd4};
        `endif
        `ifdef SV57_SUPPORTED
            bins sv57_msb_0 = {4'd5};
            bins sv57_msb_1 = {4'd6};
        `endif
    `else
        `ifdef SV32_SUPPORTED
            bins sv32_msb_0 = {4'd7};
            bins sv32_msb_1 = {4'd8};
        `endif
    `endif
    }
    satp_xlate_mode: coverpoint sdtrig_satp_mode(ins) {
        type_option.weight = 0;
    `ifdef UDB_MXLEN_64
        `ifdef SV39_SUPPORTED
            bins sv39 = {4'd8};
        `endif
        `ifdef SV48_SUPPORTED
            bins sv48 = {4'd9};
        `endif
        `ifdef SV57_SUPPORTED
            bins sv57 = {4'd10};
        `endif
    `else
        `ifdef SV32_SUPPORTED
            bins sv32 = {4'd1};
        `endif
    `endif
    }
    tdata2_xlate_exec: coverpoint sdtrig_tdata2_xlate_exec(ins) {
        type_option.weight = 0;
        bins va_fired     = {2'd1};
        bins pa_not_fired = {2'd2};
    }

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
