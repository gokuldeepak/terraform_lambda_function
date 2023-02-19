variable "vpc_id"{
 type = string
}

variable "tags" {
    type = map(string)
}

variable "security_group_name" {
  description = "Name to be used on the custom security group"
  type        = string
  default     = null
}

variable "description" {
  type = string
  default = "Managed by Terraform"
}
variable "ingress" {
  description = "List of maps of ingress rules to set on the custom security group"
  type        = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    ipv6_cidr_blocks = list(string)
    prefix_list_ids = list(string)
    security_groups = list(string)
    self = bool
  }))
#  default     = []
}
variable "egress" {
  description = "List of maps of egress rules to set on the custom security group"
  type        = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    # ipv6_cidr_blocks = list(string)
    self = bool
  }))
#  default     = []
}

variable "name" {
  type = string
  default = null
}