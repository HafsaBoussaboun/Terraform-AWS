module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
}
module "sg" {
    source = "./modules/SG"
    vpc_id = module.vpc.vpc_id
}

module "ec2" {
    source = "./modules/ec2"
    sg_id = module.sg.sg
    subnets = module.vpc.subnet_ids
}

module "loadBalancer" {
    source = "./modules/loadBalancer"
    sg_id = module.sg.sg
    subnets = module.vpc.subnet_ids
    vpc_id = module.vpc.vpc_id
    instances = module.ec2.instances
}