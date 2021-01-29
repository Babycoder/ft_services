FROM alpine:3.11
COPY srcs/install.sh .
RUN sh install.sh
COPY srcs/nginx.conf /etc/nginx/
COPY srcs/run.sh .
COPY srcs/config.inc.php /www/phpmyadmin
COPY srcs/telegraf.apk .
COPY srcs/telegraf.conf .
COPY srcs/telegraf.sh .
COPY srcs/live.sh /
ENTRYPOINT ["bash", "/run.sh"] 