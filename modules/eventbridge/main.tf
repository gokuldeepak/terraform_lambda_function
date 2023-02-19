resource "aws_cloudwatch_event_rule" "cw_trigger_rule" {
  name                = var.cw_event_rule_name
  description         = var.cw_event_rule_description
  schedule_expression = var.cw_event_rule_schedule_expression
}

resource "aws_cloudwatch_event_target" "cw_event_target" {
  target_id = var.cw_event_target_id
  arn       = var.cw_event_target_arn
  rule      = aws_cloudwatch_event_rule.cw_trigger_rule.name
}

