///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Shared Coverpoints
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
// Description:
//   mcontrol6 building blocks of the SdtrigSm/S/U mcontrol6 covergroups
//   Weight 0: only the crosses count.
//
///////////////////////////////////////////
triggernum_chain: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tselect", "tselect") {
    type_option.weight = 0;
    bins chained_pair[] = {[1:`UDB_SDTRIG_NUM_TRIGGERS-1]};
}
tdata1_m: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "m")[0] {
    type_option.weight = 0;
    bins disabled = {1'b0};
    bins enabled  = {1'b1};
}
tdata1_xsl_store: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
    type_option.weight = 0;
    bins store = {3'b010};
}
tdata1_xsl_load_store: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
    type_option.weight = 0;
    bins load_store = {3'b011};
}
tdata1_xsl_load_store_execute: coverpoint {get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "execute")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "store")[0], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "load")[0]} {
    type_option.weight = 0;
    bins execute = {3'b111};
}
tdata1_match_cmp: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "match")[3:0] {
    type_option.weight = 0;
    bins equal = {4'd0};
    `ifdef UDB_SDTRIG_MCONTROL6_MATCH_AVAILABLE
        bins ge        = {4'd2};
        bins lt        = {4'd3};
        bins not_equal = {4'd8};
    `endif
}
// add x0, x1, x2 at tdata2 (pc) or with tdata2 = 0 (zero): seen retiring, or as the breakpoint that replaced it
exec_adr_target: coverpoint (sdtrig_exec_fired(ins) && sdtrig_bp_epc(ins) == ins.current.csr[CSR_TDATA2]) ? 2'd1 :
                            (ins.current.insn != 32'h00208033)                    ? 2'd0 :
                            (ins.current.pc_rdata == ins.current.csr[CSR_TDATA2]) ? 2'd1 :
                            (ins.current.csr[CSR_TDATA2] == '0)                   ? 2'd2 : 2'd0 {
    type_option.weight = 0;
    bins pc   = {2'd1};
    bins zero = {2'd2};
}
tdata2_ls_adr: coverpoint (ins.current.csr[CSR_TDATA2] == ins.current.rs1_val     ? 2'd0 :
                           ins.current.csr[CSR_TDATA2] == ins.current.rs1_val + 8 ? 2'd1 :
                           ins.current.csr[CSR_TDATA2] == '0                      ? 2'd2 : 2'd3) {
    type_option.weight = 0;
    bins scratch        = {2'd0};
    bins scratch_plus_8 = {2'd1};
    bins zero           = {2'd2};
}
tdata1_size_ls: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "size")[2:0] {
    type_option.weight = 0;
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
    type_option.weight = 0;
    bins addi_hint = {32'h00008013};
    bins nofire    = {2}; // no instruction in the test has this encoding
}
tdata2_exec_size: coverpoint ins.current.csr[CSR_TDATA2] {
    type_option.weight = 0;
    bins addi_hint = {32'h00008013};
    bins c_nop     = {32'h0001};
}
store_data_cmp: coverpoint (ins.current.rs2_val == '0       ? 3'd0 :
                            ins.current.rs2_val == '1       ? 3'd4 :
                            ins.current.rs2_val == ins.current.csr[CSR_TDATA2] - 1 ? 3'd1 :
                            ins.current.rs2_val == ins.current.csr[CSR_TDATA2]     ? 3'd2 :
                            ins.current.rs2_val == ins.current.csr[CSR_TDATA2] + 1 ? 3'd3 : 3'd5) {
    type_option.weight = 0;
    bins zero  = {3'd0};
    bins below = {3'd1};
    bins equal = {3'd2};
    bins above = {3'd3};
    bins ones  = {3'd4};
}
`ifdef UDB_SDTRIG_MCONTROL6_MATCH_AVAILABLE
    tdata1_match_napot: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "match")[3:0] {
        type_option.weight = 0;
        bins napot     = {4'd1};
        bins not_napot = {4'd9};
    }
    tdata1_match_mask: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "tdata1", "match")[3:0] {
        type_option.weight = 0;
        bins mask_low      = {4'd4};
        bins mask_high     = {4'd5};
        bins not_mask_low  = {4'd12};
        bins not_mask_high = {4'd13};
    }
    tdata2_napot: coverpoint $clog2(~ins.current.csr[CSR_TDATA2] & (ins.current.csr[CSR_TDATA2] + 1)) iff (ins.current.csr[CSR_TDATA2] != '1) {
        type_option.weight = 0;
        bins zero_bit[] = {[1:((`UDB_SDTRIG_MASKMAX6 < XLEN-1) ? `UDB_SDTRIG_MASKMAX6 : XLEN-1) - 1]};
    }
    store_data_napot: coverpoint ins.current.rs2_val {
        type_option.weight = 0;
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
        type_option.weight = 0;
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
    type_option.weight = 0;
    bins data = {1'b1};
    bins zero = {1'b0} iff (ins.current.rs2_val == '0);
}
store_offset: coverpoint ins.current.imm {
    type_option.weight = 0;
    bins scratch        = {0};
    bins scratch_plus_8 = {8};
}
exec_size_target: coverpoint sdtrig_exec_size_target(ins) {
    type_option.weight = 0;
    bins addi_hint = {2'd1};
    `ifdef ZCA_SUPPORTED
        bins c_nop = {2'd2};
    `endif
}
sw: coverpoint ins.current.insn {
    type_option.weight = 0;
    wildcard bins sw = {SW};
}
lw_sw: coverpoint ins.current.insn {
    type_option.weight = 0;
    wildcard bins sw = {SW};
    wildcard bins lw = {LW};
}
// XLEN-wide load and store, for select = data matches with size = 0 (any)
load_store_xlen: coverpoint ins.current.insn {
    type_option.weight = 0;
    `ifdef UDB_MXLEN_64
        wildcard bins sd = {SD};
        wildcard bins ld = {LD};
    `else
        wildcard bins sw = {SW};
        wildcard bins lw = {LW};
    `endif
}
store_xlen: coverpoint ins.current.insn {
    type_option.weight = 0;
    `ifdef UDB_MXLEN_64
        wildcard bins sd = {SD};
    `else
        wildcard bins sw = {SW};
    `endif
}
load_store_instr: coverpoint ins.current.insn {
    type_option.weight = 0;
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
