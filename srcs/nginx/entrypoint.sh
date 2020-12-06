#!/bin/ash
echo "FT_SERVICES - NGINX CONTAINTER"
nginx -t
nginx
telegraf
tail -f /dev/null