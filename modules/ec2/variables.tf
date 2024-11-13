variable "imageid" {
    description = "default image id"
    type = string
    default = "ami-0866a3c8686eaeeba"
}

variable "terrasubnet1" {
    description = "subnet name"
    type = string
    default = "terra_instance_subnet1"
}

variable "terrasg1" {
    description = "security group for the instance"
    type = string
    default = "terra_instance_sg1"
}

variable "terrainstype" {
    description = "Instance type used"
    type = string
    default = "t3.micro"
}