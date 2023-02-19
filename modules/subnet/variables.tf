variable "vpc_id" {
    type = string
}
variable "subnet_name" {
    type = string
}
variable "cidr" {
  type = string
}
variable "subnet_az" {
    type = string
}
# variable "availability_zone_id" {
#     type = string
# }
variable "map_public_ip_on_launch" {
  type = bool
  default = false
}
variable "private_dns_hostname_type_on_launch" {
    type = string
    default = "ip-name"
}
variable "ipv6_native" {
    type = bool
    default = false
}
variable "assign_ipv6_address_on_creation" {
  type = bool
  default = false
}
variable "enable_dns64" {
  type = bool
  default = false
}
variable "enable_resource_name_dns_aaaa_record_on_launch" {
  type = bool
  default = false
}
variable "ipv6_cidr_block" {
    type = string
    default = null
}
variable "enable_resource_name_dns_a_record_on_launch" {
  type = bool
  default = false
}
variable "customer_owned_ipv4_pool" {
    type = string
    default = null
}
variable "map_customer_owned_ip_on_launch" {
    type = bool
    default = null
}
variable "outpost_arn" {
    type = string
    default = null
}
variable "tags" {
    type = list(map(string))
    default = [{}]
}