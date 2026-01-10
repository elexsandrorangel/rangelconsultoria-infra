resource "aws_iam_user" "iac_user" {
  name = var.iam_user_name
}

resource "aws_iam_policy" "iac_user_policy" {
  name        = "${var.iam_user_name}-policy"
  description = "Policy for IAM user ${var.iam_user_name}"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:CreateRole",
          "iam:DeleteRole",
          "iam:UpdateRole",
          "iam:GetRole",
          "iam:PassRole",
          "iam:CreatePolicy",
          "iam:DeletePolicy",
          "iam:GetPolicy",
          "iam:AttachUserPolicy",
          "iam:DetachUserPolicy",
          "iam:CreateInstanceProfile",
          "iam:AddRoleToInstanceProfile",
          "iam:RemoveRoleFromInstanceProfile",
          "iam:DeleteInstanceProfile"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "iac_user_policy_attachment" {
  user       = aws_iam_user.iac_user.name
  policy_arn = aws_iam_policy.iac_user_policy.arn
}

# Create access keys for the IAM user
resource "aws_iam_access_key" "iac_user_access_key" {
  user = aws_iam_user.iac_user.name
}
