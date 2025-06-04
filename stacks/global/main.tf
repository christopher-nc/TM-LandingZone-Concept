
resource "aws_organizations_organization" "main" {
  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "sso.amazonaws.com"
  ]
  feature_set = "ALL"
}


resource "aws_cloudformation_stack" "lza" {
  name = "AWSAccelerator-InstallerStack"
  
  template_url = "https://s3.amazonaws.com/solutions-reference/landing-zone-accelerator-on-aws/latest/AWSAccelerator-InstallerStack.template"

  parameters = {
    RepositoryBranchName              = "main"
    ManagementAccountEmail            = "lza@lza.com"
    LogArchiveAccountEmail            = "lza@lza.com"
    AuditAccountEmail                 = "lza@lza.com"
    EnableApprovalStage               = "true"
    ApprovalStageNotifyEmailList      = "lza@lza.com"
    ControlTowerEnabled               = "true"
  }
  capabilities = ["CAPABILITY_IAM"]

  disable_rollback = true
  
}