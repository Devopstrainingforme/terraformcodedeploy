variable "imageid" {
    description = "default image id"
    type = string
}

variable "instance_name" {
    description = "Instance name used"
    type = string
}

variable "terrasubnet1" {
    description = "subnet name"
    type = string
}

variable "terrasg1" {
    description = "security group for the instance"
    type = string
}

variable "terrainstype" {
    description = "Instance type used"
    type = string
}