# Global
variable "region" {
  type        = "string"
  description = "AWS Region for the infrastructure components"
}

variable "environment" {
  type        = "string"
  description = "Environment of the infrastructure. E.g. dev, staging, prod etc."
}

variable "availability_zones" {
  type        = "list"
  description = "Availability zones within the region."
}

# network module
variable "vpc_cidr" {
  type        = "string"
  description = "CIDR block range for VPC"
}

variable "public_subnet_cidrs" {
  type        = "list"
  description = "Public subnet CIDR blocks"
}

variable "private_subnet_cidrs" {
  type        = "list"
  description = "Private subnet CIDR blocks"
}
