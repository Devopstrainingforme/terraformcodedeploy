resource "aws_instance" "terraserver1" {
    ami = var.imageid
    #subnet_id = module.subnets.subnetid
    #vpc_security_group_ids = module.security-group.terrasg1_name
    instance_type = var.terrainstype

root_block_device {
    volume_size = 16
    volume_type = "gp2"
}

tags = {
    name = "terraserver1"
}
}