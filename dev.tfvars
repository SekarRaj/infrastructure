region = "ap-south-1"

availability_zones = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

vpc_cidr = "10.0.0.0/16"

environment = "dev"

public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]

# bastion
bastion_instance_type = "t2.micro"

bastion_ami_id = "ami-0cb0e70f44e1a4bb5"
