terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.58.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.SUB_ID
  tenant_id       = var.TENANT_ID
}
