resource "aws_security_group" "alb_sec_group" {
  name        = "${var.environment}_devops_sec_group"
  description = "Used in ${var.environment}"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_launch_configuration" "launch_config" {
  name          = "${var.environment}_launch_config"
  key_name      = "${var.key_name}"
  image_id      = "${var.image}"
  instance_type = "${var.instance_type}"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_lb" "alb" {
  name               = "${var.environment}-${var.name}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.alb_sec_group.id}"]
  subnets            = "${var.public_subnet_ids}"

  tags = {
    Environment = "${var.environment}"
  }
}

resource "aws_lb_target_group" "alb_target_group" {
  name = "alb-target-group"

  port     = 80
  protocol = "HTTP"
  vpc_id   = "${var.vpc_id}"

  tags = {
    name = "${var.environment}_${var.name}_alb_target_group"
  }

  stickiness {
    type            = "lb_cookie"
    cookie_duration = 1800
    enabled         = true
  }

  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 10
    timeout             = 5
    interval            = 10
    path                = "/"
    port                = 80
  }
}

resource "aws_autoscaling_group" "autoscale_group" {
  launch_configuration = "${aws_launch_configuration.launch_config.id}"
  vpc_zone_identifier  = "${var.private_subnet_ids}"
  # load_balancers       = ["${aws_lb.alb.name}"]

  # target_group_arns = ["${aws_alb_target_group.alb_target_group.arn}"]
  min_size          = 3
  max_size          = 3

  tag {
    key                 = "Name"
    value               = "autoscale"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_attachment" "alb_autoscale" {
  alb_target_group_arn   = "${aws_lb_target_group.alb_target_group.arn}"
  autoscaling_group_name = "${aws_autoscaling_group.autoscale_group.id}"
}

resource "aws_lb_listener" "aws_lb_listener" {
  load_balancer_arn = "${aws_lb.alb.arn}"
  port              = 80
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_lb_target_group.alb_target_group.arn}"
    type             = "forward"
  }
}
