#Provider
variable "AWS_ACCESS_KEY_ID" {
  type = string
}
variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}


#Lambda
variable "lambda_name_1" {
  type = string
}
variable "runtime_version_1" {
  type = string
}
variable "handler_1" {
    type = string
}
variable "layers_1" {
  type = list(string)
}
variable "variables_env_1" {
  type = map(string)
}
variable "memory_size_1" {
  type = number
}
variable "timeout_1" {
  type = number
}