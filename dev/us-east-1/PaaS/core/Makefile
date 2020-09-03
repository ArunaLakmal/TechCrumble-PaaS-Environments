SHELL := /usr/bin/env bash

NDEF = $(if $(value $(1)),,$(error $(1) not set))

all: init apply

.PHONY: init validate apply clean all

init: 
	@terragrunt init --terragrunt-non-interactive

validate: 
	@terraform validate

apply:   
	@terragrunt apply-all --terragrunt-non-interactive

destroy:
	@terragrunt destroy-all --terragrunt-non-interactive

clean:
	@rm -rf rm -rf .terragrunt-cache