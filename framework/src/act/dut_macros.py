##################################
# dut_macros.py
#
# Jordan Carlin jcarlin@hmc.edu May 2026
# SPDX-License-Identifier: Apache-2.0
#
# Generate the SystemVerilog rvmodel_macros.svh from the DUT-provided
# rvmodel_macros.h so values are not duplicated across both files.
##################################

"""Derive a minimal rvmodel_macros.svh from rvmodel_macros.h."""

import ast
import operator
import re
from pathlib import Path

# Defines mirrored from rvmodel_macros.h into rvmodel_macros.svh. Each entry is
# the macro name; only macros with an active (non-commented) #define are emitted.
_MIRRORED_DEFINES: list[str] = [
    "RVMODEL_ACCESS_FAULT_ADDRESS",
    "RVMODEL_MSIP_ADDRESS",
    "RVMODEL_MTIME_ADDRESS",
]

# Defines mirrored as plain decimal numbers, so SystemVerilog can paste them into a name.
_MIRRORED_INDEX_DEFINES: list[str] = [
    "RVMODEL_HPM_COUNTER",
]

_DEFINE_RE = re.compile(r"^\s*#define\s+(\w+)[ \t]+(.+)$")
_INT_SUFFIX_RE = re.compile(r"\b(0[xX][0-9a-fA-F]+|\d+)[uUlL]+\b")
_BINOPS = {
    ast.Add: operator.add,
    ast.Sub: operator.sub,
    ast.Mult: operator.mul,
    ast.LShift: operator.lshift,
    ast.RShift: operator.rshift,
    ast.BitOr: operator.or_,
    ast.BitAnd: operator.and_,
    ast.BitXor: operator.xor,
}


def _scan_h_defines(h_path: Path) -> dict[str, str]:
    """Return the value text of every object-like `#define NAME VALUE` in h_path.

    Lines starting with `//`, `/*`, or any other prefix are ignored, so commented-out
    defines are skipped. Trailing comments are removed. If a name is defined more than once, the last wins.
    """
    found: dict[str, str] = {}
    for line in h_path.read_text().splitlines():
        match = _DEFINE_RE.match(line)
        if match is None:
            continue
        value = re.split(r"//|/\*", match.group(2), maxsplit=1)[0].strip()
        if value:
            found[match.group(1)] = value
    return found


def _eval_define(name: str, defines: dict[str, str], depth: int = 0) -> int | None:
    """Evaluate a define as an integer constant expression of literals and other defines, or return None."""
    if name not in defines or depth > 16:
        return None
    try:
        tree = ast.parse(_INT_SUFFIX_RE.sub(r"\1", defines[name]), mode="eval")
    except SyntaxError:
        return None

    def _eval(node: ast.AST) -> int | None:
        if isinstance(node, ast.Constant) and type(node.value) is int:
            return node.value
        if isinstance(node, ast.Name):
            return _eval_define(node.id, defines, depth + 1)
        if isinstance(node, ast.BinOp) and type(node.op) in _BINOPS:
            left, right = _eval(node.left), _eval(node.right)
            return None if left is None or right is None else _BINOPS[type(node.op)](left, right)
        return None

    return _eval(tree.body)


def generate_rvmodel_svh(dut_include_dir: Path, output_dir: Path) -> None:
    """Generate rvmodel_macros.svh in output_dir derived from rvmodel_macros.h."""
    input_h = dut_include_dir / "rvmodel_macros.h"
    output_svh = output_dir / "rvmodel_macros.svh"
    if not input_h.exists():
        raise FileNotFoundError(f"rvmodel_macros.h not found at {input_h}")

    defines = _scan_h_defines(input_h)

    guard = f"_RVMODEL_MACROS_SVH_{dut_include_dir.name.upper().replace('-', '_')}_"
    lines = [
        "// Auto-generated from rvmodel_macros.h by act (do not edit)",
        "// SPDX-License-Identifier: Apache-2.0",
        "",
        f"`ifndef {guard}",
        f"`define {guard}",
        "",
    ]
    for name in _MIRRORED_DEFINES + _MIRRORED_INDEX_DEFINES:
        if name not in defines:
            continue
        value = _eval_define(name, defines)
        if value is None:
            raise ValueError(f"{input_h}: {name} must be an integer constant expression, not {defines[name]!r}")
        if name in _MIRRORED_INDEX_DEFINES:
            lines.append(f"`define {name} {value}")
        else:
            lines.append(f"`define {name} 64'h{value:x}")
    lines += ["", f"`endif // {guard}", ""]

    output_svh.write_text("\n".join(lines))
