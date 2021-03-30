# Accessing and running architecture tests with riscvOVPsim

As we developed the early versions of the RISCV.org architectural validation test suites, the Imperas developed _riscvOVPsim_ compliance simulator was included as part of this GitHub repository. It has now been put in its own GitHub repository and there is now a second enhanced version.


For riscvOVPsim visit: [github.com/riscv-ovpsim](https://github.com/riscv-ovpsim/imperas-riscv-tests) which is useful for running compliance tests and generating the required signatures.

And for the enhanced version visit: [ovpworld.org/riscv-ovpsim-plus](https://www.ovpworld.org/riscv-ovpsim-plus) which is used for test development and verification.


For more information please contact info@ovpworld.org or info@imperas.com or visit http://www.imperas.com/riscv.


# Running Architecture Tests with riscvOVPsim

## Download riscvOVPsim Simulator

         $ git clone https://github.com/riscv-ovpsim/imperas-riscv-tests
         $ export TARGET_SIM=$(pwd)/imperas-riscv-tests/riscv-ovpsim/bin/Linux64/riscvOVPsim.exe

## Download RISC-V Cross Compiler toolchain

Imperas provide binaries of the GNU toolchains that are used in various Imperas RISC-V projects.

The source of the toolchains is other GitHub repositories and we compile them up and make them available as a service to make it easy to just download working versions of the tools to try and make life easier for you.

The toolchains are held in different branches, branch rvk-0.9.0-scalar supports v0.9.0 Crypto Scalar instructions.

         $ git clone https://github.com/Imperas/riscv-toolchains -b rvk-0.9.0-scalar
         $ export PATH=$PATH:$(pwd)/riscv-toolchains/Linux64/bin
         $ export RISCV_PREFIX=riscv64-unknown-elf-

## Run RISC-V Tests (e.g. K crypto scalar)

RV32K Test execution

         $ make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=K XLEN=32 clean simulate verify

RV64K Test execution

         $ make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=K XLEN=64 clean simulate verify

## Run RISC-V Tests and measure test instruction functional coverage (e.g. K crypto scalar)

RV32K Test execution with basic coverage

         $ make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=K XLEN=32 clean simulate postverify COVERTYPE=basic

RV32K Test execution with extended coverage

         $ make RISCV_TARGET=riscvOVPsim RISCV_DEVICE=K XLEN=32 clean simulate postverify COVERTYPE=extended

