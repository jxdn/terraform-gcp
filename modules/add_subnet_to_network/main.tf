resource "google_compute_subnetwork" "new_subnetwork" {
  name          = "${var.subnet_name_value}"
  network       = "${var.env}"
  ip_cidr_range = "${var.subnet_ip_value}"
}