#!/bin/bash

for DRUID_SERVICE in ${DRUID_SERVICES[@]}; do
    echo "Starting service \"${DRUID_SERVICE}\"..."
    node.sh ${DRUID_SERVICE} start
done

tail -f /dev/null
