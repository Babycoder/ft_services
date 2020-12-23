#!bim/bash

apk update
apk add nginx openrc vim
adduser -D -g 'www' www
mkdir /www
chown -R www:www /var/lib/nginx
chown -R www:www /www
rc-status
touch run/openrc/softlevel
