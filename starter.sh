#!/usr/bin/env bash

[[ ! -d ./src ]] && mkdir ./src
docker compose up -d

# docker compose up -dの直後にlaravelプロジェクトを作成するとエラーになるので、少しだけ止める。
sleep 3

# Laravelプロジェクトの新規作成
docker compose exec app composer --prefer-dist create-project "laravel/laravel=9.*" .
docker compose exec app chmod -R 775 bootstrap/cache
docker compose exec app chmod -R 777 storage/
