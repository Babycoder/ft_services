#!bin/bash

minikube delete
minikube start --driver virtualbox
eval $(minikube -p minikube docker-env)
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml

kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl create -f config.yaml

docker build -t mysql mysql/. && docker build -t nginx nginx/. && docker build -t wordpress wordpress/. && docker build -t phpmyadmin phpmyadmin/. && docker build -t influxdb influxdb/. && docker build -t grafana grafana/. && docker build -t ftps ftps/.
kubectl create -f phpmyadmin/phpmyadmin-config.yaml && kubectl create -f wordpress/wordpress-config.yaml && kubectl create -f mysql/mysql-config.yaml && kubectl create -f influxdb/influxdb-config.yaml && kubectl create -f nginx/nginx-config.yaml && kubectl create -f grafana/grafana-config.yaml && kubectl create -f ftps/ftps-config.yaml