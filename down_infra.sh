#!/bin/bash

PROJECT="infra"
WORKDIR="algamoney-compose/${PROJECT}"
DATA_FORMATADA=$(date +%d/%m/%Y-%H:%M:%S)

echo [${DATA_FORMATADA}] Baixando ${PROJECT}
echo
/c/Program\ Files/Docker/Docker/resources/bin/docker-compose.exe -f ${WORKDIR}/docker-compose.yml --project-directory ${WORKDIR} down 
#docker-compose -f ${WORKDIR}/docker-compose.yml --project-directory ${WORKDIR} down

DATA_FORMATADA=$(date +%d/%m/%Y-%H:%M:%S)

echo [${DATA_FORMATADA}] FIM
/c/Program\ Files/Docker/Docker/resources/bin/docker.exe ps
#docker ps