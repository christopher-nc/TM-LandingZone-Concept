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

generate_hcl "backend.tf" {
  content {
    terraform {
      backend "s3" {
        bucket         = global.terraform.backend.bucket
        key            = global.terraform.backend.key
        region         = global.terraform.backend.region
        encrypt        = global.terraform.backend.encrypt
        use_lockfile   = global.terraform.backend.use_lockfile
      }
    }
  }
}