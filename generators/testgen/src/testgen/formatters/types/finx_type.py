# SPDX-License-Identifier: Apache-2.0

"""Zfinx instruction formats using the integer register file."""

from testgen.asm.helpers import load_int_reg, write_sigupd
from testgen.data.params import InstructionParams
from testgen.data.state import TestData
from testgen.formatters.registry import InstructionTypeConfig, add_instruction_formatter

finx_i_config = InstructionTypeConfig(required_params={"rd", "rs1", "rs1val"})
finx_r_config = InstructionTypeConfig(required_params={"rd", "rs1", "rs1val", "rs2", "rs2val"})
finx_r4_config = InstructionTypeConfig(required_params={"rd", "rs1", "rs1val", "rs2", "rs2val", "rs3", "rs3val"})


def _format_finx(
    instr_name: str, test_data: TestData, params: InstructionParams, sources: int
) -> tuple[list[str], list[str], list[str]]:
    assert params.rd is not None
    setup: list[str] = []
    operands = [f"x{params.rd}"]
    loaded: set[int] = set()
    for index in range(1, sources + 1):
        name = f"rs{index}"
        reg = getattr(params, name)
        val = getattr(params, f"{name}val")
        assert reg is not None and val is not None
        operands.append(f"x{reg}")
        # Aliased sources share one physical value. Loading x0 still advances the data pointer.
        if reg not in loaded:
            setup.append(load_int_reg(name, reg, val, test_data))
            loaded.add(reg)
    setup.append("fsflagsi 0")
    if params.frm == "dyn":
        assert params.csr_frm_val is not None
        setup.append(f"fsrmi {params.csr_frm_val}")
    if params.frm is not None:
        operands.append(params.frm)
    check = [write_sigupd(params.rd, test_data), write_sigupd(None, test_data, "fflags")]
    if params.frm == "dyn":
        check.append("fsrmi 0")
    return setup, [f"{instr_name} {', '.join(operands)}"], check


@add_instruction_formatter("FINX_I", finx_i_config)
def format_finx_i(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format a Zfinx instruction with one integer-register source."""
    return _format_finx(instr_name, test_data, params, 1)


@add_instruction_formatter("FINX_R", finx_r_config)
def format_finx_r(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format a Zfinx instruction with two integer-register sources."""
    return _format_finx(instr_name, test_data, params, 2)


@add_instruction_formatter("FINX_R4", finx_r4_config)
def format_finx_r4(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format a Zfinx fused multiply-add instruction."""
    return _format_finx(instr_name, test_data, params, 3)
