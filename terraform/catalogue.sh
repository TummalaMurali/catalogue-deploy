#!/bin/bash
APP_VERSION=$1
echo "app version: $APP_VERSION"
#ENVIRONMENT=$2
yum install python3.11-devel python3.11-pip -y
pip3.11 install ansible botocore boto3
cd /tmp
ansible-pull -U https://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@github.com/TummalaMurali/roboshop-ansible-roles-tf.git -e component=catalogue -e app_version=$APP_VERSION main.yaml