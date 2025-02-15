module "ubuntu-vm-password-auth" {
  source = "git@ssh.dev.azure.com:v3/SensiaGlobal/sensia-cloud-terraform/sensia-azure-lin-vm?ref=feature/mods"

  ip_configuration_name                   = var.ip_configuration_name
  network_interface_name                  = var.network_interface_name
  os_profile_admin_password               = var.os_profile_admin_password
  os_profile_admin_username               = var.os_profile_admin_username
  os_profile_computer_name                = var.os_profile_computer_name
  resource_group_location                 = var.resource_group_location
  resource_group_name                     = var.resource_group_name
  storage_image_reference_offer           = var.storage_image_reference_offer
  storage_image_reference_publisher       = var.storage_image_reference_publisher
  storage_image_reference_sku             = var.storage_image_reference_sku
  storage_image_reference_version         = var.storage_image_reference_version
  storage_os_disk_caching                 = var.storage_os_disk_caching
  storage_os_disk_create_option           = var.storage_os_disk_create_option
  storage_os_disk_managed_disk_type       = var.storage_os_disk_managed_disk_type
  storage_os_disk_name                    = var.storage_os_disk_name
  subnet_name                             = var.subnet_name
  vm_names                                = var.vm_names
  vm_sizes                                = var.vm_sizes
  vnet_name                               = var.vnet_name
  subnet_id                               = var.subnet_id
  nsg_name                                = var.nsg_name
  existing_storage_account_name           = var.existing_storage_account_name
  existing_storage_account_resource_group = var.existing_storage_account_resource_group


}
