///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Madeleine Kan Mkan@hmc.edu, Roman De Santos rdesantos@hmc.edu November 20 2024
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_ZICNTRSM
covergroup ZicntrSm_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"

    // building blocks for the main coverpoints
    csraccess: coverpoint ins.current.insn  {
        wildcard bins csrr = {CSRR};
        wildcard bins csrw = {CSRW};
    }
    counters_mcounteren: coverpoint {ins.current.insn[31:20], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mcounteren", "mcounteren")[31:0] } {
      `ifdef UDB_MCOUNTENABLE_EN_0
        bins cycle_enabled         = {44'b110000000000_00000000000000000000000000000001};
      `endif
      `ifdef UDB_MCOUNTENABLE_EN_1
        bins time_enabled          = {44'b110000000001_00000000000000000000000000000010};
      `endif
      `ifdef UDB_MCOUNTENABLE_EN_2
        bins instret_enabled       = {44'b110000000010_00000000000000000000000000000100};
      `endif
      `ifdef ZIHPM_SUPPORTED
        `ifdef UDB_MCOUNTENABLE_EN_3
          bins hpmcounter3_enabled   = {44'b110000000011_00000000000000000000000000001000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_4
          bins hpmcounter4_enabled   = {44'b110000000100_00000000000000000000000000010000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_5
          bins hpmcounter5_enabled   = {44'b110000000101_00000000000000000000000000100000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_6
          bins hpmcounter6_enabled   = {44'b110000000110_00000000000000000000000001000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_7
          bins hpmcounter7_enabled   = {44'b110000000111_00000000000000000000000010000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_8
          bins hpmcounter8_enabled   = {44'b110000001000_00000000000000000000000100000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_9
          bins hpmcounter9_enabled   = {44'b110000001001_00000000000000000000001000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_10
          bins hpmcounter10_enabled  = {44'b110000001010_00000000000000000000010000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_11
          bins hpmcounter11_enabled  = {44'b110000001011_00000000000000000000100000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_12
          bins hpmcounter12_enabled  = {44'b110000001100_00000000000000000001000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_13
          bins hpmcounter13_enabled  = {44'b110000001101_00000000000000000010000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_14
          bins hpmcounter14_enabled  = {44'b110000001110_00000000000000000100000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_15
          bins hpmcounter15_enabled  = {44'b110000001111_00000000000000001000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_16
          bins hpmcounter16_enabled  = {44'b110000010000_00000000000000010000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_17
          bins hpmcounter17_enabled  = {44'b110000010001_00000000000000100000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_18
          bins hpmcounter18_enabled  = {44'b110000010010_00000000000001000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_19
          bins hpmcounter19_enabled  = {44'b110000010011_00000000000010000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_20
          bins hpmcounter20_enabled  = {44'b110000010100_00000000000100000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_21
          bins hpmcounter21_enabled  = {44'b110000010101_00000000001000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_22
          bins hpmcounter22_enabled  = {44'b110000010110_00000000010000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_23
          bins hpmcounter23_enabled  = {44'b110000010111_00000000100000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_24
          bins hpmcounter24_enabled  = {44'b110000011000_00000001000000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_25
          bins hpmcounter25_enabled  = {44'b110000011001_00000010000000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_26
          bins hpmcounter26_enabled  = {44'b110000011010_00000100000000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_27
          bins hpmcounter27_enabled  = {44'b110000011011_00001000000000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_28
          bins hpmcounter28_enabled  = {44'b110000011100_00010000000000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_29
          bins hpmcounter29_enabled  = {44'b110000011101_00100000000000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_30
          bins hpmcounter30_enabled  = {44'b110000011110_01000000000000000000000000000000};
        `endif
        `ifdef UDB_MCOUNTENABLE_EN_31
          bins hpmcounter31_enabled  = {44'b110000011111_10000000000000000000000000000000};
        `endif
      `endif

      bins cycle_disabled         = {{12'b110000000000, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111110}};
      bins time_disabled          = {{12'b110000000001, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111101}};
      bins instret_disabled       = {{12'b110000000010, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111011}};
      `ifdef ZIHPM_SUPPORTED
        `ifdef UDB_HPM_COUNTER_EN_3
          bins hpmcounter3_disabled   = {{12'b110000000011, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111110111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_4
          bins hpmcounter4_disabled   = {{12'b110000000100, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111101111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_5
          bins hpmcounter5_disabled   = {{12'b110000000101, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111011111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_6
          bins hpmcounter6_disabled   = {{12'b110000000110, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111110111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_7
          bins hpmcounter7_disabled   = {{12'b110000000111, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111101111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_8
          bins hpmcounter8_disabled   = {{12'b110000001000, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111011111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_9
          bins hpmcounter9_disabled   = {{12'b110000001001, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111110111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_10
          bins hpmcounter10_disabled  = {{12'b110000001010, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111101111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_11
          bins hpmcounter11_disabled  = {{12'b110000001011, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111011111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_12
          bins hpmcounter12_disabled  = {{12'b110000001100, `MCOUNTEREN_WRITABLE & 32'b11111111111111111110111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_13
          bins hpmcounter13_disabled  = {{12'b110000001101, `MCOUNTEREN_WRITABLE & 32'b11111111111111111101111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_14
          bins hpmcounter14_disabled  = {{12'b110000001110, `MCOUNTEREN_WRITABLE & 32'b11111111111111111011111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_15
          bins hpmcounter15_disabled  = {{12'b110000001111, `MCOUNTEREN_WRITABLE & 32'b11111111111111110111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_16
          bins hpmcounter16_disabled  = {{12'b110000010000, `MCOUNTEREN_WRITABLE & 32'b11111111111111101111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_17
          bins hpmcounter17_disabled  = {{12'b110000010001, `MCOUNTEREN_WRITABLE & 32'b11111111111111011111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_18
          bins hpmcounter18_disabled  = {{12'b110000010010, `MCOUNTEREN_WRITABLE & 32'b11111111111110111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_19
          bins hpmcounter19_disabled  = {{12'b110000010011, `MCOUNTEREN_WRITABLE & 32'b11111111111101111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_20
          bins hpmcounter20_disabled  = {{12'b110000010100, `MCOUNTEREN_WRITABLE & 32'b11111111111011111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_21
          bins hpmcounter21_disabled  = {{12'b110000010101, `MCOUNTEREN_WRITABLE & 32'b11111111110111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_22
          bins hpmcounter22_disabled  = {{12'b110000010110, `MCOUNTEREN_WRITABLE & 32'b11111111101111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_23
          bins hpmcounter23_disabled  = {{12'b110000010111, `MCOUNTEREN_WRITABLE & 32'b11111111011111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_24
          bins hpmcounter24_disabled  = {{12'b110000011000, `MCOUNTEREN_WRITABLE & 32'b11111110111111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_25
          bins hpmcounter25_disabled  = {{12'b110000011001, `MCOUNTEREN_WRITABLE & 32'b11111101111111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_26
          bins hpmcounter26_disabled  = {{12'b110000011010, `MCOUNTEREN_WRITABLE & 32'b11111011111111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_27
          bins hpmcounter27_disabled  = {{12'b110000011011, `MCOUNTEREN_WRITABLE & 32'b11110111111111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_28
          bins hpmcounter28_disabled  = {{12'b110000011100, `MCOUNTEREN_WRITABLE & 32'b11101111111111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_29
          bins hpmcounter29_disabled  = {{12'b110000011101, `MCOUNTEREN_WRITABLE & 32'b11011111111111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_30
          bins hpmcounter30_disabled  = {{12'b110000011110, `MCOUNTEREN_WRITABLE & 32'b10111111111111111111111111111111}};
        `endif
        `ifdef UDB_HPM_COUNTER_EN_31
          bins hpmcounter31_disabled  = {{12'b110000011111, `MCOUNTEREN_WRITABLE & 32'b01111111111111111111111111111111}};
        `endif
      `endif

      `ifdef UDB_MXLEN_32
          `ifdef UDB_MCOUNTENABLE_EN_0
            bins cycleh_enabled         = {44'b110010000000_00000000000000000000000000000001};
          `endif
          `ifdef UDB_MCOUNTENABLE_EN_1
            bins timeh_enabled          = {44'b110010000001_00000000000000000000000000000010};
          `endif
          `ifdef UDB_MCOUNTENABLE_EN_2
            bins instreth_enabled       = {44'b110010000010_00000000000000000000000000000100};
          `endif
          `ifdef ZIHPM_SUPPORTED
            `ifdef UDB_MCOUNTENABLE_EN_3
              bins hpmcounter3h_enabled   = {44'b110010000011_00000000000000000000000000001000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_4
              bins hpmcounter4h_enabled   = {44'b110010000100_00000000000000000000000000010000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_5
              bins hpmcounter5h_enabled   = {44'b110010000101_00000000000000000000000000100000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_6
              bins hpmcounter6h_enabled   = {44'b110010000110_00000000000000000000000001000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_7
              bins hpmcounter7h_enabled   = {44'b110010000111_00000000000000000000000010000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_8
              bins hpmcounter8h_enabled   = {44'b110010001000_00000000000000000000000100000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_9
              bins hpmcounter9h_enabled   = {44'b110010001001_00000000000000000000001000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_10
              bins hpmcounter10h_enabled  = {44'b110010001010_00000000000000000000010000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_11
              bins hpmcounter11h_enabled  = {44'b110010001011_00000000000000000000100000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_12
              bins hpmcounter12h_enabled  = {44'b110010001100_00000000000000000001000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_13
              bins hpmcounter13h_enabled  = {44'b110010001101_00000000000000000010000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_14
              bins hpmcounter14h_enabled  = {44'b110010001110_00000000000000000100000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_15
              bins hpmcounter15h_enabled  = {44'b110010001111_00000000000000001000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_16
              bins hpmcounter16h_enabled  = {44'b110010010000_00000000000000010000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_17
              bins hpmcounter17h_enabled  = {44'b110010010001_00000000000000100000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_18
              bins hpmcounter18h_enabled  = {44'b110010010010_00000000000001000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_19
              bins hpmcounter19h_enabled  = {44'b110010010011_00000000000010000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_20
              bins hpmcounter20h_enabled  = {44'b110010010100_00000000000100000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_21
              bins hpmcounter21h_enabled  = {44'b110010010101_00000000001000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_22
              bins hpmcounter22h_enabled  = {44'b110010010110_00000000010000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_23
              bins hpmcounter23h_enabled  = {44'b110010010111_00000000100000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_24
              bins hpmcounter24h_enabled  = {44'b110010011000_00000001000000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_25
              bins hpmcounter25h_enabled  = {44'b110010011001_00000010000000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_26
              bins hpmcounter26h_enabled  = {44'b110010011010_00000100000000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_27
              bins hpmcounter27h_enabled  = {44'b110010011011_00001000000000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_28
              bins hpmcounter28h_enabled  = {44'b110010011100_00010000000000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_29
              bins hpmcounter29h_enabled  = {44'b110010011101_00100000000000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_30
              bins hpmcounter30h_enabled  = {44'b110010011110_01000000000000000000000000000000};
            `endif
            `ifdef UDB_MCOUNTENABLE_EN_31
              bins hpmcounter31h_enabled  = {44'b110010011111_10000000000000000000000000000000};
            `endif
          `endif

          bins cycleh_disabled         = {{12'b110010000000, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111110}};
          bins timeh_disabled          = {{12'b110010000001, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111101}};
          bins instreth_disabled       = {{12'b110010000010, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111011}};
          `ifdef ZIHPM_SUPPORTED
            `ifdef UDB_HPM_COUNTER_EN_3
              bins hpmcounter3h_disabled   = {{12'b110010000011, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111110111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_4
              bins hpmcounter4h_disabled   = {{12'b110010000100, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111101111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_5
              bins hpmcounter5h_disabled   = {{12'b110010000101, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111111011111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_6
              bins hpmcounter6h_disabled   = {{12'b110010000110, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111110111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_7
              bins hpmcounter7h_disabled   = {{12'b110010000111, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111101111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_8
              bins hpmcounter8h_disabled   = {{12'b110010001000, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111111011111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_9
              bins hpmcounter9h_disabled   = {{12'b110010001001, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111110111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_10
              bins hpmcounter10h_disabled  = {{12'b110010001010, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111101111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_11
              bins hpmcounter11h_disabled  = {{12'b110010001011, `MCOUNTEREN_WRITABLE & 32'b11111111111111111111011111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_12
              bins hpmcounter12h_disabled  = {{12'b110010001100, `MCOUNTEREN_WRITABLE & 32'b11111111111111111110111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_13
              bins hpmcounter13h_disabled  = {{12'b110010001101, `MCOUNTEREN_WRITABLE & 32'b11111111111111111101111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_14
              bins hpmcounter14h_disabled  = {{12'b110010001110, `MCOUNTEREN_WRITABLE & 32'b11111111111111111011111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_15
              bins hpmcounter15h_disabled  = {{12'b110010001111, `MCOUNTEREN_WRITABLE & 32'b11111111111111110111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_16
              bins hpmcounter16h_disabled  = {{12'b110010010000, `MCOUNTEREN_WRITABLE & 32'b11111111111111101111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_17
              bins hpmcounter17h_disabled  = {{12'b110010010001, `MCOUNTEREN_WRITABLE & 32'b11111111111111011111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_18
              bins hpmcounter18h_disabled  = {{12'b110010010010, `MCOUNTEREN_WRITABLE & 32'b11111111111110111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_19
              bins hpmcounter19h_disabled  = {{12'b110010010011, `MCOUNTEREN_WRITABLE & 32'b11111111111101111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_20
              bins hpmcounter20h_disabled  = {{12'b110010010100, `MCOUNTEREN_WRITABLE & 32'b11111111111011111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_21
              bins hpmcounter21h_disabled  = {{12'b110010010101, `MCOUNTEREN_WRITABLE & 32'b11111111110111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_22
              bins hpmcounter22h_disabled  = {{12'b110010010110, `MCOUNTEREN_WRITABLE & 32'b11111111101111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_23
              bins hpmcounter23h_disabled  = {{12'b110010010111, `MCOUNTEREN_WRITABLE & 32'b11111111011111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_24
              bins hpmcounter24h_disabled  = {{12'b110010011000, `MCOUNTEREN_WRITABLE & 32'b11111110111111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_25
              bins hpmcounter25h_disabled  = {{12'b110010011001, `MCOUNTEREN_WRITABLE & 32'b11111101111111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_26
              bins hpmcounter26h_disabled  = {{12'b110010011010, `MCOUNTEREN_WRITABLE & 32'b11111011111111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_27
              bins hpmcounter27h_disabled  = {{12'b110010011011, `MCOUNTEREN_WRITABLE & 32'b11110111111111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_28
              bins hpmcounter28h_disabled  = {{12'b110010011100, `MCOUNTEREN_WRITABLE & 32'b11101111111111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_29
              bins hpmcounter29h_disabled  = {{12'b110010011101, `MCOUNTEREN_WRITABLE & 32'b11011111111111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_30
              bins hpmcounter30h_disabled  = {{12'b110010011110, `MCOUNTEREN_WRITABLE & 32'b10111111111111111111111111111111}};
            `endif
            `ifdef UDB_HPM_COUNTER_EN_31
              bins hpmcounter31h_disabled  = {{12'b110010011111, `MCOUNTEREN_WRITABLE & 32'b01111111111111111111111111111111}};
            `endif
          `endif // ZIHPM_SUPPORTED
      `endif // UDB_MXLEN_32
    }

    `ifdef U_SUPPORTED
        cp_mcounteren_access_m: cross csraccess, counters_mcounteren, priv_mode_m;
    `endif

    `ifdef S_SUPPORTED
      mcounteren: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mcounteren", "mcounteren"){
          bins ones  = {`MCOUNTEREN_WRITABLE};
          bins zeros = {32'b00000000000000000000000000000000};
      }
      counters_scounteren: coverpoint {ins.current.insn[31:20], get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "scounteren", "scounteren")[31:0]} {
        `ifdef UDB_SCOUNTENABLE_EN_0
          bins cycle_enabled         = {44'b110000000000_00000000000000000000000000000001};
        `endif
        `ifdef UDB_SCOUNTENABLE_EN_1
          bins time_enabled          = {44'b110000000001_00000000000000000000000000000010};
        `endif
        `ifdef UDB_SCOUNTENABLE_EN_2
          bins instret_enabled       = {44'b110000000010_00000000000000000000000000000100};
        `endif
        `ifdef ZIHPM_SUPPORTED
          `ifdef UDB_SCOUNTENABLE_EN_3
            bins hpmcounter3_enabled   = {44'b110000000011_00000000000000000000000000001000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_4
            bins hpmcounter4_enabled   = {44'b110000000100_00000000000000000000000000010000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_5
            bins hpmcounter5_enabled   = {44'b110000000101_00000000000000000000000000100000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_6
            bins hpmcounter6_enabled   = {44'b110000000110_00000000000000000000000001000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_7
            bins hpmcounter7_enabled   = {44'b110000000111_00000000000000000000000010000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_8
            bins hpmcounter8_enabled   = {44'b110000001000_00000000000000000000000100000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_9
            bins hpmcounter9_enabled   = {44'b110000001001_00000000000000000000001000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_10
            bins hpmcounter10_enabled  = {44'b110000001010_00000000000000000000010000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_11
            bins hpmcounter11_enabled  = {44'b110000001011_00000000000000000000100000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_12
            bins hpmcounter12_enabled  = {44'b110000001100_00000000000000000001000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_13
            bins hpmcounter13_enabled  = {44'b110000001101_00000000000000000010000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_14
            bins hpmcounter14_enabled  = {44'b110000001110_00000000000000000100000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_15
            bins hpmcounter15_enabled  = {44'b110000001111_00000000000000001000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_16
            bins hpmcounter16_enabled  = {44'b110000010000_00000000000000010000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_17
            bins hpmcounter17_enabled  = {44'b110000010001_00000000000000100000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_18
            bins hpmcounter18_enabled  = {44'b110000010010_00000000000001000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_19
            bins hpmcounter19_enabled  = {44'b110000010011_00000000000010000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_20
            bins hpmcounter20_enabled  = {44'b110000010100_00000000000100000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_21
            bins hpmcounter21_enabled  = {44'b110000010101_00000000001000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_22
            bins hpmcounter22_enabled  = {44'b110000010110_00000000010000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_23
            bins hpmcounter23_enabled  = {44'b110000010111_00000000100000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_24
            bins hpmcounter24_enabled  = {44'b110000011000_00000001000000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_25
            bins hpmcounter25_enabled  = {44'b110000011001_00000010000000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_26
            bins hpmcounter26_enabled  = {44'b110000011010_00000100000000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_27
            bins hpmcounter27_enabled  = {44'b110000011011_00001000000000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_28
            bins hpmcounter28_enabled  = {44'b110000011100_00010000000000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_29
            bins hpmcounter29_enabled  = {44'b110000011101_00100000000000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_30
            bins hpmcounter30_enabled  = {44'b110000011110_01000000000000000000000000000000};
          `endif
          `ifdef UDB_SCOUNTENABLE_EN_31
            bins hpmcounter31_enabled  = {44'b110000011111_10000000000000000000000000000000};
          `endif
        `endif // ZIHPM_SUPPORTED

        bins cycle_disabled         = {{12'b110000000000, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111110}};
        bins time_disabled          = {{12'b110000000001, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111101}};
        bins instret_disabled       = {{12'b110000000010, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111011}};
        `ifdef ZIHPM_SUPPORTED
          `ifdef UDB_HPM_COUNTER_EN_3
            bins hpmcounter3_disabled   = {{12'b110000000011, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111110111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_4
            bins hpmcounter4_disabled   = {{12'b110000000100, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111101111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_5
            bins hpmcounter5_disabled   = {{12'b110000000101, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111011111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_6
            bins hpmcounter6_disabled   = {{12'b110000000110, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111110111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_7
            bins hpmcounter7_disabled   = {{12'b110000000111, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111101111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_8
            bins hpmcounter8_disabled   = {{12'b110000001000, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111011111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_9
            bins hpmcounter9_disabled   = {{12'b110000001001, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111110111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_10
            bins hpmcounter10_disabled  = {{12'b110000001010, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111101111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_11
            bins hpmcounter11_disabled  = {{12'b110000001011, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111011111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_12
            bins hpmcounter12_disabled  = {{12'b110000001100, `SCOUNTEREN_WRITABLE & 32'b11111111111111111110111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_13
            bins hpmcounter13_disabled  = {{12'b110000001101, `SCOUNTEREN_WRITABLE & 32'b11111111111111111101111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_14
            bins hpmcounter14_disabled  = {{12'b110000001110, `SCOUNTEREN_WRITABLE & 32'b11111111111111111011111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_15
            bins hpmcounter15_disabled  = {{12'b110000001111, `SCOUNTEREN_WRITABLE & 32'b11111111111111110111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_16
            bins hpmcounter16_disabled  = {{12'b110000010000, `SCOUNTEREN_WRITABLE & 32'b11111111111111101111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_17
            bins hpmcounter17_disabled  = {{12'b110000010001, `SCOUNTEREN_WRITABLE & 32'b11111111111111011111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_18
            bins hpmcounter18_disabled  = {{12'b110000010010, `SCOUNTEREN_WRITABLE & 32'b11111111111110111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_19
            bins hpmcounter19_disabled  = {{12'b110000010011, `SCOUNTEREN_WRITABLE & 32'b11111111111101111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_20
            bins hpmcounter20_disabled  = {{12'b110000010100, `SCOUNTEREN_WRITABLE & 32'b11111111111011111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_21
            bins hpmcounter21_disabled  = {{12'b110000010101, `SCOUNTEREN_WRITABLE & 32'b11111111110111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_22
            bins hpmcounter22_disabled  = {{12'b110000010110, `SCOUNTEREN_WRITABLE & 32'b11111111101111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_23
            bins hpmcounter23_disabled  = {{12'b110000010111, `SCOUNTEREN_WRITABLE & 32'b11111111011111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_24
            bins hpmcounter24_disabled  = {{12'b110000011000, `SCOUNTEREN_WRITABLE & 32'b11111110111111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_25
            bins hpmcounter25_disabled  = {{12'b110000011001, `SCOUNTEREN_WRITABLE & 32'b11111101111111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_26
            bins hpmcounter26_disabled  = {{12'b110000011010, `SCOUNTEREN_WRITABLE & 32'b11111011111111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_27
            bins hpmcounter27_disabled  = {{12'b110000011011, `SCOUNTEREN_WRITABLE & 32'b11110111111111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_28
            bins hpmcounter28_disabled  = {{12'b110000011100, `SCOUNTEREN_WRITABLE & 32'b11101111111111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_29
            bins hpmcounter29_disabled  = {{12'b110000011101, `SCOUNTEREN_WRITABLE & 32'b11011111111111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_30
            bins hpmcounter30_disabled  = {{12'b110000011110, `SCOUNTEREN_WRITABLE & 32'b10111111111111111111111111111111}};
          `endif
          `ifdef UDB_HPM_COUNTER_EN_31
            bins hpmcounter31_disabled  = {{12'b110000011111, `SCOUNTEREN_WRITABLE & 32'b01111111111111111111111111111111}};
          `endif
        `endif // ZIHPM_SUPPORTED

        `ifdef UDB_MXLEN_32
            `ifdef UDB_SCOUNTENABLE_EN_0
              bins cycleh_enabled         = {44'b110010000000_00000000000000000000000000000001};
            `endif
            `ifdef UDB_SCOUNTENABLE_EN_1
              bins timeh_enabled          = {44'b110010000001_00000000000000000000000000000010};
            `endif
            `ifdef UDB_SCOUNTENABLE_EN_2
              bins instreth_enabled       = {44'b110010000010_00000000000000000000000000000100};
            `endif
            `ifdef ZIHPM_SUPPORTED
              `ifdef UDB_SCOUNTENABLE_EN_3
                bins hpmcounter3h_enabled   = {44'b110010000011_00000000000000000000000000001000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_4
                bins hpmcounter4h_enabled   = {44'b110010000100_00000000000000000000000000010000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_5
                bins hpmcounter5h_enabled   = {44'b110010000101_00000000000000000000000000100000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_6
                bins hpmcounter6h_enabled   = {44'b110010000110_00000000000000000000000001000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_7
                bins hpmcounter7h_enabled   = {44'b110010000111_00000000000000000000000010000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_8
                bins hpmcounter8h_enabled   = {44'b110010001000_00000000000000000000000100000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_9
                bins hpmcounter9h_enabled   = {44'b110010001001_00000000000000000000001000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_10
                bins hpmcounter10h_enabled  = {44'b110010001010_00000000000000000000010000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_11
                bins hpmcounter11h_enabled  = {44'b110010001011_00000000000000000000100000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_12
                bins hpmcounter12h_enabled  = {44'b110010001100_00000000000000000001000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_13
                bins hpmcounter13h_enabled  = {44'b110010001101_00000000000000000010000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_14
                bins hpmcounter14h_enabled  = {44'b110010001110_00000000000000000100000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_15
                bins hpmcounter15h_enabled  = {44'b110010001111_00000000000000001000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_16
                bins hpmcounter16h_enabled  = {44'b110010010000_00000000000000010000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_17
                bins hpmcounter17h_enabled  = {44'b110010010001_00000000000000100000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_18
                bins hpmcounter18h_enabled  = {44'b110010010010_00000000000001000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_19
                bins hpmcounter19h_enabled  = {44'b110010010011_00000000000010000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_20
                bins hpmcounter20h_enabled  = {44'b110010010100_00000000000100000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_21
                bins hpmcounter21h_enabled  = {44'b110010010101_00000000001000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_22
                bins hpmcounter22h_enabled  = {44'b110010010110_00000000010000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_23
                bins hpmcounter23h_enabled  = {44'b110010010111_00000000100000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_24
                bins hpmcounter24h_enabled  = {44'b110010011000_00000001000000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_25
                bins hpmcounter25h_enabled  = {44'b110010011001_00000010000000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_26
                bins hpmcounter26h_enabled  = {44'b110010011010_00000100000000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_27
                bins hpmcounter27h_enabled  = {44'b110010011011_00001000000000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_28
                bins hpmcounter28h_enabled  = {44'b110010011100_00010000000000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_29
                bins hpmcounter29h_enabled  = {44'b110010011101_00100000000000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_30
                bins hpmcounter30h_enabled  = {44'b110010011110_01000000000000000000000000000000};
              `endif
              `ifdef UDB_SCOUNTENABLE_EN_31
                bins hpmcounter31h_enabled  = {44'b110010011111_10000000000000000000000000000000};
              `endif
            `endif // ZIHPM_SUPPORTED

            bins cycleh_disabled         = {{12'b110010000000, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111110}};
            bins timeh_disabled          = {{12'b110010000001, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111101}};
            bins instreth_disabled       = {{12'b110010000010, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111111011}};
            `ifdef ZIHPM_SUPPORTED
              `ifdef UDB_HPM_COUNTER_EN_3
                bins hpmcounter3h_disabled   = {{12'b110010000011, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111110111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_4
                bins hpmcounter4h_disabled   = {{12'b110010000100, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111101111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_5
                bins hpmcounter5h_disabled   = {{12'b110010000101, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111111011111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_6
                bins hpmcounter6h_disabled   = {{12'b110010000110, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111110111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_7
                bins hpmcounter7h_disabled   = {{12'b110010000111, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111101111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_8
                bins hpmcounter8h_disabled   = {{12'b110010001000, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111111011111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_9
                bins hpmcounter9h_disabled   = {{12'b110010001001, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111110111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_10
                bins hpmcounter10h_disabled  = {{12'b110010001010, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111101111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_11
                bins hpmcounter11h_disabled  = {{12'b110010001011, `SCOUNTEREN_WRITABLE & 32'b11111111111111111111011111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_12
                bins hpmcounter12h_disabled  = {{12'b110010001100, `SCOUNTEREN_WRITABLE & 32'b11111111111111111110111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_13
                bins hpmcounter13h_disabled  = {{12'b110010001101, `SCOUNTEREN_WRITABLE & 32'b11111111111111111101111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_14
                bins hpmcounter14h_disabled  = {{12'b110010001110, `SCOUNTEREN_WRITABLE & 32'b11111111111111111011111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_15
                bins hpmcounter15h_disabled  = {{12'b110010001111, `SCOUNTEREN_WRITABLE & 32'b11111111111111110111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_16
                bins hpmcounter16h_disabled  = {{12'b110010010000, `SCOUNTEREN_WRITABLE & 32'b11111111111111101111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_17
                bins hpmcounter17h_disabled  = {{12'b110010010001, `SCOUNTEREN_WRITABLE & 32'b11111111111111011111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_18
                bins hpmcounter18h_disabled  = {{12'b110010010010, `SCOUNTEREN_WRITABLE & 32'b11111111111110111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_19
                bins hpmcounter19h_disabled  = {{12'b110010010011, `SCOUNTEREN_WRITABLE & 32'b11111111111101111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_20
                bins hpmcounter20h_disabled  = {{12'b110010010100, `SCOUNTEREN_WRITABLE & 32'b11111111111011111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_21
                bins hpmcounter21h_disabled  = {{12'b110010010101, `SCOUNTEREN_WRITABLE & 32'b11111111110111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_22
                bins hpmcounter22h_disabled  = {{12'b110010010110, `SCOUNTEREN_WRITABLE & 32'b11111111101111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_23
                bins hpmcounter23h_disabled  = {{12'b110010010111, `SCOUNTEREN_WRITABLE & 32'b11111111011111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_24
                bins hpmcounter24h_disabled  = {{12'b110010011000, `SCOUNTEREN_WRITABLE & 32'b11111110111111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_25
                bins hpmcounter25h_disabled  = {{12'b110010011001, `SCOUNTEREN_WRITABLE & 32'b11111101111111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_26
                bins hpmcounter26h_disabled  = {{12'b110010011010, `SCOUNTEREN_WRITABLE & 32'b11111011111111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_27
                bins hpmcounter27h_disabled  = {{12'b110010011011, `SCOUNTEREN_WRITABLE & 32'b11110111111111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_28
                bins hpmcounter28h_disabled  = {{12'b110010011100, `SCOUNTEREN_WRITABLE & 32'b11101111111111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_29
                bins hpmcounter29h_disabled  = {{12'b110010011101, `SCOUNTEREN_WRITABLE & 32'b11011111111111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_30
                bins hpmcounter30h_disabled  = {{12'b110010011110, `SCOUNTEREN_WRITABLE & 32'b10111111111111111111111111111111}};
              `endif
              `ifdef UDB_HPM_COUNTER_EN_31
                bins hpmcounter31h_disabled  = {{12'b110010011111, `SCOUNTEREN_WRITABLE & 32'b01111111111111111111111111111111}};
              `endif
            `endif // ZIHPM_SUPPORTED
        `endif //UDB_MXLEN_32
      }

      cp_scounteren_access_m: cross csraccess, counters_scounteren, mcounteren, priv_mode_m;

    `endif // S_SUPPORTED

    // ---- minstret delta coverpoints ----

    ecall: coverpoint ins.current.insn {
        bins ecall = {ECALL};
    }
    ebreak: coverpoint ins.current.insn {
        bins ebreak = {EBREAK};
    }
    insn_lw: coverpoint ins.current.insn {
        wildcard bins lw = {LW};
    }
    adr_misaligned_1: coverpoint {ins.current.rs1_val + ins.current.imm}[2:0] {
        bins one = {3'b001};  // scratch + 1
    }
    `ifdef RVMODEL_ACCESS_FAULT_ADDRESS
        illegal_address: coverpoint ins.current.imm + ins.current.rs1_val {
            bins illegal = {`RVMODEL_ACCESS_FAULT_ADDRESS};
        }
    `endif
    wfi: coverpoint ins.current.insn {
        bins wfi = {WFI};
    }
    mstatus_mie_zero: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "mie")[0] {
        bins zero = {0};
    }
    mstatus_mie_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "mie")[0] {
        bins one = {1};
    }

    insn_add: coverpoint ins.current.insn {
        wildcard bins add = {ADD};
    }
    insn_mret: coverpoint ins.current.insn {
        wildcard bins mret = {MRET};
    }
    insn_sret: coverpoint ins.current.insn {
        wildcard bins sret = {SRET};
    }
    `ifdef ZAWRS_SUPPORTED
        wrs_nto: coverpoint ins.current.insn {
            bins wrs_nto = {WRS_NTO};
        }
        wrs_sto: coverpoint ins.current.insn {
            bins wrs_sto = {WRS_STO};
        }
    `endif

    prev_minstret_read: coverpoint ins.prev.insn {
        wildcard bins csrr_minstret = {32'b101100000010_00000_010_?????_1110011};
    }
    prev_ecall_li: coverpoint ins.prev.insn {
        bins li_a0 = {32'h07300513};  // addi a0, x0, 0x73 (RVTEST_TSBI_ECALL_TEST)
    }
    mip_mtip_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mip", "mtip")[0] {
        bins one = {1};
    }
    mie_mtie_one: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mie", "mtie")[0] {
        bins one = {1};
    }
    mie_zero: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mie", "mie")[31:0] {
        bins zero = {0};
    }

    // retiring instructions
    cp_instret_add:  cross priv_mode_m, insn_add, prev_minstret_read;
    cp_instret_mret: cross priv_mode_m, insn_mret, prev_minstret_read;
    `ifdef S_SUPPORTED
        cp_instret_sret: cross priv_mode_m, insn_sret, prev_minstret_read;
    `endif

    // instructions that trap before retiring
    cp_instret_ecall:  cross priv_mode_m, ecall, prev_ecall_li;
    cp_instret_ebreak: cross priv_mode_m, ebreak, prev_minstret_read;
    `ifdef RVMODEL_ACCESS_FAULT_ADDRESS
        cp_instret_load_access_fault: cross priv_mode_m, insn_lw, illegal_address, prev_minstret_read;
    `endif
    cp_instret_load_misaligned: cross priv_mode_m, insn_lw, adr_misaligned_1, prev_minstret_read;

    // wfi and wrs
    `ifdef UDB_WFI_FINITE
        cp_instret_wfi_timeout: cross priv_mode_m, wfi, mie_zero, prev_minstret_read;
    `endif
    `ifdef UDB_MTI_INTR_IMPL
        cp_instret_wfi_pending: cross priv_mode_m, wfi, mip_mtip_one, mie_mtie_one, mstatus_mie_zero, prev_minstret_read;
        cp_instret_wfi_taken:   cross priv_mode_m, wfi, mie_mtie_one, mstatus_mie_one;
    `endif
    `ifdef ZAWRS_SUPPORTED
        cp_instret_wrs_nto: cross priv_mode_m, wrs_nto, prev_minstret_read;
        cp_instret_wrs_sto: cross priv_mode_m, wrs_sto, prev_minstret_read;
    `endif

endgroup


function void zicntrsm_sample(int hart, int issue, ins_t ins);
    ZicntrSm_cg.sample(ins);
endfunction
