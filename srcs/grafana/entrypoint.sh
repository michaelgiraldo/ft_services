#!/bin/ash
echo "FT_SERVICES - GRAFANA CONTAINTER"

cd /usr/share/grafana/ && grafana-server &
cd /
telegraf
tail -f /dev/null