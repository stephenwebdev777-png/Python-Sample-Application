#!/bin/bash
set -e

echo "=== Starting Python 2 Flask app ==="

cd /home/ubuntu/Python-Sample-Application

# Kill any process running on port 5000
sudo fuser -k 5000/tcp || true

# Start the Flask app in the background
nohup sudo python2 app.py > app.log 2>&1 &

echo "=== Flask app started successfully ==="
