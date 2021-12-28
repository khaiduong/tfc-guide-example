provider "aws" {
  region = var.region
}

#data "aws_ami" "ubuntu" {
#  most_recent = true
#
#  filter {
#    name   = "name"
#    values = [var.ami_lookup]
#  }
#
#  filter {
#    name   = "virtualization-type"
#    values = ["hvm"]
#  }
#
#  owners = ["099720109477"] # Canonical
#}

resource "aws_instance" "ubuntu" {
  ami           = var.ami_lookup
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
