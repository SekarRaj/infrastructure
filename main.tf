resource "aws_key_pair" "aws_admin" {
  key_name   = "aws_admin"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDY48KwhT7KGCRX3wgjZon8ukq+sT84pwbdxUT5g6QE88V9ySjFMtqcSxhsqQqkBlMG8PiwRta9GRPz1fLYwaEdIauiV4J5rzfog3nEOXB5G0Yle7IRD7koYQyV68R2XdS/7xYq0lrlPa/x4G3nicI2i2EGT+Uuz3+KiX/NtC07RifIn65CEuNIeYrsFPcvrVG8gCXYh9X3lE74nLntgMHoxqM0OqRGnKkDzZHmLhSrRhetg/2a0fPV3S9qTNWRQUAkhGWVpYQPSKE8nx3h6HlGNRXz6XL5qtBTZvy8B8gRriQCzG1jZ2Wx2VNDPDgX78cafxn6Lpzo9pE6+RmjgKjb"
}

# module "network" {
#   source = "./modules/network"
#
#   vpc_cidr             = "${var.vpc_cidr}"
#   environment          = "${var.environment}"
#   public_subnet_cidrs  = "${var.public_subnet_cidrs}"
#   private_subnet_cidrs = "${var.private_subnet_cidrs}"
#   availability_zones   = "${var.availability_zones}"
# }
#
# module "bastion" {
#   source = "./modules/bastion"
#
#   environment       = "${var.environment}"
#   image             = "${var.bastion_ami_id}"
#   key_name          = "${aws_key_pair.aws_admin.key_name}"
#   instance_type     = "${var.bastion_instance_type}"
#   public_subnet_ids = "${module.network.public_subnet_ids}"
#   vpc_id            = "${module.network.vpc_id}"
# }
#
# module "devops" {
#   source = "./modules/devops"
#
#   name               = "jenkins"
#   environment        = "${var.environment}"
#   image              = "${var.jenkins_ami_id}"
#   key_name           = "${aws_key_pair.aws_admin.key_name}"
#   instance_type      = "${var.bastion_instance_type}"
#   private_subnet_ids = "${module.network.private_subnet_ids}"
#   public_subnet_ids  = "${module.network.public_subnet_ids}"
#   vpc_id             = "${module.network.vpc_id}"
# }
