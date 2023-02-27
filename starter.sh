#!/usr/bin/env bash

[[ ! -d ./src ]] && mkdir ./src
docker compose up -d
sleep 3
docker compose exec app composer --prefer-dist create-project "laravel/laravel=9.*" .
docker compose exec app chmod -R 775 bootstrap/cache
docker compose exec app chmod -R 777 storage/
