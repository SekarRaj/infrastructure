resource "aws_vpc" "vpc" {
  cidr_block           = "${var.cidr}"
  enable_dns_hostnames = true


  tags = {
    Name        = "${var.environment}_vpc"
    Environment = "${var.environment}"
  }
}

resource "aws_internet_gateway" "inet_gateway" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags = {
    Name        = "${var.environment}_vpc_inet_gateway"
    Environment = "${var.environment}"
  }
}
