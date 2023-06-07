resource "azurerm_resource_group" "rsg" {
  name     = var.RG_ID
  location = var.LOCATION_ID
}