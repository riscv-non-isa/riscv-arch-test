# SPDX-License-Identifier: Apache-2.0

"""Binary32 values and integer-register behavior for Zfinx."""

from itertools import product

from testgen.coverpoints.registry import add_coverpoint_generator
from testgen.data.edges import FLOAT_EDGES
from testgen.data.finx import FINX_DIRECTED_CASES
from testgen.data.state import TestData, return_testcase_registers
from testgen.data.test_chunk import TestChunk
from testgen.formatters import format_instruction, format_single_testcase
from testgen.instructions.params import generate_random_params

ROUNDING_MODES = ("rne", "rtz", "rdn", "rup", "rmm", "dyn")


@add_coverpoint_generator("cp_finx_rs1_edges", "cp_finx_rs2_edges", "cp_finx_rs3_edges")
def make_finx_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[TestChunk]:
    """Exercise every binary32 edge, optionally crossed with rounding modes."""
    operand = coverpoint.split("_")[2]
    modes = ROUNDING_MODES if coverpoint.endswith(("_frm", "_frm4")) else (None,)
    chunks: list[TestChunk] = []
    for value, mode in product(FLOAT_EDGES.single, modes):
        params = generate_random_params(test_data, instr_type, exclude_regs=[0], **{f"{operand}val": value}, frm=mode)
        name = f"{value:08x}_{mode}"
        chunks.append(format_single_testcase(instr_name, instr_type, test_data, params, coverpoint, name, coverpoint))
        return_testcase_registers(test_data, params)
    return chunks


@add_coverpoint_generator("cr_finx_rs1_rs2_edges", "cr_finx_rs1_rs3_edges")
def make_finx_cross(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[TestChunk]:
    """Cross binary32 source edges and all applicable rounding modes."""
    second = coverpoint.split("_")[3]
    modes = ROUNDING_MODES if coverpoint.endswith(("_frm", "_frm4")) else (None,)
    chunks: list[TestChunk] = []
    for value1, value2, mode in product(FLOAT_EDGES.single, FLOAT_EDGES.single, modes):
        params = generate_random_params(
            test_data, instr_type, exclude_regs=[0], rs1val=value1, **{f"{second}val": value2}, frm=mode
        )
        name = f"{value1:08x}_{value2:08x}_{mode}"
        chunks.append(format_single_testcase(instr_name, instr_type, test_data, params, coverpoint, name, coverpoint))
        return_testcase_registers(test_data, params)
    return chunks


@add_coverpoint_generator("cp_rs3", "cmp_rd_rs3", "cmp_rs1_rs3", "cmp_rs2_rs3", "cmp_rd_rs1_rs2_rs3")
def make_finx_registers(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[TestChunk]:
    """Enumerate rs3 and aliases involving a fused instruction's third source."""
    operands = coverpoint.split("_")[1:]
    chunks: list[TestChunk] = []
    for reg in range(test_data.int_regs.reg_count):
        setup = test_data.int_regs.consume_registers([reg])
        params = generate_random_params(
            test_data,
            instr_type,
            rd=reg if "rd" in operands else None,
            rs1=reg if "rs1" in operands else None,
            rs2=reg if "rs2" in operands else None,
            rs3=reg if "rs3" in operands else None,
        )
        chunk = format_single_testcase(instr_name, instr_type, test_data, params, coverpoint, f"b{reg}", coverpoint)
        if setup:
            chunk.code.insert(0, setup)
        chunks.append(chunk)
        return_testcase_registers(test_data, params)
    return chunks


@add_coverpoint_generator("cp_finx_upper")
def make_finx_upper(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[TestChunk]:
    """Ignore high input bits and observe sign-extended binary32 results on RV64."""
    if test_data.xlen != 64:
        return []
    operand = coverpoint.removeprefix("cp_finx_upper_")
    chunks: list[TestChunk] = []
    for upper, lower in product((0, 0xFFFFFFFF, 0xAAAAAAAA, 0x55555555), FLOAT_EDGES.single):
        value = upper << 32 | lower
        params = generate_random_params(test_data, instr_type, exclude_regs=[0], **{f"{operand}val": value})
        name = f"{upper:08x}_{lower:08x}"
        chunks.append(format_single_testcase(instr_name, instr_type, test_data, params, coverpoint, name, coverpoint))
        return_testcase_registers(test_data, params)
    return chunks


@add_coverpoint_generator("cp_finx_directed")
def make_finx_directed(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[TestChunk]:
    """Exercise rounding boundaries, fused results, conversions and NaN payloads."""
    rounded = instr_name.startswith(("fcvt.", "fsqrt.", "fadd.", "fsub.", "fmul.", "fdiv.", "fmadd.", "fmsub.", "fnm"))
    modes: list[tuple[str | None, int | None]] = []
    if rounded:
        modes.extend((mode, None) for mode in ROUNDING_MODES[:-1])
        modes.extend(("dyn", value) for value in range(5))
    else:
        modes.append((None, None))
    chunks: list[TestChunk] = []
    for name, values in FINX_DIRECTED_CASES[instr_name].items():
        fixed = {f"rs{index}val": value for index, value in enumerate(values, 1)}
        for mode, csr in modes:
            params = generate_random_params(test_data, instr_type, exclude_regs=[0], **fixed, frm=mode, csr_frm_val=csr)
            bin_name = f"{name}_{mode}_{csr}"
            chunks.append(format_single_testcase(instr_name, instr_type, test_data, params, name, bin_name, coverpoint))
            return_testcase_registers(test_data, params)
    return chunks


@add_coverpoint_generator("cp_finx_flags_preserved")
def make_finx_flags_preserved(
    instr_name: str, instr_type: str, coverpoint: str, test_data: TestData
) -> list[TestChunk]:
    """Check all incoming flag combinations for non-signaling instructions."""
    chunks: list[TestChunk] = []
    for flags in range(32):
        params = generate_random_params(test_data, instr_type, exclude_regs=[0])
        chunk = test_data.begin_test_chunk()
        label = test_data.add_testcase(f"b{flags:05b}", coverpoint)
        setup, test, check = format_instruction(instr_name, instr_type, test_data, params)
        chunk.code.extend([setup, f"fsflagsi {flags}", label, test, check])
        chunks.append(test_data.end_test_chunk())
        return_testcase_registers(test_data, params)
    return chunks
