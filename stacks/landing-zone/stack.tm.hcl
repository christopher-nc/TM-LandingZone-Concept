stack {
  id          = "7b5f4d89-70a7-42f0-972f-3be8550e65df"
  name        = "Management"
  description = "The Root Account for the AWS Organization"
  tags = [
    "aws",
    "billing",
    "management",
    "production",
    "lza"
  ]

  after = [
  "tag:organization",
  ]
}