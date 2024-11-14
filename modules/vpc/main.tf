resource "aws_vpc" "terravpc1" {
 cidr_block = var.vpccidr1
 
 tags = {
   Name = "terraproject1-vpc"
 }
}