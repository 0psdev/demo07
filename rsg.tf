resource "azurerm_resource_group" "rsg" {
  name     = regex("^[-\\w\\._\\(\\)]+$", var.RSG_ID)
  location = var.LOCATION_NAME
}