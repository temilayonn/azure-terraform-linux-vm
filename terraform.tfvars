number_of_vms            = 2
resource_group_name      = "rg-8025-vm-test"
location                 = "centralus"
vnet_subnet_id           = "/subscriptions/599e07ba-b993-4525-8bf5-ee1832f2914c/resourceGroups/rg-8025-network-centralus/providers/Microsoft.Network/virtualNetworks/vnet-8025-01-centralus/subnets/Subnet-01"
admin_username           = "azureuser"
ssh_key                  = "your-public-ssh-key"
vm_size                  = "Standard_DS1_v2"
os_publisher             = "Canonical"
os_offer                 = "UbuntuServer"
os_sku                   = "18.04-LTS"
os_version               = "latest"
remote_port              = 22
tags                     = {
  Environment = "development"
  Project     = "Terraform"
}
