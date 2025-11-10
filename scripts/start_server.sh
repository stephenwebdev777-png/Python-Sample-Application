#!/bin/bash
echo "Starting Python application..."
cd /home/ubuntu/Python-Sample-Application

# Kill any old processes (optional, if needed)
pkill -f "python2 app.py" || true

# Start app in background
nohup python2 app.py > app.log 2>&1 &
echo "Application started."
