///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Shared Functions
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
// Description:
//   Debug Trigger helper functions for the SdtrigSm, SdtrigS and SdtrigU covergroups. Included once, before them.
//
///////////////////////////////////////////
`ifndef RISCV_COVERAGE_SDTRIG_FUNCTIONS_SVH
`define RISCV_COVERAGE_SDTRIG_FUNCTIONS_SVH

`ifndef UDB_SDTRIG_MASKMAX6
    `define UDB_SDTRIG_MASKMAX6 63
`endif

// 1 when a trigger breakpoint was taken into the mode whose xcause is cause on this record: the trace logs the
// trap's xcause = 3 on the record of the instruction it follows or replaces. A CSR instruction that names xcause,
// and ebreak, are not one.
function automatic logic sdtrig_bp_into(ins_t ins, logic [11:0] cause);
    return ins.current.csr_wb[cause] && ins.current.csr[cause] == 3 &&
           !(ins.current.insn[6:0] == 7'b1110011 && ins.current.insn[14:12] != 3'b000 && ins.current.insn[31:20] == cause) &&
           ins.current.insn != EBREAK && !(ins.current.insn[1:0] != 2'b11 && ins.current.insn[15:0] == C_EBREAK[15:0]);
endfunction
// 1 when a trigger breakpoint was taken on this record, into M or (medeleg[3] = 1) into S
function automatic logic sdtrig_bp_taken(ins_t ins);
    return sdtrig_bp_into(ins, CSR_MCAUSE) || sdtrig_bp_into(ins, CSR_SCAUSE);
endfunction
// xepc of the breakpoint taken on this record
function automatic logic [XLEN-1:0] sdtrig_bp_epc(ins_t ins);
    return sdtrig_bp_into(ins, CSR_SCAUSE) ? ins.current.csr[CSR_SEPC] : ins.current.csr[CSR_MEPC];
endfunction
// PC of the instruction after this record: the target of an xRET, else the next sequential PC
function automatic logic [XLEN-1:0] sdtrig_next_pc(ins_t ins);
    if (ins.current.insn == MRET) return ins.prev.csr[CSR_MEPC];
    if (ins.current.insn == SRET) return ins.prev.csr[CSR_SEPC];
    return ins.current.pc_rdata + ((ins.current.insn[1:0] == 2'b11) ? 4 : 2);
endfunction

// icount fields: count 23:10, m 9, pending 8, s 7, u 6, vs 26, vu 25. mode_bit is the m, s or u bit of the mode the
// test counts in.
function automatic logic [13:0] sdtrig_icount_count(logic [XLEN-1:0] tdata1);
    return tdata1[23:10];
endfunction
// Outcome of a readback (csrr tdata1) of an icount trigger. tdata1 before the read is the value written to arm it,
// because the trace does not log the count or pending changing; after the read it is the current value.
//   1: mode bit clear, count unchanged    2: mode bit set, counted to 0 (hard-wired 1: cleared) and fired (pending clear)
//   3: count 0, pending stays clear 4: count 0, pending was set and firing cleared it    0: anything else
function automatic logic [2:0] sdtrig_icount_outcome(ins_t ins, int mode_bit);
    logic [XLEN-1:0] armed = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "tdata1");
    logic [XLEN-1:0] now   = get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "tdata1");
    if (sdtrig_icount_count(armed) == 0) begin
        if (!armed[8] && sdtrig_icount_count(now) == 0 && !now[8]) return 3'd3;
        if (armed[8] && sdtrig_icount_count(now) == 0 && !now[8])  return 3'd4;
    end else begin
        if (!armed[mode_bit] && sdtrig_icount_count(now) == sdtrig_icount_count(armed)) return 3'd1;
        `ifdef UDB_ICOUNT_HARDWIRED_1
            if (armed[mode_bit] && sdtrig_icount_count(now) == 1 && !now[mode_bit] && !now[8]) return 3'd2;  // firing clears the mode bits instead
        `else
            if (armed[mode_bit] && sdtrig_icount_count(now) == 0 && !now[8])                   return 3'd2;
        `endif
    end
    return 3'd0;
endfunction

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

// An execute trigger that fires takes the breakpoint instead of executing the instruction it matches, which never
// retires. The trace logs that breakpoint (xcause = 3, xepc = the matched instruction's PC) on the record before it,
// so an execute fire is sampled there: 1 when a trigger breakpoint was taken on the instruction after this record.
// After an xRET (the T-SBI return in SdtrigS/U) that instruction is the xRET's target.
function automatic logic sdtrig_exec_fired(ins_t ins);
    return sdtrig_bp_taken(ins) && sdtrig_bp_epc(ins) == sdtrig_next_pc(ins);
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

// SdtrigS/U textra cases: the type of the trigger the instruction on this record acts on, an icount trigger armed
// with count = 1 (a nop) or an mcontrol6 XLEN-wide data-store trigger (the store); 0 for any other instruction
function automatic logic [3:0] sdtrig_textra_action(ins_t ins);
    logic [3:0] trig_type = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0];
    `ifdef UDB_MXLEN_64
        logic store_xlen = ins.current.insn ==? SD;
    `else
        logic store_xlen = ins.current.insn ==? SW;
    `endif
    if (trig_type == 4'd3 && ins.current.insn == 32'h00000013) return trig_type;
    if (trig_type == 4'd6 && store_xlen) return trig_type;
    return 4'd0;
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
    // the fire is logged on the jump into the alias, so xepc is not the next sequential PC (sdtrig_exec_fired)
    if (sdtrig_bp_taken(ins))
        return (sdtrig_bp_epc(ins) == tdata2 && (tdata2 | offset_mask) == '1) ? 2'd1 : 2'd0;
    if ((ins.current.pc_rdata | offset_mask) == '1 && tdata2 != ins.current.pc_rdata &&
        ((tdata2 ^ ins.current.pc_rdata) & offset_mask) == '0)
        return 2'd2;
    return 2'd0;
endfunction

`endif // RISCV_COVERAGE_SDTRIG_FUNCTIONS_SVH
