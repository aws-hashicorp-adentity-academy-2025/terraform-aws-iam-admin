resource "aws_iam_policy" "admin" {
  name = "admin"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "*"
        Effect = "Allow"
      }
    ]
  })
}

resource "aws_iam_user" "admin" {
  name = "admin"
}

resource "aws_iam_user_policy_attachment" "admin" {
  user       = aws_iam_user.admin.name
  policy_arn = aws_iam_policy.admin.arn
}