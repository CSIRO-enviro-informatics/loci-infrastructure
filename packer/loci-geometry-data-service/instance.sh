#!/bin/bash
echo -e "GSDB_HOSTNAME=10.0.1.201" > /home/ec2-user/loci-geometry-data-service/.env
echo -e "GSDB_PORT=25432" >> /home/ec2-user/loci-geometry-data-service/.env
echo -e "PORT=80" >> /home/ec2-user/loci-geometry-data-service/.env
cd /home/ec2-user/loci-geometry-data-service && pwd && ls && docker-compose -f docker-compose.prod.yml -f docker-compose.yml up -d gservice loader caddy