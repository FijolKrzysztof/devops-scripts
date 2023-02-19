#!/bin/bash

docker load -i /tmp/lanstreamer-api
docker load -i /tmp/lanstreamer-web
docker load -i /tmp/lanstreamer-auth

cd /tmp/devops-scripts || (echo "CD ERROR" && exit)

docker-compose up -d