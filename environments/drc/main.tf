
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



# create subnet for all the subnetwork listed

module "add_subnet_to_network" {
   for_each = var.network_name_and_cidr
   source = "../../modules/add_subnet_to_network"
   env = "${local.env}"
   subnet_name_value = each.value.name
   subnet_ip_value = "${each.value.cidr}/${each.value.prefix}"

}


