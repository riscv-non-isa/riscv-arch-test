##################################
# priv/extensions/InterruptsSm.py
#
# InterruptsSm privileged extension test generator.
# David_Harris@hmc.edu 7 September 2026
# SPDX-License-Identifier: Apache-2.0
##################################


"""InterruptsSm privileged extension test generator for interrupts relying on M-mode."""

from testgen.asm.helpers import comment_banner
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.InterruptsCommon import (
    INTR_IMPL_DEFINES,
    REG_TRIGGER_DEFINES,
    SHARED_GENERATORS,
    SSTC_TRIGGER_DEFINES,
    emit_interrupts,
    guard_close,
    guard_open,
    int_coverpoint,
    int_guard,
    int_macro,
    machine_ints,
    mode_enter,
    mode_exit,
    reg_ints,
    sstc_ints,
    supervisor_ints,
)
from testgen.priv.registry import add_priv_test_generator

SUITE = "InterruptsSm"
COVERGROUP = f"{SUITE}_cg"


def _generate_cp_trigger(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Trigger each interrupt across mideleg, mtvec.MODE, and mstatus.MIE."""

    ######################################
    coverpoint = "cp_trigger / cp_trigger_reg"
    ######################################
    tc = test_data.new_test_chunk(test_chunks, "trigger")
    tc.section_header = comment_banner(
        coverpoint,
        f"Trigger each interrupt in {priv} mode",
    )
    tc.code += guard_open(suite, priv)
    tmp_reg = test_data.int_regs.get_register()

    for int_type in [*machine_ints, *supervisor_ints, *reg_ints, *sstc_ints]:
        if int_type not in int_macro:
            continue  # no RVTEST_SET/CLR macros for this interrupt yet
        macro = int_macro[int_type]
        guard = int_guard.get(int_type, f"UDB_{int_type}_INTR_IMPL")
        cp = int_coverpoint.get(int_type, "cp_trigger")
        for mideleg in [0, -1]:
            delegstr = "zeros" if mideleg == 0 else "ones"
            # mideleg only exists with S-mode: guard the write, and skip the delegated sweep entirely
            case_open = ["#ifdef S_SUPPORTED // only test delegation if S_SUPPORTED"] if mideleg == -1 else []
            case_close = ["#endif // S_SUPPORTED"] if mideleg == -1 else []
            write_open = ["#ifdef S_SUPPORTED // only write mideleg if S_SUPPORTED"] if mideleg == 0 else []
            write_close = ["#endif // S_SUPPORTED"] if mideleg == 0 else []
            for mode in [0, 1]:
                for enable in [0, 1]:
                    modecmd = "csrs" if mode == 1 else "csrc"
                    enablecmd = "csrs" if enable == 1 else "csrc"
                    tc.code += [
                        f"#ifdef {guard}",
                        *case_open,
                        f"LI(x{tmp_reg}, 0x2)",
                        f"csrs mstatus, x{tmp_reg} # mstatus.SIE = 1",
                        *write_open,
                        f"LI(x{tmp_reg}, {mideleg})",
                        f"csrw mideleg, x{tmp_reg} # mideleg = {delegstr}",
                        *write_close,
                        f"#ifdef UDB_MTVEC_MODES_{mode}",
                        f"LI(x{tmp_reg}, 1)",
                        f"{modecmd} mtvec, x{tmp_reg} # mtvec.mode = {mode}",
                        "#endif // mtvec.MODE",
                        # The trap handler clears the taken interrupt's xIE bit, so re-enable before every case
                        f"LI(x{tmp_reg}, -1)",
                        f"csrw mie, x{tmp_reg} # mie = 1s",
                        f"LI(x{tmp_reg}, 0x88) # MIE, MPIE",
                        f"{enablecmd} mstatus, x{tmp_reg} # mstatus.MIE = {enable}",
                        test_data.add_testcase(
                            f"priv_{priv}_{int_type}_mideleg_{delegstr}_mode_{mode}_enable_{enable}",
                            cp,
                            COVERGROUP,
                        ),
                        *mode_enter(suite, priv),
                        f"RVTEST_SET_{macro}_INT_{priv} # Set the interrupt",
                        f"RVTEST_IDLE_FOR_INTERRUPT(x{tmp_reg}) # Wait for interrupt to fire",
                        f"RVTEST_CLR_{macro}_INT_{priv} # Clear the interrupt if the interrupt handler hasn't done so",
                        *mode_exit(suite, priv),
                        *case_close,
                        f"#endif // {guard}",
                        "",
                    ]

    test_data.int_regs.return_register(tmp_reg)
    tc.code += guard_close(suite, priv)


def _generate_cp_priority_mideleg(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Test priority of multiple delegated interrupts"""


@add_priv_test_generator(
    SUITE,
    required_extensions=["Sm"],
    extra_defines=[*INTR_IMPL_DEFINES, *REG_TRIGGER_DEFINES, *SSTC_TRIGGER_DEFINES, "#define BOOT_TO_MMODE"],
)
def make_interruptssm(test_data: TestData) -> list[TestChunk]:
    """Generate tests for InterruptsSm interrupt behavior that relies on M-mode, including M-mode interrupts and delegation."""
    test_chunks: list[TestChunk] = []
    generators = [_generate_cp_trigger, *SHARED_GENERATORS, _generate_cp_priority_mideleg]

    emit_interrupts(test_data, test_chunks, SUITE, ["M", "S", "U"], generators)  # + "VS", "VU"

    return test_chunks
