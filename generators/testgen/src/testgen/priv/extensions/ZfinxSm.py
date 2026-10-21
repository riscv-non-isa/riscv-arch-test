# SPDX-License-Identifier: Apache-2.0

"""Zfinx machine-mode state and CSR access tests."""

from testgen.asm.helpers import write_sigupd
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.registry import add_priv_test_generator


@add_priv_test_generator(
    "ZfinxSm",
    required_extensions=["I", "Zicsr", "Zfinx", "Sm"],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_zfinx_sm(test_data: TestData) -> list[TestChunk]:
    """Check read-only FS/misa fields and Zfinx access with FS off."""
    tc = test_data.begin_test_chunk()
    mask, value, result, source = test_data.int_regs.get_registers(4)
    tc.code.append(f"LI(x{mask}, 0x6000)")
    for fs in range(4):
        tc.code.extend(
            [
                f"csrc mstatus, x{mask}",
                f"LI(x{value}, {fs << 13})",
                test_data.add_testcase(f"fs_{fs}", "cp_mstatus_fs", "ZfinxSm_cg"),
                f"csrs mstatus, x{value}",
                f"csrr x{result}, mstatus",
                f"and x{result}, x{result}, x{mask}",
                write_sigupd(result, test_data),
            ]
        )
    tc.code.append(f"LI(x{mask}, 0x10028)")
    for bits in range(8):
        misa_value = ((bits & 1) << 3) | ((bits & 2) << 4) | ((bits & 4) << 14)
        tc.code.extend(
            [
                f"LI(x{value}, {misa_value})",
                test_data.add_testcase(f"fdq_{bits}", "cp_misa_F_D_Q", "ZfinxSm_cg"),
                f"csrs misa, x{value}",
                f"csrr x{result}, misa",
                f"and x{result}, x{result}, x{mask}",
                write_sigupd(result, test_data),
            ]
        )
    for csr in ("fflags", "frm", "fcsr"):
        values = range(32) if csr == "fflags" else range(5) if csr == "frm" else (0, 0x1F, 0x80, 0x9F)
        for csr_value in values:
            tc.code.extend(
                [
                    f"LI(x{value}, {csr_value})",
                    test_data.add_testcase(f"{csr}_{csr_value}", "cp_fcsr_fs_off", "ZfinxSm_cg"),
                    f"csrw {csr}, x{value}",
                    f"csrr x{result}, {csr}",
                    write_sigupd(result, test_data),
                ]
            )
    tc.code.extend([f"LI(x{source}, 0x3f800000)", "fsrmi 0"])
    for rd in (result, 0):
        tc.code.extend(
            [
                "fsflagsi 0",
                test_data.add_testcase(f"rd_{rd}", "cp_fp_fs_off", "ZfinxSm_cg"),
                f"fdiv.s x{rd}, x{source}, x0, rne",
                write_sigupd(rd, test_data),
                write_sigupd(None, test_data, "fflags"),
            ]
        )
    tc.code.append("fsflagsi 0")
    test_data.int_regs.return_registers([mask, value, result, source])
    return [test_data.end_test_chunk()]
