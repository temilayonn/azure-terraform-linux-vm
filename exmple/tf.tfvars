subscription_id                         = "cdb86c28-2b81-4473-ab96-424a8ca168c5"
tenant_id                               = "0a4b2f2a-813b-41a0-9836-42e0da1f4eb7"
client_id                               = "231f4c72-e0dc-4bc0-b581-9dbafb9ee519"
prefix                                  = "example"
resource_group_name                     = "rg-9007-setup"
resource_group_location                 = "centralus"
existing_storage_account_id             = "/subscriptions/cdb86c28-2b81-4473-ab96-424a8ca168c5/resourceGroups/rg-9007-setup/providers/Microsoft.Storage/storageAccounts/testhqtrssa"
existing_storage_account_name           = "testhqtrssa"
existing_storage_account_resource_group = "rg-9007-setup"

boot_diagnostics = true

vm_names = [
  "vm1",
  # "vm2",
  #  "vm3"
]

vm_sizes = {
  vm1 = "Standard_DS1_v2"
  #   vm2 = "Standard_DS2_v2"
  #   vm3 = "Standard_DS3_v2"
}



os_profile_admin_password = "P@ssw0rd!"
os_profile_admin_username = "adminuser"
os_profile_computer_name  = "example-vm"

storage_os_disk_name              = "example-vm-osdisk"
storage_image_reference_offer     = "UbuntuServer"
storage_image_reference_publisher = "Canonical"
storage_image_reference_sku       = "18.04-LTS"
storage_image_reference_version   = "latest"
storage_os_disk_caching           = "ReadWrite"
storage_os_disk_create_option     = "FromImage"
storage_os_disk_managed_disk_type = "Standard_LRS"

ip_configuration_name  = "example-vm-ipconfig"
network_interface_name = "example-vm-nic"
vnet_name              = "vnet-9007-01-centralus"
subnet_name            = "subnet-01"
subnet_id              = "/subscriptions/cdb86c28-2b81-4473-ab96-424a8ca168c5/resourceGroups/rg-9007-network-centralus/providers/Microsoft.Network/virtualNetworks/vnet-9007-01-centralus/subnets/subnet-01"
nsg_name               = "example-vm-nsg"
