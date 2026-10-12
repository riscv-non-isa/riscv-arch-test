#!/usr/bin/env -S uv run
# SPDX-License-Identifier: Apache-2.0
#
# /// script
# requires-python = ">=3.10"
# dependencies = [
#     "ruamel-yaml>=0.18.16",
# ]
# ///

"""
Generate AsciiDoc coverpoint tables for the privileged test plans from testplans/priv/*.yaml.

Each YAML file describes one suite.  The Normative Rule column is derived from the
rule -> coverpoint mappings in coverpoints/norm/*.yaml (union with the plan's own `rules`).

Usage:
  generate_priv_testplans.py [--plans DIR] [--norm DIR] [--out DIR] [--coverage DIR]
"""

import argparse
import json
import re
import sys
from collections import defaultdict
from pathlib import Path
from typing import Any

from generate_norm_table import build_coverpoint_groups
from ruamel.yaml import YAML

FIELDS = (
    ("goal", "Goal"),
    ("description", "Feature Description"),
    ("expectation", "Expectation"),
    ("bins", "Bins"),
    ("id", "ID"),
    ("rules", "Normative Rule"),
    ("check", "Pass/Fail Criteria"),
    ("status", "Status"),
    ("coverage", "Coverage"),
    ("notes", "Notes"),
)


def load_yaml(path: Path) -> dict[str, Any] | list[Any]:
    return YAML(typ="safe", pure=True).load(path.read_text(encoding="utf-8"))


def esc(text: str | float) -> str:
    lines = [ln.strip() for ln in str(text).replace("|", "\\|").replace("<<", "&#60;&#60;").split("\n")]
    return " +\n".join(ln for ln in lines if ln)


def expand_braces(text: str) -> list[str]:
    """Expand each {a, b} group into one string per alternative: x_{a, b}_y -> x_a_y, x_b_y."""
    m = re.search(r"\{([^{}]*)\}", text)
    if not m:
        return [text]
    return [
        s for alt in m.group(1).split(",") for s in expand_braces(text[: m.start()] + alt.strip() + text[m.end() :])
    ]


def coverpoints_of(mapping: str) -> list[tuple[str, str]]:
    """(covergroup, coverpoint) pairs named by a norm-YAML coverpoint mapping.

    A mapping is either a reference such as {A_cg, B_cg}/cp_{x, y}/bin, or prose
    such as "Tested by A_cg/cp_x when ..." whose words may include references.
    Raises ValueError for a reference that does not parse.
    """
    pairs = []
    for text in expand_braces(mapping):
        for word in text.split():
            path = word.strip("()[],.;:'\"`").split("/")
            # a slash in prose ("PMA/PMP") is not a reference unless it names a covergroup
            if len(path) < 2 or (word != text and not path[0].endswith("_cg")):
                continue
            covergroup, coverpoint = path[:2]
            if not re.fullmatch(r"[\w*]+_cg", covergroup) or not re.fullmatch(r"\w+", coverpoint):
                raise ValueError(f"malformed coverpoint reference {word!r} in {mapping!r}")
            pairs.append((covergroup, coverpoint))
    return list(dict.fromkeys(pairs))


def covergroup_suites(coverage_dir: Path) -> dict[str, str]:
    """covergroup -> suite whose <suite>_coverage.svh declares it."""
    owners: dict[str, str] = {}
    for f in sorted(coverage_dir.glob("*_coverage.svh")):
        for cg in re.findall(r"^\s*covergroup\s+(\w+)", f.read_text(encoding="utf-8"), re.MULTILINE):
            owners[cg] = f.name.removesuffix("_coverage.svh")
    return owners


def rule_map(norm_dir: Path, coverage_dir: Path, plan_suites: set[str]) -> dict[str, dict[str, list[str]]]:
    """suite -> coverpoint -> [rule names], inverted from every coverpoints/norm/*.yaml.

    A rule belongs to the longest test plan name its covergroup name starts with (<plan>_cg
    or <plan>_<group>_cg), so a plan for one group of a suite (Sm_F for Sm_F_cg in
    Sm_coverage.svh) keeps its rules. Otherwise it belongs to the suite whose
    <suite>_coverage.svh declares the covergroup, or failing that to the suite its name
    starts with.
    """
    owners = covergroup_suites(coverage_dir)
    by_length = sorted(plan_suites, key=len, reverse=True)
    out: dict[str, dict[str, list[str]]] = defaultdict(lambda: defaultdict(list))
    for f in sorted(norm_dir.glob("*.yaml")):
        for group in build_coverpoint_groups(load_yaml(f)):
            mappings = group["coverpoint"] or []
            for mapping in [mappings] if isinstance(mappings, str) else mappings:
                try:
                    pairs = coverpoints_of(str(mapping))
                except ValueError as err:
                    sys.exit(f"{f}: {err}")
                for covergroup, coverpoint in pairs:
                    plan = next((p for p in by_length if covergroup.startswith(f"{p}_")), None)
                    rules = out[plan or owners.get(covergroup, covergroup.split("_")[0])][coverpoint]
                    rules += [n for n in group["names"] if n not in rules]
    return out


def with_includes(text: str, coverage_dir: Path) -> str:
    """Text followed by the shared coverpoint files it `includes from coverpoints/general."""
    for inc in re.findall(r'^\s*`include\s+"(general/[^"]+)"', text, re.MULTILINE):
        f = coverage_dir.parent / inc
        if f.is_file():
            text += "\n" + f.read_text(encoding="utf-8")
    return text


def declared_names(text: str) -> set[str]:
    return set(re.findall(r"^\s*(\w+)\s*:\s*(?:coverpoint|cross)\b", text, re.MULTILINE))


def coverage_names(coverage_dir: Path | None, suite: str) -> set[str] | None:
    """Coverpoint names declared in the suite's covergroups, or None if none are found.

    These come from <suite>_coverage.svh, or for a plan folded into a base suite, from the
    <suite>_cg or <suite>_<group>_cg covergroups in any coverage file.
    """
    if coverage_dir is None:
        return None
    own = coverage_dir / f"{suite}_coverage.svh"
    if own.is_file():
        return declared_names(with_includes(own.read_text(encoding="utf-8"), coverage_dir))
    names: set[str] = set()
    found = False
    for f in sorted(coverage_dir.glob("*_coverage.svh")):
        text = f.read_text(encoding="utf-8")
        for m in re.finditer(
            rf"^\s*covergroup\s+{re.escape(suite)}(?:_\w+)?_cg\b(.*?)^\s*endgroup", text, re.MULTILINE | re.DOTALL
        ):
            found = True
            names |= declared_names(with_includes(m.group(1), coverage_dir))
    return names if found else None


def widths(header: list[str], rows: list[list[str]]) -> str:
    longest = [max([len(r[k]) for r in rows] + [len(header[k])]) for k in range(len(header))]
    w = [max(1, min(8, round(min(x, 3000) ** 0.5 / 5))) for x in longest]
    w[0] = max(w[0], 2)
    return ",".join(str(x) for x in w)


def render(
    plan: dict[str, Any], rules: dict[str, list[str]], known_rules: set[str], cov: set[str] | None, src: Path
) -> tuple[str, list[tuple[str, str]]]:
    suite = plan["suite"]
    title = plan.get("title") or f"{suite} Coverpoints"
    warnings: list[tuple[str, str]] = []
    unplaced = list(dict.fromkeys(r for names in rules.values() for r in names))
    out = [
        "// WARNING: This file was automatically generated.",
        f"// Do not modify by hand; edit {src} instead.",
        "",
    ]
    entries = plan.get("coverpoints") or []
    if not any("heading" not in e for e in entries):
        # prose-only plan: the anchor goes on the text, and an empty plan says so
        out.append(f"[[t-{suite}-coverpoints]]")
        if not plan.get("description") and not plan.get("notes"):
            out += [f"No {title.lower()} have been defined yet.", ""]
    if plan.get("description"):
        out += [esc(plan["description"]).replace(" +\n", "\n"), ""]
    setup = plan.get("setup")
    if setup:
        cols = setup["columns"]
        out += [
            f".{suite} Test Setup",
            f'[cols="{",".join(["2"] + ["3"] * len(cols))}", options=header]',
            "|===",
            "| Step | " + " | ".join(cols),
            "",
        ]
        for step in setup["steps"]:
            out.append("| " + esc(step["step"]))
            out += [("| " + esc(step[c])) if step.get(c) else "|" for c in cols]
            out.append("")
        out += ["|===", ""]
    if plan.get("notes"):
        out += [esc(plan["notes"]).replace(" +\n", "\n"), ""]

    if not any("heading" not in e for e in entries):
        return "\n".join(out), warnings + [("unplaced", r) for r in unplaced]
    used = [k for k, _ in FIELDS if any(e.get(k) for e in entries if "heading" not in e)]
    if rules and "rules" not in used:
        used.insert(min(len(used), 4), "rules")
    header = ["Coverpoint"] + [dict(FIELDS)[k] for k in used]
    rows: list[list[str]] = []
    body: list[str] = []
    for e in entries:
        if "heading" in e:
            body += [f"{len(header)}+| {esc(e['heading'])}", ""]
            continue
        name = str(e.get("name") or "")
        # A row may list several coverpoints, one per line; other lines are notes.
        cps = [ln.strip() for ln in name.split("\n") if re.fullmatch(r"\w+", ln.strip())]
        if cov is not None:
            warnings += [("coverpoint", cp) for cp in cps if cp not in cov]
        cells = [esc(name)]
        for k in used:
            if k == "rules":
                names = [r for cp in cps for r in rules.get(cp, [])]
                names = list(dict.fromkeys(names))
                for r in e.get("rules") or []:
                    if r not in names:
                        names.append(r)
                for r in names:
                    if known_rules and r not in known_rules:
                        warnings.append(("rule", r))
                    if r in unplaced:
                        unplaced.remove(r)
                cells.append(esc("\n".join(names)))
            else:
                cells.append(esc(e[k]) if e.get(k) else "")
        rows.append(cells)
        body += ["\n".join(("| " + c) if c else "|" for c in cells), ""]
    out += [
        f"[[t-{suite}-coverpoints]]",
        f".{title}",
        f'[cols="{widths(header, rows)}", options=header]',
        "|===",
        "| " + " | ".join(header),
        "",
    ]
    out += body
    out += ["|===", ""]
    return "\n".join(out), warnings + [("unplaced", r) for r in unplaced]


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--plans", default="testplans/priv", type=Path)
    ap.add_argument("--norm", default="coverpoints/norm", type=Path)
    ap.add_argument(
        "--coverage",
        default="coverpoints/priv",
        type=Path,
        help="directory of <Suite>_coverage.svh files (checks coverpoint names when present)",
    )
    ap.add_argument("--out", default="docs/ctp/build/generated/testplans/priv", type=Path)
    a = ap.parse_args()

    plans = {f: load_yaml(f) for f in sorted(a.plans.glob("*.yaml"))}
    rules = rule_map(a.norm, a.coverage, {p["suite"] for p in plans.values() if isinstance(p, dict)})
    known: set[str] = set()
    cache = a.norm / "norm-rules.json"
    if cache.exists():
        known = {
            r["name"] for r in json.loads(cache.read_text(encoding="utf-8")).get("normative_rules", []) if r.get("name")
        }
    a.out.mkdir(parents=True, exist_ok=True)
    grouped: dict[tuple[str, str], list[str]] = defaultdict(list)
    for f, plan in plans.items():
        if not isinstance(plan, dict):
            sys.exit(f"{f}: expected a mapping")
        suite = plan["suite"]
        text, warnings = render(plan, rules.get(suite, {}), known, coverage_names(a.coverage, suite), f)
        (a.out / f"{suite}.adoc").write_text(text, encoding="utf-8")
        for kind, item in warnings:
            grouped[(suite, kind)].append(item)
    # one line per suite and kind, so the build log stays readable
    for (suite, kind), items in sorted(grouped.items()):
        what = {
            "coverpoint": f"coverpoints not in the {suite} covergroups",
            "rule": "normative rules not in norm-rules.json",
            "unplaced": f"normative rules mapped to {suite} coverpoints that no row of the table lists",
        }[kind]
        items = sorted(set(items))
        print(f"warning: {suite}: {len(items)} {what}: {', '.join(items)}", file=sys.stderr)


if __name__ == "__main__":
    main()
