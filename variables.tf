variable "region" {
  type        = string
  description = "Azure Region"
  default     = "westeurope"
}

variable "prefix" {
  type        = string
  description = "Unique project prefix"
  default     = "testpfx-"
}

variable "tags" {
  type        = map(string)
  description = "Common resource tags"
  default = {
    environment = "dev"
  }
}

variable "cidr" {
  type        = string
  description = "VNET CIDR"
}


# variable "secret_key" {
#   type        = string
#   sensitive   = true
#   description = "Secret key"
# }
