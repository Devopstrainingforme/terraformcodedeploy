variable "terrapublicsnet1_cidrs" {
  type = string
  description = "Public subnet cidrs"
  default = "10.0.1.0/24"
}

variable "terraprivatesnet1_cidrs" {
  type = string
  description = "Private subnet cidrs"
  default = "10.0.2.0/24"
}

variable "terra1_azs" {
  type = string
  description = "Availability Zones"
  default     = "us-east-1a"
}