variable "cidr_sb1" {
  description = "This is the subnet-1 cidr range"
  type = string
  default = "10.0.0.0/26"
}

variable "zone_sb1" {
  description = "This is the zone of subnet-1"
  type = string
  default = "us-east-1"
}

variable "subnetid" {
  default = "This is the name of the subnet-1"
  type = string
}