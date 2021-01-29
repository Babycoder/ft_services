#!bin/bash

minikube delete
minikube start --driver virtualbox

eval $(minikube -p minikube docker-env)

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl create -f ./srcs/config.yaml

docker build -t mysql ./srcs/mysql/. && docker build -t nginx ./srcs/nginx/. && docker build -t wordpress ./srcs/wordpress/. && docker build -t phpmyadmin ./srcs/phpmyadmin/. && docker build -t influxdb ./srcs/influxdb/. && docker build -t grafana ./srcs/grafana/. && docker build -t ftps ./srcs/ftps/.
kubectl create -f ./srcs/phpmyadmin/phpmyadmin-config.yaml && kubectl create -f ./srcs/wordpress/wordpress-config.yaml && kubectl create -f ./srcs/mysql/mysql-config.yaml && kubectl create -f ./srcs/influxdb/influxdb-config.yaml && kubectl create -f ./srcs/nginx/nginx-config.yaml && kubectl create -f ./srcs/grafana/grafana-config.yaml && kubectl create -f ./srcs/ftps/ftps-config.yaml