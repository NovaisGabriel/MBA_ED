#!/bin/bash
set -e

### Validate terraform

cd infra/aws/
terraform init -backend=false
terraform validate
cd ../../

#####################