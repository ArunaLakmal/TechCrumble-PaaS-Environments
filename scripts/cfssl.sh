#!/bin/bash
CERT_VERSION=$(jq -r '.cfssl_version' terraform.tfvars.json) ; \
git clone https://github.com/ArunaLakmal/ansible-cfssl.git --branch $(jq -r '.cfssl_version' terraform.tfvars.json) --single-branch ; \
ansible-playbook ansible-cfssl/cfssl-generate.yaml --extra-vars "@terraform.tfvars.json"
