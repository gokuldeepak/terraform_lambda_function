#Provider
variable "AWS_ACCESS_KEY_ID" {
  type = string
}
variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}


#Lambda
variable "lambda_name_2" {
  type = string
}
variable "runtime_version_2" {
  type = string
}
variable "handler_2" {
    type = string
}
variable "layers_2" {
  type = list(string)
}
variable "variables_env_2" {
  type = map(string)
}
variable "memory_size_2" {
  type = number
}
variable "timeout_2" {
  type = number
}