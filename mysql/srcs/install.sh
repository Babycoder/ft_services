#!/bin/bash

apk update
apk add bash vim
apk add mysql mysql-client
apk add openrc
rc-status
touch run/openrc/softlevel
/etc/init.d/mariadb setup
