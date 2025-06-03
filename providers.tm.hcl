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
        bucket         = global.terraform.providers.backend.bucket
        key            = global.terraform.providers.backend.key
        region         = global.terraform.providers.backend.region
        encrypt        = global.terraform.providers.backend.encrypt
        use_lockfile   = global.terraform.providers.backend.use_lockfile
      }
    }
  }
}