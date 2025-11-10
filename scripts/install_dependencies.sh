#!/bin/bash
set -e

echo "=== Installing Python 2 and dependencies ==="

# Update packages
sudo apt-get update -y

# Install Python 2 and pip (if not installed)
if ! command -v python2 &> /dev/null; then
    sudo apt-get install -y python2 python2-dev
fi

# Install pip for Python 2
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
sudo python2 get-pip.py

# Install project dependencies
cd /home/ubuntu/Python-Sample-Application
sudo python2 -m pip install -r requirements.txt

echo "=== Dependencies installed successfully ==="

