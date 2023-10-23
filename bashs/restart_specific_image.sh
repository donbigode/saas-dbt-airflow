#!/bin/bash

# Check if image name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: ./restart_specific_image.sh [IMAGE_NAME]"
    exit 1
fi

# Restart containers running the specified image
sudo docker ps -a | grep $1 | awk '{print $1}' | xargs sudo docker restart
