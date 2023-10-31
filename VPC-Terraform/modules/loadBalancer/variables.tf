variable "sg_id" {
  description = "SG id for Load Balancer Application"
  type = string
}

variable "subnets" {
  description = "subnets for Load Balancer Application"
  type = list(string)
}


variable "vpc_id" {
  description = "vpc for tg"
  type = string
}

variable "instances" {
  description = "instance id  for tga"
  type = list(string)
}