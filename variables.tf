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

# bastion
variable "bastion_instance_type" {
  type        = "string"
  description = "Instance type for bastion host. e.g t2.mirco"
}

variable "bastion_ami_id" {
  type        = "string"
  description = "AMI id for the bastion host"
}

#jenkins
variable "jenkins_ami_id" {
  type = "string"
  description = "Custom built jenkins image"
}
