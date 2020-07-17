#!/bin/bash

cd $(dirname $0)
bindir=$(dirname $(dirname $(pwd)))/bin/Linux64

${bindir}/riscvOVPsim.exe \
    --program ../fibonacci/fibonacci.RISCV32.elf \
    --variant RVB32I \
    --override riscvOVPsim/cpu/add_Extensions=MACSU \
    --cover extended --reportfile coverage_extended.log --outputfile coverage_extended.yaml \
    --extensions RVI --showuncovered \
    --finishafter 10000 \
    "$@"
