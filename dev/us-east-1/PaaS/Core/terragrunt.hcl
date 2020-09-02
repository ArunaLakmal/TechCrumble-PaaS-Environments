#locals {
 # terragrunt_var_file = [ find_in_parent_folders("terraform.tfvars"), find_in_parent_folders("terraform.tfvars.json") ]
#}

#TechCrumble Core Module Reference 
    terraform {
        source = "git::git@github.com:ArunaLakmal/TechCrumble-PaaS-Core.git//module?ref=v1.0.1"

        extra_arguments "common_vars" {
        commands = get_terraform_commands_that_need_vars()

        arguments = [
          "-var-file=${find_in_parent_folders("region.tfvars")}",
          "-var-file=${find_in_parent_folders("environment.tfvars")}",
          "-var-file=${find_in_parent_folders("terraform.tfvars.json")}"
        ]
        }
    }
    include {
        path = find_in_parent_folders()
    }