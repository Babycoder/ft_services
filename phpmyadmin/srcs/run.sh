#!bin/bash

service nginx start
service php-fpm7 start
sh telegraf.sh
tail -F /dev/null