FROM alpine:3.11

RUN apk update
RUN apk add openssl vim vsftpd bash

COPY srcs/vsftpd.pem /
COPY srcs/vsftpd.key /
COPY srcs/install.sh /
COPY srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY srcs/telegraf.apk .
COPY srcs/telegraf.conf .
COPY srcs/live.sh /

CMD ["sh", "install.sh"]