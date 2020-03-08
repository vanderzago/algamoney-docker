#!/bin/bash

PROJECT="infra"
WORKDIR="algamoney-compose/${PROJECT}"

echo Baixando ${PROJECT}
/c/Program\ Files/Docker/Docker/resources/bin/docker-compose.exe -f ${WORKDIR}/docker-compose.yml --project-directory ${WORKDIR} down 
#docker-compose -f ${WORKDIR}/docker-compose.yml --project-directory ${WORKDIR} down

/c/Program\ Files/Docker/Docker/resources/bin/docker.exe ps
#docker ps