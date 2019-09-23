#!/bin/sh

cd $(dirname $0)
bindir=$(dirname $(dirname $(pwd)))/bin/Linux64

${bindir}/riscvOVPsim.exe \
    --program fibonacci.RISCV64.elf \
    --variant RVB64I \
    --override riscvOVPsim/cpu/add_Extensions=MACSU \
    "$@"

