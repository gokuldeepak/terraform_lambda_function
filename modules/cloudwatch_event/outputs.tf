output "rule_id" {
  value = aws_cloudwatch_event_rule.cw_trigger_rule.id
}

output "rule_arn" {
  value = aws_cloudwatch_event_rule.cw_trigger_rule.arn
}

output "rule_tags_all" {
  value = aws_cloudwatch_event_rule.cw_trigger_rule.tags_all
}

