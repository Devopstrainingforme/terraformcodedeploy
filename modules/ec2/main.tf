resource "aws_instance" "terraserver1" {
    ami = var.imageid
    instance_type = var.terrainstype

tags = {
    name = "terraserver1"
}
}