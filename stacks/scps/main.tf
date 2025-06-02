


resource "aws_organizations_policy" "restrict_regions" {
  name        = "RestrictRegions"
  description = "Restrict usage to specific AWS regions"
  type        = "SERVICE_CONTROL_POLICY"

  content = <<POLICY
{
"Version": "2012-10-17",
"Statement": [
{
"Effect": "Deny",
"Action": "",
"Resource": "",
"Condition": {
"StringNotEquals": {
"aws:RequestedRegion": [
"us-east-1",
"us-west-2"
]
}
}
}
]
}
POLICY
}