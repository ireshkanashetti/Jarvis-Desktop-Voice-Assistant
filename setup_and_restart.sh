#!/bin/bash
cd /home/ubuntu/jarvis

# Install dependencies
sudo apt update -y

# If your app needs python
sudo apt install python3 python3-pip -y

# If your app needs node
# sudo apt install nodejs npm -y

# Kill old processes
pkill -f jarvis.py || true

# Start app (example)
nohup python3 jarvis.py > app.log 2>&1 &
