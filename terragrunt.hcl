remote_state {
  backend = "s3"
  config = {
    bucket         = "tc-remotestate-29231"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-remote-state-lock"
  }
}
