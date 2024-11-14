module "security_group" {
  source = "../security_group"
}

module "subnet" {
  source = "../subnet"
}

resource "aws_instance" "terraserver1" {
  ami = var.imageid
  instance_type = var.terrainstype
  subnet_id = module.subnet.terrapublicsnet1_id[0].id
  vpc_security_group_ids = module.security_group.terrasecgroup1_id

  tags = {
    name = "terraserver1"
  }
}