##################################
# priv/extensions/SmstateenSe0.py
#
# Smstateen test generator: mstateen0.SE0 gating of sstateen0.
# SPDX-License-Identifier: Apache-2.0
##################################

"""mstateen0.SE0 control over sstateen0, generated into the Smstateen suite.

The subject here is the M-mode control bit, so the suite boots to M-mode and is not
part of RVA23 certification. The sstateen0 accesses themselves still have to execute
in S-mode to hit the priv_mode_s bin, which is reached through T-SBI.
"""

from testgen.asm.helpers import comment_banner
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.registry import add_priv_test_generator

_CG = "Smstateen_cg"
_CSR_OPS = ["csrrw", "csrrs", "csrrc", "csrr"]

GOTO_SMODE = "RVTEST_TSBI_GOTO_SMODE  # enter S-mode"
GOTO_MMODE = "RVTEST_TSBI_GOTO_MMODE  # return to M-mode"


def _write_se0(temp_reg: int, *, enable: bool) -> list[str]:
    """Set or clear SE0 in mstateen0 (RV64) / mstateen0h (RV32)."""
    action = "csrs" if enable else "csrc"
    description = "set SE0=1" if enable else "clear SE0=0"
    return [
        "#if __riscv_xlen == 64",
        f"LI(x{temp_reg}, 0x8000000000000000)  # SE0 = bit 63 of mstateen0",
        f"{action} mstateen0, x{temp_reg}  # {description}",
        "#else",
        f"LI(x{temp_reg}, 0x80000000)  # SE0 = bit 31 of mstateen0h",
        f"{action} mstateen0h, x{temp_reg}  # {description}",
        "#endif",
    ]


def _save_mstateen(save_reg: int, save_regh: int) -> list[str]:
    return [
        f"csrr x{save_reg}, mstateen0  # save mstateen0",
        "#if __riscv_xlen == 32",
        f"csrr x{save_regh}, mstateen0h  # save mstateen0h on RV32",
        "#endif",
    ]


def _restore_mstateen(save_reg: int, save_regh: int) -> list[str]:
    return [
        f"csrw mstateen0, x{save_reg}  # restore mstateen0",
        "#if __riscv_xlen == 32",
        f"csrw mstateen0h, x{save_regh}  # restore mstateen0h on RV32",
        "#endif",
    ]


def _generate_se0_controls_sstateen0(test_data: TestData, *, se0: int) -> list[str]:
    """CSR ops on sstateen0 from S-mode with mstateen0.SE0 set or clear.

    With SE0=0 the access takes an illegal-instruction trap; with SE0=1 it is permitted.
    """
    state_word = "one" if se0 else "zero"
    coverpoint = f"cp_mstateen0_se0_{state_word}_controls_sstateen0"
    detail = "SE0=1 (access permitted)" if se0 else "SE0=0 (should trap)"

    lines = [comment_banner(coverpoint, f"CSR ops to sstateen0 from S-mode with mstateen0.{detail}")]

    temp_reg, save_mstateen, save_mstatenh, save_sstateen, ones_reg = test_data.int_regs.get_registers(5)

    lines.extend(
        [
            f"csrr x{save_sstateen}, sstateen0  # save sstateen0",
            f"LI(x{ones_reg}, -1)",
        ]
    )
    lines.extend(_save_mstateen(save_mstateen, save_mstatenh))
    lines.extend(_write_se0(temp_reg, enable=bool(se0)))

    lines.append(GOTO_SMODE)

    for op in _CSR_OPS:
        insn = f"{op} x{temp_reg}, sstateen0" if op == "csrr" else f"{op} x{temp_reg}, sstateen0, x{ones_reg}"
        lines.extend(
            [
                "",
                test_data.add_testcase(f"sstateen0_{op.lower()}_se0_{se0}_smode", coverpoint, _CG),
                insn,
            ]
        )

    lines.append(GOTO_MMODE)
    lines.extend(["", f"csrw sstateen0, x{save_sstateen}  # restore sstateen0"])
    lines.extend(_restore_mstateen(save_mstateen, save_mstatenh))

    test_data.int_regs.return_registers([temp_reg, save_mstateen, save_mstatenh, save_sstateen, ones_reg])
    return lines


@add_priv_test_generator(
    "Smstateen",
    required_extensions=["Smstateen", "Ssstateen"],
    march_extensions=["Ssstateen", "Smstateen"],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_smstateen_se0(test_data: TestData) -> list[TestChunk]:
    """Generate the mstateen0.SE0 gating tests for the Smstateen suite."""
    test_chunks: list[TestChunk] = []
    tc = test_data.begin_test_chunk()
    tc.code.extend(_generate_se0_controls_sstateen0(test_data, se0=0))
    tc.code.extend(_generate_se0_controls_sstateen0(test_data, se0=1))
    test_chunks.append(test_data.end_test_chunk())
    return test_chunks
