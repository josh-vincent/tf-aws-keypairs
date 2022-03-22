terraform {
  cloud {
    organization = "jvinnie-test"
    #hostname = "app.terraform.io" # Optional; defaults to app.terraform.io
    workspaces {
      tags = ["test", "source:cli"]
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

