resource "aws_vpc" "terrainstacevpc1" {
  cidr_block = var.cidr
  
  tags = {
    Name = "terrainstancevpc1"
  }
}
