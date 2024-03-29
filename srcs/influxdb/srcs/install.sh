#!bin/bash

apk update
apk add bash vim openrc
rc-status
touch run/openrc/softlevel
tar -xvzf influxdb.apk
usr/sbin/./influxd&
influx -execute "CREATE DATABASE eziodb;"
influx -execute "CREATE USER ezio WITH PASSWORD 'ezio' WITH ALL PRIVILEGES;"
tar -zxvf telegraf.apk
mkdir /etc/telegraf
mv telegraf.conf /etc/telegraf
telegraf --config /etc/telegraf/telegraf.conf&
tail -f /dev/null
#bash