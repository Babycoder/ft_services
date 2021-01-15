#!bin/bash

minikube delete
minikube start --driver virtualbox
minikube docker-env
eval $(minikube -p minikube docker-env)
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml

kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

docker build -t local-nginx 
kubectl create -f nginx/nginx-config.yaml
kubectl create -f config.yaml

export MINIKUBE_HOME=/Users/ayghazal/goinfre
eval $(minikube -p minikube docker-env)