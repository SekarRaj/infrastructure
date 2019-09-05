module "network" {
  source = "./modules/network"

  vpc_cidr             = "${var.vpc_cidr}"
  environment          = "${var.environment}"
  public_subnet_cidrs  = "${var.public_subnet_cidrs}"
  private_subnet_cidrs = "${var.private_subnet_cidrs}"
  availability_zones   = "${var.availability_zones}"
}
