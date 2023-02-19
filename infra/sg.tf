module "sg" {
  source = "../modules/sg"
  vpc_id = module.vpc.id
  security_group_name = var.sg_name
  name = var.sg_name
  ingress = var.ingress
  egress = var.egress
  tags = {}
}
