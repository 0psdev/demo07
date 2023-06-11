resource "azurerm_resource_group" "rsg" {
  name     = var.RSG_ID
  location = var.LOCATION_NAME
}