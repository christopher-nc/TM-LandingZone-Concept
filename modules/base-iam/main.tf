provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.assume_role_name}"
  }
}


resource "aws_iam_role" "standard_role" {
  name = "StandardOrganizationRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${var.account_id}:root"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy" "standard_policy" {
  name = "StandardPolicy"
  role = aws_iam_role.standard_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListBucket",
          "ec2:DescribeInstances"
        ]
        Resource = "*"
      }
    ]
  })
}