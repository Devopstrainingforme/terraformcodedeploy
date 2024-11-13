resource "aws_security_group" "terrasecuritygroup1" {
  name = "allow_ports"
  vpc_id = module.vpc.vpc_id

ingress {
    description = "Allowing port for ssh connection"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}  

egress {
    description = "Allowing outbound traffic"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

tags {
    Name = "terrasecuritygroup1"
}
}