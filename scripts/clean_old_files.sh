#!/bin/bash
echo "Cleaning old deployment folder..."

DEPLOY_DIR="/home/ubuntu/Python-Sample-Application"

if [ -d "$DEPLOY_DIR" ]; then
    sudo rm -rf "$DEPLOY_DIR"
    echo "Old folder removed."
fi

sudo mkdir -p "$DEPLOY_DIR"
sudo chown ubuntu:ubuntu "$DEPLOY_DIR"
echo "New folder created and ready."

