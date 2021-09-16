##main.tf

provider "azurerm" {
  features {}
}


module "azure-region" {
  source  = "claranet/regions/azurerm"
  version = "4.1.1"
  azure_region = "aus-east"
}

module "resourcegroup" {
  source  = "claranet/rg/azurerm"
  version = "5.0.1"

  location    = module.azure-region.location
  client_name = "yulei"
  environment = "demo"
  stack       = "vault"
}