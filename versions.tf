##Add your terraform core and provider version constrains here.
terraform {
  required_version = ">= 1.0"
  required_providers {
    azurecaf = {
      source = "aztfmod/azurecaf"
      version = "~>1.2.0"
    }
    azurerm = ">= 1.32"
  }

}
