rc-status
touch /run/openrc/softlevel
rc-service nginx start
/etc/init.d/sshd start
echo root:root | chpasswd
tar -zxvf telegraf.apk
mkdir /etc/telegraf
mv telegraf.conf /etc/telegraf
telegraf --config /etc/telegraf/telegraf.conf&
tail -F /dev/null