variable "terrapublicsnet1_cidrs" {
  type = list(string)
  description = "Public subnet cidrs"
  default = "10.0.1.0/24"
}

variable "terraprivatesnet1_cidrs" {
  type = list(string)
  description = "Private subnet cidrs"
  default = "10.0.3.0/24"
}

variable "terra1_azs" {
 type        = list(string)
 description = "Availability Zones"
 default     = "us-east-1a"
}