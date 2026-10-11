##################################
# zkt.py
#
# David_Harris@hmc.edu 11 Oct 2026
# SPDX-License-Identifier: Apache-2.0
##################################

"""Zkt data-independent execution latency coverpoint generators (cp_zkt_*)."""

from dataclasses import replace

from testgen.asm.helpers import write_sigupd
from testgen.coverpoints.registry import add_coverpoint_generator
from testgen.data.edges import get_general_edges
from testgen.data.state import TestData, return_testcase_registers
from testgen.data.test_chunk import TestChunk
from testgen.formatters import format_instruction
from testgen.instructions.params import generate_random_params


@add_coverpoint_generator("cp_zkt_rs1_rs2", "cp_zkt_rs1", "cp_zkt_rs2", "cp_zkt_pc")
def make_cp_zkt(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[TestChunk]:
    """Time the instruction with the cycle counter across edge values of its source operands.

    Each testcase reads cycle immediately before and after the instruction and records the
    difference from the first testcase's latency, which is 0 when the latency is data-independent.
    Each testcase runs twice and times the second run, so that instruction-cache misses and branch
    predictor entries left by other code at the same index affect only the untimed first run.
    Registers and immediates are part of the encoding, so they stay fixed and only the data varies.
    """
    edges = get_general_edges(test_data.xlen)
    if coverpoint == "cp_zkt_rs1_rs2":
        operand_values = [{"rs1val": rs1val, "rs2val": rs2val} for rs1val in edges for rs2val in edges]
    elif coverpoint == "cp_zkt_rs1":
        operand_values = [{"rs1val": rs1val} for rs1val in edges]
    elif coverpoint == "cp_zkt_rs2":
        operand_values = [{"rs2val": rs2val} for rs2val in edges]
    elif coverpoint == "cp_zkt_pc":
        operand_values = [{}]  # no data operands; only the pc varies
    else:
        raise ValueError(f"Unknown cp_zkt coverpoint variant: {coverpoint} for {instr_name}")

    tc = test_data.begin_test_chunk()
    start, end, baseline, runs = test_data.int_regs.get_registers(4, exclude_regs=[0])
    # x0 is excluded because rd=x0 forms are HINTs, which Zkt does not cover
    params = generate_random_params(test_data, instr_type, exclude_regs=[0], **operand_values[0])
    if params.immval == 0:
        params.immval = 1  # a zero immediate makes c.addi a HINT
    # Registers loaded by the setup code, which must finish before timing starts
    loaded_regs = [reg for reg in (params.rs1, params.rs2) if reg is not None]
    data_reg = test_data.int_regs.data_reg
    tc.code.extend(
        [
            f"# Each testcase runs twice, counted down in x{runs}, and times the second run:",
            f"#   load the operands, then xor them into x{start} so the loads complete before timing starts",
            f"#   time the instruction between two reads of cycle into x{start} and x{end}, starting at a",
            "#   64-byte boundary so the instructions after it share an instruction-cache line",
            f"#   record x{end} - x{start} - the first testcase's latency in x{baseline}, which must be 0",
            "",
        ]
    )

    for case, values in enumerate(operand_values):
        case_params = replace(params, **values)
        bin_name = ", ".join(f"{name}={value:#x}" for name, value in values.items()) or "timed"
        if case:
            tc.code.append("")
        tc.code.append(f"# Testcase {coverpoint} ({bin_name})")
        label_line = test_data.add_testcase(bin_name, coverpoint)
        data_count = len(tc.data_values)
        setup, test, check = format_instruction(instr_name, instr_type, test_data, case_params)
        data_bytes = f"{len(tc.data_values) - data_count}*SIG_STRIDE"
        tc.code.extend([f"LI(x{runs}, 2)", "1:"])
        if setup:
            tc.code.extend([setup, f"addi x{data_reg}, x{data_reg}, -{data_bytes}"])
        if loaded_regs:
            tc.code.append(f"xor x{start}, x{loaded_regs[0]}, x{loaded_regs[-1]}")
        tc.code.extend(
            [
                ".balign 64",
                f"csrr x{start}, cycle",
                label_line,
                test,
                f"csrr x{end}, cycle",
                f"addi x{runs}, x{runs}, -1",
                f"bnez x{runs}, 1b",
            ]
        )
        if setup:
            tc.code.append(f"addi x{data_reg}, x{data_reg}, {data_bytes}")
        tc.code.append(f"sub x{end}, x{end}, x{start}")
        if case == 0:
            tc.code.append(f"mv x{baseline}, x{end}")
        tc.code.append(f"sub x{end}, x{end}, x{baseline}")
        if check:
            tc.code.append(check)
        tc.code.append(write_sigupd(end, test_data, "int"))

    return_testcase_registers(test_data, params)
    test_data.int_regs.return_registers([start, end, baseline, runs])
    return [test_data.end_test_chunk()]
