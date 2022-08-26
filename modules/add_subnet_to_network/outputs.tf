
output "network" {
  value = "${module.add_subnet_to_network.network_name}"
}

output "subnet" {
  value = "${element(module.add_subnet_to_network.subnets_names, 0)}"
}
