##################################
# cp_custom_fence.py
#
# jcarlin@hmc.edu Dec 2025
# SPDX-License-Identifier: Apache-2.0
##################################

"""cp_custom_fence coverpoint generator."""

from testgen.asm.helpers import write_sigupd
from testgen.coverpoints.registry import add_coverpoint_generator
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk

# FENCE rd and rs1 are reserved for finer-grain fences in future extensions, and base
# implementations ignore them. Each encoding below is checked by placing a sentinel in its
# nonzero register and writing that register to the signature afterwards, so an implementation
# that writes rd or clobbers rs1 shows up as a signature mismatch.
#
# The encodings are fixed constants because cp_custom_fence bins match the full 32-bit
# instruction word: rd is x1 and rs1 is x2 in the encodings that use them.
RD_REG = 1
SENTINEL = "0x5A5A5A5A"

# (bin name, encoding, register field used by the encoding, description)
RESERVED_FENCES = [
    ("fence_nonzerors1", 0x0331000F, "rs1", "fence with nonzero rs1 behaves normally"),
    ("fence_nonzerord", 0x0330008F, "rd", "fence with nonzero rd  behaves normally"),
    ("fence_fm", 0x1330000F, None, "fence with reserved fm behaves as fence with fm = 0000"),
    ("fence_tso_r_r", 0x8110000F, None, "fence.TSO with R,R rather than RW, RW behaves as fence"),
]

HINT_FENCES = [
    ("fence_hint0a", 0x0031000F, "rs1", "fence with rd = x0, rs1 != x0, fm = 0, pred = 0 is a hint"),
    ("fence_hint0b", 0x0301000F, "rs1", "fence with rd = x0, rs1 != x0, fm = 0, succ = 0 is a hint"),
    ("fence_hint1a", 0x0030008F, "rd", "fence with rd != x0, rs1 = x0, fm = 0, pred = 0 is a hint"),
    ("fence_hint1b", 0x0300008F, "rd", "fence with rd != x0, rs1 = x0, fm = 0, succ = 0 is a hint"),
    ("fence_hint2", 0x0020000F, None, "fence with rd = x0, rs1 = x0, fm = 0, pred = 0, succ != 0 is a hint"),
    ("fence_hint3", 0x0200000F, None, "fence with rd = x0, rs1 = x0, fm = 0, pred != W, succ = 0 is a hint"),
]


def reserved_fence_tests(
    cases: list[tuple[str, int, str | None, str]], rd_reg: int, sig_reg: int, test_data: TestData
) -> list[str]:
    """One testcase and one signature entry per reserved or hint encoding."""
    lines: list[str] = []
    for bin_name, encoding, field, description in cases:
        # rs1 is the signature pointer, which already holds a value both models agree on, so only
        # rd needs a sentinel. Encodings with neither field check that rd survives untouched.
        check_reg = sig_reg if field == "rs1" else rd_reg
        lines.extend(
            [
                f"LI(x{rd_reg}, {SENTINEL})",
                test_data.add_testcase(bin_name, "cp_custom_fence"),
                f".word 0x{encoding:08x}    # {description}",
                write_sigupd(check_reg, test_data),
                "",
            ]
        )
    return lines


@add_coverpoint_generator("cp_custom_fence")
def make_custom_fence(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[TestChunk]:
    """Generate tests for fence coverpoints."""
    if instr_name != "fence":
        raise ValueError(f"cp_custom_fence generator only supports fence instruction, got {instr_name}")

    tc = test_data.begin_test_chunk()
    # Regular fences
    tc.code.extend(
        [
            "# Testcase cp_custom_fence (regular fences)",
            test_data.add_testcase("fence", "cp_custom_fence"),
            "fence",
            test_data.add_testcase("fence_rw_rw", "cp_custom_fence"),
            "fence rw, rw",
            "",
        ]
    )

    # fence.tso
    tc.code.extend(
        [
            "# Testcase cp_custom_fence (fence.tso)",
            test_data.add_testcase("fence_tso_rw_rw", "cp_custom_fence"),
            "fence.tso",
            "",
        ]
    )

    (rd_reg,) = test_data.int_regs.get_registers(1, reg_range=[RD_REG])
    sig_reg = test_data.int_regs.sig_reg

    tc.code.append("# Testcase cp_custom_fence (reserved fence encodings)")
    tc.code.extend(reserved_fence_tests(RESERVED_FENCES, rd_reg, sig_reg, test_data))

    tc.code.append("# Testcase cp_custom_fence (hint fence encodings)")
    tc.code.extend(reserved_fence_tests(HINT_FENCES, rd_reg, sig_reg, test_data))

    test_data.int_regs.return_registers([rd_reg])

    return [test_data.end_test_chunk()]
