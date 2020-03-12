#!/bin/bash

DATA_FORMATADA=$(date +%d/%m/%Y-%H:%M:%S)

echo [${DATA_FORMATADA}] Verificando instalacao newman
newman -v; res=$?
echo

if [[ $res -ne 0 ]]
then
    echo FALHA: Por favor instale a ferramenta newman
    exit 1
fi

DATA_FORMATADA=$(date +%d/%m/%Y-%H:%M:%S)

echo [${DATA_FORMATADA}] Aguardando subida do Grafana e do Graylog
echo
newman run algamoney-postman/collections/Algamoney-infra-healthcheck.postman_collection.json -e algamoney-postman/environments/Docker\ Algamoney-Infra.postman_environment.json; res=$?

if [[ $res -ne 0 ]]
then
    TIMEOUT=20
    echo [${DATA_FORMATADA}] FALHA: Aguardando ${TIMEOUT}s para nova checagem
    sleep ${TIMEOUT}
    ./$0
    exit 0
fi

DATA_FORMATADA=$(date +%d/%m/%Y-%H:%M:%S)

echo [${DATA_FORMATADA}] Configurando Graylog e Grafana
echo
newman run algamoney-postman/collections/AlgaMoney-Infra.postman_collection.json -e algamoney-postman/environments/Docker\ Algamoney-Infra.postman_environment.json --delay-request 5000 

DATA_FORMATADA=$(date +%d/%m/%Y-%H:%M:%S)

echo [${DATA_FORMATADA}] FIM