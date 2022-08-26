module "add_subnet_to_network" {
  source  = "terraform-google-modules/network/google"
  version = "5.2.0"

  project_id   = "${var.project}"
  network_name = "${var.env}"

  subnets = [
    {
      subnet_name   = "${subnet_name_value}"
      subnet_ip     = "${subnet_ip_value}"
      subnet_region = "${var.region}"
    },
  ]

}
