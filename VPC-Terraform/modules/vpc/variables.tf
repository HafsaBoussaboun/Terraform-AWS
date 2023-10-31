variable "vpc_cidr" {
    description = "vpc CIDR range"
    type = string
}


variable "subnet_cidr" {
    description = "subnet CIDRs"
    type = list(string)
}

variable "subnet_names" {
    description = "subnet names"
    type = list(string)
    default = ["PublicSubnet1", "PublicSubnet2"]
}