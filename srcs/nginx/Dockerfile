FROM alpine:3.11
RUN apk update
RUN apk add nginx openrc openssh vim bash
RUN rc-update add sshd
COPY srcs/sshd_config /etc/ssh/
COPY srcs/script.sh /
COPY srcs/index.html /var/www/
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY srcs/default.conf /etc/nginx/conf.d
COPY srcs/nginx-selfsigned.crt /etc/ssl/certs/
COPY srcs/nginx-selfsigned.key /etc/ssl/private/
COPY srcs/telegraf.apk .
COPY srcs/telegraf.conf .
COPY srcs/live.sh /
EXPOSE 80 443 22
CMD ["bash", "/script.sh"] 