##################################
# priv/extensions/ZawrsH.py
#
# Zawrs tests for the H extension.
# SPDX-License-Identifier: Apache-2.0
##################################

"""Zawrs tests for VS/VU execution and H-extension controls."""

from testgen.asm.helpers import comment_banner, write_sigupd
from testgen.asm.tsbi import tsbi_call_or_direct
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.registry import add_priv_test_generator

covergroup = "ZawrsH_cg"

_TW_VTW_MASK = 0x200000
_ILLEGAL_INSTRUCTION_MASK = 1 << 2
_VSSIP_MASK = 1 << 2
_SSIP_MASK = 1 << 1


def _read_trap_count(reg: int) -> list[str]:
    """Read the framework trap count."""
    return [f"LA(x{reg}, rvtest_trap_count)", f"LREG x{reg}, 0(x{reg})"]


def _configure_wait_controls(temp: int, tw: int, vtw: int) -> list[str]:
    """Disable interrupts and set the controls governing guest wait instructions."""
    return [
        "# Disable all locally-enabled interrupts before entering the guest",
        tsbi_call_or_direct("csrw mie, zero", "S"),
        f"LI(x{temp}, 0xAA)",
        tsbi_call_or_direct(f"csrc mstatus, x{temp}", "S"),
        "csrw vsie, zero",
        f"LI(x{temp}, {_SSIP_MASK})",
        f"csrc vsstatus, x{temp}",
        "# Set mstatus.TW",
        f"LI(x{temp}, {_TW_VTW_MASK})",
        tsbi_call_or_direct(f"{'csrs' if tw else 'csrc'} mstatus, x{temp}", "S"),
        "# Set hstatus.VTW",
        f"LI(x{temp}, {_TW_VTW_MASK})",
        f"{'csrs' if vtw else 'csrc'} hstatus, x{temp}",
    ]


def _goto_guest(mode: str) -> str:
    return f"RVTEST_TSBI_GOTO_{mode}MODE"


def _leave_guest() -> str:
    return "RVTEST_TSBI_GOTO_SMODE"


def _wrs_no_reservation(test_data: TestData) -> list[str]:
    """WRS completes without a trap when no reservation is valid."""
    scratch, value, temp, before, after = test_data.int_regs.get_registers(5)
    lines = [
        comment_banner(
            "cp_wrs_no_res_h",
            "VS/VU WRS with no reservation\n"
            "cross mode, mstatus.TW, hstatus.VTW and WRS operation\n"
            "SC.W first invalidates any reservation",
        )
    ]
    for mode in ("VS", "VU"):
        for tw in (0, 1):
            for vtw in (0, 1):
                for op in ("WRS.STO", "WRS.NTO"):
                    op_name = op.replace(".", "_").lower()
                    lines.extend(
                        [
                            "#### Setup ####",
                            *_configure_wait_controls(temp, tw, vtw),
                            _goto_guest(mode),
                            *_read_trap_count(before),
                            f"LA(x{scratch}, scratch)",
                            f"sc.w x{temp}, x{value}, (x{scratch})",
                            test_data.add_testcase(
                                f"{mode.lower()}_tw{tw}_vtw{vtw}_{op_name}",
                                "cp_wrs_no_res_h",
                                covergroup,
                            ),
                            op,
                            *_read_trap_count(after),
                            f"sub x{after}, x{after}, x{before}",
                            write_sigupd(after, test_data),
                            _leave_guest(),
                        ]
                    )
    test_data.int_regs.return_registers([scratch, value, temp, before, after])
    return lines


def _wrs_sto_timeout(test_data: TestData) -> list[str]:
    """WRS.STO times out normally in VS/VU for every TW/VTW combination."""
    scratch, value, temp, before, after = test_data.int_regs.get_registers(5)
    lines = [
        comment_banner(
            "cp_wrs_sto_timeout_h",
            "VS/VU WRS.STO short-timeout behavior\n"
            "cross mode, mstatus.TW and hstatus.VTW with a valid reservation\n"
            "WRS.STO must retire without an illegal- or virtual-instruction exception",
        )
    ]
    for mode in ("VS", "VU"):
        for tw in (0, 1):
            for vtw in (0, 1):
                lines.extend(
                    [
                        "#### Setup ####",
                        *_configure_wait_controls(temp, tw, vtw),
                        _goto_guest(mode),
                        *_read_trap_count(before),
                        f"LA(x{scratch}, scratch)",
                        f"lr.w x{value}, (x{scratch})",
                        test_data.add_testcase(
                            f"{mode.lower()}_tw{tw}_vtw{vtw}",
                            "cp_wrs_sto_timeout_h",
                            covergroup,
                        ),
                        "WRS.STO",
                        *_read_trap_count(after),
                        f"sub x{after}, x{after}, x{before}",
                        write_sigupd(after, test_data),
                        _leave_guest(),
                    ]
                )
    test_data.int_regs.return_registers([scratch, value, temp, before, after])
    return lines


def _wrs_nto_control_exceptions(test_data: TestData) -> list[str]:
    """Exercise TW/VTW exception priority and illegal-instruction delegation."""
    scratch, value, temp, after, saved_tvec = test_data.int_regs.get_registers(5)
    cases: list[tuple[str, int, int, int, str]] = []
    for mode in ("VS", "VU"):
        cases.append((mode, 0, 1, 0, "cp_wrs_nto_vtw_h"))
        for vtw in (0, 1):
            for delegate in (0, 1):
                cases.append((mode, 1, vtw, delegate, "cp_wrs_nto_tw_h"))

    lines = [
        comment_banner(
            "cp_wrs_nto_control_h",
            "VS/VU WRS.NTO timeout controls\n"
            "TW=0 and VTW=1 selects virtual-instruction\n"
            "TW=1 selects illegal-instruction and takes priority over VTW\n"
            "illegal-instruction is tested with hedeleg[2] clear and set\n"
            "local HS/VS trap entries record the exact cause and destination",
        )
    ]
    for mode, tw, vtw, delegate, cp_name in cases:
        case_id = f"zawrsh_{mode.lower()}_tw{tw}_vtw{vtw}_hedeleg{delegate}"
        lines.extend(
            [
                "#### Configure the timeout and guest delegation controls ####",
                *_configure_wait_controls(temp, tw, vtw),
                f"LI(x{temp}, {_ILLEGAL_INSTRUCTION_MASK})",
            ]
        )
        if delegate:
            lines.extend(
                [
                    "# hedeleg[2]=1: install the expected VS trap entry",
                    f"csrr x{saved_tvec}, vstvec",
                    f"LA(x{temp}, {case_id}_handler)",
                    f"csrw vstvec, x{temp}",
                    f"LI(x{temp}, {_ILLEGAL_INSTRUCTION_MASK})",
                    f"csrs hedeleg, x{temp}",
                ]
            )
        else:
            lines.extend(
                [
                    "# hedeleg[2]=0: install the expected HS trap entry",
                    f"csrr x{saved_tvec}, stvec",
                    f"LA(x{temp}, {case_id}_handler)",
                    f"csrw stvec, x{temp}",
                    "csrw hedeleg, zero",
                ]
            )
        lines.extend(
            [
                _goto_guest(mode),
                f"LI(x{after}, -1) # sentinel when WRS.NTO is configured as a NOP",
                f"LA(x{scratch}, scratch)",
                f"lr.w x{value}, (x{scratch})",
                test_data.add_testcase(
                    f"{mode.lower()}_tw{tw}_vtw{vtw}_hedeleg{delegate}",
                    cp_name,
                    covergroup,
                ),
                "1:",
                "WRS.NTO",
                f"j {case_id}_done",
                ".balign 4",
                f"{case_id}_handler:",
                f"csrr x{after}, scause",
                "# Restore the framework trap entry before the guest makes its T-SBI exit call",
                f"csrw stvec, x{saved_tvec}",
                f"csrr x{temp}, sepc",
                f"addi x{temp}, x{temp}, 4",
                f"csrw sepc, x{temp}",
                "sret",
                f"{case_id}_done:",
                write_sigupd(after, test_data),
            ]
        )
        lines.extend([_leave_guest(), "csrw hedeleg, zero"])
        if delegate:
            lines.append(f"csrw vstvec, x{saved_tvec}")
        else:
            lines.append(f"csrw stvec, x{saved_tvec}")
    test_data.int_regs.return_registers([scratch, value, temp, after, saved_tvec])
    return lines


def _wrs_pending_guest_interrupt(test_data: TestData) -> list[str]:
    """A locally-enabled, globally-disabled VS interrupt terminates the wait."""
    scratch, value, temp, before, after, saved_hideleg = test_data.int_regs.get_registers(6)
    lines = [
        comment_banner(
            "cp_wrs_interrupt_h",
            "VS-mode WRS observes a pending, locally-enabled VSSIP\n"
            "vsstatus.SIE stays clear so the interrupt is not taken\n"
            "cross mstatus.TW, hstatus.VTW and WRS operation",
        )
    ]
    for tw in (0, 1):
        for vtw in (0, 1):
            for op in ("WRS.STO", "WRS.NTO"):
                op_name = op.replace(".", "_").lower()
                lines.extend(
                    [
                        "#### Save virtual interrupt state and configure the wait ####",
                        f"csrr x{saved_hideleg}, hideleg",
                        *_configure_wait_controls(temp, tw, vtw),
                        f"LI(x{temp}, {_VSSIP_MASK})",
                        f"csrs hideleg, x{temp}",
                        f"csrs hvip, x{temp}",
                        _goto_guest("VS"),
                        f"LI(x{temp}, {_SSIP_MASK})",
                        f"csrs sie, x{temp}",
                        f"csrc sstatus, x{temp}",
                        *_read_trap_count(before),
                        f"LA(x{scratch}, scratch)",
                        f"lr.w x{value}, (x{scratch})",
                        test_data.add_testcase(
                            f"vs_tw{tw}_vtw{vtw}_{op_name}",
                            "cp_wrs_interrupt_h",
                            covergroup,
                        ),
                        op,
                        *_read_trap_count(after),
                        f"sub x{after}, x{after}, x{before}",
                        write_sigupd(after, test_data),
                        f"csrr x{value}, sip",
                        f"andi x{value}, x{value}, {_SSIP_MASK}",
                        write_sigupd(value, test_data),
                        f"csrc sie, x{temp}",
                        _leave_guest(),
                        f"LI(x{temp}, {_VSSIP_MASK})",
                        f"csrc hvip, x{temp}",
                        f"csrw hideleg, x{saved_hideleg}",
                    ]
                )
    test_data.int_regs.return_registers([scratch, value, temp, before, after, saved_hideleg])
    return lines


@add_priv_test_generator(
    "ZawrsH",
    required_extensions=["H", "Zawrs", "Zalrsc"],
    march_extensions=["H", "Zawrs", "Zalrsc"],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_zawrsh(test_data: TestData) -> list[TestChunk]:
    """Generate the Zawrs H-extension suite."""
    tc = test_data.begin_test_chunk()
    tc.code.extend(_wrs_no_reservation(test_data))
    tc.code.extend(_wrs_sto_timeout(test_data))
    tc.code.extend(_wrs_nto_control_exceptions(test_data))
    tc.code.extend(_wrs_pending_guest_interrupt(test_data))
    return [test_data.end_test_chunk()]
