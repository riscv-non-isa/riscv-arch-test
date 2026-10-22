#!/usr/bin/env python3
##################################
# check_suite_merge.py
#
# David Harris david_harris@hmc.edu Oct 2026
# SPDX-License-Identifier: Apache-2.0
#
# Check that merging per-mode privileged suites into one suite only rearranges them
##################################

"""Check that merging privileged suites into one suite is a pure rearrangement.

Each old suite becomes a group of the merged suite: SscofpmfSm becomes the Sm group of Sscofpmf, with
tests Sscofpmf_Sm_<split>-NN.S and covergroup Sscofpmf_Sm_cg. The check compares a base ref (before the
merge) with a head ref (after it), each in its own temporary git worktree:

  1. scope      every changed file is one a suite merge may change
  2. tests      generated tests are byte-identical except for label covergroup names and the path line
  3. selection  every config, with and without each certificate and with its CI exclusions, selects
                the same tests
  4. activation every covergroup is compiled and sampled under the same conditions
  5. covergroups every covergroup body is identical except for its name
  6. norm       every normative rule maps to the same coverpoints, with covergroups renamed
  7. plans      every test plan row is carried over unchanged except for a name narrowed to the
                coverpoint in its covergroup
  8. coverage   (optional) Questa coverage reports have the same bins and lose no hits

Example:
  uv run generators/testgen/scripts/check_suite_merge.py --base upstream/act4 --head sscofpmf-merge \\
      --suite Sscofpmf --group Sm=SscofpmfSm --group S=SscofpmfS --group U=SscofpmfU
"""

import argparse
import fnmatch
import importlib.util
import os
import re
import shutil
import subprocess
import sys
import tempfile
from collections import Counter
from collections.abc import Callable, Iterable
from concurrent.futures import ThreadPoolExecutor
from dataclasses import dataclass, field
from pathlib import Path
from types import ModuleType
from typing import Any

from act.certificate_tests import CERTIFICATE_EXTENSIONS, get_certificate_extensions
from act.config import Config, load_config
from act.parse_test_constraints import TestMetadata, generate_test_dict
from act.parse_udb_config import (
    _ensure_udb_installed,
    get_config_params,
    get_implemented_extensions,
    prepare_dut_outputs,
    validate_udb_config,
)
from act.select_tests import filter_tests_by_certificate, select_tests
from ruamel.yaml import YAML

REPO_ROOT = Path(__file__).resolve().parents[3]

# Files outside these patterns are not part of a suite merge. {names} expands to the merged and old suite names.
SCOPE_PATTERNS = [
    "generators/testgen/src/testgen/priv/extensions/{name}*.py",
    "generators/testgen/src/testgen/priv/registry.py",
    "generators/testgen/src/testgen/generate/priv.py",
    "coverpoints/priv/{name}_coverage.svh",
    "coverpoints/priv/{name}_coverage_init.svh",
    "coverpoints/coverage/RISCV_coverage_config.svh",
    "coverpoints/coverage/RISCV_coverage_base_init.svh",
    "coverpoints/coverage/RISCV_coverage_base_sample.svh",
    "coverpoints/norm/*.yaml",
    "testplans/priv/{name}.yaml",
    "testplans/priv/{name}_*.yaml",
    "tests/priv/{name}/*",
    "generators/ctp/generate_priv_testplans.py",
    "docs/ctp/src/*.adoc",
    "config/*ci.yaml",
]

CG_STRING = re.compile(r"cg: (\w+);")
CG_BLOCK = re.compile(r"^[ \t]*covergroup\s+(\w+)\b.*?^[ \t]*endgroup\b[^\n]*\n?", re.MULTILINE | re.DOTALL)
COVERPOINT_DECL = re.compile(r"^\s*(\w+)\s*:\s*(?:coverpoint|cross)\b", re.MULTILINE)
REPORT_BIN = re.compile(r"^\s+(bin|ignore_bin|illegal_bin|default bin)\s+(.*\S)\s+(\d+)\s+(\S+)\s+-\s+(\S+)\s*$")


@dataclass(frozen=True)
class Group:
    """One old suite and the group of the merged suite it becomes."""

    name: str  # group name, e.g. Sm; empty when the old suite keeps the merged suite's name
    old: str  # old suite, e.g. SscofpmfSm


@dataclass
class Merge:
    suite: str
    groups: list[Group]

    def prefix(self, group: Group) -> str:
        return f"{self.suite}_{group.name}" if group.name else self.suite

    def test_name(self, group: Group, name: str) -> str | None:
        """New test file name for an old test file name, or None if the name is not in the old suite."""
        for sep in "_-":
            if name.startswith(group.old + sep):
                return self.prefix(group) + sep + name[len(group.old) + 1 :]
        return None

    def covergroup(self, group: Group, cg: str) -> str:
        """New name of a covergroup declared by an old suite: SscofpmfSm_cg -> Sscofpmf_Sm_cg."""
        return self.prefix(group) + cg[len(group.old) :] if cg.startswith(group.old) else cg

    @property
    def names(self) -> list[str]:
        return list(dict.fromkeys([self.suite, *(g.old for g in self.groups)]))


@dataclass
class Tree:
    """One side of the comparison: a worktree and the tests generated in it."""

    label: str
    root: Path
    tests: Path  # tests/<arch>/<suite>/<file> for the compared suites only
    suites: list[str]
    test_dict: dict[str, TestMetadata] = field(default_factory=dict)


@dataclass
class Report:
    failures: int = 0
    verbose: bool = False

    def section(self, title: str) -> None:
        print(f"\n== {title}")

    def ok(self, msg: str) -> None:
        print(f"PASS  {msg}")

    def fail(self, msg: str) -> None:
        self.failures += 1
        print(f"FAIL  {msg}")

    def info(self, msg: str) -> None:
        print(f"      {msg}")

    def detail(self, msg: str) -> None:
        if self.verbose:
            print(f"      {msg}")


def run(cmd: list[str], cwd: Path | None = None, env: dict[str, str] | None = None) -> str:
    result = subprocess.run(cmd, cwd=cwd, env=env, capture_output=True, text=True, check=False)
    if result.returncode != 0:
        sys.exit(f"Error: {' '.join(cmd)} failed:\n{result.stdout}{result.stderr}")
    return result.stdout


def load_module(path: Path) -> ModuleType:
    """Import a script that is not part of a package (the CTP generators)."""
    sys.path.insert(0, str(path.parent))
    spec = importlib.util.spec_from_file_location(path.stem, path)
    assert spec is not None and spec.loader is not None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def rename_all(text: str, renames: dict[str, str]) -> str:
    """Replace every whole-word old name with its new name in one pass."""
    renames = {o: n for o, n in renames.items() if o != n}
    if not renames:
        return text
    pattern = re.compile(
        r"(?<!\w)(" + "|".join(re.escape(o) for o in sorted(renames, key=len, reverse=True)) + r")(?![A-Za-z0-9])"
    )
    return pattern.sub(lambda m: renames[m.group(1)], text)


def covergroup_blocks(path: Path) -> dict[str, str]:
    return {m.group(1): m.group(0) for m in CG_BLOCK.finditer(path.read_text())} if path.exists() else {}


def plan_coverpoints(root: Path, suite: str) -> set[str] | None:
    """Coverpoints a test plan may name: those in <suite>_coverage.svh, or in covergroup <suite>_cg."""
    whole = root / "coverpoints/priv" / f"{suite}_coverage.svh"
    if whole.exists():
        return set(COVERPOINT_DECL.findall(whole.read_text()))
    for f in (root / "coverpoints/priv").glob("*_coverage.svh"):
        if block := covergroup_blocks(f).get(f"{suite}_cg"):
            return set(COVERPOINT_DECL.findall(block))
    return None


def declared_covergroups(root: Path) -> set[str]:
    return {cg for f in (root / "coverpoints/priv").glob("*_coverage.svh") for cg in covergroup_blocks(f)}


def preprocess(path: Path, defines: set[str]) -> tuple[dict[str, set[str]], set[str]]:
    """Evaluate the `ifdef structure of a coverage file.

    Returns {kind: names} for the covergroups that are declared (decl), constructed (new) and sampled
    (sample) in active code, and the defines in effect at the end of the file.
    """
    defines = set(defines)
    active: dict[str, set[str]] = {"decl": set(), "new": set(), "sample": set()}
    stack: list[tuple[bool, bool]] = []  # (this branch active, some branch already taken)
    on = True
    for line in path.read_text().splitlines() if path.exists() else []:
        m = re.match(r"\s*`(ifdef|ifndef|elsif|else|endif|define|undef)\b\s*(\w*)", line)
        if m:
            kind, name = m.groups()
            if kind in ("ifdef", "ifndef"):
                cond = (name in defines) == (kind == "ifdef")
                stack.append((on, on and cond))
                on = on and cond
            elif kind == "elsif":
                outer, taken = stack[-1]
                on = outer and not taken and name in defines
                stack[-1] = (outer, taken or on)
            elif kind == "else":
                outer, taken = stack[-1]
                on = outer and not taken
            elif kind == "endif":
                on = stack.pop()[0]
            elif on and kind == "define":
                defines.add(name)
            elif on and kind == "undef":
                defines.discard(name)
            continue
        if not on:
            continue
        for kind, regex in (
            ("decl", r"^\s*covergroup\s+(\w+)"),
            ("new", r"\b(\w+)\s*=\s*new\s*\("),
            ("sample", r"\b(\w+)\.sample\s*\("),
        ):
            active[kind].update(re.findall(regex, line))
    return active, defines


def add_worktree(ref: str, path: Path) -> None:
    run(["git", "-C", str(REPO_ROOT), "worktree", "add", "--detach", "--quiet", str(path), ref])


def remove_worktree(path: Path) -> None:
    subprocess.run(["git", "-C", str(REPO_ROOT), "worktree", "remove", "--force", str(path)], check=False)


def generate_tests(tree_root: Path, suites: list[str], out: Path, jobs: int) -> Path:
    """Generate the suites' tests, then gather them (and any handwritten suite) into one tests tree."""
    env = {k: v for k, v in os.environ.items() if k != "VIRTUAL_ENV"}
    uv = shutil.which("uv")
    if uv is None:
        sys.exit("Error: uv is not on PATH")
    generated = out / "generated"
    run(
        [uv, "run", "--quiet", "testgen", "testplans", "-o", str(generated), "--extensions", ",".join(suites)]
        + ["--jobs", str(jobs)],
        cwd=tree_root,
        env=env,
    )
    tests = out / "tests"
    for suite in suites:
        src = generated / "priv" / suite
        if not src.is_dir():
            src = tree_root / "tests" / "priv" / suite  # handwritten suite, checked in
        if src.is_dir():
            shutil.copytree(src, tests / "priv" / suite)
    return tests


def check_scope(report: Report, merge: Merge, base: str, head: str) -> None:
    report.section("1. Scope: changed files")
    diff = run(["git", "-C", str(REPO_ROOT), "diff", "--name-status", "--no-renames", f"{base}...{head}"])
    patterns = [p.format(name=n) for p in SCOPE_PATTERNS for n in merge.names]
    bad = []
    for line in diff.splitlines():
        status, path = line.split("\t", 1)
        report.info(f"{status} {path}")
        if not any(fnmatch.fnmatch(path, p) for p in patterns):
            bad.append(path)
    if bad:
        report.fail(f"{len(bad)} changed file(s) outside a suite merge: {', '.join(bad)}")
    else:
        report.ok("every changed file is one a suite merge may change")


def map_tests(report: Report, merge: Merge, old: Tree, new: Tree) -> dict[str, str]:
    """old test key (priv/Old/file.S) -> new test key, checking that the mapping is one to one."""
    mapping: dict[str, str] = {}
    for group in merge.groups:
        for f in sorted((old.tests / "priv" / group.old).glob("*")):
            name = merge.test_name(group, f.name)
            if name is None:
                report.fail(f"{group.old}/{f.name} does not start with {group.old}_ or {group.old}-")
                continue
            mapping[f"priv/{group.old}/{f.name}"] = f"priv/{merge.suite}/{name}"
    new_files = {f"priv/{merge.suite}/{f.name}" for f in (new.tests / "priv" / merge.suite).glob("*")}
    missing = sorted(set(mapping.values()) - new_files)
    extra = sorted(new_files - set(mapping.values()))
    for key in missing:
        report.fail(f"{key} is missing")
    for key in extra:
        report.fail(f"{key} has no counterpart in the old suites")
    return mapping


def check_tests(report: Report, merge: Merge, old: Tree, new: Tree, mapping: dict[str, str]) -> None:
    report.section("2. Tests: byte-identical except label covergroups and the path line")
    declared = declared_covergroups(new.root)
    labels: Counter[tuple[str, str]] = Counter()
    identical = 0
    for old_key, new_key in mapping.items():
        old_file, new_file = old.tests / old_key, new.tests / new_key
        if not new_file.exists():
            continue
        old_text, new_text = old_file.read_text(), new_file.read_text()
        old_cgs, new_cgs = CG_STRING.findall(old_text), CG_STRING.findall(new_text)
        if len(old_cgs) != len(new_cgs):
            report.fail(f"{new_key}: {len(new_cgs)} testcases, was {len(old_cgs)}")
            continue
        cg_map: dict[str, str] = {}
        for o, n in zip(old_cgs, new_cgs):
            if cg_map.setdefault(o, n) != n:
                report.fail(f"{new_key}: label covergroup {o} maps to both {cg_map[o]} and {n}")
            labels[(o, n)] += 1
        undeclared = sorted({n for n in new_cgs if n not in declared})
        if undeclared:
            report.fail(f"{new_key}: labels name undeclared covergroups {', '.join(undeclared)}")
        old_path = old_key.removeprefix("priv/")
        new_path = new_key.removeprefix("priv/")
        expected = rename_all(old_text.replace(f"// {old_path}\n", f"// {new_path}\n", 1), cg_map)
        if expected != new_text:
            a, b = expected.splitlines(), new_text.splitlines()
            first = next((i for i, (x, y) in enumerate(zip(a, b), 1) if x != y), min(len(a), len(b)) + 1)
            report.fail(f"{new_key}: differs from {old_key} beyond the renames, first at line {first}")
            continue
        identical += 1
    for (o, n), count in sorted(labels.items()):
        report.info(f"label covergroup {o} -> {n}: {count} testcases")
    if identical == len(mapping) and mapping:
        report.ok(f"{identical} test files identical after renaming")


def config_files(root: Path, pattern: str) -> list[Path]:
    files = sorted((root / "config").rglob("test_config.yaml"))
    return [f for f in files if fnmatch.fnmatch(f.parent.name, pattern)]


def ci_settings(config_file: Path, config_root: Path) -> tuple[bool, str]:
    """(runs in CI, exclude_extensions) from the nearest ci.yaml above a config, as .github/scripts/ci_config.py."""
    yaml = YAML(typ="safe", pure=True)
    for parent in config_file.parent.parents:
        ci_yaml = parent / "ci.yaml"
        if ci_yaml.exists():
            data = yaml.load(ci_yaml.read_text()) or {}
            enabled = data.get("ci_enabled", True) and config_file.parent.name not in data.get("exclude_configs", [])
            has_run_cmd = (config_file.parent / "run_cmd.txt").exists()
            return bool(enabled and has_run_cmd), str(data.get("exclude_extensions", ""))
        if parent == config_root:
            break
    return False, ""


@dataclass
class ConfigView:
    file: Path
    config: Config
    extensions: frozenset[str]
    params: dict[str, Any]
    defines: set[str]  # UDB-derived SystemVerilog defines


def load_configs(report: Report, new: Tree, pattern: str, workdir: Path, jobs: int) -> list[ConfigView]:
    loaded = [(f, load_config(f, validate_tools=False)) for f in config_files(new.root, pattern)]

    def valid(item: tuple[Path, Config]) -> bool:
        cfg = item[1]
        (workdir / cfg.name).mkdir(parents=True, exist_ok=True)
        try:
            validate_udb_config(cfg.udb_config, workdir / cfg.name / ".validated")
        except Exception:  # noqa: BLE001 - any validation failure just skips the config
            return False
        return True

    _ensure_udb_installed()
    with ThreadPoolExecutor(max_workers=jobs) as pool:
        ok = list(pool.map(valid, loaded))
    skipped = sorted(cfg.name for (_, cfg), good in zip(loaded, ok) if not good)
    if skipped:
        report.info(f"skipped {len(skipped)} configs whose UDB yaml does not validate: {', '.join(skipped)}")
    loaded = [item for item, good in zip(loaded, ok) if good]
    prepare_dut_outputs([cfg for _, cfg in loaded], workdir, jobs, False)
    views = []
    for file, cfg in loaded:
        env = workdir / cfg.name / "env"
        svh = (env / "rvtest_config.svh").read_text()
        views.append(
            ConfigView(
                file,
                cfg,
                get_implemented_extensions(env / "extensions.txt"),
                get_config_params(cfg.udb_config),
                set(re.findall(r"^\s*`define\s+(\w+)", svh, re.MULTILINE)),
            )
        )
    report.info(f"{len(views)} configs")
    return views


def selections(view: ConfigView, tree: Tree) -> dict[str, dict[str, TestMetadata]]:
    """Selected tests per scenario: 'all' (no certificate) and each certificate."""
    cfg = view.config
    selected = select_tests(
        tree.test_dict,
        view.extensions,
        view.params,
        harts=cfg.harts,
        include_priv_tests=cfg.include_priv_tests,
    )
    out = {"all": selected}
    for certificate in CERTIFICATE_EXTENSIONS:
        out[certificate] = filter_tests_by_certificate(selected, certificate)
    return out


def check_selection(
    report: Report,
    views: list[ConfigView],
    old: Tree,
    new: Tree,
    mapping: dict[str, str],
) -> dict[tuple[str, str], tuple[set[str], set[str]]]:
    """Compare the selected tests per config and scenario; return them for the activation check."""
    report.section("3. Selection: same tests selected for every config, certificate and CI exclusion list")
    chosen: dict[tuple[str, str], tuple[set[str], set[str]]] = {}
    mismatches = 0
    for view in views:
        name = view.config.name
        old_sel, new_sel = selections(view, old), selections(view, new)
        for scenario in old_sel:
            o, n = set(old_sel[scenario]), set(new_sel[scenario])
            chosen[(name, scenario)] = (o, n)
            if {mapping.get(k, k) for k in o} != n:
                mismatches += 1
                report.fail(f"{name} [{scenario}]: {len(o)} tests selected before, {len(n)} after")
        in_ci, new_exclude = ci_settings(view.file, new.root / "config")
        if not in_ci:
            continue
        _, old_exclude = ci_settings(old.root / view.file.relative_to(new.root), old.root / "config")
        o = set(generate_test_dict(old.tests, "all", old_exclude)) & set(old_sel["all"])
        n = set(generate_test_dict(new.tests, "all", new_exclude)) & set(new_sel["all"])
        report.detail(f"{name}: {len(o)} tests run in CI")
        if {mapping.get(k, k) for k in o} != n:
            mismatches += 1
            only_old = sorted({mapping.get(k, k) for k in o} - n)
            only_new = sorted(n - {mapping.get(k, k) for k in o})
            report.fail(f"{name} [ci]: run before only {only_old}; run after only {only_new}")
    for view in views:
        counts = ", ".join(f"{s}: {len(chosen[(view.config.name, s)][1])}" for s in ["all", *CERTIFICATE_EXTENSIONS])
        report.detail(f"{view.config.name}: {counts}")
    if not mismatches:
        report.ok(f"{len(views)} configs x {1 + len(CERTIFICATE_EXTENSIONS)} scenarios + CI select the same tests")
    return chosen


def check_activation(
    report: Report,
    merge: Merge,
    views: list[ConfigView],
    old: Tree,
    new: Tree,
    chosen: dict[tuple[str, str], tuple[set[str], set[str]]],
) -> None:
    report.section("4. Activation: every covergroup is compiled and sampled under the same conditions")
    priv = "coverpoints/priv"
    mismatches = 0
    checked = 0
    for view in views:
        for scenario in ["all", *CERTIFICATE_EXTENSIONS]:
            defines = set(view.defines)
            if scenario != "all" and "Sm" not in get_certificate_extensions(scenario):
                defines.add("EXCLUDE_SM")
            old_sel, new_sel = chosen[(view.config.name, scenario)]
            new_runs = any(k.split("/")[1] == merge.suite for k in new_sel)
            new_active, new_defs = preprocess(
                new.root / priv / f"{merge.suite}_coverage.svh", defines | {f"{merge.suite.upper()}_COVERAGE"}
            )
            new_init, _ = preprocess(new.root / priv / f"{merge.suite}_coverage_init.svh", new_defs)
            for group in merge.groups:
                old_runs = any(k.split("/")[1] == group.old for k in old_sel)
                old_file = old.root / priv / f"{group.old}_coverage.svh"
                old_active, old_defs = preprocess(old_file, defines | {f"{group.old.upper()}_COVERAGE"})
                old_init, _ = preprocess(old.root / priv / f"{group.old}_coverage_init.svh", old_defs)
                for cg in covergroup_blocks(old_file):
                    new_cg = merge.covergroup(group, cg)
                    new_parts = [new_cg in s for s in (new_active["decl"], new_init["new"], new_active["sample"])]
                    if len(set(new_parts)) > 1:
                        mismatches += 1
                        report.fail(
                            f"{view.config.name} [{scenario}]: {new_cg} declared/constructed/sampled = {new_parts}; "
                            "its guards disagree"
                        )
                    was = old_runs and all(cg in s for s in (old_active["decl"], old_active["sample"], old_init["new"]))
                    now = new_runs and all(new_parts)
                    checked += 1
                    if was != now:
                        mismatches += 1
                        report.fail(
                            f"{view.config.name} [{scenario}]: {cg} was {'active' if was else 'inactive'}, "
                            f"{new_cg} is {'active' if now else 'inactive'}"
                        )
    if not mismatches:
        report.ok(f"{checked} covergroup/config/scenario combinations activate as before")
    report.info(
        f"each {merge.suite} covergroup now samples every selected {merge.suite} test, "
        "not only its own group's tests, so hits can only grow"
    )


def check_covergroups(report: Report, merge: Merge, old: Tree, new: Tree) -> dict[str, str]:
    """Compare covergroup bodies; return the old -> new covergroup renames."""
    report.section("5. Covergroups: bodies identical except for the name")
    new_file = new.root / "coverpoints/priv" / f"{merge.suite}_coverage.svh"
    new_blocks = covergroup_blocks(new_file)
    renames: dict[str, str] = {}
    matched: set[str] = set()
    for group in merge.groups:
        for cg, body in covergroup_blocks(old.root / "coverpoints/priv" / f"{group.old}_coverage.svh").items():
            new_cg = merge.covergroup(group, cg)
            renames[cg] = new_cg
            expected = re.sub(rf"\bcovergroup\s+{cg}\b", f"covergroup {new_cg}", body, count=1)
            if new_cg not in new_blocks:
                report.fail(f"{cg}: no covergroup {new_cg} in {new_file.name}")
            elif new_blocks[new_cg] != expected:
                report.fail(f"{cg} -> {new_cg}: body differs")
            else:
                matched.add(new_cg)
                report.info(f"{cg} -> {new_cg}")
    for cg in sorted(set(new_blocks) - set(renames.values())):
        report.fail(f"{new_file.name} declares {cg}, which no old suite had")
    if matched and len(matched) == len(renames):
        report.ok(f"{len(matched)} covergroups identical after renaming")
    outside = CG_BLOCK.sub("<covergroup>\n", new_file.read_text()) if new_file.exists() else ""
    report.info(f"{new_file.name} outside its covergroups (defines, guards, sample function):")
    for line in outside.splitlines():
        if line.strip() and not line.lstrip().startswith("//"):
            report.info(f"  {line}")
    return renames


def check_norm(report: Report, gpt: ModuleType, old: Tree, new: Tree, renames: dict[str, str]) -> None:
    report.section("6. Norm: same rules mapped to the same coverpoints")

    def entries(root: Path, rename: Callable[[str], str]) -> Counter[tuple[tuple[str, ...], str]]:
        out: Counter[tuple[tuple[str, ...], str]] = Counter()
        for f in sorted((root / "coverpoints/norm").glob("*.yaml")):
            for names, mappings in gpt.load_norm_yaml(f).groups:
                for mapping in mappings:
                    out[(tuple(names), rename(mapping))] += 1
        return out

    def pairs(entry_set: Iterable[tuple[tuple[str, ...], str]]) -> set[tuple[str, str, str]]:
        return {(n, cg, cp) for names, m in entry_set for n in names for cg, cp in gpt.coverpoints_of(m)}

    old_entries = entries(old.root, lambda m: rename_all(m, renames))
    new_entries = entries(new.root, lambda m: m)
    renamed = sum(c for (_, m), c in new_entries.items() if any(n in m for n in renames.values()))
    if old_entries == new_entries:
        report.ok(f"norm entries identical after renaming ({renamed} mappings name a renamed covergroup)")
    elif pairs(old_entries) == pairs(new_entries):
        report.ok("norm entries map the same (rule, covergroup, coverpoint) triples after brace expansion")
    else:
        old_p, new_p = pairs(old_entries), pairs(new_entries)
        for p in sorted(old_p - new_p):
            report.fail(f"lost {p[0]} -> {p[1]}/{p[2]}")
        for p in sorted(new_p - old_p):
            report.fail(f"added {p[0]} -> {p[1]}/{p[2]}")
    stale = sorted(
        {
            o
            for o, n in renames.items()
            # A group whose suite keeps its name (--group =Sv) keeps its covergroup names too
            if o != n
            for f in (new.root / "coverpoints/norm").glob("*.yaml")
            if re.search(rf"\b{o}\b", f.read_text())
        }
    )
    if stale:
        report.fail(f"norm files still name old covergroups: {', '.join(stale)}")


def plan_files(root: Path, merge: Merge) -> list[Path]:
    files: set[Path] = set()
    for name in merge.names:
        files.update((root / "testplans/priv").glob(f"{name}.yaml"))
        files.update((root / "testplans/priv").glob(f"{name}_*.yaml"))
    return sorted(files)


def check_plans(report: Report, merge: Merge, old: Tree, new: Tree) -> None:
    report.section("7. Plans: rows carried over unchanged; names only narrowed to the covergroup's coverpoints")
    yaml = YAML(typ="safe", pure=True)
    old_items = [
        (f.name, i, item)
        for f in plan_files(old.root, merge)
        for i, item in enumerate(yaml.load(f.read_text())["coverpoints"])
    ]
    used: Counter[int] = Counter()
    problems = 0
    for f in plan_files(new.root, merge):
        plan = yaml.load(f.read_text())
        cov = plan_coverpoints(new.root, plan["suite"])
        report.info(f"{f.name}: suite {plan['suite']}, {len(plan['coverpoints'])} items")
        last = -1
        for item in plan["coverpoints"]:
            rest = {k: v for k, v in item.items() if k != "name"}
            exact = [j for j, (_, _, o) in enumerate(old_items) if o == item]
            narrowed = [
                j
                for j, (_, _, o) in enumerate(old_items)
                if "heading" not in item and {k: v for k, v in o.items() if k != "name"} == rest
            ]
            lines = [ln.strip() for ln in str(item.get("name", "")).splitlines() if ln.strip()]
            renamable = cov is not None and bool(lines) and all(ln in cov for ln in lines)
            candidates = sorted(set(exact) | (set(narrowed) if renamable else set()))
            later = [j for j in candidates if j > last]
            if not later:
                problems += 1
                what = item.get("heading") or item.get("name")
                report.fail(f"{f.name}: item {what!r} is not an old item (or is out of order)")
                continue
            j = later[0]
            last = j
            used[j] += 1
            old_name = old_items[j][2].get("name")
            if "heading" not in item and old_name != item.get("name"):
                report.info(f"  {old_items[j][0]}: {old_name!r} -> {item['name']!r}")
    for j, (fname, _, item) in enumerate(old_items):
        if not used[j]:
            problems += 1
            report.fail(f"{fname}: item {item.get('heading') or item.get('name')!r} is in no new plan")
    if not problems:
        report.ok(f"{len(old_items)} old plan items all carried into the new plans")


def parse_report(path: Path) -> dict[tuple[str, str, str], bool]:
    """(covergroup, coverpoint, bin) -> covered, from a Questa vcover detail report."""
    bins: dict[tuple[str, str, str], bool] = {}
    cg = cp = ""
    for line in path.read_text().splitlines():
        if m := re.match(r"\s*TYPE\s+\S*/(\w+)\s*$", line):
            cg = m.group(1)
        elif m := re.match(r"\s+(?:Coverpoint|Cross)\s+(\w+)", line):
            cp = m.group(1)
        elif m := REPORT_BIN.match(line):
            bins[(cg, cp, f"{m.group(1)} {m.group(2)}")] = m.group(5) == "Covered"
    return bins


def check_coverage(report: Report, merge: Merge, pairs: list[list[str]], renames: dict[str, str]) -> None:
    report.section("8. Coverage reports: same bins, no lost hits")
    for old_dir, new_dir in (map(Path, p) for p in pairs):
        old_bins: dict[tuple[str, str, str], bool] = {}
        for group in merge.groups:
            f = old_dir / f"{group.old}_report.txt"
            if not f.exists():
                # The old suite did not run there (e.g. Sm tests under a certificate), so it contributes no bins
                report.info(f"{f.name} not in {old_dir}: {group.old} did not run")
                continue
            old_bins |= {(renames.get(cg, cg), cp, b): hit for (cg, cp, b), hit in parse_report(f).items()}
        new_file = new_dir / f"{merge.suite}_report.txt"
        if not new_file.exists():
            report.fail(f"{new_file} is missing")
            continue
        new_bins = parse_report(new_file)
        lost = sorted(k for k, hit in old_bins.items() if hit and not new_bins.get(k, False))
        gained = sorted(k for k, hit in new_bins.items() if hit and not old_bins.get(k, False))
        if set(old_bins) != set(new_bins):
            report.fail(
                f"{new_dir}: {len(set(old_bins) - set(new_bins))} bins only before, "
                f"{len(set(new_bins) - set(old_bins))} only after"
            )
        for k in lost:
            report.fail(f"{new_dir}: lost hit {'/'.join(k)}")
        for k in gained:
            report.info(f"{new_dir}: newly hit {'/'.join(k)}")
        if set(old_bins) == set(new_bins) and not lost:
            report.ok(f"{new_dir}: {len(new_bins)} bins, none lost a hit, {len(gained)} newly hit")


def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--base", default="upstream/act4", help="ref before the merge (default upstream/act4)")
    ap.add_argument("--head", default="HEAD", help="ref after the merge (default HEAD)")
    ap.add_argument("--suite", required=True, help="merged suite, e.g. Sscofpmf")
    ap.add_argument(
        "--group",
        action="append",
        required=True,
        metavar="G=OLD",
        help="group of the merged suite and the old suite it replaces, e.g. Sm=SscofpmfSm (repeat per group)",
    )
    ap.add_argument("--configs", default="*", help="glob on config names for checks 3-4 (default all)")
    ap.add_argument("--skip-configs", action="store_true", help="skip checks 3-4 (UDB is slow the first time)")
    ap.add_argument(
        "--coverage",
        nargs=2,
        action="append",
        default=[],
        metavar=("OLD_REPORTS", "NEW_REPORTS"),
        help="work/<config>/reports directories from make coverage before and after (repeatable)",
    )
    ap.add_argument("--jobs", type=int, default=os.cpu_count() or 1)
    ap.add_argument("--keep", action="store_true", help="keep the temporary worktrees and tests")
    ap.add_argument("-v", "--verbose", action="store_true")
    return ap.parse_args()


def main() -> None:
    args = parse_args()
    groups = []
    for spec in args.group:
        name, sep, old_suite = spec.partition("=")
        if not sep or not old_suite:
            sys.exit(f"Error: --group {spec!r} is not G=OLD")
        groups.append(Group(name, old_suite))
    merge = Merge(args.suite, groups)
    report = Report(verbose=args.verbose)
    gpt = load_module(REPO_ROOT / "generators/ctp/generate_priv_testplans.py")

    tmp = Path(tempfile.mkdtemp(prefix="check_suite_merge-"))
    print(f"Working in {tmp}")
    trees: list[Tree] = []
    try:
        for label, ref, suites in (
            ("base", args.base, [g.old for g in groups]),
            ("head", args.head, [args.suite]),
        ):
            root = tmp / label
            add_worktree(ref, root)
            tests = generate_tests(root, suites, tmp / f"{label}-tests", args.jobs)
            tree = Tree(label, root, tests, suites)
            tree.test_dict = generate_test_dict(tests, "all") if tests.exists() else {}
            trees.append(tree)
        old, new = trees

        check_scope(report, merge, args.base, args.head)
        mapping = map_tests(report, merge, old, new)
        check_tests(report, merge, old, new, mapping)
        if args.skip_configs:
            report.section("3-4. Selection and activation: skipped (--skip-configs)")
        else:
            views = load_configs(report, new, args.configs, tmp / "udb", args.jobs)
            chosen = check_selection(report, views, old, new, mapping)
            check_activation(report, merge, views, old, new, chosen)
        renames = check_covergroups(report, merge, old, new)
        check_norm(report, gpt, old, new, renames)
        check_plans(report, merge, old, new)
        if args.coverage:
            check_coverage(report, merge, args.coverage, renames)
    finally:
        if args.keep:
            print(f"\nKept {tmp}")
        else:
            for tree_root in (tmp / "base", tmp / "head"):
                if tree_root.exists():
                    remove_worktree(tree_root)
            shutil.rmtree(tmp, ignore_errors=True)

    print(f"\n{'FAILED' if report.failures else 'PASSED'}: {report.failures} failure(s)")
    sys.exit(1 if report.failures else 0)


if __name__ == "__main__":
    main()
