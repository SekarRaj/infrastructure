resource "aws_vpc" "devops" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true


  tags = {
    Name        = "${var.environment}-vpc"
    Environment = "${var.environment}"
  }
}

resource "aws_internet_gateway" "inet_gateway" {
  vpc_id = "${aws_vpc.devops.id}"

  tags = {
    Name        = "${var.environment}-inet-gateway"
    Environment = "${var.environment}"
  }
}
