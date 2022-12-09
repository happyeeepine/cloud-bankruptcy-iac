resource "aws_config_configuration_recorder" "default" {
  name     = "default"
  role_arn = data.aws_iam_role.config.arn

  recording_group {
    all_supported                 = true
    include_global_resource_types = true
  }
}