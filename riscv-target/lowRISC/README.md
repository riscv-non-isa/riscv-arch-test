# Running ibex as part of the framework
# Instructions for building the target can be found in the lowRISC github repository
# Once built the frameowrk can be run as follows

# If the simulator executable is called Vibex_riscv_compliance
# define this variable including the PATH
export TARGET_SIM=/home/moore/git/lowRISCV/ibex/build/lowrisc_ibex_ibex_riscv_compliance_0.1/sim-verilator/Vibex_riscv_compliance

# define the CC prefix and target device
export RISCV_PREFIX=riscv-none-embed-
export RISCV_TARGET=lowRISC
export RISCV_DEVICE=ibex_rv32imc

# execute
make clean
make RISCV_ISA=rv32i
make RISCV_ISA=rv32im
make RISCV_ISA=rv32imc
