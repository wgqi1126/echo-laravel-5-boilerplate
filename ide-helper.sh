#!/usr/bin/env bash

cd $(dirname $0)

php artisan ide-helper:generate
php artisan ide-helper:meta
php artisan ide-helper:models -N
