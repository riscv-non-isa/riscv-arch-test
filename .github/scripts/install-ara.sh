#!/usr/bin/env bash
# Copyright (c) 2026, Harvey Mudd College
# SPDX-License-Identifier: Apache-2.0
# Install the CVA6 + Ara Verilator model for CI.
# Usage: install-ara.sh <install-dir>
# Cache key derives from sha256(this file); bump the pins below to invalidate.

set -euo pipefail

# Resolved before any cd: the steps below run inside the Ara tree, where a path relative to
# $0 no longer refers to this script's directory.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

INSTALL_DIR="${1:?Usage: install-ara.sh <install-dir>}"
ARA_REPO="https://github.com/pulp-platform/ara.git"
ARA_COMMIT="34bd3bc152421b4601a7bf3d6e8e91ffb545c99e"
# sha256 of ara-fixes.patch, so that changing the patch changes this script (and the cache key).
ARA_FIXES_SHA256="9f8303fd25aa5cf2de441c3330e9113ae44cb0d62e838d385a4bff5bf9df9ae9"

# Ara pins its own Verilator (5.047-devel) as a submodule and builds it with `make
# verilator`. That version is not optional: hierarchical sub-verilation is what makes
# this model usable at all (~15,000 cycles/s versus ~100 cycles/s for a flat build),
# and Verilator releases before 5.046 drop the +incdir+/+define+ lines from Bender's
# flist when --hierarchical is used, so the design does not even elaborate.
mkdir -p "$INSTALL_DIR"

# Where ccache masquerades as the compiler (a ccache directory on PATH), it serves precompiled
# headers and objects from earlier Ara builds, which yields models that fail to compile or crash.
export CCACHE_DISABLE=1

git init "$INSTALL_DIR/ara"
(
  cd "$INSTALL_DIR/ara"
  git remote add origin "$ARA_REPO"
  git fetch --depth 1 origin "$ARA_COMMIT"
  git checkout FETCH_HEAD
  git submodule update --init --recursive toolchain/verilator

  # Hardware fixes from open Ara PRs, applied in order as each PR's merge-base..head diff of
  # hardware/ (their CHANGELOG.md entries conflict), three-way so that PRs touching the same code
  # stack. Drop an entry and bump ARA_COMMIT once its PR merges.
  #   469: vcpop.m/vfirst.m count past vl (#446), vcompress completion hang (#450), vid.v deadlock (#448)
  #   502: vfirst.m index accumulation and operands stranded for the next mask instruction (#500)
  #   467: VWXUNARY0 vs1 hazard (#436), segment EEW tracking (#453), vext.vf8 EEW (#452), masked vmerge to v0 (#460)
  #   473: vslideup.vi/vslidedown.vi immediate is unsigned
  #   474: vslideup/vslidedown hang on a chunk-aligned offset
  #   475, 477, 479, 480: vrgather/vcompress deadlocks and hangs
  #   478: false illegal instruction on a widening reduction with an unaligned vd
  #   485-489: whole-register load vstart, vsetvl vtype bits, vector CSR sources, vxrm clear mask, csrrwi vcsr
  #   503: vsmul shift amount at SEW=16
  for fix in \
    "469 ab4158aeeb552a5b6f9aebed7fca0e51aa003534 aee901c70f9eb9be644da556dc4a2ddd0de48661" \
    "502 34bd3bc152421b4601a7bf3d6e8e91ffb545c99e 16edd3ba8a734b7cc52dee124bd86adb53fa66ff" \
    "467 ab4158aeeb552a5b6f9aebed7fca0e51aa003534 f1a7030e6fff5be85c9a5b99816fd418befed0e7" \
    "473 ab4158aeeb552a5b6f9aebed7fca0e51aa003534 7f039276674034465ac1470eb80ec8bcc4474db3" \
    "474 ab4158aeeb552a5b6f9aebed7fca0e51aa003534 cc849d4a4a5145bffedfc52c470d7f4753c11616" \
    "475 ab4158aeeb552a5b6f9aebed7fca0e51aa003534 5737c311892e3ed2a61181efd46c6c74489863ef" \
    "477 ab4158aeeb552a5b6f9aebed7fca0e51aa003534 f547478980ba5eb6529a5b15fe860fc79a1bd135" \
    "478 ab4158aeeb552a5b6f9aebed7fca0e51aa003534 1dbdbe8c8368b33b21c2a2d36e25f381752d21f2" \
    "479 ab4158aeeb552a5b6f9aebed7fca0e51aa003534 38ade6c0c46f1f299e34ad1af563b31c8f260fb1" \
    "480 ab4158aeeb552a5b6f9aebed7fca0e51aa003534 74560f5302990f5a235292067b060b1eef545e93" \
    "485 34bd3bc152421b4601a7bf3d6e8e91ffb545c99e ef90dec52afdba3d2c580f3bce637bd8e78941b1" \
    "486 34bd3bc152421b4601a7bf3d6e8e91ffb545c99e 77517f4ee1d4176fd3bacdeccd6b0dda7b7bae3f" \
    "487 34bd3bc152421b4601a7bf3d6e8e91ffb545c99e e24f45f2180a252ded110decd63ef32f667a00ac" \
    "488 34bd3bc152421b4601a7bf3d6e8e91ffb545c99e 3f8b1aebe4e1c7ce96407bb234c5a4cea5f4cba1" \
    "489 34bd3bc152421b4601a7bf3d6e8e91ffb545c99e 9f0506ebdebcff8be800c86fea4d39f4e2713e7a" \
    "503 34bd3bc152421b4601a7bf3d6e8e91ffb545c99e 8581df7d40f5041e1d8478a29e7751c82bbb83cf"; do
    read -r pr base head <<<"$fix"
    git fetch --depth 1 origin "$base" "$head"
    git diff "$base" "$head" -- hardware | git apply --3way || {
      echo "install-ara.sh: Ara PR $pr does not apply" >&2
      exit 1
    }
    git add -A hardware # --3way needs the index to match the work tree
  done

  # Fixes from our own Ara PRs (512 conflicts with 478), carried as one patch generated against
  # the tree the pins produce. Regenerate it and ARA_FIXES_SHA256 when a pin changes; drop a fix
  # once its PR merges.
  #   512: LMUL checks on single-register operands, mask-destination overlap rule (#511)
  #   513: vaadd/vasub overflow (#228)       514: widening .vx/.wx scalar width (#505)
  #   515: fixed-point rounding, vssrl, vnclip saturation (#506)
  #   516: vsmul vxsat and saturation (#507) 517: vslide1up at vl=1 (#508)
  echo "$ARA_FIXES_SHA256  $SCRIPT_DIR/ara-fixes.patch" | sha256sum --check --status || {
    echo "install-ara.sh: ara-fixes.patch changed; update ARA_FIXES_SHA256" >&2
    exit 1
  }
  git apply "$SCRIPT_DIR/ara-fixes.patch" || {
    echo "install-ara.sh: ara-fixes.patch does not apply" >&2
    exit 1
  }
)

(
  cd "$INSTALL_DIR/ara"
  # 1. Ara's pinned Verilator (~4 min on 32 cores).
  make verilator
  export PATH="$INSTALL_DIR/ara/install/verilator/bin:$PATH"

  # 2. Bender downloads a prebuilt binary; no Rust toolchain is needed.
  make -C hardware checkout
  make -C hardware apply-patches

  # 3. Widen the testbench's ELF loader window.
  "$SCRIPT_DIR/setup-ara.sh" "$INSTALL_DIR" --patch-only

  # 4. Enable CVA6's bit-manipulation unit (RVB: Zba, Zbb, Zbc, Zbs) and its ZKN
  #    instructions (Zbkb), which cv64a6_imafdcv_sv39 leaves off, then verilate.
  sed -i "s/^\( *\)cfg.NrPMPEntries          = 0;/&\n\1cfg.RVB                   = 1'b1;\n\1cfg.ZKN                   = 1'b1;/" \
    hardware/src/ara_soc.sv
  grep -q "cfg.ZKN                   = 1'b1;" hardware/src/ara_soc.sv || {
    echo "install-ara.sh: failed to enable RVB and ZKN in hardware/src/ara_soc.sv" >&2
    exit 1
  }

  # nr_lanes=4 with VLEN=512. VLEN is an independent -G parameter; 512 is roughly 15x
  # cheaper in wall clock than Ara's 4096 default and about 8x smaller in signature
  # memory, for the same architectural coverage.
  make -C hardware verilate nr_lanes=4 vlen=512 buildpath="$INSTALL_DIR/build"
)

mkdir -p "$INSTALL_DIR/bin"
install -m 0755 "$SCRIPT_DIR/run-ara.sh" "$INSTALL_DIR/bin/run-ara.sh"
