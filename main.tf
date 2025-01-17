resource "azurerm_network_interface" "public" {
  for_each           = toset(var.vm_names)
  name               = "${each.key}-nic"
  location           = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${each.key}-ip-config"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public[each.key].id
  }
}

resource "azurerm_virtual_machine" "public" {
  for_each            = toset(var.vm_names)
  name                = each.key
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.public[each.key].id]
  vm_size             = lookup(var.vm_sizes, each.key, "Standard_DS1_v2")

  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = var.storage_image_reference_publisher
    offer     = var.storage_image_reference_offer
    sku       = var.storage_image_reference_sku
    version   = var.storage_image_reference_version
  }

  storage_os_disk {
    name              = "${each.key}-os-disk"
    caching           = var.storage_os_disk_caching
    create_option     = var.storage_os_disk_create_option
    managed_disk_type = var.storage_os_disk_managed_disk_type
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  os_profile {
    computer_name  = each.key
    admin_username = var.os_profile_admin_username
    admin_password = var.os_profile_admin_password
  }

  boot_diagnostics {
    enabled     = var.boot_diagnostics
    storage_uri = var.boot_diagnostics && var.existing_storage_account_id != null ? data.azurerm_storage_account.existing.primary_blob_endpoint : ""
  }
}

