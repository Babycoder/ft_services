apk update
apk add bash vim
apk add libc6-compat
wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz
tar -zxvf grafana-7.3.7.linux-amd64.tar.gz
mv grafana-7.3.7 grafana
cd grafana/bin/ && ./grafana-server&
tail -f /dev/null


#bash