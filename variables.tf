variable "SUB_ID" {
  type = string
}

variable "TENANT_ID" {
  type = string
}

variable "RSG_ID" {
  type = string

  validation {
    condition     = can(regex("^[0-9A-Za-z]+$", var.RG_ID))
    error_message = "The server name variable must have letters and numbers only"
  }
}

variable "LOCATION_ID" {
  type = string
}
