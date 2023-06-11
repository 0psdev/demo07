resource "azurerm_resource_group" "rsg" {
  name     = "${var.RSG_NAME}"
  location = "${var.LOCATION_NAME}"
}