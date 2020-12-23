#!/bin/bash

apk update
apk add bash
apk add mysql mysql-client
apk add openrc
rc-status
touch run/openrc/softlevel
mysql_install_db --user=mysql --datadir=/var/lib/mysql
mysqladmin -u root password toor
bash