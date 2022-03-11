#!/bin/bash

echo "link start script"
/var/scripts/check-git.sh
/var/scripts/check-docker.sh
/var/scripts/start-link-app.sh
