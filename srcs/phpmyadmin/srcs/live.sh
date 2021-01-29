#!bin/bash

ps | grep telegraf | grep -v grep
r1=$?
ps | grep nginx | grep -v grep
r2=$?
ps | grep php | grep -v grep
r3=$?

if [ $r1 = 0 ] && [ $r2 = 0 ] && [ $r3 = 0 ];
then
    exit 0
else
    exit 1
fi