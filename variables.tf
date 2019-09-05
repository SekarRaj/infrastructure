# main module
variable "region" {
  type        = "string"
  description = "AWS Region for the infrastructure components"
}

variable "environment" {
  type        = "string"
  description = "Environment of the infrastructure. E.g. dev, staging, prod etc."
}

# network module
variable "vpc_cidr" {
  type        = "string"
  description = "CIDR block range for VPC"
}
