#!/bin/ash
echo "FT_SERVICES - NGINX CONTAINTER"
nginx -t
nginx
#php-fpm7
telegraf &
tail -f /dev/null