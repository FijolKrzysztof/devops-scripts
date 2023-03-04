#!/bin/bash

container=$1
path=$2

pobrane_path="/home/krzysztof/Pobrane/"
devops_path="/home/krzysztof/Apps/devops-scripts/"

docker rm -f "$container" || true
docker rmi -f "$container" || true
docker build -t "$container" "$path"
docker save -o "${pobrane_path}${container}" "$container"
"${devops_path}upload-file.sh" "${devops_path}key-pair.pem" "${devops_path}ip-address.txt" "${pobrane_path}${container}"