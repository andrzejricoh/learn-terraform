resource "random_string" "main" {
  length  = 6
  upper   = false
  special = false
}

locals {
  prefix = "${replace(var.prefix, "/-*$/", "")}-${basename(abspath(path.root))}-${random_string.main.result}-"
}

resource "azurerm_resource_group" "this" {
  name     = "${local.prefix}rg"
  location = var.region
  tags     = merge(var.tags, { note = "test" })
}

resource "azurerm_virtual_network" "this" {
  name                = "${local.prefix}vnet"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = [var.cidr]
  tags                = merge(var.tags, { note = "test" })
}

resource "azurerm_subnet" "this" {
  name                 = "${local.prefix}subnet"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [var.cidr]
}
