#!/bin/bash
set -e


### Check terraform format

cd infra/aws/
terraform fmt -check
cd ../../

#####################