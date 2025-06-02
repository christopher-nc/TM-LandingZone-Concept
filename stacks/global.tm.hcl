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
    }
  }
}