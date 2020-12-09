#!/bin/ash
echo "FT_SERVICES - INFLUXDB CONTAINTER"

# https://docs.influxdata.com/influxdb/v2.0/reference/cli/influxd/run/
# https://www.washington.edu/computing/unix/background.html#:~:text=To%20run%20a%20program%20in,to%20background%20and%20vice%20versa.
influxd --vault-token=BNqaEXjN6p0X2ihb1mRzO8vqN2DjolZuVXnJ22V60yLykxantjdnfniI96IB1LuyyZaghM9V_lg1bsQRbq4Xlw== & sleep 5

# https://docs.influxdata.com/influxdb/v2.0/reference/cli/influx/setup/#flags
influx setup -f -b 42bucket -o 42org  -u user -p password -t BNqaEXjN6p0X2ihb1mRzO8vqN2DjolZuVXnJ22V60yLykxantjdnfniI96IB1LuyyZaghM9V_lg1bsQRbq4Xlw== & wait

telegraf

# https://docs.influxdata.com/influxdb/v2.0/reference/cli/influx/
#influx ping

tail -f /dev/null
# 