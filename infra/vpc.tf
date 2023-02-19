module "vpc" {
    source = "../modules/vpc"
    vpc_name = var.vpc_name
    cidr = var.vpc_ip_range
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = var.vpc_tags
}



