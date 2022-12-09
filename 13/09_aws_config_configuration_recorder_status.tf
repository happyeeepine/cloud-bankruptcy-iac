resource "aws_config_configuration_recorder_status" "default" {
  is_enabled = true
  name       = aws_config_configuration_recorder.default.name
  depends_on = [aws_config_delivery_channel.default]
}