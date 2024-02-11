# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
/*
output "domain_name" {
  description = "Public DNS name of the EC2 instance."
  value       = aws_instance.web.public_dns
}

output "application_url" {
  description = "URL of the example application."
  value       = "${aws_instance.web.public_dns}/index.php"
}
*/

output "resource_group_name" {
  description = "The name of the created resource group."
  value       = azurerm_resource_group.this.name
}

output "virtual_network_name" {
  description = "The name of the created virtual network."
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_name_1" {
  description = "The name of the created subnet 1."
  value       = azurerm_subnet.snet_app.name
}

output "subnet_name_2" {
  description = "The name of the created subnet 2."
  value       = azurerm_subnet.snet_dba.name
}