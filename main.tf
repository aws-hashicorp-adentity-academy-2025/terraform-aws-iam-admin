resource "aws_iam_policy" "admin" {
  name = "admin"
  path        = "/"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "*"
        Effect = "Allow"
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user" "admin" {
  name = "admin-${var.postfix}"
}

resource "aws_iam_user_policy_attachment" "admin" {
  user       = aws_iam_user.admin.name
  policy_arn = aws_iam_policy.admin.arn
}