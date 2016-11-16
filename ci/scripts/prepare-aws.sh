#!/bin/bash
set -x
mv /opt/terraform/terraform /usr/local/bin
cd aws-prepare-get/terraform/c0-aws-base/
terraform plan
terraform apply
cp terraform.tfstate pcfawsops-terraform-state-put/terraform.tfstate
