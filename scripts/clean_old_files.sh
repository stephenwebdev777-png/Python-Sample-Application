#!/bin/bash
echo "Removing old deployment folder..."
if [ -d "/home/ubuntu/Python-Sample-Application" ]; then
    sudo rm -rf /home/ubuntu/Python-Sample-Application
    echo "Old folder removed."
fi
sudo mkdir -p /home/ubuntu/Python-Sample-Application
sudo chown ubuntu:ubuntu /home/ubuntu/Python-Sample-Application
echo "New folder created and ready."
