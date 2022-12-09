resource "aws_budgets_budget" "montly_cost" {
  name              = "MonthlyCost"
  budget_type       = "COST"
  limit_amount      = "60.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2020-01-01_00:00"

  notification {
    comparison_operator        = "GREATER_THAN"
    notification_type          = "ACTUAL"
    threshold                  = 80
    threshold_type             = "PERCENTAGE"
    subscriber_email_addresses = ["happyeeepine@gmail.com"]
  }
}