

locals {
  env = "drc"
}

provider "google" {
  project = "${var.project}"
  region = "${var.region}"
}

module "vpc" {
  source  = "../../modules/vpc"
  project = "${var.project}"
  env     = "${local.env}"
  region  = "${var.region}"
}