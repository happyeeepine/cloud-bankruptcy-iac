resource "aws_iam_role_policy_attachment" "ec2" {
  policy_arn = aws_iam_policy.s3_access.arn
  role       = aws_iam_role.ec2.name
}