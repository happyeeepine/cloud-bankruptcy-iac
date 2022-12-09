data "aws_iam_policy_document" "cloudwatch_events" {
  statement {
    effect    = "Allow"
    resources = [aws_sns_topic.mail.arn]
    actions   = ["sns:Publish"]

    principals {
      identifiers = [
        "events.amazonaws.com",
        "cloudwatch.amazonaws.com"
      ]
      type = "Service"
    }
  }
}