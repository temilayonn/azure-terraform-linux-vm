variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}
variable "existing_storage_account_id" {
  description = "The ID of the existing storage account to be used for boot diagnostics. Leave empty to create a new one."
  type        = string
  default     = null
}
variable "boot_diagnostics" {
  description = "Enable or disable boot diagnostics"
  type        = bool
  default     = false
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet"
}

variable "network_interface_name" {
  type        = string
  description = "Name of the network interface"
}

variable "ip_configuration_name" {
  type        = string
  description = "Name of the IP configuration"
}

variable "vm_names" {
  description = "List of Windows VM names"
  type        = list(string)
}


variable "vm_sizes" {
  description = "Map of VM sizes by name"
  type        = map(string)
  default     = {}
}
variable "storage_image_reference_publisher" {
  type        = string
  description = "The publisher of the image used to create the virtual machine."
}

variable "storage_image_reference_offer" {
  type        = string
  description = "Specifies the offer of the platform image or marketplace image used to create the virtual machine."
}

variable "storage_image_reference_sku" {
  type        = string
  description = "Specifies the SKU of the platform image or marketplace image used to create the virtual machine."
}

variable "storage_image_reference_version" {
  type        = string
  description = "Specifies the version of the platform image or marketplace image used to create the virtual machine."
}

variable "storage_os_disk_name" {
  type        = string
  description = "The name of the OS disk."
}

variable "storage_os_disk_caching" {
  type        = string
  description = "Specifies the caching requirements for the OS disk."
}

variable "storage_os_disk_create_option" {
  type        = string
  description = "Specifies how the virtual machine should be created."
}

variable "storage_os_disk_managed_disk_type" {
  type        = string
  description = "Specifies the storage account type for the managed disk."
}

variable "os_profile_computer_name" {
  type        = string
  description = "Specifies the host OS name of the virtual machine."
}

variable "os_profile_admin_username" {
  type        = string
  description = "Specifies the name of the administrator account."
}

variable "os_profile_admin_password" {
  type        = string
  description = "Specifies the password of the administrator account."
}

variable "existing_storage_account_name" {
  description = "The name of the existing storage account for boot diagnostics."
  type        = string
  default     = null
}

variable "existing_storage_account_resource_group" {
  description = "The resource group name of the existing storage account for boot diagnostics."
  type        = string
  default     = null
}

variable "nsg_name" {
  type        = string
  description = "Name of the network security group"
}