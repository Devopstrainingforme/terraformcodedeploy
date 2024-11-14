resource "aws_subnet" "terrapublicsnet1" {
  count = length(var.terrapublicsnet1_cidrs)
  vpc_id = module.vpc.vpc1_id
  cidr_block = element(var.terrapublicsnet1_cidrs, count.index)

  tags = {
    Name = "terrapublicsnet1 ${count.index +1}"
  }
}

resource "aws_subnet" "terraprivatesnet1" {
  count = length(var.terraprivatesnet1_cidrs)
  vpc_id = module.vpc.vpc1_id
  cidr_block = element(var.terraprivatesnet1_cidrs, count.index)

  tags = {
    Name = "terraprivatesnet1 ${count.index +1}"
  }
}

resource "aws_internet_gateway" "terraigw1" {
 vpc_id = module.vpc.vpc1_id
 
 tags = {
   Name = "terrainstanceigw1"
 }
}

resource "aws_route_table" "terra_rt2" {
 vpc_id = module.vpc.vpc1_id
 
 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.terraigw1.id
 }
 
 tags = {
   Name = "terra route table 2"
 }
}

resource "aws_route_table_association" "terrapublicsnet1_asso" {
 count = length(var.terrapublicsnet1_cidrs)
 subnet_id      = element(aws_subnet.terrapublicsnet1[*].id, count.index)
 route_table_id = aws_route_table.terra_rt2.id
}