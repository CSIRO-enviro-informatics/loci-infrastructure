#!/bin/bash
yum update -y
amazon-linux-extras install docker 
yum -y install git
curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose
systemctl enable docker
systemctl start docker && sleep 5
usermod -a -G docker ec2-user
git clone --single-branch --branch prod_compose https://github.com/CSIRO-enviro-informatics/loci-integration-api.git 
cd loci-integration-api && pwd && ls && docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d 