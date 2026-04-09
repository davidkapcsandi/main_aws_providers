#!/bin/bash
cd /home/ec2-user/app
pkill node || true
nohup npm start > app.log 2>&1 &