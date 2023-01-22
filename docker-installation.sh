#!/bin/sh

# Install the yum-utils package (which provides the yum-config-manager utility) and set up the repository.
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install the latest version of Docker Engine and Docker Compose:
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Start Docker:
sudo systemctl start docker
