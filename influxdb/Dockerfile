FROM alpine:3.11

COPY srcs/install.sh .
COPY srcs/influxdb.apk .
COPY srcs/telegraf.apk .

CMD ["sh", "/install.sh"]