resource "aws_security_group" "this" {
  name = var.name
  vpc_id = var.vpc_id
  description = var.description

  dynamic "ingress" {
    for_each = var.ingress
    content {
      description      = ingress.value["description"] == "" ? null : ingress.value["description"]
      from_port        = ingress.value["from_port"]
      to_port          = ingress.value["to_port"]
      protocol         = ingress.value["protocol"]
      cidr_blocks      = ingress.value["cidr_blocks"] == "" ? null : ingress.value["cidr_blocks"]
      ipv6_cidr_blocks = ingress.value["ipv6_cidr_blocks"] == "" ? null : ingress.value["ipv6_cidr_blocks"]
      prefix_list_ids  = ingress.value["prefix_list_ids"] == [] ? null : ingress.value["prefix_list_ids"]
      security_groups  = ingress.value["security_groups"] == [] ? null : ingress.value["security_groups"]
      self             = ingress.value["self"] == false ? false : true
    }
  }

  dynamic "egress" {
    for_each = var.egress
    content {
      description      = lookup(egress.value, "description", null)
      from_port        = egress.value["from_port"]
      to_port          = egress.value["to_port"]
      protocol         = lookup(egress.value, "protocol", null)
      cidr_blocks      = lookup(egress.value, "cidr_blocks", null)
      ipv6_cidr_blocks = lookup(egress.value, "ipv6_cidr_blocks", null)
      security_groups  = lookup(egress.value, "security_groups", null)
      self             = lookup(egress.value, "self", null)
    }
  }

  tags = merge(
    { 
      "Name" = var.security_group_name
    },
    var.tags,
  )
  }
