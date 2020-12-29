#!/bin/bash

apk update
apk add bash
apk add mysql mysql-client
apk add openrc nginx
rc-status
touch run/openrc/softlevel
adduser -D -g 'www' www
mkdir /www
chown -R www:www /www
chown -R www:www /var/lib/nginx
/etc/init.d/mariadb setup
bash