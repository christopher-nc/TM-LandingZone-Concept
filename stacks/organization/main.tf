resource "aws_organizations_organization" "main" {
  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "sso.amazonaws.com"
  ]
  feature_set = "ALL"
}

resource "aws_codeconnections_connection" "github" {
  name          = "lza-github"
  provider_type = "GitHub"
}