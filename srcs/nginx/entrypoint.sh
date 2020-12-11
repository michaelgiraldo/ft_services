#!/bin/ash
echo "FT_SERVICES - NGINX CONTAINTER"
nginx -t
nginx
#php-fpm7
#/etc/init.d/sshd start
sshd &
telegraf &
tail -f /dev/null