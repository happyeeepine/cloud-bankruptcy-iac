resource "aws_iam_group_membership" "admin" {
  group = aws_iam_group.admin.name
  name  = aws_iam_group.admin.name
  users = [aws_iam_user.terraform.name]
}