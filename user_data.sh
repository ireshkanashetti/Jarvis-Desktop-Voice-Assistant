#!/bin/bash
apt update -y
apt upgrade -y
apt install -y git python3 python3-venv python3-pip rsync curl openjdk-11-jdk

mkdir -p /home/ubuntu/jarvis
chown -R ubuntu:ubuntu /home/ubuntu/jarvisgit 

ssh -i key.pem ubuntu@PUBLIC_IP

sudo apt update
sudo apt install -y openjdk-11-jdk
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins

http://PUBLIC_IP:8080

sudo cat /var/lib/jenkins/secrets/initialAdminPassword