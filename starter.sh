#!/usr/bin/env bash

docker compose up -d
docker comopse exec app composer install
docker comopse exec app chmod -R 775 bootstrap/cache
docker comopse exec app chmod -R 777 storage/
