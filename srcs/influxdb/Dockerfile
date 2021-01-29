FROM alpine:3.11

COPY srcs/install.sh .
COPY srcs/influxdb.apk .
COPY srcs/telegraf.apk .
COPY srcs/telegraf.conf .
COPY srcs/live.sh /
CMD ["sh", "/install.sh"]