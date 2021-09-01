# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.74.0"
    }
  }

  backend "remote" {
    organization = "laxmimanoj"
    workspaces {
      name = "tf-azure-learn"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "southcentralus"
  tags = { "CreatedBy" = "Manoj",
    "ProvisionedBy" = "Terraform",
  "Environment" = "Test" }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "manojhashivnet1"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  tags = { "CreatedBy" = "Manoj",
  "ProvisionedBy" = "Terraform" }
}

