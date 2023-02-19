resource "aws_subnet" "this" {
  vpc_id                          = var.vpc_id
  cidr_block                      = var.cidr
  availability_zone               = var.subnet_az
  availability_zone_id            = var.availability_zone_id
  map_public_ip_on_launch  = var.map_public_ip_on_launch
  private_dns_hostname_type_on_launch = var.private_dns_hostname_type_on_launch
  enable_resource_name_dns_a_record_on_launch = var.enable_resource_name_dns_a_record_on_launch

  ipv6_native = var.ipv6_native
  assign_ipv6_address_on_creation = var.assign_ipv6_address_on_creation
  enable_dns64 = var.enable_dns64
  enable_resource_name_dns_aaaa_record_on_launch = var.enable_resource_name_dns_aaaa_record_on_launch
  ipv6_cidr_block = var.ipv6_cidr_block


  customer_owned_ipv4_pool = var.customer_owned_ipv4_pool
  map_customer_owned_ip_on_launch = var.map_customer_owned_ip_on_launch
  outpost_arn = var.outpost_arn


  tags = merge(
    {
      "Name" = var.subnet_name
    },
    var.tags,
  )
}
