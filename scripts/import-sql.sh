#!/bin/bash
set -o allexport; 
source ./.env;
set +o allexport
docker exec -i configurador-leroy_mariadb mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} < data.sql
