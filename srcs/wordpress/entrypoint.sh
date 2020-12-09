#!/bin/ash
echo "FT_SERVICES - WORDPRESS CONTAINTER"
nginx -t
nginx
php-fpm7
telegraf &
tail -f /dev/null