#!/bin/bash
# Script to clean old application files before deployment

APP_DIR="/home/ubuntu/Python-Sample-Application"

echo "Cleaning old application files in $APP_DIR..."

# Check if directory exists
if [ -d "$APP_DIR" ]; then
    # Remove all files and subdirectories inside
    sudo rm -rf $APP_DIR/*
    echo "Old files removed successfully."
else
    echo "Directory $APP_DIR does not exist. Creating it..."
    sudo mkdir -p $APP_DIR
fi

# Set proper ownership for ubuntu user
sudo chown -R ubuntu:ubuntu $APP_DIR

echo "Cleanup completed."

