#!/bin/bash
set -e

sudo dnf install -y nodejs22 nodejs22-npm

mkdir -p /home/ec2-user/app
chown -R ec2-user:ec2-user /home/ec2-user/app