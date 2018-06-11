#!/bin/bash

printf "\n\nCompare to reference files ... \n\n";
FAIL=0
RUN=0

for f in ${SUITEDIR}/references/*.reference_output;
do 
    b=$(basename $f)
    RUN=$((${RUN} + 1))
    diff --strip-trailing-cr $f ${WORK}/${ISA}/${b//".reference_output"/"_signature.output"} #&> /dev/null
    if [ $? == 0 ]
    then
        echo "${b} ... OK"
    else
        echo "${b} ... FAIL"
        FAIL=$((${FAIL} + 1))
    fi
done

if [ ${FAIL} == 0 ]
then
    echo "--------------------------------"
    echo "OK: ${RUN}/${RUN}"
else
    echo "--------------------------------"
    echo "FAIL: ${FAIL}/${RUN}"
fi
