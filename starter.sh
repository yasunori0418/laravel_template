#!/usr/bin/env bash

docker compose up -d
docker compose exec app composer install
docker compose exec app chmod -R 775 bootstrap/cache
docker compose exec app chmod -R 777 storage/
