#!/bin/sh

cd $(dirname $0)
bindir=$(dirname $(dirname $(pwd)))/bin/Linux64

apps=$(ls *.elf | sort -d)
PS3='Please Choose Vector Example: '
select app in $apps
do
    break
done
echo "Selected Example $app"

# Run Example
${bindir}/riscvOVPsim.exe \
            --program ${app} \
            --variant RV64GCV \
            --override riscvOVPsim/cpu/VLEN=512 \
            --override riscvOVPsim/cpu/SLEN=64 \
            "$@"
