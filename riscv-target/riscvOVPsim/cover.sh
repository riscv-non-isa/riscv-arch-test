#!/bin/bash

declare -A map
map[rv32i]=I
map[rv32i_m/I]=I
map[rv32m]=M
map[rv32i_m/M]=M
map[rv32ic]=C
map[rv32i_m/C]=C
map[rv32f]=F
map[rv32d]=D
map[rv32Zicsr]=Zicsr
map[rv32Zifencei]=Zifencei
map[rv64i]=I
map[rv64i_m/I]=I
map[rv64m]=M
map[rv64i_m/M]=M
map[rv64ic]=C
map[rv64i_m/C]=C
map[rv64f]=F
map[rv64d]=D
map[rv64Zicsr]=Zicsr
map[rv64Zifencei]=Zifencei

map[rv32vb]=Vb
map[rv32vi]=Vi
map[rv32vp]=Vp
map[rv32vf]=Vf
map[rv32vx]=Vx
map[rv32vm]=Vm
map[rv32vr]=Vr

map[rv64vb]=Vb
map[rv64vi]=Vi
map[rv64vp]=Vp
map[rv64vf]=Vf
map[rv64vx]=Vx
map[rv64vm]=Vm
map[rv64vr]=Vr

map[rv32b]=B
map[rv64b]=B

map[rv32k]=K
map[rv64k]=K
map[rv32i_m/K]=K
map[rv64i_m/K]=K

declare -A varMap
varMap[rv32i]=RV32I
varMap[rv32i_m/I]=RV32I
varMap[rv32m]=RV32IM
varMap[rv32i_m/M]=RV32IM
varMap[rv32ic]=RV32IMC
varMap[rv32i_m/C]=RV32IMC
varMap[rv32f]=RV32G
varMap[rv32d]=RV32G
varMap[rv32Zicsr]=RV32I
varMap[rv32Zifencei]=RV32I
varMap[rv64i]=RV64I
varMap[rv64i_m/I]=RV64I
varMap[rv64m]=RV64IM
varMap[rv64i_m/M]=RV64IM
varMap[rv64ic]=RV64IMC
varMap[rv64i_m/C]=RV64IMC
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
varMap[rv32i_m/K]=RV32GCK
varMap[rv64i_m/K]=RV64GCK

if [[ ${COVERTYPE} == "" ]]; then
    COVERTYPE=basic
fi

if [[ ${RISCV_ISA} == "" ]]; then
    ALL_ISA=$(ls -1 work)
else
    ALL_ISA=${RISCV_ISA}
fi

if [[ ${TARGET_SIM} == "" ]]; then
    if [[ ${RISCV_TARGET} == "" ]]; then
        TARGET_SIM=${ROOTDIR}/riscv-ovpsim/bin/Linux64/riscvOVPsim.exe
    fi
    if [[ ${RISCV_TARGET} == "riscvOVPsim" ]]; then
        TARGET_SIM=${ROOTDIR}/riscv-ovpsim/bin/Linux64/riscvOVPsim.exe
    fi
    if [[ ${RISCV_TARGET} == "riscvOVPsimPlus" ]]; then
        TARGET_SIM=${ROOTDIR}/riscv-ovpsim-plus/bin/Linux64/riscvOVPsimPlus.exe
    fi
fi

for ISA in ${ALL_ISA}; do
    echo "Running $ISA/${RISCV_DEVICE}"
    RISCV_ISA=${ISA}/${RISCV_DEVICE}
    RISCV_CVG=${map[${RISCV_ISA}]}
    RISCV_VARIANT=${varMap[${RISCV_ISA}]}

    if [ -z "${RISCV_CVG}" ]; then
        echo "# Error: Test suite $ISA map not configured in cover.sh" > work/${RISCV_ISA}/${COVERTYPE}.coverage.run.log
        exit 1
    fi
    if [ -z "${RISCV_VARIANT}" ]; then
        echo "# Error: Test suite $ISA varMap not configured in cover.sh" > work/${RISCV_ISA}/${COVERTYPE}.coverage.run.log
        exit 1
    fi
    if [[ ${RISCV_VARIANT} == "RV32GCB" ]] || [[ ${RISCV_VARIANT} == "RV64GCB" ]]; then
        EXTRA_STR="--override riscvOVPsim/cpu/bitmanip_version=0.92"
    fi
    if [[ ${RISCV_VARIANT} == "RV32GCK" ]] || [[ ${RISCV_VARIANT} == "RV64GCK" ]]; then
        EXTRA_STR="--override riscvOVPsim/cpu/crypto_version=0.7.2"
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

