# Makefile for testing YAML to OVPsim config file converter

OVPSIM=../bin/Linux64/riscvOVPsim.exe
WRITER=./main.py

.PHONY: all
all: clean check checksim ibex1 sim2 sim1 ovp2 ovp1 ovp RVB32I done

check:
	${WRITER} -ispec ./examples/Ibex_RV32IMC.yaml                   -pspec ./examples/Ibex_RV32IMC_platform.yaml     --target OVPsim_check
	${WRITER} -ispec ./work/Ibex_RV32IMC_checked.yaml               -pspec ./work/Ibex_RV32IMC_platform_checked.yaml --target OVPsim_check
checksim:
	${OVPSIM} -I 200000 --controlfile ./work/Ibex_RV32IMC_checked_checked_riscvOVPsim.ic  --program ../examples/fibonacci/fibonacci.RISCV32.elf --logfile ./work/imperas.log
ibex1:
	${WRITER} -ispec ./examples/Ibex_RV32IMC.yaml                   -pspec ./examples/Ibex_RV32IMC_platform.yaml     --target OVPsim
	${OVPSIM} -I 200000 --controlfile ./work/Ibex_RV32IMC_checked_riscvOVPsim.ic  --program ../examples/fibonacci/fibonacci.RISCV32.elf
	${WRITER} -ispec ./work/Ibex_RV32IMC_checked.yaml              -pspec ./work/Ibex_RV32IMC_platform_checked.yaml --target OVPsim --verbose debug
	${OVPSIM} -I 200000 --controlfile ./work/Ibex_RV32IMC_checked_checked_riscvOVPsim.ic  --program ../examples/fibonacci/fibonacci.RISCV32.elf

sim2: # sim will fail due to I not having M and C in elf
	${WRITER} -ispec ./examples/RVB32I_isa.yaml                  -pspec ./examples/RVB32I_platform.yaml     --target OVPsim
	${WRITER} -ispec ./work/RVB32I_isa_checked.yaml              -pspec ./work/RVB32I_platform_checked.yaml --target OVPsim --verbose debug
	${OVPSIM} -I 10 --controlfile ./work/RVB32I_isa_checked_checked_riscvOVPsim.ic  --program ../examples/fibonacci/fibonacci.RISCV32.elf

sim1: # sim will fail due to I not having M and C in elf
	${WRITER} -ispec ./examples/RVB32I_isa.yaml                  -pspec ./examples/RVB32I_platform.yaml    --target OVPsim
	${OVPSIM} -I 10 --controlfile ./work/RVB32I_isa_checked_riscvOVPsim.ic  --program ../examples/fibonacci/fibonacci.RISCV32.elf

ovp2:
	${WRITER} -ispec ./examples/RVB32I_isa.yaml                  -pspec ./examples/RVB32I_platform.yaml     --verbose debug --target OVPsim --target_phase one
	${WRITER} -ispec ./work/RVB32I_isa_checked.yaml              -pspec ./work/RVB32I_platform_checked.yaml --verbose debug --target OVPsim --target_phase one

ovp1:
	${WRITER} -ispec ./examples/RVB32I_isa.yaml                  -pspec ./examples/RVB32I_platform.yaml --verbose debug --target OVPsim --target_phase one
	${WRITER} -ispec ./examples/RVB32I_isa.yaml                  -pspec ./examples/RVB32I_platform.yaml --verbose debug --target OVPsim --target_phase one --target_trace

ovp:
	${WRITER} -ispec ./examples/RVB32I_isa.yaml                  -pspec ./examples/RVB32I_platform.yaml --verbose debug --target OVPsim

RVB32I:
	${WRITER} -ispec ./examples/RVB32I_isa.yaml                  -pspec ./examples/RVB32I_platform.yaml --verbose debug
	${WRITER} -ispec ./work/RVB32I_isa_checked.yaml              -pspec ./work/RVB32I_platform_checked.yaml --verbose debug

help:
	${WRITER} -help

.PHONY: see
see: ; grep ":" Makefile

.PHONY: done
done: ; @echo Done

clean:
	-rm -rf ./work __pycache__

