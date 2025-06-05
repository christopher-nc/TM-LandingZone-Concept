resource "aws_organizations_organization" "main" {
  aws_service_access_principals = [

  ]
  feature_set = "ALL"
}

resource "aws_codeconnections_connection" "github" {
  name          = "lza-github"
  provider_type = "GitHub"
}