#Provider
variable "AWS_ACCESS_KEY_ID" {
  type = string
}
variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

#S3
variable "s3_bucket_name" {
  type = string
}
variable "s3_acl" {
  type = string
}
variable "s3_version_enabled" {
  type = bool
}



#VPC
variable "vpc_name" {
    type = string
}
variable "vpc_ip_range" {
    type = string
}
variable "vpc_tags" {
  type = map(string)
}

#Subnet
variable "public_subnet_name" {
    type = list(string)
}
variable "public_subnet_ip_range" {
    type = list(string)
}
variable "public_subnet_az" {
    type = list(string)
}
variable "public_subnet_tags" {
  type = map(string)
}

variable "private_subnet_name" {
    type = list(string)
}
variable "private_subnet_ip_range" {
    type = list(string)
}
variable "private_subnet_az" {
    type = list(string)
}
variable "private_subnet_tags" {
  type = map(string)
}


#SG
variable "sg_name" {
  type = string
}
variable "ingress" {
  type = list(object({
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
}
variable "egress" {
  type = list(object({
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
}