resource "aws_vpc" "terrainstancevpc1" {
  cidr_block = var.cidr
  
  tags = {
    Name = "terrainstancevpc1"
  }
}
