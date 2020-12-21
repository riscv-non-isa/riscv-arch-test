#!/bin/bash

# Map RISCV_DEVICE to OVP Variant
declare -A devMap
varMap[RV32I]=RV32I
varMap[RV32M]=RV32IM
varMap[RV32C]=RV32IMC
varMap[RV32privilege]=RV32IMC
varMap[RV32Zifencei]=RV32IMC
varMap[RV64I]=RV64I
varMap[RV64M]=RV64IM
varMap[RV64C]=RV64IMC
varMap[RV64privilege]=RV64IMC
varMap[RV64Zifencei]=RV64IMC

# Map RISCV_DEVICE to RISCV CVG
declare -A cvgMap
cvgMap[RV32I]=I
cvgMap[RV32M]=M
cvgMap[RV32C]=C
cvgMap[RV32privilege]=privM
cvgMap[RV32Zifencei]=Zifencei
cvgMap[RV64I]=I
cvgMap[RV64M]=M
cvgMap[RV64C]=C
cvgMap[RV64privilege]=privM
cvgMap[RV64Zifencei]=Zifencei

if [ "${COVERTYPE}" == "" ]; then
    COVERTYPE=basic
fi

if [ "${RISCV_TARGET}" == "riscvOVPsim" ]; then
    RISCV_TARGET=riscvOVPsim.exe
fi

RISCV_DEVICE_ALL=$(ls ${WORK}/rv${XLEN}i_m)

for RISCV_DEV in ${RISCV_DEVICE_ALL}; do
    echo "Running $RISCV_DEV"
    RISCV_ISA=rv${XLEN}i_m/${RISCV_DEV}
    RISCV_CVG=${cvgMap[RV${XLEN}${RISCV_DEV}]}
    RISCV_VARIANT=${varMap[RV${XLEN}${RISCV_DEV}]}

    if [ -z "${RISCV_VARIANT}" ]; then
        echo "# Error: Test suite RV${XLEN}${RISCV_DEV} devMap not configured in cover.sh" > work/${RISCV_ISA}/${COVERTYPE}.coverage.run.log
        exit 1
    fi
    if [ -z "${RISCV_CVG}" ]; then
        echo "# Error: Test suite ${RISCV_DEV} cvgMap not configured in cover.sh" > work/${RISCV_ISA}/${COVERTYPE}.coverage.run.log
        exit 1
    fi
    ${RISCV_TARGET} \
        --variant ${RISCV_VARIANT}  \
        --cover ${COVERTYPE} \
        --countthreshold 1 \
        --showuncovered \
        --nosimulation \
        --extensions ${RISCV_CVG} \
        --inputfiles work/${RISCV_ISA} \
        --outputfile work/${RISCV_ISA}/${COVERTYPE}.coverage.yaml \
        --reportfile work/${RISCV_ISA}/${COVERTYPE}.coverage.txt \
        ${EXTRA_STR} \
        --logfile work/${RISCV_ISA}/${COVERTYPE}.coverage.run.log
    
done

echo "------------------"
echo "# Coverage Summary"
egrep "Unique instructions|Coverage points hit" ${WORK}/rv${XLEN}i_m/*/${COVERTYPE}.coverage.txt

