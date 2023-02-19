#Provider
variable "AWS_ACCESS_KEY_ID" {
  type = string
}
variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}


#Lambda
variable "lambda_name" {
  type = string
}
variable "runtime_version" {
  type = string
}
variable "handler" {
    type = string
}
variable "layers" {
  type = list(string)
}
variable "variables_env" {
  type = map(string)
}
variable "memory_size" {
  type = number
}
variable "timeout" {
  type = number
}