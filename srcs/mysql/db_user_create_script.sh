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
GRANT PROXY ON ''@'%' TO 'dbadmin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit



#+-----------+------------+-------------------------------------------+-----------------------------------------------+
#| service   | user		 | password (HASHED)						 | password (PLAIN TEXT)						 |
#+-----------+------------+-------------------------------------------+-----------------------------------------------+
#| mariadb   | wordpress  | *EEC94D54E7FF47D5342385EB2DB45D73C57F6289 | "2266Z1KDyOmkFhAkiTCp"						 | cat etc/wordpress/config-localhost.php 
#| mariadb   | phpmyadmin |											 |												 | cat etc/phpmyadmin/config-db.php
#| mariadb   | dbadmin	 | *452911C4562D3836367E289336A37A779B5BC2EE | "B42bXZhJuO1w4ibhXCQm"						 |
#+-----------+------------+-------------------------------------------+-----------------------------------------------+
