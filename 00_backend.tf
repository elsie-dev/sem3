terraform {
  backend "s3" {
    bucket                  = "elcy-sample-tfstate"
    key                     = "sample_elcy.tfstate"
    dynamodb_table          = "test"
    workspace_key_prefix    = "workspaces"
    region                  = "eu-west-1"
    encrypt                 = true
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "tizo-dev"
  }
}
