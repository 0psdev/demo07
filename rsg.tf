
variable "RSG_ID" {
  type = string

    validation {
    condition     = can(regex("^[0-9A-Za-z]+$", var.RSG_ID))
    error_message = "The server name variable must have letters and numbers only"
  }
}
resource "azurerm_resource_group" "rsg" {
  name     = "${var.RSG_ID}"
  location = var.LOCATION_ID
}