variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = ""
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  default     = "default"
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = false
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_ipv6" {
  description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block."
  type        = bool
  default     = false
}


variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "use_ipam_pool" {
  type        = bool
  default     = false
}
variable "ipv4_ipam_pool_id" {
  type = string
  default = null
}
variable "ipv4_netmask_length" {
  type = number
  default = null
}
variable "ipv6_cidr" {
  type = string
  default = null
}
variable "ipv6_ipam_pool_id" {
  type = string
  default = null
}
variable "ipv6_netmask_length" {
  type = string
  default = null
}
variable "ipv6_cidr_block_network_border_group" {
  type = string
  default = null
}
variable "enable_network_address_usage_metrics" {
  type = bool
  default = false
}