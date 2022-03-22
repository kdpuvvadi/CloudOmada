variable "region" {
  type        = string
  description = "AWS Region"
}

variable "vpc_CIDRblock" {
  description = "CIDR block for VPC"
}

variable "instance_tenancy" {
  description = "Tenancy of instance" # Keep it default to save cost.
}

variable "subnet_CIDRblock" {
  description = "CIDR block for subnet"
}

variable "availability_Zone" {
  description = "availability zone"
}

variable "instance_size" {
  description = "Instance Size"
}
