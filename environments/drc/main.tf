
#define environment
locals {
  ##used for vpc name

  env = "drc"

}

##define provider and region
provider "google" {
  project = "${var.project}"
  region = "${var.region}"
}

#create vpc with default subnet
module "vpc" {
  source  = "../../modules/vpc"
  project = "${var.project}"
  env     = "${local.env}"
  region  = "${var.region}"
}


# create subnet work for 172.31.100.0/24
module "add_subnet_to_network" {
   source = "../../modules/add_subnet_to_network"
   project = "${var.project}"
   env = "${local.env}"
   region = "${var.region}"
   subnet_name_value = "test"
   subnet_ip_value = "172.31.100.0/24"
}



