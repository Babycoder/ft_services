#!bin/bash
adduser -D ezio
echo "ezio:ezio" | chpasswd
tar -zxvf telegraf.apk
mkdir /etc/telegraf
mv telegraf.conf /etc/telegraf
telegraf --config /etc/telegraf/telegraf.conf&
usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
#/etc/init.d/vsftpd start
#rc-service vsftpd start
#tail -F /dev/null