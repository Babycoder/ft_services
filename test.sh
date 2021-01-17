#!bin/bash
kubectl delete -f $1/$1-config.yaml
docker build -t $1 $1/.
kubectl create -f $1/$1-config.yaml
