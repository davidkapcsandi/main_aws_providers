#!/bin/bash
set -euxo pipefail

cd /home/ec2-user/app
pkill node || true
nohup npm start > /home/ec2-user/app/app.log 2>&1 &