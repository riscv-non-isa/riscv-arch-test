#!/bin/bash

printf "\n\nCompare to reference files ... \n\n";
FAIL=0
RUN=0

for ref in ${SUITEDIR}/references/*.reference_output;
do 
    base=$(basename ${ref})
    stub=${base//".reference_output"/}

    if [ "${stub}" = "*" ]; then
        echo "No Reference Files ${SUITEDIR}/references/*.reference_output"
        break
    fi

    sig=${WORK}/rv${XLEN}i_m/${RISCV_DEVICE}/${stub}.signature.output
    dif=${WORK}/rv${XLEN}i_m/${RISCV_DEVICE}/${stub}.diff

    RUN=$((${RUN} + 1))
    
    #
    # Ensure both files exist
    #
    if [ -f ${ref} ] && [ -f ${sig} ]; then 
        echo -n "Check $(printf %-24s ${stub}) "
    else
        echo -e  "Check $(printf %-24s ${stub}) \e[33m ... IGNORE \e[39m"
        continue
    fi
    diff --ignore-case --strip-trailing-cr ${ref} ${sig} &> /dev/null
    if [ $? == 0 ]
    then
        echo -e "\e[32m ... OK \e[39m"
    else
        echo -e "\e[31m ... FAIL \e[39m"
        FAIL=$((${FAIL} + 1))
        sdiff ${ref} ${sig} > ${dif}
    fi
done

# warn on missing reverse reference
for sig in ${WORK}/rv${XLEN}i_m/${RISCV_DEVICE}/*.signature.output; 
do
    base=$(basename ${sig})
    stub=${base//".signature.output"/}
    ref=${SUITEDIR}/references/${stub}.reference_output

    if [ -f $sig ] && [ ! -f ${ref} ]; then
        echo -e "\e[31m Error: sig ${sig} no corresponding ${ref} \e[39m"
        FAIL=$((${FAIL} + 1))
    fi
done

declare -i status=0
if [ ${FAIL} == 0 ]
then
    echo "--------------------------------"
    echo -n -e "\e[32m OK: ${RUN}/${RUN} "
    status=0
else
    echo "--------------------------------"
    echo -n -e "\e[31m FAIL: ${FAIL}/${RUN} "
    status=1
fi
echo -e "RISCV_TARGET=${RISCV_TARGET} RISCV_DEVICE=${RISCV_DEVICE} XLEN=${XLEN} \e[39m"
echo
exit ${status}
