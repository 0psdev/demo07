variable "SUB_ID" {
  type = string
}

variable "TENANT_ID" {
  type = string
}

variable "RSG_ID" {
  type = string

  validation {
    condition     = can(regex(["^([a-zA-Z])[a-zA-Z0-9-_]*$"], var.RSG_ID))
    error_message = "Err: valid cloud options are: 'azure', 'aws', 'gcp'."
  }
}

variable "LOCATION_ID" {
  type = string
}
