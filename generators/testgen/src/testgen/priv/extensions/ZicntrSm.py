##################################
# ZicntrSm.py
#
# ZicntrSm privileged extension test generator: counter-enable behavior observed from M-mode.
# David_Harris@hmc.edu 22 August 2026
# SPDX-License-Identifier: Apache-2.0
##################################

"""ZicntrSm extension test generator: M-mode counter reads under walking mcounteren / scounteren."""

from testgen.asm.helpers import comment_banner, write_sigupd
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.ZicntrCommon import (
    counteren_walk_tests,
    instret_exception_tests,
    instret_interrupt_tests,
    instret_retire_tests,
)
from testgen.priv.registry import add_priv_test_generator

covergroup = "ZicntrSm_cg"


def _mtime_write_tests(test_data: TestData) -> list[str]:
    """cp_mtime_write: write memory-mapped mtime (and mtimeh on RV32), then read it back through time."""
    coverpoint = "cp_mtime_write"
    r1, r2 = test_data.int_regs.get_registers(2)
    lines = [comment_banner(coverpoint, "Write mtime and read back time")]
    lines.extend(
        [
            "#ifdef RVMODEL_MTIME_ADDRESS",
            f"LI(x{r1}, 42)        # value to write to mtime",
            f"LA(x{r2}, RVMODEL_MTIME_ADDRESS)        # load address of mtime",
            f"SREG x{r1}, 0(x{r2})        # write mtime = 42 using memory-mapped I/O",
            "fence o, i        # order the mtime write before the time read",
            test_data.add_testcase("", coverpoint, covergroup),
            f"csrr x{r2}, time        # read time",
            f"sub x{r2}, x{r2}, x{r1}          # difference should be small",
            f"sltiu x{r2}, x{r2}, 100          # signature is 1 only if time is within 100 above the written value",
            write_sigupd(r2, test_data),
            "",
            "#if __riscv_xlen == 32",
            f"LI(x{r1}, 67)        # value to write to mtimeh",
            f"LA(x{r2}, RVMODEL_MTIME_ADDRESS)        # load address of mtimeh",
            f"SREG x{r1}, 4(x{r2})        # write mtimeh = 67 using memory-mapped I/O",
            "fence o, i        # order the mtimeh write before the timeh read",
            test_data.add_testcase("h", coverpoint, covergroup),
            f"csrr x{r2}, timeh        # read timeh",
            f"sub x{r2}, x{r2}, x{r1}          # difference should be zero",
            write_sigupd(r2, test_data),
            "#endif",
            "#endif  // RVMODEL_MTIME_ADDRESS",
        ]
    )
    test_data.int_regs.return_registers([r1, r2])
    return lines


@add_priv_test_generator(
    "ZicntrSm",
    required_extensions=[
        "Sm",
        "Zicntr",
    ],
    march_extensions=["Zicntr", "Zihpm", "Zawrs"],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_zicntrsm(test_data: TestData) -> list[TestChunk]:
    """Generate tests for ZicntrSm coverpoints: the M-mode halves of the Zicntr counter-enable tests."""
    test_chunks: list[TestChunk] = []
    tc = test_data.begin_test_chunk()

    tc.code.append("#ifdef U_SUPPORTED")
    tc.code.extend(
        counteren_walk_tests(
            test_data,
            covergroup,
            "cp_mcounteren_access_m",
            "Write walking 1s and 0s to mcounteren.  Read from corresponding counter and counterh in M-mode",
            csrs=["mcounteren"],
            mode="M",
        )
    )
    tc.code.append("#endif // U_SUPPORTED")
    tc.code.append("#ifdef S_SUPPORTED")
    for setting in ("ones", "zeros"):
        tc.code.extend(
            counteren_walk_tests(
                test_data,
                covergroup,
                "cp_scounteren_access_m",
                f"Write walking 1s and 0s to scounteren with mcounteren = all {setting}.  Read from corresponding counter and counterh in M-mode",
                csrs=["scounteren"],
                mode="M",
                mcounteren=setting,
                tag=f"mcounteren_{setting}_",
            )
        )
    tc.code.append("#endif // S_SUPPORTED")

    tc.code.extend(instret_retire_tests(test_data, covergroup, "M"))
    tc.code.extend(instret_exception_tests(test_data, covergroup, "M"))
    tc.code.extend(instret_interrupt_tests(test_data, covergroup, "M"))
    tc.code.extend(_mtime_write_tests(test_data))

    test_chunks.append(test_data.end_test_chunk())
    return test_chunks
