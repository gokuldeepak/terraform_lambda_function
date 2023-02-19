variable "function_name" {
  type = string
}
variable "source_arn" {
  type = string
}
variable "statement_id" {
  type = string
}
variable "action" {
  type = string
  default = "lambda:InvokeFunction"
}
variable "principal" {
  type = string
}