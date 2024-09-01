
data "azurerm_subnet" "existing_subnet" {
  count               = var.number_of_vms
  name                = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name = var.vnet_resource_group_name
}

# Data source for virtual network (if needed for other purposes)
data "azurerm_virtual_network" "existing_vnet" {
  name                = var.vnet_name
  resource_group_name = var.vnet_resource_group_name
}