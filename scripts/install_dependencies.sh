#!/bin/bash
sudo apt-get update
sudo apt-get install -y python2 python2-dev curl
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
sudo python2 get-pip.py
pip2 install -r requirements.txt
