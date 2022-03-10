#!/bin/bash

echo "link start script"
/var/scripts/link-vm-deploy/check-git.sh
/var/scripts/link-vm-deploy/check-docker.sh
/var/scripts/link-vm-deploy/start-link-app.sh
