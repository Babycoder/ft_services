rc-status
touch /run/openrc/softlevel
rc-service nginx start
/etc/init.d/sshd start
echo root:root | chpasswd
tail -F /dev/null