#!/bin/sh

cd $(dirname $0)
bindir=$(dirname $(dirname $(pwd)))/bin/Linux64

${bindir}/riscvOVPsim.exe \
    --program fibonacci.RISCV64.elf \
    --variant RVB64I \
    --override riscvOVPsim/cpu/add_Extensions=MACSU \
    --signaturedump \
    --override riscvOVPsim/cpu/sigdump/SignatureFile=fib.sig.dat.txt \
    --override riscvOVPsim/cpu/sigdump/StartSymbol="resultArray" \
    --override riscvOVPsim/cpu/sigdump/ByteCount=48 \
    --override riscvOVPsim/cpu/sigdump/SignatureAtEnd=T \
    --logfile fib.sig.run.log \
    "$@"
 
