variable "region" {
  type        = string
  description = "AWS Region"
  default     = "ap-south-1"
}

variable "vpc_CIDRblock" {
  description = "CIDR block for VPC"
  default     = "10.20.0.0/16"
}

variable "instance_tenancy" {
  description = "Tenancy of instance" # Keep it default to save cost.
  default     = "default"
}

variable "subnet_CIDRblock" {
  description = "CIDR block for subnet"
  default     = "10.20.1.0/24"
}

variable "availability_Zone" {
  description = "availability zone"
  default     = "ap-south-1a"
}

variable "instance_size" {
  description = "Instance Size"
  default     = "t2.micro"
}

# variable "private_ip" {
#   description = "Instance's private ip"
#   default = "10.20.1.100"
# }