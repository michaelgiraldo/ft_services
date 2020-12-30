#!/bin/ash
echo "FT_SERVICES - NGINX CONTAINTER"
nginx -t
nginx
#php-fpm7
#/etc/init.d/sshd start

# https://github.com/danielguerra69/alpine-sshd/blob/master/docker-entrypoint.sh

if [ ! -f "/etc/ssh/ssh_host_rsa_key" ]; then
	# generate fresh rsa key
	ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
fi
if [ ! -f "/etc/ssh/ssh_host_dsa_key" ]; then
	# generate fresh dsa key
	ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
fi

#prepare run dir
if [ ! -d "/var/run/sshd" ]; then
  mkdir -p /var/run/sshd
fi

/usr/sbin/sshd -D
telegraf &
tail -f /dev/null

exec "$@"