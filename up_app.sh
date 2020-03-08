#!/bin/bash

PROJECT="app"
WORKDIR="algamoney-compose/${PROJECT}"

echo Subindo ${PROJECT}
/c/Program\ Files/Docker/Docker/resources/bin/docker-compose.exe -f ${WORKDIR}/docker-compose.yml -p ${PROJECT} --project-directory ${WORKDIR} up -d --build
#docker-compose -f ${WORKDIR}/docker-compose.yml -p ${PROJECT} up --project-directory ${WORKDIR} -d --build