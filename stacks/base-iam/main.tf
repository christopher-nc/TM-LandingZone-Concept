provider "aws" {
  alias  = "master"
  region = "us-east-1"
}

data "aws_organizations_organization" "org" {
  provider = aws.master
}


module "iam_roles" {
  for_each = { for account in data.aws_organizations_organization.org.accounts : account.id => account }

  source = "../../modules/iam-role"

  account_id       = each.value.id
  assume_role_name = "OrganizationAccountAccessRole" # Default role created by AWS Organizations
}