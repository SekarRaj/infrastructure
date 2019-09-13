resource "aws_security_group" "securityGroup" {
  name        = "${var.environment}_bastion_security_group"
  description = "Used in ${var.environment}"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"
    self      = true
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Environment = "${var.environment}"
  }
}

resource "aws_instance" "bastion" {
  ami                         = "${var.image}"
  associate_public_ip_address = true
  key_name                    = "${var.key_name}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${element(var.public_subnet_ids, 1)}"

  vpc_security_group_ids = ["${aws_security_group.securityGroup.id}"]
}
