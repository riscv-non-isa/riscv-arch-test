#!/bin/bash

# mapping
# RVI         rv32i
# RVM         rv32im
# RVIC,RV32IC rv32imc
# RVZicsr     rv32Zicsr
# RVZifencei  rv32Zifencei

declare -A map
map[rv32i]=RVI
map[rv32im]=RVM
map[rv32imc]=RVIC,RV32IC
map[rv32Zicsr]=RVZicsr
map[rv32Zifencei]=RVZifencei

ALL_ISA=$(ls -1 work)
for ISA in ${ALL_ISA}; do
    echo "Running $ISA"
    RISCV_ISA=${ISA}
    RISCV_CVG=${map[${RISCV_ISA}]}
    YAML="work/${RISCV_ISA}/*.yaml"
    INPUT=$(echo ${YAML} | sed 's/ /,/g')

    if [ -z "${RISCV_CVG}" ]; then
        echo "Skipping $ISA"
        continue
    fi
    ${ROOTDIR}/riscv-ovpsim/bin/Linux64/riscvOVPsim.exe \
        --cover basic \
        --extensions ${RISCV_CVG} \
        --inputfiles ${INPUT} \
        --outputfile work/${RISCV_ISA}/coverage_basic.yaml \
        --reportfile work/${RISCV_ISA}/coverage_basic.txt \
        --countthreshold 1 \
        --showuncovered \
        --nosimulation
    
#    ${ROOTDIR}/riscv-ovpsim/bin/Linux64/riscvOVPsim.exe \
#        --cover extended \
#        --extensions ${RISCV_CVG} \
#        --inputfiles ${INPUT} \
#        --outputfile work/${RISCV_ISA}/coverage_extended.yaml \
#        --reportfile work/${RISCV_ISA}/coverage_extended.txt \
#        --countthreshold 1 \
#        --showuncovered \
#        --nosimulation    
done


   
