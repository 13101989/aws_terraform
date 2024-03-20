module "security_group" {
  source = "./modules/security-group"

  ssh_access_cidr = var.ssh_access_cidr
  web_access_cidr = var.web_access_cidr
}

module "key_pair" {
  source = "./modules/key-pair"

  key_name = var.key_name
}

module "ec2_instance" {
  source = "./modules/ec2-instance"

  instance_type   = var.instance_type
  ami_id          = var.ami_id
  key_name        = module.key_pair.key_name
  security_groups = [module.security_group.security_group_name]
}


output "private_key" {
  value     = module.key_pair.private_key
  sensitive = true
}