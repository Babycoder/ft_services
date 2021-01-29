#!bin/bash

ps | grep telegraf | grep -v grep
r1=$?
ps | grep influxd | grep -v grep
r2=$?
if [ $r1 = 0 ] && [ $r2 = 0 ];
then
    exit 0
else
    exit 1
fi
