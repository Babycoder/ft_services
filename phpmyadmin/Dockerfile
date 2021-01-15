FROM alpine:3.11
COPY srcs/install.sh .
RUN sh install.sh
COPY srcs/nginx.conf /etc/nginx/
COPY srcs/run.sh .
COPY srcs/config.inc.php /www/phpmyadmin
ENTRYPOINT ["bash", "/run.sh"] 