#Region1
terraform {
  backend "s3" {
    bucket                  = "elcy-sample-tfstate"
    key                     = "sample_elcy.tfstate"
    dynamodb_table          = "test"
    workspace_key_prefix    = "workspaces"
    region                  = "eu-west-1"
    encrypt                 = true
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "elcy"
  }
}

#Region2
terraform {
  backend "s3" {
    bucket                  = "elcy-sample-tfstate"
    key                     = "sample_elcy.tfstate"
    dynamodb_table          = "test"
    workspace_key_prefix    = "workspaces"
    region                  = "eu-central-1"
    encrypt                 = true
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "elcy"
  }
}
