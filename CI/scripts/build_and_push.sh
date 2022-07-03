#!/bin/bash
set -e

cd etl/

# Push to AWS ECR
aws ecr get-login-password --region us-east-2 --profile Administrator| docker login --username AWS --password-stdin 715036709715.dkr.ecr.us-east-2.amazonaws.com
docker build -t igti-gabriel-prod-extract-rais .
docker tag igti-gabriel-prod-extract-rais:latest 715036709715.dkr.ecr.us-east-2.amazonaws.com/igti-gabriel-prod-extract-rais:latest
docker push 715036709715.dkr.ecr.us-east-2.amazonaws.com/igti-gabriel-prod-extract-rais:latest
