#!/bin/bash
set -e

### Validate terraform

cd infra/
terraform init -backend=false
terraform validate
cd ../../

#####################