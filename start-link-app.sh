#!/bin/bash

if [ -f "/usr/bin/docker" ] && [ -f "/usr/bin/docker-compose" ]; then
    echo "Docker ready, starting Link"

    echo "Checking volumes"
    for volume in "app-data" "app-storage" "system-logs" "broker-data"; do
        docker volume ls | grep "$volume" >/dev/null

        if [ $? -ne 0 ]; then
            docker volume create $volume
            echo "$volume volume created"
        else
            echo "$volume volume exists"
        fi

    done
    echo "Checking server updates"

    cd /root/link/

    if git checkout master &&
        git fetch origin master &&
        [ `git rev-list HEAD...origin/master --count` != 0 ] &&
        git merge origin/master
    then
        echo 'Got new updates from git. Please check https://github.com/basip/link for changelog and additional instructions'
        cd without-sip
        echo 'Pulling new Docker images'
        sudo docker-compose down -t 1
        sudo docker-compose pull
        echo 'Starting new containers'
        sudo docker-compose up -d
        docker ps
    else
        echo 'No new updates'
    fi

else

    echo "Docker is not ready"
fi
