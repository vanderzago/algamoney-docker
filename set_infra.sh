#!/bin/bash

echo Configurando Graylog e Grafana
newman run algamoney-postman/collections/AlgaMoney-Infra.postman_collection.json -e algamoney-postman/environments/Docker\ Algamoney-Infra.postman_environment.json --delay-request 5000 