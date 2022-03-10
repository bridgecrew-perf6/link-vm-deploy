#!/bin/bash

if [ ! -f "/usr/bin/git" ]; then
    echo "git not installed"
    /var/scripts/install-git.sh
else
    echo "git installed already"
fi
