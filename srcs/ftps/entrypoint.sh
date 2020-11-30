#!/bin/ash
echo "FT_SERVICES - FTP CONTAINTER"
proftpd -t
proftpd --nodaemon -c /etc/proftpd/proftpd.conf
#telegraf
tail -f /dev/null

#https://github.com/lhauspie/docker-vsftpd-alpine/blob/develop/run-vsftpd.sh