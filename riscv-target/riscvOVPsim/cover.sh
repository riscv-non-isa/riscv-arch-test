#!/bin/bash

# Map RISCV_DEVICE to RISCV CVG
declare -A cvgMap
cvgMap[rv32i]=I
cvgMap[rv32i_m-I]=I
cvgMap[rv32m]=M
cvgMap[rv32i_m-M]=M
cvgMap[rv32ic]=C
cvgMap[rv32i_m-C]=C
cvgMap[rv32f]=F
cvgMap[rv32d]=D
cvgMap[rv32Zicsr]=Zicsr
cvgMap[rv32Zifencei]=Zifencei
cvgMap[rv64i]=I
cvgMap[rv64i_m-I]=I
cvgMap[rv64m]=M
cvgMap[rv64i_m-M]=M
cvgMap[rv64ic]=C
cvgMap[rv64i_m-C]=C
cvgMap[rv64f]=F
cvgMap[rv64d]=D
cvgMap[rv64Zicsr]=Zicsr
cvgMap[rv64Zifencei]=Zifencei

cvgMap[rv32vb]=Vb
cvgMap[rv32vi]=Vi
cvgMap[rv32vp]=Vp
cvgMap[rv32vf]=Vf
cvgMap[rv32vx]=Vx
cvgMap[rv32vm]=Vm
cvgMap[rv32vr]=Vr

cvgMap[rv64vb]=Vb
cvgMap[rv64vi]=Vi
cvgMap[rv64vp]=Vp
cvgMap[rv64vf]=Vf
cvgMap[rv64vx]=Vx
cvgMap[rv64vm]=Vm
cvgMap[rv64vr]=Vr

cvgMap[rv32b]=B
cvgMap[rv64b]=B

cvgMap[rv32k]=K
cvgMap[rv64k]=K
cvgMap[rv32i_m-K]=K
cvgMap[rv64i_m-K]=K

# Map RISCV_DEVICE to OVP Variant
declare -A varMap
varMap[rv32i]=RV32I
varMap[rv32i_m-I]=RV32I
varMap[rv32m]=RV32IM
varMap[rv32i_m-M]=RV32IM
varMap[rv32ic]=RV32IMC
varMap[rv32i_m-C]=RV32IMC
varMap[rv32f]=RV32G
varMap[rv32d]=RV32G
varMap[rv32Zicsr]=RV32I
varMap[rv32Zifencei]=RV32I
varMap[rv64i]=RV64I
varMap[rv64i_m-I]=RV64I
varMap[rv64m]=RV64IM
varMap[rv64i_m-M]=RV64IM
varMap[rv64ic]=RV64IMC
varMap[rv64i_m-C]=RV64IMC
varMap[rv64f]=RV64G
varMap[rv64d]=RV64G
varMap[rv64Zicsr]=RV64I
varMap[rv64Zifencei]=RV64I

varMap[rv32vb]=RV32GCV
varMap[rv32vi]=RV32GCV
varMap[rv32vp]=RV32GCV
varMap[rv32vr]=RV32GCV
varMap[rv32vx]=RV32GCV
varMap[rv32vf]=RV32GCV
varMap[rv32vm]=RV32GCV

varMap[rv64vb]=RV64GCV
varMap[rv64vi]=RV64GCV
varMap[rv64vp]=RV64GCV
varMap[rv64vr]=RV64GCV
varMap[rv64vx]=RV64GCV
varMap[rv64vf]=RV64GCV
varMap[rv64vm]=RV64GCV

varMap[rv32b]=RV32GCB
varMap[rv64b]=RV64GCB

varMap[rv32k]=RV32GCK
varMap[rv64k]=RV64GCK
varMap[rv32i_m-K]=RV32GCK
varMap[rv64i_m-K]=RV64GCK

if [[ ${COVERTYPE} == "" ]]; then
    COVERTYPE=basic
fi

if [[ ${TARGET_SIM} == "" ]]; then
    if [[ ${RISCV_TARGET} == "" ]]; then
        TARGET_SIM=${ROOTDIR}/riscv-ovpsim-plus/bin/Linux64/riscvOVPsimPlus.exe
    fi
    if [[ ${RISCV_TARGET} == "riscvOVPsim" ]]; then
        TARGET_SIM=${ROOTDIR}/riscv-ovpsim/bin/Linux64/riscvOVPsim.exe
    fi
    if [[ ${RISCV_TARGET} == "riscvOVPsimPlus" ]]; then
        TARGET_SIM=${ROOTDIR}/riscv-ovpsim-plus/bin/Linux64/riscvOVPsimPlus.exe
    fi
fi

RISCV_DEVICE_ALL=$(ls ${WORK}/rv${XLEN}i_m)

for RISCV_DEV in ${RISCV_DEVICE_ALL}; do
    echo "Running $RISCV_DEV"
    RISCV_ISA=rv${XLEN}i_m/${RISCV_DEV}
    RISCV_CVG=${cvgMap[rv${XLEN}i_m-${RISCV_DEV}]}
    RISCV_VARIANT=${varMap[rv${XLEN}i_m-${RISCV_DEV}]}

    if [ -z "${RISCV_VARIANT}" ]; then
        echo "# Error: Test suite RV${XLEN}${RISCV_DEV} devMap not configured in cover.sh" > work/${RISCV_ISA}/${COVERTYPE}.coverage.run.log
        cat work/${RISCV_ISA}/${COVERTYPE}.coverage.run.log
        exit 1
    fi
    if [ -z "${RISCV_CVG}" ]; then
        echo "# Error: Test suite ${RISCV_DEV} cvgMap not configured in cover.sh" > work/${RISCV_ISA}/${COVERTYPE}.coverage.run.log
        cat work/${RISCV_ISA}/${COVERTYPE}.coverage.run.log
        exit 1
    fi
    if [[ ${RISCV_VARIANT} == "RV32GCB" ]] || [[ ${RISCV_VARIANT} == "RV64GCB" ]]; then
        EXTRA_STR="--override riscvOVPsim/cpu/bitmanip_version=0.92"
    fi
    if [[ ${RISCV_VARIANT} == "RV32GCK" ]] || [[ ${RISCV_VARIANT} == "RV64GCK" ]]; then
        EXTRA_STR="--override riscvOVPsim/cpu/crypto_version=0.8.1"
    fi
    ${TARGET_SIM} \
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

