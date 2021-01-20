#!bin/bash

tar -zxvf telegraf.apk
mkdir /etc/telegraf
mv telegraf.conf /etc/telegraf
telegraf --config /etc/telegraf/telegraf.conf&