#!bin/bash

/etc/init.d/mariadb setup
/etc/init.d/mariadb start
mysql -u root -e "CREATE DATABASE wordpressdb;"
mysql -u root -e "CREATE USER 'ezio'@'%' IDENTIFIED BY 'ezio';"
mysql -u root -e "GRANT USAGE ON *.* TO 'ezio'@'%' IDENTIFIED BY 'ezio';"
mysql -u root -e "GRANT ALL privileges ON *.* TO 'ezio'@'%' IDENTIFIED BY 'ezio';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root wordpressdb < wordpressdb.sql

/etc/init.d/mariadb stop

tar -zxvf telegraf.apk
mkdir /etc/telegraf
mv telegraf.conf /etc/telegraf
telegraf --config /etc/telegraf/telegraf.conf&

/usr/bin/mysqld --user=root