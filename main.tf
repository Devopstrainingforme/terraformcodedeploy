
provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "./module/vpc"
}

module "subnets" {
  source = "./module/subnets"
}

module "security-group" {
  source = "./modules/security-group"
}

module "ec2" {
  source = "./modules/ec2"
}