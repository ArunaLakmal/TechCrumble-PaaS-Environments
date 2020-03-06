locals {
  terragrunt_var_file = [ find_in_parent_folders("terraform.tfvars"), find_in_parent_folders("versions.tf.json") ]
}

#TechCrumble Module Reference 
#terragrunt = {
    terraform {
        source = "git::git@github.com:ArunaLakmal/TechCrumble-PaaS-Core.git//module?ref=v1.0"
    }
    include {
        path = find_in_parent_folders()
    }
#}