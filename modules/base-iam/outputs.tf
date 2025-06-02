output "deployed_roles" {
  description = "List of accounts where IAM roles were deployed"
  value       = [for account in data.aws_organizations_organization.org.accounts : account.id]
}