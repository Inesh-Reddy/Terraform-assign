locals {
  production_availability_zones = ["${var.region}a", "${var.region}b", "${var.region}c"]
}


module "networking" {
  source = "./modules/networking/"

  region               = "${var.region}"
  environment          = "${var.environment}"
  vpc_cidr             = "${var.vpc_cidr}"
  public_subnets_cidr  = "${var.public_subnets_cidr}"
  private_subnets_cidr = "${var.private_subnets_cidr}"
  availability_zones   = "${local.production_availability_zones}"
}


module "create-server" {
  source = "./modules/create-server"
  public_ids = "${module.networking.public_subnets_id}"
  vpc_security_group_ids = module.networking.default_sg_pub_id
}

module "create-database" {
  source = "./modules/create-db"
  db_subnet_group_name = module.networking.output_rds_db_subnet_ids
  vpc_security_group_ids = module.networking.default_sg_pri_id
  


}

module "pick-endpoint"{
  source = "./modules/pick-endpoint"
  rds_endpoint = module.create-database.output_rds_endpoint
}
