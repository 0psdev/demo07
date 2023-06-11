resource "azurerm_resource_group" "rsg" {
  name     = regex("^[-\\w\\._\\(\\)]+$", substr("rg-${var.RSG_NAME}", 90))
  location = "${var.LOCATION_NAME}"
}