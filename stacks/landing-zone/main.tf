



# resource "aws_cloudformation_stack" "lza" {
#   name = "AWSAccelerator-InstallerStack"
  
#   template_url = "https://s3.amazonaws.com/solutions-reference/landing-zone-accelerator-on-aws/latest/AWSAccelerator-InstallerStack.template"

#   parameters = {
#     AcceleratorPrefix                 = "AWSAccelerator"
#     ControlTowerEnabled               = global.lza.control_tower_enabled
#     RepositoryName                    = "landing-zone-accelerator-on-aws"
#     RepositoryBranchName              = global.lza.repository_branch_name
#     RepositorySource                  = "github"
#     RepositoryOwner                   = "aws-ia"
#     ManagementAccountEmail            = global.lza.management_account_email
#     LogArchiveAccountEmail            = global.lza.log_archive_account_email
#     AuditAccountEmail                 = global.lza.audit_account_email
#     EnableApprovalStage               = global.lza.enable_approval_stage
#     EnableDiagnosticsPack             = "Yes"
#     ApprovalStageNotifyEmailList      = global.lza.approval_stage_notify_email_list
#     ConfigurationRepositoryLocation   = global.lza.configuration_repository_location
#     UseExistingConfigRepo             = global.lza.use_existing_config_repo
#     ExistingConfigRepositoryName      = "landing-zone-accelerator-on-aws"
#     ExistingConfigRepositoryBranchName = "main"
#     ExistingConfigRepositoryOwner       = global.lza.existing_config_repository_owner
#     ConfigCodeConnectionArn             = global.lza.config_code_connection_arn

#   }
#   capabilities = ["CAPABILITY_IAM"]

#   disable_rollback = true
  
# }