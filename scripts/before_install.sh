#!/bin/bash
set -e

# Install Node.js (Node 20 LTS)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

# Create app directory
mkdir -p /home/ec2-user/app
chown -R linux:linux /home/ec2-user/app
