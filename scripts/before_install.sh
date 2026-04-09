#!/bin/bash
set -euxo pipefail

mkdir -p /home/ec2-user/app
chown -R ec2-user:ec2-user /home/ec2-user/app

if command -v dnf >/dev/null 2>&1; then
  dnf install -y nodejs npm
else
  curl -fsSL https://rpm.nodesource.com/setup_20.x | bash -
  yum install -y nodejs
fi
if ! command -v mongod >/dev/null 2>&1; then
  cat >/etc/yum.repos.d/mongodb-org-8.0.repo <<'EOF'
[mongodb-org-8.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/8.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://pgp.mongodb.com/server-8.0.asc
EOF

  yum install -y mongodb-org
fi

systemctl enable mongod
systemctl restart mongod


node -v
npm -v