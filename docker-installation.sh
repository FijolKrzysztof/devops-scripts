#!/bin/sh

# Set up the repository
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Install the latest version of Docker Engine and Docker Compose:
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Start Docker:
sudo systemctl start docker
