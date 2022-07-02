#!/bin/bash
set -e


### Check terraform format

cd infra/
terraform fmt -check
cd ../../

#####################