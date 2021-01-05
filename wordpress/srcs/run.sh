#!bin/bash

service nginx start
service php-fpm7 start
tail -F /dev/null