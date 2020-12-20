#!/bin/ash

#Start Telegraf
#telegraf &

#Start MySQL
/usr/bin/mysqld_safe --user=mysql --datadir=/var/lib/mysql --port=3306 --socket /run/mysqld/mysqld.sock & 
sleep 2 

#Check MariaDB has started
until exit | mysql
do
	echo "Waiting for MySQL"
    sleep 1
done
echo "MySQL is running"

# https://dev.mysql.com/doc/refman/8.0/en/mysql-batch-commands.html
echo "Creating dbadmin and wordpress accounts"
mysql < /ft_services/mariadb/db_user_create_script.sql
#mysql source /ft_services/mariadb/db_user_create_script.sql

tail -f /dev/null