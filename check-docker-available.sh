#!/bin/bash

if [ ! -f "/usr/bin/docker" ]; then
    echo "docker not installed"
else
    echo "docker installed already"
fi

if [ ! -f "/usr/bin/docker-compose" ]; then
    echo "docker-compose not installed"
else
    echo "docker-compose installed already"
fi
