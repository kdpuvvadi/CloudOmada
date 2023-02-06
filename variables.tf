variable "region" {
  type        = string
  description = "AWS Region"
}

variable "vpc_CIDRblock" {
  type        = string
  description = "CIDR block for VPC"
}

variable "instance_tenancy" {
  type        = string
  description = "Tenancy of instance" # Keep it default to save cost.
}

variable "subnet_CIDRblock" {
  type        = string
  description = "CIDR block for subnet"
}

variable "availability_Zone" {
  type        = string
  description = "availability zone"
}

variable "instance_size" {
  type        = string
  description = "Instance Size"
}
