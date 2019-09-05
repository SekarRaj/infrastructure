resource "aws_eip" "eip" {
  vpc   = true
  count = "${var.subnet_count}"
}

resource "aws_nat_gateway" "nat" {
  count         = "${var.subnet_count}"
  allocation_id = "${element(aws_eip.eip.*.id, count.index)}"
  subnet_id     = "${element(var.subnet_ids, count.index)}"
}
