resource "aws_subnet" "terrainssubnet1" {
  vpc_id     = module.vpc.terravpcid
  cidr_block = var.cidr_sb1
  availability_zone = var.zone_sb1
  map_public_ip_on_launch  = true

  tags = {
    Name = "terrainssubnet1"
  }
}

resource "aws_internet_gateway" "terrainternetgw1" {
  vpc_id = module.vpc.terravpcid

  tags = {
    Name = "terrainternetgw1"
  }
}

resource "aws_route_table" "terraroutetable1" {
  vpc_id = module.vpc.terravpcid


  route {
    cidr_block = var.cidr_sb1
    gateway_id = aws_internet_gateway.terrainternetgw1.id
  }


  tags = {
    Name = "terraroutetable1"
  }
}

resource "aws_route_table_association" "terra_rt1" {
  subnet_id      = aws_subnet.terrainssubnet1.id
  route_table_id = aws_route_table.terraroutetable1.id
}