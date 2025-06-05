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
  lza = {
    role_name                         = "OrganizationAccountAccessRole"
    audit_account_email               = "christopher.dearie+lab_audit@nclouds.com"
    log_archive_account_email         = "christopher.dearie+lab_logging@nclouds.com"
    management_account_email          = "aws-nclouds-delivery-sandbox@nclouds.com"
    enable_approval_stage             = true
    approval_stage_notify_email_list  = "christopher.dearie+lab_approval@nclouds.com"
    control_tower_enabled             = "Yes"
    repository_branch_name            = "main"
    configuration_repository_location = "codeconnection"
    use_existing_config_repo          = "Yes"
    existing_config_repository_owner  = "christopher-nc"
    config_code_connection_arn        = "arn:aws:codeconnections:us-east-2:897722666736:connection/a087495c-8763-418c-a281-4d6394388a86"
  }
}