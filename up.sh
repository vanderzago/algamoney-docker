#!/bin/bash

echo "=> Start all"
echo
./up_infra.sh
./set_infra.sh
./up_app.sh