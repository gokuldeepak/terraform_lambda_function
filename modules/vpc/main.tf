resource "aws_vpc" "this" {

  cidr_block                       = var.use_ipam_pool ? null : var.cidr
  ipv4_ipam_pool_id = var.use_ipam_pool ? var.ipv4_ipam_pool_id : null
  ipv4_netmask_length = var.use_ipam_pool ? var.ipv4_netmask_length : null

  assign_generated_ipv6_cidr_block = var.enable_ipv6 && !var.use_ipam_pool ? true : null
  ipv6_cidr_block = var.enable_ipv6 && var.use_ipam_pool ? var.ipv6_cidr : null
  ipv6_ipam_pool_id = var.enable_ipv6 && var.use_ipam_pool ? var.ipv6_ipam_pool_id : null
  ipv6_netmask_length = var.enable_ipv6 && var.use_ipam_pool ? var.ipv6_netmask_length : null
  ipv6_cidr_block_network_border_group = var.enable_ipv6 && var.use_ipam_pool ? var.ipv6_cidr_block_network_border_group : null

  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  enable_network_address_usage_metrics = var.enable_network_address_usage_metrics


  tags = merge(
    { "Name" = var.vpc_name },
    var.tags,
  )
}
