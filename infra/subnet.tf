module "public_subnet" {
    source = "../modules/subnet"
    vpc_id = module.vpc.id
    subnet_name = var.public_subnet_name
    cidr = var.public_subnet_ip_range
    subnet_az = var.public_subnet_az
    private_dns_hostname_type_on_launch = "ip-name"
    map_public_ip_on_launch = true
    tags = var.public_subnet_tags
    depends_on = [
      module.vpc,
    ]
}
module "private_subnet" {
    source = "../modules/subnet"
    vpc_id = module.vpc.id
    subnet_name = var.private_subnet_name
    cidr = var.private_subnet_ip_range
    subnet_az = var.private_subnet_az
    private_dns_hostname_type_on_launch = "ip-name"
    map_public_ip_on_launch = true
    tags = var.private_subnet_tags
    depends_on = [
      module.vpc,
    ]
}