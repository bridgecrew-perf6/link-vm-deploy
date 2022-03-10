#!/bin/bash

if [ ! -f "/usr/bin/docker" ]; then
    echo "docker not installed"
    /var/scripts/install-docker.sh
else
    echo "docker installed already"
fi

if [ ! -f "/usr/bin/docker-compose" ]; then
    echo "docker-compose not installed"
    /var/scripts/install-docker-compose.sh
else
    echo "docker-compose installed already"
fi
