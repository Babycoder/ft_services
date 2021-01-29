#!bin/bash

service nginx start
service php-fpm7 start
tar -zxvf telegraf.apk
mkdir /etc/telegraf
mv telegraf.conf /etc/telegraf
telegraf --config /etc/telegraf/telegraf.conf&
tail -F /dev/null