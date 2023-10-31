variable "vpc_cidr" {
    description = "vpc CIDR range"
    type = string
}
variable "subnet_cidr" {
    description = "subnet CIDRs"
    type = list(string)
}