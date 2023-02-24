#!/bin/bash

container=$1
path=$2

pobrane_path="~/Pobrane/"
devops_path="~/Apps/devops-scripts/"

docker rm -f "$container"
docker rmi -f "$container"
docker build -t "$container $path$container"
docker save -o "$pobrane_path $container"
"${devops_path}upload-file.sh ${devops_path}key-pair.pem ${devops_path}ip-address.txt ${path}${container}"