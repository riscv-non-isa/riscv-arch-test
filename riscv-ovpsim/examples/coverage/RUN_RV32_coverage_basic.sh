#!/bin/bash

cd $(dirname $0)
bindir=$(dirname $(dirname $(pwd)))/bin/Linux64

${bindir}/riscvOVPsim.exe \
    --program ../fibonacci/fibonacci.RISCV32.elf \
    --variant RVB32I \
    --override riscvOVPsim/cpu/add_Extensions=MACSU \
    --cover basic --reportfile coverage_basic.log --outputfile coverage_basic.yaml \
    --extensions RVI --showuncovered \
    --finishafter 10000 \
    "$@"
