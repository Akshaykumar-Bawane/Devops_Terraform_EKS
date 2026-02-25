module "eks" {

  source = "./modules/eks"

  cluster_name       = local.name
  cluster_version    = "1.29"
  vpc_id             = module.vpc.vpc_id
  subnet_ids         = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
}