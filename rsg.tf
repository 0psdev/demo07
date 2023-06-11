resource "azurerm_resource_group" "rsg" {
  name     = regex("^[-\\w\\._\\(\\)]+$",substr("RSG-${var.RSG_ID}", 80))
  location = "${var.LOCATION_NAME}"
}