module "vpc" {
  source = "../vpc"

  cidr        = "${var.vpc_cidr}"
  environment = "${var.environment}"
}

module "private_subnet" {
  source = "../subnet"

  name               = "${var.environment}_private_subnet"
  environment        = "${var.environment}"
  vpc_id             = "${module.vpc.id}"
  cidrs              = "${var.private_subnet_cidrs}"
  availability_zones = "${var.availability_zones}"
}

module "public_subnet" {
  source = "../subnet"

  name               = "${var.environment}_public_subnet"
  environment        = "${var.environment}"
  vpc_id             = "${module.vpc.id}"
  cidrs              = "${var.public_subnet_cidrs}"
  availability_zones = "${var.availability_zones}"
}

module "nat" {
  source = "../nat"

  subnet_ids   = "${module.public_subnet.ids}"
  subnet_count = "${length(var.public_subnet_cidrs)}"
}

resource "aws_route" "pub_igw_route" {
  count                  = "${length(var.public_subnet_cidrs)}"
  route_table_id         = "${element(module.public_subnet.route_table_ids, count.index)}"
  gateway_id             = "${module.vpc.inet_gateway_id}"
  destination_cidr_block = "${var.destination_cidr_block}"
}

resource "aws_route" "pvt_nat_route" {
  count                  = "${length(var.private_subnet_cidrs)}"
  route_table_id         = "${element(module.private_subnet.route_table_ids, count.index)}"
  nat_gateway_id         = "${element(module.nat.ids, count.index)}"
  destination_cidr_block = "${var.destination_cidr_block}"
}
