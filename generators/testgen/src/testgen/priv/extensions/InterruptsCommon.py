##################################
# priv/extensions/InterruptsCommon.py
#
# Shared interrupt test generation for InterruptsS and InterruptsSm.
# David_Harris@hmc.edu 6 September 2026
# SPDX-License-Identifier: Apache-2.0
##################################


"""Shared interrupt test generators"""

from testgen.asm.helpers import comment_banner
from testgen.asm.tsbi import tsbi_call
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk

machine_ints = {"MEI": 11, "MTI": 7, "MSI": 3}
supervisor_ints = {"LCOFI": 13, "SEI": 9, "STI": 5, "SSI": 1, "VSEI": 10, "VSTI": 6, "VSSI": 2}

# TODO: remove once https://github.com/riscv/riscv-unified-db/pull/1963 is merged and UDB emits these
# from the MEI/MTI/MSI/SEI/STI/SSI_INTR_IMPL parameters. UDB_LCOFI_INTR_IMPL stays derived from
# SSCOFPMF_SUPPORTED in tests/env/derived_config.h.
INTR_IMPL_DEFINES = [
    "#define UDB_MEI_INTR_IMPL",
    "#define UDB_MTI_INTR_IMPL",
    "#define UDB_MSI_INTR_IMPL",
    "#define UDB_SEI_INTR_IMPL",
    "#define UDB_STI_INTR_IMPL",
    "#define UDB_SSI_INTR_IMPL",
]

# RVTEST_SET/CLR_<name>_INT_<priv> macro name (tests/env/utils.h) for each interrupt type.
# Types missing here have no trigger macros yet; their UDB_<int>_INTR_IMPL guard is never defined.
_int_macro = {"MEI": "MEXT", "MTI": "MTIME", "MSI": "MSW", "SEI": "SEXT", "STI": "STIME", "SSI": "SSW"}

# Privilege needed to access a CSR, keyed by name prefix, and privilege held by each test mode.
# HS-mode can reach h* and vs* CSRs directly; VS-mode reaches only its own s* aliases.
_CSR_LEVEL = {"m": 3, "h": 2, "vs": 2, "s": 1}
_MODE_LEVEL = {"M": 3, "S": 2, "VS": 1, "U": 0, "VU": 0}


def _csr_level(instr: str) -> int:
    """Privilege level of the CSR named in a csr* instruction (0 for unprivileged CSRs)."""
    mnemonic, operands = instr.split("#", 1)[0].split(None, 1)
    fields = [f.strip() for f in operands.split(",")]
    csr = fields[1] if mnemonic.startswith("csrr") else fields[0]
    for prefix, level in _CSR_LEVEL.items():
        if csr.startswith(prefix):
            return level
    return 0


def _csr_access(instr: str, mode: str) -> str:
    """A CSR instruction issued directly when ``mode`` can access the CSR, otherwise through T-SBI.

    U-mode reaches m*, s*, h*, and vs* CSRs through T-SBI; S-mode reaches m* CSRs through T-SBI.
    """
    return instr if _MODE_LEVEL[mode] >= _csr_level(instr) else tsbi_call(instr)


def mode_guard(suite: str, priv: str) -> str | None:
    """Preprocessor symbol that must be defined for ``priv`` tests in ``suite`` to be assembled.

    InterruptsS requires S and therefore U, so only the virtualized modes need a guard there.
    """
    if suite == "InterruptsSm":
        return {"M": None, "S": "S_SUPPORTED", "U": "U_SUPPORTED", "VS": "H_SUPPORTED", "VU": "H_SUPPORTED"}[priv]
    return {"S": None, "U": None, "VS": "H_SUPPORTED", "VU": "H_SUPPORTED"}[priv]


def guard_open(suite: str, priv: str) -> list[str]:
    """#ifdef line for tests that run in ``priv``, or nothing when the mode is always present."""
    guard = mode_guard(suite, priv)
    return [f"#ifdef {guard}"] if guard else []


def guard_close(suite: str, priv: str) -> list[str]:
    """Matching #endif for guard_open; must be emitted in the same test chunk."""
    guard = mode_guard(suite, priv)
    return [f"#endif // {guard}"] if guard else []


def mode_enter(suite: str, priv: str) -> list[str]:
    """Switch from the suite's boot mode (M for InterruptsSm, S for InterruptsS) into ``priv``.

    Emitted at the start of every chunk because chunks may be split into separate files,
    each of which boots afresh. Clobbers a0 only.
    """
    boot = "M" if suite == "InterruptsSm" else "S"
    if priv == boot:
        return []
    return [f"RVTEST_TSBI_GOTO_{priv}MODE # enter {priv}-mode"]


def mode_exit(suite: str, priv: str) -> list[str]:
    """Return from ``priv`` to the suite's boot mode at the end of a chunk. Clobbers a0 only."""
    boot = "M" if suite == "InterruptsSm" else "S"
    if priv == boot:
        return []
    return [f"RVTEST_TSBI_GOTO_{boot}MODE # return to {boot}-mode"]


def _generate_cp_trigger(test_data: TestData, test_chunks: list, suite: str, priv: str) -> None:
    """Trigger each interrupt."""

    ######################################
    coverpoint = "cp_trigger"
    ######################################
    tc = test_data.new_test_chunk(test_chunks, "trigger")
    tc.section_header = comment_banner(
        coverpoint,
        f"Trigger each interrupt in {priv} mode",
    )
    tc.code += guard_open(suite, priv)
    tc.code += mode_enter(suite, priv)
    tmp_reg, tmp_reg2 = test_data.int_regs.get_registers(2)  # TODO: fix number

    types = list(machine_ints)
    if suite == "InterruptsSm":
        types += list(supervisor_ints)
    for int_type in types:
        if int_type not in _int_macro:
            continue  # no RVTEST_SET/CLR macros for this interrupt yet
        macro = _int_macro[int_type]
        if int_type in supervisor_ints:
            tc.code.append("#ifdef S_SUPPORTED")
        tc.code.append(f"#ifdef UDB_{int_type}_INTR_IMPL")
        if suite == "InterruptsSm":
            tc.code += [
                f"LI(x{tmp_reg}, 0x2)",
                _csr_access(f"csrs mstatus, x{tmp_reg} # mstatus.SIE = 1", priv),
            ]
            for mideleg in [0, -1]:
                delegstr = "zeros" if mideleg == 0 else "ones"
                # mideleg only exists with S-mode; without it, skip the write and the delegated sweep
                tc.code += [
                    "#ifdef S_SUPPORTED",
                    f"LI(x{tmp_reg}, {mideleg})",
                    _csr_access(f"csrw mideleg, x{tmp_reg} # mideleg = {delegstr}", priv),
                ]
                if mideleg == 0:
                    tc.code.append("#endif // S_SUPPORTED")
                for mode in [0, 1]:
                    cmd = "csrs" if mode == 1 else "csrc"
                    tc.code += [
                        f"#ifdef UDB_MTVEC_MODES_{mode}",
                        f"LI(x{tmp_reg}, 1)",
                        _csr_access(f"{cmd} mtvec, x{tmp_reg} # mtvec.mode = {mode}", priv),
                    ]
                    for enable in [0, 1]:
                        cmd = "csrs" if enable == 1 else "csrc"
                        tc.code += [
                            # The trap handler clears the taken interrupt's xIE bit, so re-enable before every case
                            f"LI(x{tmp_reg}, -1)",
                            _csr_access(f"csrw mie, x{tmp_reg} # mie = 1s", priv),
                            f"LI(x{tmp_reg}, 0x88) # MIE, MPIE",
                            _csr_access(f"{cmd} mstatus, x{tmp_reg} # mstatus.MIE = {enable}", priv),
                        ]
                        tc.code += [
                            test_data.add_testcase(
                                f"priv_{priv}_{int_type}_mideleg_{delegstr}_mode_{mode}_enable_{enable}",
                                coverpoint,
                                covergroup,
                            ),
                            f"RVTEST_SET_{macro}_INT_{priv} # Set the interrupt",
                            f"RVTEST_IDLE_FOR_INTERRUPT(x{tmp_reg}) # Wait for interrupt to fire",
                            f"RVTEST_CLR_{macro}_INT_{priv} # Clear the interrupt if the interrupt handler hasn't done so",
                            "",
                        ]
                    tc.code.append(f"#endif // UDB_MTVEC_MODES_{mode}")
                if mideleg == -1:
                    tc.code.append("#endif // S_SUPPORTED")
        else:  # suite = InterruptsS
            pass
        tc.code.append(f"#endif // UDB_{int_type}_INTR_IMPL")
        if int_type in supervisor_ints:
            tc.code.append("#endif // S_SUPPORTED")
        tc.code.append("")

    test_data.int_regs.return_registers([tmp_reg, tmp_reg2])
    tc.code += mode_exit(suite, priv)
    tc.code += guard_close(suite, priv)


def _generate_cp_trigger_reg(test_data: TestData, test_chunks: list, suite: str, priv: str) -> None:
    """Trigger interrupts using mip/sip register writes."""


def _generate_cp_trigger_sti_sstc(test_data: TestData, test_chunks: list, suite: str, priv: str) -> None:
    """Trigger STI with SSTC"""


def _generate_cp_enable(test_data: TestData, test_chunks: list, suite: str, priv: str) -> None:
    """Test interrupt enables"""


def _generate_cp_priority_pending(test_data: TestData, test_chunks: list, suite: str, priv: str) -> None:
    """Test priority of multiple pending interrupts"""


def _generate_cp_priority_enable(test_data: TestData, test_chunks: list, suite: str, priv: str) -> None:
    """Test priority of multiple enabled inputs"""


def _generate_cp_wfi(test_data: TestData, test_chunks: list, suite: str, priv: str) -> None:
    """Test WFI with timer interrupt"""


def _generate_cp_wfi_timeout(test_data: TestData, test_chunks: list, suite: str, priv: str) -> None:
    """Test WFI timeout"""


def _generate_cp_priority_mideleg(test_data: TestData, test_chunks: list, suite: str, priv: str) -> None:
    """Test priority of multiple delegated interrupts (machine only)"""


def emit_interrupts(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> list[TestChunk]:
    """Emit all interrupt coverpoints for the given suite and privilege level."""

    global covergroup
    covergroup = f"{suite}_cg"

    _generate_cp_trigger(test_data, test_chunks, suite, priv)
    _generate_cp_trigger_reg(test_data, test_chunks, suite, priv)
    _generate_cp_trigger_sti_sstc(test_data, test_chunks, suite, priv)
    _generate_cp_enable(test_data, test_chunks, suite, priv)
    _generate_cp_priority_pending(test_data, test_chunks, suite, priv)
    _generate_cp_priority_enable(test_data, test_chunks, suite, priv)
    _generate_cp_wfi(test_data, test_chunks, suite, priv)
    _generate_cp_wfi_timeout(test_data, test_chunks, suite, priv)
    if suite == "InterruptsSm":
        _generate_cp_priority_mideleg(test_data, test_chunks, suite, priv)

    test_chunks.append(test_data.end_test_chunk())
    return test_chunks
