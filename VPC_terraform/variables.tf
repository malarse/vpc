variable "ami" {
  default = "ami-05bfbece1ed5beb54"
}
variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "Jan_04_key"
}
# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
# Defining CIDR Block for Subnet
variable "subnet_cidr" {
  default = "10.0.1.0/24"
}
# Defining CIDR Block for 2d Subnet
variable "subnet1_cidr" {
  default = "10.0.2.0/24"
}

