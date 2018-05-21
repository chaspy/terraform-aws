variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
    default = "ap-northeast-1"
}
 
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}

resource "aws_vpc" "vpc-1" {
  cidr_block = "10.0.0.0/16"
  tags {
    Name = "vpc-1"
  }
}

resource "aws_instance" "web1" {
    ami           = "ami-f80e0596"
    instance_type = "t2.micro"
    monitoring    = true
    tags {
        Name = "web1"
    }
}
