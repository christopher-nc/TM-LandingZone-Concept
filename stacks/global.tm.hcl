stack {
  name        = "global"
  description = "Global AWS Organization configurations"


}

globals {
  terraform = {
    providers = {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
      }
      backend = {
        type    = "s3"
        bucket  = "ncld-lab-terraform-states-comm"
        key     = "terraform/${terramate.stack.name}/terraform.tfstate"
        region  = "us-east-2"
        encrypt = true
        use_lockfile = true
      }
    }
  }
}