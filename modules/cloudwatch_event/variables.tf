variable "cw_event_rule_name" {
    type = string
}
variable "cw_event_rule_description" {
    type = string
}
variable "cw_event_rule_schedule_expression" {
    type = string
}

variable "cw_event_target_id" {
  type = string
}
variable "cw_event_target_arn" {
  type = string
}