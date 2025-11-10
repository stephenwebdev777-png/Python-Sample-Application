#!/bin/bash
# Update packages
sudo apt-get update
sudo apt-get install -y python2 python2-dev curl

# Download get-pip.py to home directory
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o /home/ubuntu/get-pip.py

# Install pip for Python2
sudo python2 /home/ubuntu/get-pip.py

# Navigate to application directory
cd /home/ubuntu/Python-Sample-Application

# Install dependencies
pip2 install -r requirements.txt

