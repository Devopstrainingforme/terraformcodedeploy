
provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "subnets" {
  source = "./modules/subnets"
}

module "security-group" {
  source = "./modules/security-group"
}

module "ec2" {
  source = "./modules/ec2"
}