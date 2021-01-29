FROM alpine:3.11
COPY srcs/install.sh .
COPY srcs/telegraf.apk .
COPY srcs/telegraf.conf .
RUN apk update
RUN apk add bash vim
RUN apk add libc6-compat
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.3.7.linux-amd64.tar.gz
RUN mv grafana-7.3.7 grafana
RUN rm -rf grafana/data/grafana.db
COPY srcs/grafana.db /grafana/data/
COPY srcs/live.sh /
CMD ["sh", "install.sh"]