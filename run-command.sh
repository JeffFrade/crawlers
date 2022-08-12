#!/bin/sh

echo "##### Inicializa Containers #####"
docker-compose up -d

echo "##### Executa o Comando #####"
docker exec -it crawlers-php-fpm $1
