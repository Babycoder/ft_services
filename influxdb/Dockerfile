FROM alpine:3.11

COPY srcs/install.sh .
COPY srcs/influxdb.apk .
COPY srcs/telegraf.apk .
COPY srcs/telegraf.conf .
CMD ["sh", "/install.sh"]