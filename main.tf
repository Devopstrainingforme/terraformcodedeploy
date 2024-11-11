resource "aws_instance" "terrainstnace" {
  ami	= var.ami
  instance_type = var.instance_type

  tags = {
     Name = "tfinstance1"
  }
}

output "instance_id" {
    value = aws_instance.terrainstnace.id
}