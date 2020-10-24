SHELL := /usr/bin/env bash

NDEF = $(if $(value $(1)),,$(error $(1) not set))

all: clean

.PHONY: master worker etcd clean all

master: 
	@ansible-playbook ansible-kubernetes-master/deploy.yaml --extra-vars "@terraform.tfvars.json"

worker: 
	@ansible-playbook ansible-kubernetes-worker/deploy.yaml --extra-vars "@terraform.tfvars.json"

etcd:   
	@ansible-playbook ansible-kubernetes-etcd/deploy.yaml --extra-vars "@terraform.tfvars.json"

certs:
	@source scripts/cfssl.sh

clean:
	@find . -name .terragrunt-cache -exec rm -rf {} \;