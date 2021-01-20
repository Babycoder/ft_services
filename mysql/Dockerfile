FROM alpine:3.11

RUN apk update
RUN apk add vim bash
RUN apk add expect
RUN apk add openrc --no-cache
RUN apk add mariadb mariadb-client
RUN apk add php-mysqli
RUN rc-status
RUN touch /run/openrc/softlevel
RUN mkdir -p /run/mysqld/
RUN chown mysql:mysql /var/lib/mysql
COPY srcs/mariadb-server.cnf /etc/my.cnf.d/
COPY srcs/config.sh /
COPY srcs/wordpressdb.sql /
RUN chmod 777 config.sh
COPY srcs/telegraf.apk .
COPY srcs/telegraf.conf .
CMD ["sh", "config.sh"]