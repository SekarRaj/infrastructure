variable "vpc_cidr" {}

variable "environment" {}

variable "public_subnet_cidrs" {}

variable "private_subnet_cidrs" {}

variable "availability_zones" {}

variable "destination_cidr_block" {
  default     = "0.0.0.0/0"
  description = "Specify all traffic to be routed either trough Internet Gateway or NAT to access the internet"
}
