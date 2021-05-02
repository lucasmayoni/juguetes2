#!/usr/bin/env bash

mysql -e "CREATE DATABASE IF NOT EXISTS juguetes2"
cp .travis/.env .env
composer install
#mkdir -p build/logs
#mkdir -p build/reports/clover
php artisan key:generate
php artisan migrate
php artisan db:seed
