resource "azurerm_resource_group" "rsg" {
  name     = can(regex("^[-\\w\\._\\(\\)]+$", var.RSG_ID))
  location = "${var.LOCATION_NAME}"
}