##################################
# priv/extensions/ExceptionsZibi.py
#
# SPDX-License-Identifier: Apache-2.0
##################################

"""Zibi instruction-address-misaligned exception tests."""

from testgen.asm.helpers import comment_banner, write_sigupd
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.registry import add_priv_test_generator

_CG = "ExceptionsSm_cg"


def _generate_zibi_misaligned_branch_tests(test_data: TestData) -> list[str]:
    temp_reg = test_data.int_regs.get_register()
    lines = [
        comment_banner("cp_instr_adr_misaligned_zibi_branch", "Instruction Address Misaligned Zibi branch (taken)"),
        f"LI(x{temp_reg}, 1)",
        ".p2align 2",
        test_data.add_testcase("beqi_taken_branch_pc_6", "cp_instr_adr_misaligned_zibi_branch", _CG),
        f"beqi x{temp_reg}, 1, .+6",
        "# branch by 6 lands in the upper half of the following addi",
        "addi x0, x2, 0",
        "nop",
        test_data.add_testcase("bnei_taken_branch_pc_6", "cp_instr_adr_misaligned_zibi_branch", _CG),
        f"bnei x{temp_reg}, 2, .+6",
        "# branch by 6 lands in the upper half of the following addi",
        "addi x0, x2, 0",
        "nop",
    ]
    test_data.int_regs.return_registers([temp_reg])
    return lines


def _generate_zibi_misaligned_branch_nottaken_tests(test_data: TestData) -> list[str]:
    temp_reg, check_reg = test_data.int_regs.get_registers(2)
    lines = [
        comment_banner(
            "cp_instr_adr_misaligned_zibi_branch_nottaken",
            "Zibi branch to an unaligned address is not taken",
        ),
        ".p2align 2",
        f"LI(x{temp_reg}, 1)",
        f"LI(x{check_reg}, 0)",
        test_data.add_testcase("beqi_nottaken_branch_pc_6", "cp_instr_adr_misaligned_zibi_branch_nottaken", _CG),
        f"beqi x{temp_reg}, 2, .+6",
        f"addi x{check_reg}, x{check_reg}, 1",
        test_data.add_testcase("bnei_nottaken_branch_pc_6", "cp_instr_adr_misaligned_zibi_branch_nottaken", _CG),
        f"bnei x{temp_reg}, 1, .+6",
        f"addi x{check_reg}, x{check_reg}, 1",
        write_sigupd(check_reg, test_data),
    ]
    test_data.int_regs.return_registers([temp_reg, check_reg])
    return lines


@add_priv_test_generator(
    "ExceptionsSm",
    required_extensions=["Sm", "Zibi"],
    extra_defines=[
        "#define BOOT_TO_MMODE",
        "#define TRAP_SIGUPD_COUNT 100",
    ],
)
def make_exceptions_zibi(test_data: TestData) -> list[TestChunk]:
    """Generate Zibi branch exception tests in M-mode."""
    tc = test_data.begin_test_chunk("zibi")
    tc.code.extend(_generate_zibi_misaligned_branch_tests(test_data))
    tc.code.extend(_generate_zibi_misaligned_branch_nottaken_tests(test_data))
    return [test_data.end_test_chunk()]
