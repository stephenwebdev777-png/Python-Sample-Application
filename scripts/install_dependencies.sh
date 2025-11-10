#!/bin/bash
set -e

# Ensure Python 2 is installed
if ! command -v python2 &> /dev/null
then
    echo "Python2 not found. Installing..."
    sudo apt update
    sudo apt install -y python2 python2-dev curl
fi

# Ensure pip2 is installed
if ! command -v pip2 &> /dev/null
then
    echo "pip2 not found. Installing..."
    curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
    sudo python2 get-pip.py
fi

# Upgrade pip2
sudo python2 -m pip install --upgrade pip

# Install dependencies from requirements.txt using Python 2
sudo python2 -m pip install -r /home/ubuntu/app/requirements.txt

