#!/bin/ash
echo "FT_SERVICES - FTP CONTAINTER"

# Define default values of Environment Variables
#FTP_USER=${FTP_USER:-user42}
#FTP_PASS=${FTP_PASS:-password42}

# Add the FTP_USER, change his password and declare him as the owner of his home folder and all subfolders
#addgroup -g 433 -S $FTP_USER
#adduser -u 431 -D -G $FTP_USER -h /home/vsftpd/$FTP_USER -s /bin/false  $FTP_USER
#echo "$FTP_USER:$FTP_PASS" | /usr/sbin/chpasswd
#chown -R $FTP_USER:$FTP_USER /home/vsftpd/$FTP_USER

#vsftpd /etc/vsftpd/vsftpd.conf 
proftpd -t
proftpd --nodaemon -c /etc/proftpd/proftpd.conf
#telegraf
tail -f /dev/null

#https://github.com/lhauspie/docker-vsftpd-alpine/blob/develop/run-vsftpd.sh