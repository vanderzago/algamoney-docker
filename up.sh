#!/bin/bash

echo "=> Start all"
echo
./up_infra.sh; Res=$?

if [[ $Res -ne 0 ]]
then
    exit 1
fi

./set_infra.sh; Res=$?

if [[ $Res -ne 0 ]]
then
    exit 1
fi

./up_app.sh