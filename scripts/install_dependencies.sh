#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

echo "Updating packages..."
sudo apt-get update
sudo apt-get install -y python2 python2-dev curl

echo "Downloading get-pip.py for Python 2..."
curl -s https://bootstrap.pypa.io/pip/2.7/get-pip.py -o /home/ubuntu/get-pip.py

echo "Installing pip for Python 2..."
sudo python2 /home/ubuntu/get-pip.py

echo "Installing Python dependencies..."
cd /home/ubuntu/Python-Sample-Application
pip2 install --user -r requirements.txt

