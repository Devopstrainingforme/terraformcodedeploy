provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./modules/ec2"
}

module "security_group" {
  source = "./modules/security_group"
}

module "subnet" {
  source = "./modules/subnet"
}

module "vpc" {
  source = "./modules/vpc"
}