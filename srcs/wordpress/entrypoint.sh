#!/bin/ash
echo "FT_SERVICES - WORDPRESS CONTAINTER"
nginx -t
nginx
telegraf
tail -f /dev/null