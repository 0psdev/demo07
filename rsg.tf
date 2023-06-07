resource "azurerm_resource_group" "rsg" {
  name     = var.RG_NAME
  location = var.LOCATION_NAME
}