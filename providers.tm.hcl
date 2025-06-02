generate_hcl "terraform.tf" {
  content {
    terraform {
      required_providers {
        aws = {
          source  = global.terraform.providers.aws.source
          version = global.terraform.providers.aws.version
        }
      }
    }
  }
}

generate_hcl "providers.tf" {
  content {
    provider "aws" {

    }
  }
}

