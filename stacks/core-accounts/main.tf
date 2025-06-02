

provider "aws" {
  region = "us-east-1"
}

resource "aws_organizations_account" "security" {
  name      = "security"
  email     = "security@example.com"
  parent_id = aws_organizations_organizational_unit.core.id
}

resource "aws_organizations_account" "shared_services" {
  name      = "shared-services"
  email     = "shared-services@example.com"
  parent_id = aws_organizations_organizational_unit.core.id
}