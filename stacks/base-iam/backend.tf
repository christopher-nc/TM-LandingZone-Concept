// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket       = "ncld-lab-terraform-states-comm"
    encrypt      = true
    key          = "terraform/iam-roles/terraform.tfstate"
    region       = "us-east-2"
    use_lockfile = true
  }
}
