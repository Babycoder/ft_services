#!bin/bash
docker-machine create --driver virtualbox default 
docker-machine env
eval $(docker-machine env)