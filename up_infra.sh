#!/bin/bash

PROJECT="infra"
WORKDIR="algamoney-compose/${PROJECT}"
DATA_FORMATADA=$(date +%d/%m/%Y-%H:%M:%S)

echo [${DATA_FORMATADA}] Subindo ${PROJECT}
echo
/c/Program\ Files/Docker/Docker/resources/bin/docker-compose.exe -f ${WORKDIR}/docker-compose.yml -p ${PROJECT} --project-directory ${WORKDIR} up -d --build
#docker-compose -f ${WORKDIR}/docker-compose.yml -p ${PROJECT} up --project-directory ${WORKDIR} -d --build

DATA_FORMATADA=$(date +%d/%m/%Y-%H:%M:%S)

echo [${DATA_FORMATADA}] FIM