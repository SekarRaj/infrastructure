output "id" {
  value = "${aws_vpc.vpc.id}"
}

output "cidr_block" {
  value = "${aws_vpc.vpc.cidr_block}"
}

output "inet_gateway_id" {
  value = "${aws_internet_gateway.inet_gateway.id}"
}
