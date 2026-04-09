#!/bin/bash
set -euxo pipefail

cd /home/ec2-user/app

pkill node || true

export MONGODB_URI="mongodb://127.0.0.1:27017/mydb"

nohup npm start > /home/ec2-user/app/app.log 2>&1 &