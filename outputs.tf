output "nework" {
  value = {
    rg            = azurerm_resource_group.this.name
    vnet          = azurerm_virtual_network.this.name
    subnet        = azurerm_subnet.this.name
    address_space = azurerm_subnet.this.address_prefixes[0]
  }
}
# output "root_path" {
#   value = {
#     relpath  = path.root
#     abspath  = abspath(path.root)
#     basename = basename(abspath(path.root))
#     dirname  = dirname(abspath(path.root))
#   }
# }
