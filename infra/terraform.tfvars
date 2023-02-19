#S3 Bucket
s3_bucket_name = "gokuldeepak001"
s3_acl = "private"
s3_version_enabled = true

#VPC
vpc_name = "VPC_Name"
vpc_ip_range = "10.0.0.0/16"
vpc_tags = {
        Business_Unit = ""
        Environment = "Dev"
    }


public_subnet_name = ["Public-Subnet"]
public_subnet_ip_range = ["10.0.0.0/24"]
public_subnet_azs = ["us-east-1a"]


private_subnet_name = ["Private-Subnet"]
private_subnet_ip_range = ["10.0.1.0/24"] 
private_subnet_azs = ["us-east-1a"]


#SG
sg_name = "SG_Name"
ingress = [
    {
        description ="Terraform Managed SG all ports for same SG"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = []
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        security_groups = []
        self = true
    }
    ]

egress = [{
    description = "Terraform Managed SG all ports to internet"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    self = false
   }]
