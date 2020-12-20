# https://stackoverflow.com/questions/10236000/allow-all-remote-connections-mysql
# https://stackoverflow.com/questions/16287559/mysql-adding-user-for-remote-access

# CREATE wodpress DATABASE and wordpress databas admin account 
CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'localhost';
GRANT ALL PRIVILEGES
ON wordpress.*
TO 'wordpress'@'localhost'
IDENTIFIED BY PASSWORD '*EEC94D54E7FF47D5342385EB2DB45D73C57F6289';
FLUSH PRIVILEGES;

# Create dbamin user with sames privileges as root
CREATE USER 'dbadmin'@'localhost';
GRANT ALL PRIVILEGES
ON *.*
TO 'dbadmin'@'localhost'
IDENTIFIED BY PASSWORD '*452911C4562D3836367E289336A37A779B5BC2EE' WITH GRANT OPTION;
GRANT PROXY ON ''@'localhost' TO 'dbadmin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

# CREATE wodpress DATABASE and wordpress databas admin account 
# CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'%';
GRANT ALL PRIVILEGES
ON wordpress.*
TO 'wordpress'@'%'
IDENTIFIED BY PASSWORD '*EEC94D54E7FF47D5342385EB2DB45D73C57F6289';
FLUSH PRIVILEGES;

# Create dbamin user with sames privileges as root
CREATE USER 'dbadmin'@'%';
GRANT ALL PRIVILEGES
ON *.*
TO 'dbadmin'@'%'
IDENTIFIED BY PASSWORD '*452911C4562D3836367E289336A37A779B5BC2EE' WITH GRANT OPTION;
GRANT PROXY ON ''@'%' TO 'dbadmin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit

# Check user and host 
# select user, host, password from mysql.user;

#+-----------+------------+-------------------------------------------+-----------------------------------------------+
#| service   | user		 | password (HASHED)						 | password (PLAIN TEXT)						 |
#+-----------+------------+-------------------------------------------+-----------------------------------------------+
#| mariadb   | wordpress  | *EEC94D54E7FF47D5342385EB2DB45D73C57F6289 | "2266Z1KDyOmkFhAkiTCp"						 | cat etc/wordpress/config-localhost.php 
#| mariadb   | phpmyadmin |											 |												 | cat etc/phpmyadmin/config-db.php
#| mariadb   | dbadmin	 | *452911C4562D3836367E289336A37A779B5BC2EE | "B42bXZhJuO1w4ibhXCQm"						 |
#+-----------+------------+-------------------------------------------+-----------------------------------------------+
