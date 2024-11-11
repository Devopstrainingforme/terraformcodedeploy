resource "aws_instance" "tfdeploy1" {
  ami	= "ami-0866a3c8686eaeeba"
  instance_type = "t3.micro"

  tags = {
     Name = "codedeployvm1"
  }
}