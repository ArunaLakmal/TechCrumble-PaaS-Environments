#TechCrumble Master Module Reference 
terraform {
    source = "git::git@github.com:ArunaLakmal/terraform-kube-master.git//wrapper?ref=v1.0.2"

    extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()

    arguments = [
      "-var-file=${find_in_parent_folders("region.tfvars")}",
      "-var-file=${find_in_parent_folders("environment.tfvars")}",
      "-var-file=${find_in_parent_folders("paas.tfvars")}",
      "-var-file=${find_in_parent_folders("terraform.tfvars.json")}"
    ]
    }
}

inputs = {
  master_desired_capacity = 2
}

include {
  path = find_in_parent_folders()
}

dependencies {
      paths = ["../core"]
}
