module "data-lake" {
  source = "./modules/storage/datalake"
  providers = {
    aws = "aws.euw2"
  }

  # Definition for instream storage

  #Definition for archival storage
}

module "backend-servers" {
  source = "./modules/compute/backend-servers"

  name          = "backend-first"
  region        = "europe-west-2"
  instance_type = "t2.micro"
  min_workers   = 1
  max_workers   = 3
}

module "frontend-servers" {
  source        = "./modules/compute/frontend-servers"
  name          = "frontend-group"
  instance_type = "t2.micro"
  region        = "europe-west-2"

  min_workers = 1
  max_workers = 2
}

module "vpc-public" {
  source = "./modules/network/"
}
