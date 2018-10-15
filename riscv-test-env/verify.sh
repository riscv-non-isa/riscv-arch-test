#!/bin/bash

printf "\n\nCompare to reference files ... \n\n";
FAIL=0
RUN=0

for f in ${SUITEDIR}/references/*.reference_output;
do 
    b=$(basename $f)
    ex=${b//".reference_output"/}
    RUN=$((${RUN} + 1))
    
    #
    # Ensure both files exist
    #
    if [ -f $f ] && [ -f ${WORK}/${ISA}/${b//".reference_output"/"_signature.output"} ]; then 
        echo -n "Check $(printf %16s ${ex})"
    else
        echo    "Check $(printf %16s ${ex}) ... IGNORE"
        continue
    fi
    diff --strip-trailing-cr $f ${WORK}/${ISA}/${b//".reference_output"/"_signature.output"} #&> /dev/null
    if [ $? == 0 ]
    then
        echo " ... OK"
    else
        echo " ... FAIL"
        FAIL=$((${FAIL} + 1))
    fi
done

declare -i status=0
if [ ${FAIL} == 0 ]
then
    echo "--------------------------------"
    echo "OK: ${RUN}/${RUN}"
    status=0
else
    echo "--------------------------------"
    echo "FAIL: ${FAIL}/${RUN}"
    status=1
fi
exit ${status}
