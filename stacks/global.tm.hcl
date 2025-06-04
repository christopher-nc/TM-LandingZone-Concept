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
    account_id = "123456789012"
    email = "lza@lza.com"
    role_name = "OrganizationAccountAccessRole"
    audit_account_email = "lza@lza.com"
    log_archive_account_email = "lza@lza.com"
    management_account_email = "lza@lza.com"
    enable_approval_stage = true
    approval_stage_notify_email_list = "lza@lza.com"
    control_tower_enabled = true
    repository_branch_name = "main"
  }
}