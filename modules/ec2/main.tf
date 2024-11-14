module "security_group" {
  source = "./modules/security_group"
}

module "subnet" {
  source = "./modules/subnet"
}

resource "aws_instance" "terraserver1" {
  ami = var.imageid
  instance_type = var.terrainstype
  subnet_id = module.subnet.terraprivatesnet1_id
  vpc_security_group_ids = module.security_group.terrasecgroup1_id

  tags = {
    name = "terraserver1"
  }
}