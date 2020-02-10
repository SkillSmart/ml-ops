module "storage" {
  source       = "./storage"
  project_name = var.project_name
}

module "networking" {
  source       = "./networking"
  accessip     = var.accessip
  public_cidrs = var.public_cidrs
  vpc_cidr     = var.vpc_cidr
}

module "compute" {
  source         = "./compute"
  key_name       = var.key_name
  public_key     = var.public_key_path
  instance_count = lookup(var.instance_count, var.env)
  instance_type  = lookup(var.instance_type, var.env)
  subnets        = module.networking.public_subnets
  security_group = module.networking.public_sg
  subnet_ids     = module.networking.subnet_ips
}
