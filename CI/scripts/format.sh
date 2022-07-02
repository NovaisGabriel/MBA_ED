#!/bin/bash
set -e

#### Terraform Format AWS #####

./CI/scripts/pre_terraform.sh

cd infra/
terraform fmt
cd ../../

######################################