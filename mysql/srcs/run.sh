 #!/bin/bash
mv mariadb-server.cnf /etc/my.cnf.d/
rc-service mariadb start
mysql -u root -e "CREATE DATABASE wordpressdb;"
mysql -u root -e "CREATE USER 'ezio'@'%' IDENTIFIED BY 'ezio';"
mysql -u root -e "GRANT USAGE ON *.* TO 'ezio'@'%' IDENTIFIED BY 'ezio';"
mysql -u root -e "GRANT ALL privileges ON *.* TO 'ezio'@'%' IDENTIFIED BY 'ezio';"
mysql -u root -e "FLUSH PRIVILEGES;"

bash