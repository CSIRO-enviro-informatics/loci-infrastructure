
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default = "10.0.0.0/16"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default = "10.0.0.0/24"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
  default = "ap-southeast-2c"
}
variable "private_key_path" {
  description = "private key path"
}
variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/id_rsa.pub"
}
variable "aws_api_volume_id" {
  description = "aws api volume for certs"
  default = "" 
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-0cf31d971a3ca20d6"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Production"
}
variable "public_ip" {
  description = "public api ip"
}
