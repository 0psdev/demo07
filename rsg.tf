locals {
  RG_NAME = "${var.RSG_ID}"
}
resource "azurerm_resource_group" "rsg" {
  name     = local.RG_NAME
  location = var.LOCATION_ID
}