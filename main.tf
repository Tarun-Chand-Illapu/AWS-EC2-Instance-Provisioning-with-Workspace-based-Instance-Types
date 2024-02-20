provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "value"
  type = map(string)
  
  default = {
    "dev" = "t2.micro"
    "stage" = "t2.nano"
    "prod" = "t2.small"
  }
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami= var.ami
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
  
}
