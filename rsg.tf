resource "azurerm_resource_group" "rsg" {
  name     = regex("^[-\\w\\._\\(\\)]+$",substr("${var.RSG_ID}", 90))
  location = var.LOCATION_ID
}