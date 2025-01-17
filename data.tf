data "azurerm_storage_account" "existing" {
  name                = var.existing_storage_account_name
  resource_group_name = var.existing_storage_account_resource_group
}