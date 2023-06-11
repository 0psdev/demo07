locals {
  name   = "${var.RSG_ID}"
}
resource "azurerm_resource_group" "rsg" {
  name     = regex("^[-\\w\\._\\(\\)]+$", local.name)
  location = var.LOCATION_NAME
}