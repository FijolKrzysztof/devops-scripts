#!/bin/bash

for name in ['lanstreamer-api' 'lanstreamer-web' 'lanstreamer-auth']; do
  docker rm -f "$name"
  docker rmi -f "$name"
  docker load -i "/tmp/$name"
done
