
# Documentation can be found at https://developer.hashicorp.com/terraform/language/providers

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.52"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
  }
}

# Ensure Environment variable are defined in WORKSPACE-level instead VARIALE SET
provider "azurerm" {
  features {}
}


/*
provider "azurerm" {
  alias           = "pe"
  subscription_id = "69c61c9e-64c4-41d0-acce-4765b7ce5d1d"
  features {}
}
*/