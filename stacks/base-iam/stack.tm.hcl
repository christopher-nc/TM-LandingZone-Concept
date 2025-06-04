stack {
  name        = "iam-roles"
  description = "IAM role deployment across all AWS Organization accounts"

  tags = [
    "member"
    ]

  after = [
    "tag:lza",
  ]
}