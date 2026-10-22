---
name: merge-priv-suites
description: Merge per-privilege-mode ACT suites (e.g. SscofpmfSm, SscofpmfS, SscofpmfU) into one suite per extension, with one covergroup, test-file group and test plan per old suite, and prove with check_suite_merge.py that the merge only rearranges tests, coverpoints, plans, norm mappings and exclusions. Use when asked to merge, fold or unify privileged suites so there is one suite per named extension.
---

# Merge per-mode privileged suites into one suite

Goal: one suite per named extension. Each old suite becomes a **group** `<G>` of the merged suite `<Suite>`:
`<Old>` (e.g. `SscofpmfSm`) becomes group `Sm` of `Sscofpmf`. Name groups after the mode the old suite ran
in (`Sm`, `S`, `U`, ...) or the old suite's suffix. The merge must be a pure rearrangement: reviewers check it
with `generators/testgen/scripts/check_suite_merge.py`, so nothing else may change in the same PR. Fix any
behavior first in a separate PR.

The first merge, Sscofpmf, is the worked example; diff it against its base when in doubt.

## Naming

| Item            | Before                                        | After                                                                                                 |
| --------------- | --------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| Suite directory | `tests/priv/<Old>/`                           | `tests/priv/<Suite>/`                                                                                 |
| Test files      | `<Old>_<split>-NN.S`                          | `<Suite>_<G>_<split>-NN.S`                                                                            |
| Covergroup      | `<Old>_cg`, `<Old>_<x>_cg`                    | `<Suite>_<G>_cg`, `<Suite>_<G>_<x>_cg`                                                                |
| Coverage files  | `coverpoints/priv/<Old>_coverage{,_init}.svh` | one `<Suite>_coverage{,_init}.svh`                                                                    |
| Generator       | `<Old>.py`, `<Suite>Common.py`                | one `<Suite>.py`                                                                                      |
| Test plan       | per old suite or shared                       | `testplans/priv/<Suite>_<G>.yaml` per covergroup, plus `<Suite>_common.yaml` for shared preamble rows |

## Steps

1. Worktree off `upstream/act4` in `~/act-wt/<suite>-merge`; run `mise trust` there.
2. **Generator** (`generators/testgen/src/testgen/priv/extensions/<Suite>.py`): concatenate the old modules
   into one file and delete the old ones.
   - Register each old generator with `@add_priv_test_generator("<Suite>", ...)`. Keep its
     `required_extensions`, `march_extensions`, `extra_defines`, `params` and **function name** exactly.
   - Pass `seed_name="<Old>"`. Register allocation is seeded from `"<suite>-<function>-0"`, so without this
     every register choice changes.
   - Prefix every split name with the group (`begin_test_chunk(f"{group}_inhibit_lo")`, `"Sm_interrupt"`).
     Unprefixed names would put all groups in one numbering series and make group exclusions impossible.
     A chunk with no split name gets `split_name="<G>"`.
   - Point every `add_testcase(..., covergroup)` at the new covergroup name (often via a
     `_cg(mode)` helper). Old labels sometimes named a covergroup that never existed; the checker accepts any
     consistent label rename as long as the new name is declared.
3. **Coverage** (`coverpoints/priv/<Suite>_coverage.svh`): `` `define COVER_<SUITE> ``, then each old
   covergroup body copied verbatim and renamed, then `<suite>_sample()` sampling each. Put the matching
   `new()`/`set_inst_name("obj_<Suite>_<G>")` lines in `<Suite>_coverage_init.svh`. Delete the old files, then
   `rm -f work/stamps/covergroupgen.stamp && make covergroupgen` and commit the regenerated
   `coverpoints/coverage/RISCV_coverage_{config,base_init,base_sample}.svh`.
   - **Sm groups**: wrap the declaration, the `.sample()` call and the `new()` line in `` `ifndef EXCLUDE_SM ``.
     `act --certificate RVA23` drops every test that requires Sm and defines `EXCLUDE_SM` for coverage
     (act4 #2825), so M-mode covergroups must not count there. The Sm group's generator must list `Sm` in
     `required_extensions`.
   - Add other guards only where they mirror a group's `required_extensions` that the merged suite does not
     already imply (S implies U, so a U group in an S-mode extension needs no `U_SUPPORTED` guard). The
     checker's activation check fails if a guard changes when a covergroup is active.
   - Coverage runs per suite directory, so each covergroup now samples every test in the merged suite. Bins
     are unchanged; hits can only grow (typically zero-weight `priv_mode_*` helper bins of the Sm covergroup now
     see S/U instructions). Say so in the PR.
4. **Norm** (`coverpoints/norm/*.yaml`): rename the covergroups everywhere, including brace lists such as
   `{SscofpmfSm_cg,SscofpmfS_cg}` and comments; `grep -rn '<Old>_' coverpoints/norm` must find nothing. Fold an
   old suite's norm file into `<Suite>.yaml` if it had its own.
5. **Plans**: one `testplans/priv/<Suite>_<G>.yaml` (`suite: <Suite>_<G>`) per covergroup, holding the rows
   whose coverpoints exist in that covergroup, plus `<Suite>_common.yaml` (`suite: <Suite>_common`,
   `title: <Suite> Setup`) for preamble headings and setup rows. Copy rows verbatim; only narrow a `name:` to the
   coverpoint(s) of that covergroup (`cp_xinh_inhibits_xmode` -> `cp_minh_inhibits_mmode`). Leave content
   problems (missing rows, stale text, rule disagreements) for a follow-up PR and list them in the PR.
   `generators/ctp/generate_priv_testplans.py` checks a `<Suite>_<G>` plan against covergroup `<Suite>_<G>_cg`
   and fills its Normative Rule column from it.
6. **CTP** (`docs/ctp/src`): under the extension's `====` section, include `<Suite>_common.adoc`, then one
   `===== <Suite>_<G>` subsection per group plan, then the norm table once. Point the `profiles.adoc` row at
   `<<t-<Suite>_common-coverpoints>>` and drop rows for the old suites.
7. **Exclusions**: rewrite every `exclude_extensions` entry and comment in `config/**/ci.yaml` from `<Old>` /
   `<Old>_<split>` to `<Suite>_<G>` / `<Suite>_<G>_<split>` (`git grep -n '<Old>'`). Entries match a suite
   directory, or test files starting with `<entry>_` or `<entry>-` (`parse_test_constraints._is_excluded`).
8. `make tests`, then check `git status` shows only the intended generated diff.
9. Run the checker (below) until it passes, then the verification.
10. `git cm` (never `--no-gpg-sign`), `mise run prek && git push` (gate the push on prek), and open the
    PR with `gh pr create --draft --base act4`. PR body: what moved and why, the cross-group
    sampling note, follow-up plan gaps.

## Checker

```bash
uv run generators/testgen/scripts/check_suite_merge.py --base upstream/act4 --head <branch> \
    --suite <Suite> --group <G1>=<Old1> --group <G2>=<Old2> ... [--coverage OLD_REPORTS NEW_REPORTS] [-v]
```

It makes detached worktrees of both refs and checks:

1. **scope**: only files a merge may touch changed;
2. **tests**: regenerated tests are byte-identical except for label covergroups and the path comment;
3. **selection**: every config selects the same tests, with no certificate, with each certificate, and with
   its CI exclusions;
4. **activation**: every covergroup is compiled and sampled under the same config defines, certificate
   (`EXCLUDE_SM`) and selection as before;
5. **covergroups**: bodies are identical except for the name;
6. **norm**: the same rules map to the same coverpoints;
7. **plans**: every row is carried over and only names are narrowed;
8. **coverage** (optional): with `--coverage`, Questa reports have the same bins and lose no hits.

`--skip-configs` skips checks 3-4 for a quick iteration; the UDB pass over all configs is slow the first time.
Use `--configs '<glob>'` to narrow it.

## Verification

- Checker passes on all configs, with `--coverage` for `sail-rv32-max` and `sail-rv64-max` reports built with
  `make clean && make coverage EXTENSIONS=<suites>` in a base and a head worktree.
- Simulators: in both trees, `make clean`, `rm -f work/stamps/testgen.stamp`, then
  `EXTENSIONS=<old suites> DEBUG=True make -k sail spike whisper qemu` (base) and `EXTENSIONS=<Suite>` (head);
  pass/fail per mapped test must match.
- Certificate: `CERTIFICATE=RVA23 make coverage EXTENSIONS=<Suite>` on `sail-RVA23S64-optional` skips the Sm
  tests and omits the Sm covergroups.
- CTP: `cd docs/ctp && make` (podman; it must run from that directory); compare the generator warnings with
  the base tree and read the new section.
- `mise run prek`.

## Gotchas

- Stale `tests/priv/<Old>/` directories survive regeneration and make `make coverage` fail once
  `<Old>_coverage.svh` is gone. Delete them.
- `work/stamps/testgen.stamp` ignores `EXTENSIONS`; remove it before a build for a different suite list.
- Run `make clean` before `make coverage`; simulator runs leave ELFs that coverage reuses.
- UDB caches generated configs per config name under `~/.local/share/udb`; concurrent builds of different
  trees can poison it. Give a parallel checker run its own `XDG_DATA_HOME` if that happens.
- Old suites that boot to M-mode without listing `Sm` (SsnpmSm, SmnpmSSm) are selected for RVA23 today. Adding
  `Sm` changes their run conditions, so it cannot be part of a merge; do it in its own PR, or leave it.
- Suites with several covergroups per old suite (Sm, Exceptions*, Interrupts*, PMP*, Sv*) map each
  `<Old><rest>_cg` to `<Suite>_<G><rest>_cg`; the checker derives label renames from the aligned `cg:` strings
  in each test, so labels need not follow that rule.

- When the merged suite keeps an old suite's name (e.g. `Sv` absorbing `SvSm`), pass that suite as `--group =Sv`
  (empty group); its files and covergroups keep their names.
