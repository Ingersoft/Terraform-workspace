# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "azurerm_resource_group" "this" {
  location = "eastus2"
  name     = "LEARN-TERRAFORM-GITHUB"
  tags     = {}
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-ingersoft"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "default"
    address_prefix = "10.0.1.0/24"
  }
  tags = {
    environment = "Production"
  }
}

resource "azurerm_subnet" "snet_app" {
  name                 = "application"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "snet_dba" {
  name                 = "database"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.3.0/24"]
}