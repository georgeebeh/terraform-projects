terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_instance" "k8s_master" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.medium"
   tags = {
    Name = "k8s_master"
  }

}
resource "aws_instance" "k8s_node1" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"
   tags = {
    Name = "k8s_node1"
  }
}
resource "aws_instance" "k8s_node2" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"
   tags = {
    Name = "k8s_node2"
  }
}

