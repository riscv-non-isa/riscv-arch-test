# ACT Configuration for CVA6 + Ara

[CVA6](https://github.com/pulp-platform/cva6) `cv64a6_imafdcv_sv39` with the
[Ara](https://github.com/pulp-platform/ara) vector unit. The configuration is pinned to Ara commit
`34bd3bc1`, which carries CVA6 `99eac9a6`, plus the hardware fixes from open Ara PRs (listed in
`install-ara.sh`, the last six carried in `ara-fixes.patch`), and runs the Ara SoC under Verilator
with 4 lanes and VLEN 512.
`install-ara.sh` also turns on CVA6's bit-manipulation unit (`RVB`) and its `ZKN` instructions,
which this CVA6 configuration leaves off.

| Config                | ISA                                                        | Modes   |
| --------------------- | ---------------------------------------------------------- | ------- |
| `cv64a6_imafdcv_sv39` | RV64IMAFDCBV_Zicsr_Zifencei_Zihpm_Zbc_Zbkb_Zbkc_Sv39_Svade | M, S, U |

## Building and running

CI skips the vector suites, which are too slow on this model. To run them locally:

```bash
make cva6-vector                                  # all vector suites
make cva6-vector CVA6_VECTOR_SUITES=Vx8 RUN_JOBS=8  # one suite, eight simulations at a time
```

The first run builds Ara into `ARA_DIR` (default `~/.cache/act/ara`, about 10 minutes), and it is
rebuilt whenever `install-ara.sh` changes. Results go to `work/cva6-vector/cv64a6_imafdcv_sv39`,
away from the ELFs of other `make` runs. To build Ara by hand and run every suite instead:

```bash
.github/scripts/install-ara.sh ~/repos/ara-builds
export PATH=$HOME/repos/ara-builds/bin:$PATH
export ARA_SNAPSHOT=$HOME/repos/ara-builds/build
make cv64a6_imafdcv_sv39
```

The install script builds Ara's pinned Verilator (5.047-devel) and a hierarchical Verilator model,
and installs the `run-ara.sh` runner. The two exports do what `.github/scripts/setup-ara.sh` does
in CI.

`setup-ara.sh` widens the testbench ELF loader window in `hardware/tb/verilator/ara_tb.cpp` from
1 MiB to 16 MiB, the size of the L2. Tests are linked at the reset vector, `0x8000_0000`.
