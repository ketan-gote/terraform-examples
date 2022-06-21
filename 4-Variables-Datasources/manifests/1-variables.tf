variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 Instnace Type"
  type = string
  default = "t2.micro"
}

variable "instance_keypair" {
  description = "Key pair to be associated to EC2 instance"
  type = string
  default = "terraform-demo"
}

