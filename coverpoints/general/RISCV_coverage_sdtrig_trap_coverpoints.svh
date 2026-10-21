///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Shared Coverpoints
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
// Description:
//   itrigger/etrigger building blocks: the trap taken on this record (sdtrig_trap_* in SdtrigSm_coverage.svh).
//   Weight 0: only the crosses count.
//
///////////////////////////////////////////
trap_from_m: coverpoint sdtrig_trap_origin(ins) {
    type_option.weight = 0;
    bins M_mode = {2'd3};
}
trap_from_s: coverpoint sdtrig_trap_origin(ins) {
    type_option.weight = 0;
    bins S_mode = {2'd1};
}
trap_from_u: coverpoint sdtrig_trap_origin(ins) {
    type_option.weight = 0;
    bins U_mode = {2'd0};
}
trap_selected: coverpoint sdtrig_trap_selected(ins) {
    type_option.weight = 0;
    bins selected = {1'b1};
}
trap_not_selected: coverpoint sdtrig_trap_selected(ins) {
    type_option.weight = 0;
    bins other = {1'b0};
}
trap_not_delegated: coverpoint sdtrig_trap_delegated(ins) {
    type_option.weight = 0;
    bins not_delegated = {1'b0};
}
trap_delegated: coverpoint sdtrig_trap_delegated(ins) {
    type_option.weight = 0;
    bins delegated = {1'b1};
}
// handled in M: never fires, whatever the origin mode's tdata1 bit (both reentrancy options)
trap_result_m: coverpoint sdtrig_trap_result(ins) {
    type_option.weight = 0;
    bins priv_clear_suppressed = {4'b11_0_0};
    bins priv_set_suppressed   = {4'b11_1_0};
}
// handled in S with medeleg[3] = 0: fires into M iff the origin mode's tdata1 bit is set
trap_result_s: coverpoint sdtrig_trap_result(ins) {
    type_option.weight = 0;
    bins priv_clear_suppressed = {4'b01_0_0};
    bins priv_set_fired        = {4'b01_1_1};
}
// handled in S on a cause tdata2 does not select: never fires
trap_result_s_other: coverpoint sdtrig_trap_result(ins) {
    type_option.weight = 0;
    bins priv_clear_suppressed = {4'b01_0_0};
    bins priv_set_suppressed   = {4'b01_1_0};
}
