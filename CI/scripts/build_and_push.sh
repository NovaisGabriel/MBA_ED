#!/bin/bash
set -e

cd etl/

# Push to AWS ECR
aws ecr get-login-password --region sa-east-1 | docker login --username AWS --password-stdin 715036709715.dkr.ecr.sa-east-1.amazonaws.com
docker build -t igti-gabriel-prod-extract-rais .
docker tag igti-gabriel-prod-extract-rais:latest 715036709715.dkr.ecr.sa-east-1.amazonaws.com/igti-gabriel-prod-extract-rais:latest
docker push 715036709715.dkr.ecr.sa-east-1.amazonaws.com/igti-gabriel-prod-extract-rais:latest
